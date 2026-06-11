-- sw_webhook.lua  ·  SpectreWare Webhook Module
-- ยิงผ่าน backend /api/event เหมือนเดิม ไม่มี Discord URL ใน client

local HS  = game:GetService("HttpService")
local PL  = game:GetService("Players").LocalPlayer
local MPS = game:GetService("MarketplaceService")
local STS = game:GetService("Stats")
local UIS = game:GetService("UserInputService")

local function try(fn, def) local ok,v=pcall(fn); return ok and v or def end

local function fmtTime(s)
    if s>=86400 then return math.floor(s/86400).."d "..math.floor((s%86400)/3600).."h "..math.floor((s%3600)/60).."m"
    elseif s>=3600 then return math.floor(s/3600).."h "..math.floor((s%3600)/60).."m"
    end; return math.floor(s/60).."m "..math.floor(s%60).."s"
end

local _httpIdx
local function httpCall(opts)
    local fns = {
        function() return syn        and syn.request           and syn.request(opts)                  end,
        function() return http       and http.request          and http.request(opts)                 end,
        function() return request    and request(opts)                                                end,
        function() return http_request and http_request(opts)                                         end,
        function() return fluxus     and fluxus.request        and fluxus.request(opts)               end,
        function() return Delta      and Delta.request         and Delta.request(opts)                end,
        function() return ARCEUS_X   and ARCEUS_X.http_request and ARCEUS_X.http_request(opts)       end,
        function() return Scriptware and Scriptware.http_request and Scriptware.http_request(opts)   end,
        function() return Electron   and Electron.http_request and Electron.http_request(opts)       end,
        function() return calamari   and calamari.request      and calamari.request(opts)             end,
        function() return trigon     and trigon.request        and trigon.request(opts)               end,
        function() return getgenv().request and getgenv().request(opts)                               end,
    }
    if _httpIdx then
        local ok,res=pcall(fns[_httpIdx])
        if ok and res and (res.Body or res.body) then return res end
        _httpIdx=nil
    end
    for i,fn in ipairs(fns) do
        local ok,res=pcall(fn)
        if ok and res and (res.Body or res.body) then _httpIdx=i; return res end
    end
end

-- ─── collectors ───────────────────────────────────────────────────────────────
local function getAvatar(uid)
    local fb="https://www.roblox.com/headshot-thumbnail/image?userId="..uid.."&width=150&height=150&format=png"
    return try(function()
        local res=httpCall({Url="https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds="..uid.."&size=420x420&format=Png&isCircular=false",Method="GET"})
        local b=res and (res.Body or res.body)
        local d=b and HS:JSONDecode(b)
        return d and d.data and d.data[1] and d.data[1].imageUrl or fb
    end,fb)
end

local function getGameInfo()
    local name,creator="Unknown","?"
    try(function()
        local info=MPS:GetProductInfo(game.PlaceId,Enum.InfoType.Asset)
        if info then name=info.Name or name; creator=info.Creator and info.Creator.Name or"?" end
    end)
    return name,creator,
        try(function() return tostring(game:GetService("Players").MaxPlayers) end,"?"),
        try(function() return tostring(game.PlaceVersion) end,"?")
end

local function getExecutor()
    return try(function()
        if identifyexecutor then return tostring(identifyexecutor()) end
        if typeof(syn)=="table" then return"Synapse X" end
        if typeof(fluxus)=="table" then return"Fluxus" end
        return"Unknown"
    end,"Unknown")
end

local function getPlatform()
    return try(function() return tostring(UIS:GetPlatform()):gsub("Enum.Platform.","") end,"Unknown")
end

local function getPing()
    return try(function() return math.floor(STS.Network.ServerStatsItem["Data Ping"]:GetValue()).." ms" end,"?")
end

local function getMembership()
    return try(function() return PL.MembershipType==Enum.MembershipType.Premium and"Premium ⭐"or"None" end,"None")
end

local function getAccountAge()
    return try(function()
        local d=PL.AccountAge
        if d>=365 then return math.floor(d/365).."y "..math.floor((d%365)/30).."m"
        elseif d>=30 then return math.floor(d/30).."mo "..math.floor(d%30).."d"
        end; return d.."d"
    end,"?")
end

local function getFriendCount(apiBase)
    return try(function()
        local res=httpCall({Url="https://friends.roblox.com/v1/users/"..PL.UserId.."/friends/count",Method="GET"})
        local d=res and (res.Body or res.body) and HS:JSONDecode(res.Body or res.body)
        return d and d.count~=nil and tostring(d.count) or"?"
    end,"?")
end

local function getPlayerCount()
    return try(function() return tostring(#game:GetService("Players"):GetPlayers()) end,"?")
end

-- ─── module ───────────────────────────────────────────────────────────────────
local M={}
local _api   -- set โดย M.init(CFG.API)
local _xk    -- optional: ส่ง loaderXk มาด้วยถ้าอยากให้ backend verify

function M.init(apiBase, loaderXk)
    _api=apiBase
    _xk=loaderXk
end

--[[
    M.send(event, info)
    event  : "login" | "mismatch" | "expired" | "blocked"
    info   : { key, hwid, timeLeft, expiresAt, loaderVersion }
]]
function M.send(event, info)
    if not _api then warn("sw_webhook: call M.init(CFG.API) first"); return end
    task.spawn(function()
        info=info or{}
        local avatar,_=getAvatar(PL.UserId)
        local gameName,gameCreator,maxP,placeVer=getGameInfo()

        local payload={
            event         = event,
            key           = info.key        or"?",
            hwid          = info.hwid       or"?",
            timeLeft      = info.timeLeft   or"?",
            expiresAt     = info.expiresAt,
            loaderVersion = info.loaderVersion or"?",
            loaderXk      = _xk,
            player={
                name        = PL.Name,
                displayName = tostring(PL.DisplayName or PL.Name),
                userId      = tostring(PL.UserId),
                accountAge  = getAccountAge(),
                friends     = getFriendCount(),
                membership  = getMembership(),
                avatar      = avatar,
            },
            device={
                platform = getPlatform(),
                ping     = getPing(),
                executor = getExecutor(),
            },
            game={
                name        = gameName,
                creator     = gameCreator,
                placeId     = tostring(game.PlaceId),
                version     = placeVer,
                maxPlayers  = maxP,
                playerCount = getPlayerCount(),
                uptime      = fmtTime(math.floor(try(function() return workspace.DistributedGameTime end,0))),
                jobId       = tostring(game.JobId),
            },
        }

        local ok,body=pcall(HS.JSONEncode,HS,payload)
        if not ok then warn("sw_webhook: encode failed"); return end

        httpCall({
            Url     = _api.."/api/event",
            Method  = "POST",
            Headers = {["Content-Type"]="application/json"},
            Body    = body,
        })
    end)
end

return M
