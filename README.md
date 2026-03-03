local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local LP = game:GetService("Players").LocalPlayer

-- [[ 1. สร้างหน้าต่างเมนู ]]
local Window = Rayfield:CreateWindow({
   Name = "Escape Tsunami for Brainrots",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Paper_Xz047",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "BrainrotTsunami",
      FileName = "Config"
   },
   KeySystem = false,
})

-- [[ 2. สร้างหน้า Profile (แสดงข้อมูลส่วนตัว) ]]
local ProfileTab = Window:CreateTab("Profile", 4483362458)
ProfileTab:CreateSection("👤 ข้อมูลผู้ใช้งาน")
ProfileTab:CreateLabel("ยินดีต้อนรับ: " .. LP.DisplayName .. " (@" .. LP.Name .. ")")
ProfileTab:CreateParagraph({
    Title = "Player Info", 
    Content = "User ID: " .. LP.UserId .. "\nAccount Age: " .. LP.AccountAge .. " วัน"
})

-- [[ 3. สร้างหน้า Main (สำหรับฟังก์ชันโกง) ]]
local MainTab = Window:CreateTab("Main", 4483362458)
MainTab:CreateSection("🚀 ฟังก์ชันหลัก")

MainTab:CreateButton({
   Name = "Speed Hack (100)",
   Callback = function()
       if LP.Character and LP.Character:FindFirstChild("Humanoid") then
           LP.Character.Humanoid.WalkSpeed = 100
       end
   end,
})

-- [[ 4. แจ้งเตือนเมื่อรันเสร็จ ]]
Rayfield:Notify({
   Title = "สคริปต์พร้อมใช้งาน!",
   Content = "สวัสดี " .. LP.DisplayName .. " ขอให้สนุกกับการเล่น!",
   Duration = 5,
   Image = "rbxthumb://type=AvatarHeadShot&id=" .. LP.UserId .. "&w=150&h=150",
})
