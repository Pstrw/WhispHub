local folder = Instance.new("Folder")
folder.Name = "ABC"
folder.Parent = game.Workspace

local part = Instance.new("Part")
part.Name = "ABCPart"
part.Parent = folder
part.Anchored = true
part.CanCollide = true
part.CastShadow = false
part.Transparency = 1
part.Size = Vector3.new(2048, 50, 2048)
part.CFrame = CFrame.new(Vector3.new(-0.5, 38, -0.5))
