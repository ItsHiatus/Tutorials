-- This is one way you can achieve the moving cloud with the RainbowRain.
-- Before anyone gets upset that this is not optimal, this is just an example of what can be achieved with the things we've covered so far in the tutorials.

local Username = "Im_Hiatus" -- change to your username
local Cloud = workspace.Cloud

local Rain = Instance.new("Part")
Rain.Material = Enum.Material.Neon
Rain.CanCollide = false
Rain.CastShadow = false

local range = 13

while true do
	
	local elapsed_time = wait() -- wait(number) returns the amount seconds it waited for, so we can catch that in a variable!
	
	local avatar = workspace:FindFirstChild(Username) -- attempting to find an avatar model in the workspace with our Username
	if avatar ~= nil then
		
		local origin = avatar.HumanoidRootPart.Position
		local newPosition = origin + Vector3.new(0, 20, 0)
		
		Cloud.Position = Cloud.Position:Lerp(newPosition, elapsed_time * 3)
		-- we haven't learned Lerp yet, but this is just to make the cloud's position smoothly change to the target position
		-- you can just set the Position to the target position if you like: Cloud.Position = newPosition
		
		local rain = Rain:Clone()
		rain.Color = Color3.fromHSV(math.random(), math.random(), 1) -- random color generator (you can use a fixed color)
		rain.Size = Vector3.new(0.15, math.random(5, 20)/10, 0.15)

		local x = math.random(-range/2, range/2)
		local z = math.random(-range/2, range/2)
		local y = math.random(-1, 1)/10

		rain.Position = Cloud.Position + Vector3.new(x, y, z)
		rain.Parent = workspace
		
	end
	
end
