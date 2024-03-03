local Step = workspace.Step -- Just a default Part in workspace
Step.Anchored = true

local NextStepOffset = Vector3.new(0, 1, 4) -- store where we want the next step to be placed relative to the previous step

while true do
	
	Step.Touched:Wait() -- wait until the current step has been touched
	
	-- TODO: create a new step a little further from the current step
	
	local newStep = Step:Clone()
	newStep.Position = Step.Position + NextStepOffset
	
	local RandomColor = Color3.fromHSV(math.random(), math.random(), 0.9) -- create a random 'bright' color (you can do it in any way you like)
                                                                          -- math.random() without any specified min and max returns a random number between 0 and 1 [try print(math.random())]
	
	newStep.Color = RandomColor
	newStep.Parent = workspace
	
	Step = newStep -- update the Step variable so we can wait for it to be touched on the next loop cycle
	
end
