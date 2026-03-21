-- ============================================================
-- Nova Hub | Loader v3  (No Loading Screen)
-- ============================================================
local KEY  = getgenv().KEY or ""
local API  = "http://fi8.bot-hosting.net:21017"
local NAME = "Nova Hub"
local HS   = game:GetService("HttpService")
local SG   = game:GetService("StarterGui")
local PL   = game:GetService("Players").LocalPlayer

-- ============================================================
--  NOTIFY
-- ============================================================
local function notify(msg, col)
  pcall(function() SG:SetCore("SendNotification", {Title = NAME, Text = msg, Duration = 4}) end)
  pcall(function()
    SG:SetCore("ChatMakeSystemMessage", {
      Text     = "[" .. NAME .. "] " .. msg,
      Color    = col or Color3.fromRGB(0, 200, 255),
      Font     = Enum.Font.GothamBold,
      TextSize = 14
    })
  end)
  print("[" .. NAME .. "] " .. msg)
end

-- ============================================================
--  HWID
-- ============================================================
local function getHWID()
  local ok, id = pcall(function()
    return tostring(game:GetService("RbxAnalyticsService"):GetClientId())
  end)
  if ok and id and id ~= "" then return id end
  return tostring(PL.UserId)
end

-- ============================================================
--  WHITELIST CHECK
-- ============================================================
local function checkWhitelist()
  local hwid = getHWID()
  local url  = API .. "/api/lookup?key=" .. KEY .. "&hwid=" .. hwid

  local ok, raw = pcall(game.HttpGet, game, url, true)
  if not ok then
    notify("❌ เชื่อมต่อ Server ไม่ได้", Color3.fromRGB(255, 80, 80))
    return false
  end

  local ok2, result = pcall(HS.JSONDecode, HS, raw)
  if not ok2 then
    notify("❌ Server response error", Color3.fromRGB(255, 80, 80))
    return false
  end

  if result.success then
    local data     = result.data
    local timeLeft = "Permanent"
    if data.expiresAt ~= -1 then
      local diff = math.floor((data.expiresAt - os.time() * 1000) / 1000)
      if diff <= 0 then
        notify("❌ Key หมดอายุแล้ว", Color3.fromRGB(255, 80, 80))
        return false
      end
      local d = math.floor(diff / 86400)
      local h = math.floor((diff % 86400) / 3600)
      local m = math.floor((diff % 3600) / 60)
      timeLeft = d .. "d " .. h .. "h " .. m .. "m"
    end
    notify("✅ Authorized | เหลือ: " .. timeLeft, Color3.fromRGB(80, 255, 180))
    return true
  else
    notify("❌ " .. (result.message or "Unauthorized"), Color3.fromRGB(255, 80, 80))
    return false
  end
end

-- ============================================================
--  MAIN
-- ============================================================
if not checkWhitelist() then return end

notify("🚀 กำลังโหลด Script...", Color3.fromRGB(80, 200, 255))
task.wait(0.2)

local ok, err = pcall(function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Captaineieiei/Script-/refs/heads/main/Zzaa", true))()
end)
if not ok then
  notify("❌ Script error: " .. tostring(err), Color3.fromRGB(255, 80, 80))
end
