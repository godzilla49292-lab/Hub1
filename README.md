local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local LP = game:GetService("Players").LocalPlayer

-- [[ 1. สร้างหน้าต่างหลัก ]]
local Window = Rayfield:CreateWindow({
   Name = "Escape Tsunami Hub",
   LoadingTitle = "🌀 Loading Systems...",
   LoadingSubtitle = "by Paper_Xz047",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "TsunamiHub",
      FileName = "Config"
   },
   KeySystem = false,
})

-- [[ 2. หน้า Profile (หน้าที่หายไป) ]]
local ProfileTab = Window:CreateTab("Profile", 4483362458)
ProfileTab:CreateSection("👤 ข้อมูลผู้เล่น")
ProfileTab:CreateLabel("Welcome: " .. LP.DisplayName .. " (@" .. LP.Name .. ")")
ProfileTab:CreateParagraph({
    Title = "Player Info", 
    Content = "User ID: " .. LP.UserId .. "\nAccount Age: " .. LP.AccountAge .. " Days"
})

-- [[ 3. หน้า Main Cheats ]]
local MainTab = Window:CreateTab("Home", 4483362458)
MainTab:CreateSection("Main Cheats")

MainTab:CreateButton({
   Name = "Speed Hack (100)",
   Callback = function()
       if LP.Character and LP.Character:FindFirstChild("Humanoid") then
           LP.Character.Humanoid.WalkSpeed = 100
       end
   end,
})

-- บรรทัดสุดท้ายสำหรับการแจ้งเตือน
Rayfield:Notify({
   Title = "Success!",
   Content = "โหลดข้อมูลครบทุกหน้าแล้ว",
   Duration = 5,
})
