local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/sulcovooo/anooo/main/lib.lua"))()

local window = Library.new("Welcome admin - sulcovo!") -- Args(<string> Name, <boolean?> ConstrainToScreen)

window:LockScreenBoundaries(true) -- Args(<boolean> ConstrainToScreen)

local tab = window:Tab("random") -- Args(<string> Name, <string?> TabImage)

local section = tab:Section("Global") -- Args(<string> Name)

local title = section:Title("Global") -- Args(<string> Name)

section:ColorWheel("Barva ESP", function(color)
    selectedColorESP = color
end) -- Args(<String> Name, <Function> Callback)

selectedColorESP = nil

local toggle = section:Toggle("ESP", function(bool)
local transparency = .8

local Players = game:GetService("Players")
local function _ESP(c)
  repeat wait() until c.PrimaryPart ~= nil
  for i,p in pairs(c:GetChildren()) do
    if p.ClassName == "Part" or p.ClassName == "MeshPart" then
      if p:FindFirstChild("shit") then p.shit:Destroy() end
      local a = Instance.new("BoxHandleAdornment",p)
      a.Name = "shit"
      a.Size = p.Size
      a.Color = BrickColor.new(selectedColorESP)
      a.Transparency = transparency
      a.AlwaysOnTop = true    
      a.Visible = bool
      a.Adornee = p
      a.ZIndex = true    

    end
  end
end
local function ESP()
  for i,v in pairs(Players:GetChildren()) do
    if v ~= game.Players.LocalPlayer then
      if v.Character then
        _ESP(v.Character)
      end
      v.CharacterAdded:Connect(function(chr)
        _ESP(chr)
      end)
    end
  end
  Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(chr)
      _ESP(chr)
    end)  
  end)
end
ESP()
end) -- Args(<String> Name, <Function> Callback)
toggle:Set(false)

section:Button("Had FE", function()
loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
end) -- Args(<String> Name, <Function> Callback)
