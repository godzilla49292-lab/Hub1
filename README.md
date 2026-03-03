local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Escape Tsunami Hub",
   LoadingTitle = "🌀 Loading...",
   LoadingSubtitle = "by Paper_Xz047",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "TsunamiHub",
      FileName = "Config"
   },
   KeySystem = false,
})

local MainTab = Window:CreateTab("Home", 4483362458)
MainTab:CreateSection("Main Cheats")

MainTab:CreateButton({
   Name = "Speed Hack (100)",
   Callback = function()
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
   end,
})

Rayfield:Notify({
   Title = "Success!",
   Content = "สคริปต์โหลดสำเร็จแล้ว",
   Duration = 5,
})
