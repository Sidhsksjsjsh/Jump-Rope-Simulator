local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()
local wndw = lib:Window("VIP Turtle Hub V4")
local T1 = wndw:Tab("Main")
local T2 = wndw:Tab("Hatch")

local player = {
  self = game:GetService("Players").LocalPlayer,
  server = game:GetService("Players")
}

local var = {
  click = false,
  on = false,
  spin = false,
  equip = false,
  codes = {"4kgoal","2kgoal","8kgoal","Release","WOW"},
  eggs = {
    s = "BasicGymEgg",
    table = {},
    toggle = false
  }
}

lib:AddTable(game:GetService("ReplicatedStorage")["Components"]["Eggs"],var.eggs.table)

T1:Toggle("Auto click",false,function(value)
    var.click = value
    while wait() do
      if var.click == false then break end
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["PlayTool"]:InvokeServer()
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["AddFight"]:InvokeServer()
    end
end)

T1:Toggle("Auto claim online rewards",false,function(value)
    var.on = value
    game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimDailyReward"]:InvokeServer()
    while wait() do
      if var.on == false then break end
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer(1)
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer(2)
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer(3)
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer(4)
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer(5)
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer(6)
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer(7)
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer(8)
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer(9)
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer(10)
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer(11)
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer(12)
    end
end)

T1:Toggle("Auto spin",false,function(value)
    var.spin = value
    while wait() do
      if var.spin == false then break end
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["Spin"]:InvokeServer()
    end
end)

T1:Toggle("Auto equip rope",false,function(value)
    var.equip = value
    while wait() do
      if var.equip == false then break end
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["EquipTool"]:InvokeServer(1,player.self:GetAttribute("LobbyName"))
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["EquipTool"]:InvokeServer(2,player.self:GetAttribute("LobbyName"))
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["EquipTool"]:InvokeServer(3,player.self:GetAttribute("LobbyName"))
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["EquipTool"]:InvokeServer(4,player.self:GetAttribute("LobbyName"))
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["EquipTool"]:InvokeServer(5,player.self:GetAttribute("LobbyName"))
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["EquipTool"]:InvokeServer(6,player.self:GetAttribute("LobbyName"))
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["EquipTool"]:InvokeServer(7,player.self:GetAttribute("LobbyName"))
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["EquipTool"]:InvokeServer(8,player.self:GetAttribute("LobbyName"))
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["EquipTool"]:InvokeServer(9,player.self:GetAttribute("LobbyName"))
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["EquipTool"]:InvokeServer(10,player.self:GetAttribute("LobbyName"))
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["EquipTool"]:InvokeServer(11,player.self:GetAttribute("LobbyName"))
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["FightService"]["RF"]["EquipTool"]:InvokeServer(12,player.self:GetAttribute("LobbyName"))
    end
end)

T1:Button("Redeem all codes",function()
    for array = 1,#var.codes do
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["CodeService"]["RF"]["Redeem"]:InvokeServer(var.codes[array])
    end
end)

T2:Dropdown("Choose egg",var.eggs.table,function(value)
    var.eggs.s = value
end)

T2:Toggle("Auto hatch",false,function(value)
    var.eggs.toggle = value
    while wait() do
      if var.eggs.toggle == false then break end
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["DataService"]["RF"]["EggAction"]:InvokeServer("1xHatch",var.eggs.table)
      game:GetService("ReplicatedStorage")["Packages"]["Knit"]["Services"]["DataService"]["RF"]["FinishHatch"]:InvokeServer()
    end
end)
