local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local LP = game:GetService("Players").LocalPlayer

local Window = Rayfield:CreateWindow({
   Name = "Escape Tsunami Hub",
   LoadingTitle = "🌀 Please Wait...",
   LoadingSubtitle = "by Paper_Xz047",
   ConfigurationSaving = { Enabled = true, FolderName = "TsunamiHub", FileName = "Config" },
   KeySystem = false,
})

-- หน้า Profile (หน้าที่คุณอยากได้กลับมา)
local ProfileTab = Window:CreateTab("Profile", 4483362458)
ProfileTab:CreateSection("👤 ข้อมูลผู้เล่น")
ProfileTab:CreateLabel("ยินดีต้อนรับ: " .. LP.DisplayName)
ProfileTab:CreateParagraph({Title = "Info", Content = "ID: " .. LP.UserId .. "\nAge: " .. LP.AccountAge .. " วัน"})

-- หน้า Home
local MainTab = Window:CreateTab("Home", 4483362458)
MainTab:CreateSection("Main Cheats")
MainTab:CreateButton({
   Name = "Speed Hack (100)",
   Callback = function() LP.Character.Humanoid.WalkSpeed = 100 end,
})
