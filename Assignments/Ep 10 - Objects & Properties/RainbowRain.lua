local range = 50

while true do

	local rain = Instance.new("Part") -- create a part and change its appearance to look kinda like a rain droplet
	rain.Material = Enum.Material.Neon
	rain.CanCollide = false
	rain.CastShadow = false
	rain.Color = Color3.fromHSV(math.random(), math.random(), 1) -- choose a random color: if you don't pass any values to math.random(), it returns a random number between 0 and 1 (try it!)
	rain.Size = Vector3.new(0.15, math.random(5, 20) / 10, 0.15) -- choose a random length

  -- get random values within the 'range' for each position component
	local x = math.random(-range/2, range/2)
	local z = math.random(-range/2, range/2)
	local y = math.random(20, 30)

	rain.Position = Vector3.new(x, y, z)
	rain.Parent = workspace -- don't forget to set the parent of the new object to workspace or else you won't see it!
	
	wait() -- if you don't pass any value to wait(), it tries to wait for the shortest amount of time possible (usually 0.03 seconds)

end
