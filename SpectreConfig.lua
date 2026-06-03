local HttpService = game:GetService("HttpService")

local ConfigLib = {}

function ConfigLib.new(filename, boolKeys, numKeys, colorKeys, defaults)

    boolKeys   = boolKeys   or {}
    numKeys    = numKeys    or {}
    colorKeys  = colorKeys  or {}

    local CFG        = {}
    local _callbacks = {}
    local _loaded    = false

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
        _loaded = true
        for _, cb in ipairs(_callbacks) do task.defer(cb, CFG) end
        _callbacks = {}
    end

    -- fire cb ทันที (deferred 1 frame) ถ้าโหลดแล้ว
    -- ถ้ายังไม่โหลด queue ไว้รอ
    local function OnLoaded(cb)
        if _loaded then task.defer(cb, CFG)
        else table.insert(_callbacks, cb) end
    end

    Load()
    return CFG, Save, Load, OnLoaded
end

return ConfigLib
