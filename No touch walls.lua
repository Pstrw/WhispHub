	-- Get the workspace and baseplate objects
	local workspace = game:GetService("Workspace")
	local baseplate = workspace.Structure.Baseplate

	-- Define the size of the walls
	local wallWidth = 1
	local wallHeight = 50
	local wallLength = baseplate.Size.X - wallWidth

	-- Create the walls
	local wall1 = Instance.new("Part")
	wall1.Name = "Wall1"
	wall1.Size = Vector3.new(wallWidth, wallHeight, wallLength)
	wall1.Position = baseplate.Position + Vector3.new(-(baseplate.Size.X / 2) + (wallWidth / 2), wallHeight / 2, 0)
	wall1.Anchored = true
	wall1.Parent = workspace
	wall1.CastShadow = false

	local wall2 = wall1:Clone()
	wall2.Name = "Wall2"
	wall2.Position = baseplate.Position + Vector3.new((baseplate.Size.X / 2) - (wallWidth / 2), wallHeight / 2, 0)
	wall2.Anchored = true
	wall2.Parent = workspace
	wall2.CastShadow = false

	local wall3 = wall1:Clone()
	wall3.Name = "Wall3"
	wall3.Size = Vector3.new(wallLength, wallHeight, wallWidth)
	wall3.Position = baseplate.Position + Vector3.new(0, wallHeight / 2, -(baseplate.Size.X / 2) + (wallWidth / 2))
	wall3.Anchored = true
	wall3.Parent = workspace
	wall3.CastShadow = false

	local wall4 = wall3:Clone()
	wall4.Name = "Wall4"
	wall4.Position = baseplate.Position + Vector3.new(0, wallHeight / 2, (baseplate.Size.X / 2) - (wallWidth / 2))
	wall4.Anchored = true
	wall4.Parent = workspace
	wall4.CastShadow = false



	local baseplateSize = game:GetService("Workspace").Structure.Baseplate.Size

	-- Set up a function to check the baseplate size and warn if it changes
	local function checkBaseplateSize()
		if game:GetService("Workspace").Structure.Baseplate.Size ~= baseplateSize then
			local newSize = game:GetService("Workspace").Structure.Baseplate.Size
			game:GetService("Workspace").Wall1:Destroy()
	game:GetService("Workspace").Wall2:Destroy()
	game:GetService("Workspace").Wall3:Destroy()
	game:GetService("Workspace").Wall4:Destroy()
	-- Get the workspace and baseplate objects
	local workspace = game:GetService("Workspace")
	local baseplate = workspace.Structure.Baseplate

	-- Define the size of the walls
	local wallWidth = 1
	local wallHeight = 50
	local wallLength = baseplate.Size.X - wallWidth

	-- Create the walls
	local wall1 = Instance.new("Part")
	wall1.Name = "Wall1"
	wall1.Size = Vector3.new(wallWidth, wallHeight, wallLength)
	wall1.Position = baseplate.Position + Vector3.new(-(baseplate.Size.X / 2) + (wallWidth / 2), wallHeight / 2, 0)
	wall1.Anchored = true
	wall1.Parent = workspace
	wall1.CastShadow = false

	local wall2 = wall1:Clone()
	wall2.Name = "Wall2"
	wall2.Position = baseplate.Position + Vector3.new((baseplate.Size.X / 2) - (wallWidth / 2), wallHeight / 2, 0)
	wall2.Anchored = true
	wall2.Parent = workspace
	wall2.CastShadow = false

	local wall3 = wall1:Clone()
	wall3.Name = "Wall3"
	wall3.Size = Vector3.new(wallLength, wallHeight, wallWidth)
	wall3.Position = baseplate.Position + Vector3.new(0, wallHeight / 2, -(baseplate.Size.X / 2) + (wallWidth / 2))
	wall3.Anchored = true
	wall3.Parent = workspace
	wall3.CastShadow = false

	local wall4 = wall3:Clone()
	wall4.Name = "Wall4"
	wall4.Position = baseplate.Position + Vector3.new(0, wallHeight / 2, (baseplate.Size.X / 2) - (wallWidth / 2))
	wall4.Anchored = true
	wall4.Parent = workspace
	wall4.CastShadow = false

			
			baseplateSize = newSize
		end
	end

	-- Call the checkBaseplateSize function every second
	while true do
		wait(1)
		checkBaseplateSize()
	end
