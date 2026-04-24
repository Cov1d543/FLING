-- كود بسيط لعمل قوة طرد (Fling)
local power = 5000 -- قوة الطرد

local function fling(targetPlayer)
    local bodyThrust = Instance.new("BodyThrust")
    bodyThrust.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    bodyThrust.Force = Vector3.new(power, 0, power)
    bodyThrust.Location = Vector3.new(0, 0, 0)
    
    -- هنا بنلعب على الدوران عشان نتخطى حماية التصادم
    local rotation = Instance.new("BodyAngularVelocity")
    rotation.P = math.huge
    rotation.MaxTorque = Vector3.new(0, math.huge, 0)
    rotation.AngularVelocity = Vector3.new(0, 9999, 0)
    rotation.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
end
