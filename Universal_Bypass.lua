repeat
    task.wait()
until game:IsLoaded()
loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/ok'))()

local Disables = {
    game:GetService("Players").LocalPlayer.Idled,
    game:GetService("ScriptContext").Error,
    game:GetService("LogService").MessageOut
}

local Nos = {
    "PreloadAsync",
    "Kick",
    "kick",
    "xpcall",
    "gcinfo",
    "collectgarbage",
}

local Yes = {
    game:GetService("Players").LocalPlayer,
    game:GetService("CoreGui"),
}

for i, v in pairs(Disables) do
    for i, v in pairs(getconnections(v)) do
        v:Disable()
    end
end

local OldNameCall = nil
OldNameCall =
    hookmetamethod(
    game,
    "__namecall",
    newcclosure(
        function(self, ...)
            local A = {...}

            if table.find(Nos, getnamecallmethod()) and table.find(Yes, self)   then
                return nil or wait(math.huge)
            end
            if getnamecallmethod()=="FindService" and self.Name == "VirtualUser" and self.Name == "VirtualInputManager" then
                return 
            end
            if typeof(A) ~= "Instance" then
                return OldNameCall(self, ...)
            end
            return OldNameCall(unpack(A), self, ...)
        end
    )
)

if setfflag then
    setfflag("HumanoidParallelRemoveNoPhysics", "False")
    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
end
if setfpscap then
    setfpscap(65)
end

game:GetService("ScriptContext"):SetTimeout(0.5)
