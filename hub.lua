local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Escape Tsunami for Brainrots",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by Paper_Xz047",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "BrainrotTsunami",
      FileName = "Config"
   },
   KeySystem = false,
})

local MainTab = Window:CreateTab("Home", 4483362458)
MainTab:CreateSection("Main Features")

MainTab:CreateButton({
   Name = "Speed Hack (100)",
   Callback = function()
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
   end,
})

Rayfield:Notify({
   Title = "Success!",
   Content = "Script Loaded!",
   Duration = 5,
})
