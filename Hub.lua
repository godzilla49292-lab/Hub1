-- [[ โค้ดสำหรับนำไปใส่ใน GitHub หรือ Pastebin ]]
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- ข้อมูลผู้เล่น
local LP = game:GetService("Players").LocalPlayer
local pInfo = {
    User = LP.Name,
    Display = LP.DisplayName,
    ID = LP.UserId,
    Age = LP.AccountAge
}

-- สร้าง Window
local Window = Rayfield:CreateWindow({
   Name = "Escape Tsunami for Brainrots",
   LoadingTitle = "⚡ Loading Assets...",
   LoadingSubtitle = "by Paper_Xz047",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "BrainrotTsunami",
      FileName = "Config"
   },
   KeySystem = false,
})

-- หน้า Profile
local ProfileTab = Window:CreateTab("Profile", 4483362458)
ProfileTab:CreateSection("👤 ข้อมูลผู้เล่น")
ProfileTab:CreateLabel("ยินดีต้อนรับ: " .. pInfo.Display .. " (@" .. pInfo.User .. ")")
ProfileTab:CreateParagraph({
    Title = "Player Info", 
    Content = "User ID: " .. pInfo.ID .. "\nAccount Age: " .. pInfo.Age .. " วัน"
})

-- หน้า Main
local MainTab = Window:CreateTab("Main", 4483362458)
MainTab:CreateSection("🚀 ฟังก์ชันหลัก")

-- ฟังก์ชัน Speed
MainTab:CreateButton({
   Name = "Speed Hack (100)",
   Callback = function()
       local Hum = LP.Character and LP.Character:FindFirstChild("Humanoid")
       if Hum then Hum.WalkSpeed = 100 end
   end,
})

-- ฟังก์ชัน Infinite Jump
_G.InfJump = false
MainTab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Flag = "InfJump", 
   Callback = function(Value) _G.InfJump = Value end,
})

-- ระบบ Jump ทำงานเบื้องหลัง
game:GetService("UserInputService").JumpRequest:Connect(function()
   if _G.InfJump then
       local Hum = LP.Character and LP.Character:FindFirstChild("Humanoid")
       if Hum then Hum:ChangeState("Jumping") end
   end
end)

-- แจ้งเตือนเมื่อโหลดเสร็จ
Rayfield:Notify({
   Title = "Success!",
   Content = "สวัสดี " .. pInfo.Display .. " โหลดสคริปต์สำเร็จ!",
   Duration = 5,
   Image = "rbxthumb://type=AvatarHeadShot&id=" .. pInfo.ID .. "&w=150&h=150",
})

-- โหลดค่าที่เซฟไว้
Rayfield:LoadConfiguration()
