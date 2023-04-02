local bullet = Instance.new("Part")
	bullet.Size = Vector3.new(0.1,0.1,0.3)
	bullet.BrickColor = BrickColor.new("New Yeller")
	bullet.Material = Enum.Material.Neon
	bullet.Anchored = true
	bullet.CanCollide = false
	bullet.Name = "Bullet"

	local sound = Instance.new("Sound")
	sound.Name = "Whiz"
	sound.Volume = 0.7
	sound.PlaybackSpeed = 7
	sound.Looped = true
	sound.SoundId = "rbxasset://sounds/Rocket whoosh 01.wav"
	sound.Parent = bullet
	sound:Play()

	local attachment1 = Instance.new("Attachment")
	attachment1.Parent = bullet 
	attachment1.Position = Vector3.new(-0.1,-0.1,0)

	local attachment2 = Instance.new("Attachment")
	attachment2.Parent = bullet
	attachment2.Position = Vector3.new(0.1,0.1,0)

	local trail = Instance.new("Trail")
	trail.Parent = bullet
	trail.Attachment0 = attachment1
	trail.Attachment1 = attachment2
	trail.Color = ColorSequence.new(bullet.Color)
	trail.WidthScale = NumberSequence.new(1,0)
	trail.Lifetime = 0.1
	trail.MinLength = 1
	trail.FaceCamera = true
