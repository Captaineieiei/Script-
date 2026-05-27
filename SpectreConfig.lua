-- SpectreWare | ConfigLib v1.0
-- Usage:
--   local Cfg = loadstring(game:HttpGet("RAW_URL"))()
--   local CFG, Save, Load = Cfg.new("MyScript.json", boolKeys, numKeys, colorKeys, defaults)

local HttpService = game:GetService("HttpService")

local ConfigLib = {}

function ConfigLib.new(filename, boolKeys, numKeys, colorKeys, defaults)
    -- colorKeys = {"BoxColor", ...}  → stored as {R,G,B}
    boolKeys   = boolKeys   or {}
    numKeys    = numKeys    or {}
    colorKeys  = colorKeys  or {}

    local CFG = {}
    -- apply defaults
    if defaults then for k,v in pairs(defaults) do CFG[k]=v end end

    local function c3t(c) return {c.R, c.G, c.B} end
    local function tc3(t) return Color3.new(t[1] or 1, t[2] or 1, t[3] or 1) end

    local function Save()
        pcall(function()
            local d = {}
            for _,k in ipairs(boolKeys)  do d[k] = CFG[k] end
            for _,k in ipairs(numKeys)   do d[k] = CFG[k] end
            for _,k in ipairs(colorKeys) do if CFG[k] then d[k] = c3t(CFG[k]) end end
            writefile(filename, HttpService:JSONEncode(d))
        end)
    end

    local function Load()
        pcall(function()
            if not isfile(filename) then return end
            local ok, d = pcall(HttpService.JSONDecode, HttpService, readfile(filename))
            if not ok or type(d) ~= "table" then return end
            for _,k in ipairs(boolKeys)  do if type(d[k])=="boolean" then CFG[k]=d[k] end end
            for _,k in ipairs(numKeys)   do if type(d[k])=="number"  then CFG[k]=d[k] end end
            for _,k in ipairs(colorKeys) do if type(d[k])=="table"   then CFG[k]=tc3(d[k]) end end
        end)
    end

    Load()
    return CFG, Save, Load
end

return ConfigLib
