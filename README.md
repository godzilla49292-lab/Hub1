local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local LP = game:GetService("Players").LocalPlayer

-- [[ 1. สร้างหน้าต่างหลัก ]]
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

-- [[ 2. หน้า Profile ]]
local ProfileTab = Window:CreateTab("Profile", 4483362458)
ProfileTab:CreateSection("👤 ข้อมูลผู้ใช้งาน")
ProfileTab:CreateLabel("ยินดีต้อนรับ: " .. LP.DisplayName .. " (@" .. LP.Name .. ")")
ProfileTab:CreateParagraph({
    Title = "Player Info", 
    Content = "User ID: " .. LP.UserId .. "\nAccount Age: " .. LP.AccountAge .. " วัน"
})

-- [[ 3. หน้า Main (ฟังก์ชันโกง) ]]
local MainTab = Window:CreateTab("Main", 4483362458)
MainTab:CreateSection("🚀 ฟังก์ชันหลัก")

-- ปุ่ม Speed Hack
MainTab:CreateButton({
   Name = "Speed Hack (100)",
   Callback = function()
       if LP.Character and LP.Character:FindFirstChild("Humanoid") then
           LP.Character.Humanoid.WalkSpeed = 100
       end
   end,
})

-- ปุ่ม Infinite Jump (Auto Jump)
_G.InfiniteJumpEnabled = false
MainTab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Flag = "InfJump", 
   Callback = function(Value)
      _G.InfiniteJumpEnabled = Value
   end,
})

-- [[ 4. ระบบเบื้องหลังเพื่อให้ Infinite Jump ทำงาน ]]
if not _G.JumpConnection then
    _G.JumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
       if _G.InfiniteJumpEnabled then
           local Character = LP.Character
           if Character and Character:FindFirstChild("Humanoid") then
               Character.Humanoid:ChangeState("Jumping")
           end
       end
    end)
end

-- [[ 5. แจ้งเตือนเมื่อรันเสร็จ ]]
Rayfield:Notify({
   Title = "สคริปต์พร้อมใช้งาน!",
   Content = "สวัสดี " .. LP.DisplayName .. " โหลดข้อมูลครบทุกส่วนแล้ว",
   Duration = 5,
   Image = "rbxthumb://type=AvatarHeadShot&id=" .. LP.UserId .. "&w=150&h=150",
})
