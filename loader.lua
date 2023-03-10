getgenv().Key = ""
getgenv().DiscordId = ""
local GET_REQUEST = http_request or request or HttpPost or syn.request
loadstring(GET_REQUEST({["Url"] = "https://raw.githubusercontent.com/pumipt-locker/-script-lua-/main/main.lua",["Medthod"] = "GET"}).Body)();
