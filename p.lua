--[[	fuck niggers	]]


repeat
	wait()
until game:IsLoaded()
wait()
local a = {}
if getgenv().ExecutedAlr then
	return
end;
if not getexecutorname then
	function getexecutorname()
		return 'Other'
	end
elseif not string.find(getexecutorname(), "ScriptWare") then
	function getexecutorname()
		return 'Other'
	end
end;
fileprefix = "TDS_AutoStrat/"
if syn and not getgenv().IsMultiStrat and not getgenv().ExecDis and not getgenv().Multiplayer then
	syn.queue_on_teleport("loadstring(readfile(\"TDS_AutoStrat/LastStrat.txt\"))()")
elseif not getgenv().IsMultiStrat and not getgenv().ExecDis and not getgenv().Multiplayer then
	queue_on_teleport("loadstring(readfile(\"TDS_AutoStrat/LastStrat.txt\"))()")
end;
getgenv().ExecutedAlr = true;
getgenv().MapUsed = false;
loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/sjkdkjlfdjnnmklcvxjNotifCr"))()
if isfile("DNR.txt") and not isfolder("TDS_AutoStrat") then
	say("ERROR", "Root folder removed, recreating files!", 5)
	makefolder("TDS_AutoStrat")
	writefile(fileprefix .. "Webhook (Logs).txt", "WEBHOOK HERE")
	writefile(fileprefix .. "LastLog.txt", "")
	writefile(fileprefix .. "LastPrintLog.txt", "")
	writefile(fileprefix .. "LastStrat.txt", "")
	writefile(fileprefix .. "PrivateServer.txt", "PRIVATE SERVER LINK HERE")
	writefile(fileprefix .. "UseCount.txt", readfile("DNR.txt"))
	wait(0.5)
	say("SUCCESS", "Files recreated! Don't remove this folder again!", 5)
end;
if not isfolder("TDS_AutoStrat") then
	makefolder("TDS_AutoStrat")
end;
if not isfile("DNR.txt") then
	writefile("DNR.txt", "1")
end;
if not isfile(fileprefix .. "UseCount.txt") then
	writefile(fileprefix .. "UseCount.txt", "1")
end;
loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ikcxujvkdsStrat"))()
loadstring(game:HttpGet("https://banbusscripts.netlify.app/Scripts/IsAutoStratMain"))()
if getgenv().StratMaintance == true then
	repeat
		wait()
		loadstring(game:HttpGet("https://banbusscripts.netlify.app/Scripts/IsAutoStratMain"))()
		getgenv().status = "Script in maintenance, waiting..."
		wait(1)
	until getgenv().StratMaintance == false or getgenv().SkipStratMaintance == true
end;
getgenv().status = "Loading"
spawn(function()
	wait(60)
	if getgenv().status == "Loading" or getgenv().status == "Loadout Equipped" or getgenv().status == "Equipping Loadout..." then
		game:GetService("TeleportService"):Teleport(3260590327, game:GetService("Players").LocalPlayer)
	end
end)
getgenv().count = 0;
if game.PlaceId == 5591597781 then
	game:GetService("Workspace").Towers.ChildAdded:Connect(function(b)
		getgenv().count = getgenv().count + 1
	end)
end;
local c = readfile(fileprefix .. "UseCount.txt")
if not tonumber(c) then
	c = 1
end;
c = tonumber(c) + 1;
writefile(fileprefix .. "UseCount.txt", tostring(c))
writefile("DNR.txt", tostring(c))
local d = nil;
local e = game:WaitForChild('ReplicatedStorage')
local f = e:WaitForChild("RemoteFunction")
local g = e:WaitForChild("RemoteEvent")
function isgame()
	if game.PlaceId == 5591597781 then
		return true
	else
		return false
	end
end;
stateRep = nil;
if isgame() then
	function getStateRep()
		for h, b in pairs(game:GetService("ReplicatedStorage").StateReplicators:GetChildren()) do
			if b:GetAttribute("TimeScale") then
				return b
			end
		end
	end;
	repeat
		stateRep = getStateRep()
	until stateRep
end;
if isgame() and getgenv().PotatoPC then
	spawn(function()
		wait(3)
		for h, b in pairs(game.Workspace.Map:GetChildren()) do
			if b.Name ~= "Paths" then
				b:Remove()
			end
		end;
		local s = game.Workspace.Terrain;
		s.Transparency = 0;
		s.WaterReflectance = 0;
		s.WaterTransparency = 0;
		s.WaterWaveSize = 0;
		s.WaterWaveSpeed = 0
	end)
end;
if isgame() then
	spawn(function()
		wait(3)
		for h, b in pairs(game:GetService("Lighting"):GetChildren()) do
			if b.Name ~= "Sky" then
				b:Remove()
			end
		end;
		game.Lighting.FogStart = 10000000;
		game.Lighting.FogEnd = 10000000;
		game.Lighting.Brightness = 1;
		local t;
		if getgenv().CameraSys == true then
			t = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0)
		else
			t = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 20, 0)
		end;
		local u = Instance.new("Part")
		u.Transparency = 1;
		u.Anchored = true;
		getgenv().nameBlock = ""
		for c = 1, 10 do
			getgenv().nameBlock = getgenv().nameBlock .. tostring(math.random(1, 9))
		end;
		u.Name = getgenv().nameBlock;
		u.CanCollide = true;
		u.Parent = game.Workspace;
		u.CFrame = t;
		if getgenv().CameraSys == true then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 55, 0)
		else
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 25, 0)
		end;
		if game.CoreGui:FindFirstChild("AutoStratsLogger") then
			game.CoreGui:FindFirstChild("AutoStratsLogger"):Remove()
		end;
		local v = Instance.new("ScreenGui")
		local w = Instance.new("Frame")
		local x = Instance.new("ImageLabel")
		local y = Instance.new("Frame")
		local z = Instance.new("TextLabel")
		local A = Instance.new("ScrollingFrame")
		v.Name = "AutoStratsLogger"
		v.Parent = game:WaitForChild("CoreGui")
		v.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		w.Name = "Main"
		w.Parent = v;
		w.BackgroundColor3 = Color3.fromRGB(23, 21, 30)
		w.BorderSizePixel = 0;
		w.Position = UDim2.new(0.544935644, 0, 0.355803162, 0)
		w.Size = UDim2.new(0, 500, 0, 400)
		x.Name = "Glow"
		x.Parent = w;
		x.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		x.BackgroundTransparency = 1.000;
		x.BorderSizePixel = 0;
		x.Position = UDim2.new(0, -15, 0, -15)
		x.Size = UDim2.new(1, 30, 1, 30)
		x.ZIndex = 0;
		x.Image = "rbxassetid://4996891970"
		x.ImageColor3 = Color3.fromRGB(15, 15, 15)
		x.ScaleType = Enum.ScaleType.Slice;
		x.SliceCenter = Rect.new(20, 20, 280, 280)
		y.Name = "Top_Container"
		y.Parent = w;
		y.AnchorPoint = Vector2.new(0.5, 0)
		y.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		y.BackgroundTransparency = 1.000;
		y.Position = UDim2.new(0.5, 0, 0, 18)
		y.Size = UDim2.new(1, -40, 0, 20)
		z.Name = "Title"
		z.Parent = y;
		z.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		z.BackgroundTransparency = 1.000;
		z.Position = UDim2.new(0.00764120743, 0, -0.400000006, 0)
		z.Size = UDim2.new(0.981785059, 0, 1.45000005, 0)
		z.Font = Enum.Font.GothamBlack;
		z.Text = "AUTOSTRATS LOGGER"
		z.TextColor3 = Color3.fromRGB(255, 255, 255)
		z.TextSize = 30.000;
		z.TextXAlignment = Enum.TextXAlignment.Left;
		A.Name = "Scroll"
		A.Parent = w;
		A.Active = true;
		A.AnchorPoint = Vector2.new(0.5, 0)
		A.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		A.BackgroundTransparency = 1.000;
		A.BorderSizePixel = 0;
		A.Position = UDim2.new(0.5, 4, 0, 59)
		A.Size = UDim2.new(1, -20, 1, -67)
		A.BottomImage = "rbxassetid://5234388158"
		A.CanvasSize = UDim2.new(200, 0, 100, 0)
		A.MidImage = "rbxassetid://5234388158"
		A.ScrollBarThickness = 8;
		A.TopImage = "rbxassetid://5234388158"
		A.VerticalScrollBarInset = Enum.ScrollBarInset.Always;
		A.ChildAdded:Connect(function()
			if #A:GetChildren() > 16 then
				A.CanvasPosition = Vector2.new(0, A.CanvasPosition.Y + 20)
			end
		end)
		local function B()
			local C = Instance.new('LocalScript', w)
			C.Name = "Dragify"
			local D = game:GetService("UserInputService")
			function dragify(E)
				dragToggle = nil;
				dragInput = nil;
				dragStart = nil;
				local F = nil;
				function updateInput(G)
					local H = G.Position - dragStart;
					local I = UDim2.new(startPos.X.Scale, startPos.X.Offset + H.X, startPos.Y.Scale, startPos.Y.Offset + H.Y)
					game:GetService("TweenService"):Create(E, TweenInfo.new(0.1), {
						Position = I
					}):Play()
				end;
				E.InputBegan:Connect(function(G)
					if (G.UserInputType == Enum.UserInputType.MouseButton1 or G.UserInputType == Enum.UserInputType.Touch) and D:GetFocusedTextBox() == nil then
						dragToggle = true;
						dragStart = G.Position;
						startPos = E.Position;
						G.Changed:Connect(function()
							if G.UserInputState == Enum.UserInputState.End then
								dragToggle = false
							end
						end)
					end
				end)
				E.InputChanged:Connect(function(G)
					if G.UserInputType == Enum.UserInputType.MouseMovement or G.UserInputType == Enum.UserInputType.Touch then
						dragInput = G
					end
				end)
				game:GetService("UserInputService").InputChanged:Connect(function(G)
					if G == dragInput and dragToggle then
						updateInput(G)
					end
				end)
			end;
			dragify(C.Parent)
		end;
		B()
		local function J()
			local C = Instance.new('LocalScript', w)
			C.Name = "Positioning"
			C.Parent:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", 1)
			C.Parent.Draggable = true
		end;
		J()
		local K = -0.0073;
		writefile(fileprefix .. "LastLog.txt", "--[START OF LOG]--")
		function TimeConverter(b)
			if b <= 9 then
				local conv = "0" .. b;
				return conv
			else
				return b
			end
		end;
		getgenv().output = function(L, M)
			local N = os.date("*t")["hour"]
			local O = os.date("*t")["min"]
			local P = os.date("*t")["sec"]
			local Q = Color3.fromRGB(255, 255, 255)
			if M then
				Q = M
			end;
			local R = Instance.new("TextLabel", A)
			R.Text = "[" .. TimeConverter(N) .. ":" .. TimeConverter(O) .. ":" .. TimeConverter(P) .. "] " .. L;
			appendfile(fileprefix .. "LastLog.txt", "\n[" .. TimeConverter(N) .. ":" .. TimeConverter(O) .. ":" .. TimeConverter(P) .. "] " .. L)
			R.Size = UDim2.new(0.005, 0, 0.001, 0)
			R.Position = UDim2.new(0, 0, .007 + K, 0)
			R.Font = Enum.Font.SourceSansSemibold;
			R.TextColor3 = Q;
			R.TextStrokeTransparency = 0;
			R.BackgroundTransparency = 1;
			R.BackgroundColor3 = Color3.new(0, 0, 0)
			R.BorderSizePixel = 0;
			R.BorderColor3 = Color3.new(0, 0, 0)
			R.FontSize = "Size14"
			R.TextXAlignment = Enum.TextXAlignment.Left;
			R.ClipsDescendants = true;
			K = K + 0.0005
		end;
		spawn(function()
			local S = false;
			S = not S;
			game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true;
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true;
			SprintKey = Enum.KeyCode.LeftShift;
			localPlayer = game.Players.LocalPlayer;
			Camera = game.Workspace.CurrentCamera;
			Mouse = localPlayer:GetMouse()
			UserInputService = game:GetService("UserInputService")
			movePosition = Vector2.new(0, 0)
			moveDirection = Vector3.new(0, 0, 0)
			targetMovePosition = movePosition;
			lastRightButtonDown = Vector2.new(0, 0)
			rightMouseButtonDown = false;
			targetFOV = 70;
			sprinting = false;
			sprintingSpeed = 3;
			keysDown = {}
			moveKeys = {
				[Enum.KeyCode.D] = Vector3.new(1, 0, 0),
				[Enum.KeyCode.A] = Vector3.new(-1, 0, 0),
				[Enum.KeyCode.S] = Vector3.new(0, 0, 1),
				[Enum.KeyCode.W] = Vector3.new(0, 0, -1),
				[Enum.KeyCode.E] = Vector3.new(0, 1, 0),
				[Enum.KeyCode.Q] = Vector3.new(0, -1, 0)
			}
			Tween = function(T, U, V)
				if V == 1 then
					return U
				else
					if tonumber(T) then
						return T * (1 - V) + U * V
					else
						return T:Lerp(U, V)
					end
				end
			end;
			ClampVector3 = function(W, X, Y)
				return Vector3.new(math.clamp(W.X, X.X, Y.X), math.clamp(W.Y, X.Y, Y.Y), math.clamp(W.Z, X.Z, Y.Z))
			end;
			UserInputService.InputChanged:connect(function(Z)
				if Z.UserInputType == Enum.UserInputType.MouseMovement then
					movePosition = movePosition + Vector2.new(Z.Delta.x, Z.Delta.y)
				end
			end)
			CalculateMovement = function()
				local _ = Vector3.new(0, 0, 0)
				for h, b in pairs(keysDown) do
					_ = _ + (moveKeys[h] or Vector3.new(0, 0, 0))
				end;
				return _
			end;
			Round = function(a0, a1)
				return math.floor(a0 / a1 + .5) * a1
			end;
			Input = function(G, a2)
				if moveKeys[G.KeyCode] then
					if G.UserInputState == Enum.UserInputState.Begin then
						keysDown[G.KeyCode] = true
					elseif G.UserInputState == Enum.UserInputState.End then
						keysDown[G.KeyCode] = nil
					end
				else
					if G.UserInputState == Enum.UserInputState.Begin then
						if G.UserInputType == Enum.UserInputType.MouseButton2 and S == true then
							rightMouseButtonDown = true;
							lastRightButtonDown = Vector2.new(Mouse.X, Mouse.Y)
							UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
						elseif G.KeyCode == Enum.KeyCode.Z then
							targetFOV = 20
						elseif G.KeyCode == SprintKey then
							sprinting = true
						end
					else
						if G.UserInputType == Enum.UserInputType.MouseButton2 then
							rightMouseButtonDown = false;
							UserInputService.MouseBehavior = Enum.MouseBehavior.Default
						elseif G.KeyCode == Enum.KeyCode.Z then
							targetFOV = 70
						elseif G.KeyCode == SprintKey then
							sprinting = false
						end
					end
				end
			end;
			Mouse.WheelForward:connect(function()
				Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(0, 0, -5)
			end)
			Mouse.WheelBackward:connect(function()
				Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(-0, 0, 5)
			end)
			UserInputService.InputBegan:connect(Input)
			UserInputService.InputEnded:connect(Input)
			game:GetService("RunService").RenderStepped:Connect(function()
				if S then
					local a3 = Mouse.Hit;
					targetMovePosition = movePosition;
					Camera.CoordinateFrame = CFrame.new(Camera.CoordinateFrame.p) * CFrame.fromEulerAnglesYXZ(-targetMovePosition.Y / 300, -targetMovePosition.X / 300, 0) * CFrame.new(CalculateMovement() * (({
						[true] = sprintingSpeed
					})[sprinting] or .5))
					Camera.FieldOfView = Tween(Camera.FieldOfView, targetFOV, .5)
					if rightMouseButtonDown then
						UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition;
						movePosition = movePosition - (lastRightButtonDown - Vector2.new(Mouse.X, Mouse.Y))
						lastRightButtonDown = Vector2.new(Mouse.X, Mouse.Y)
					end
				end
			end)
			local a4 = 2;
			if getgenv().DefaultCam ~= nil then
				a4 = getgenv().DefaultCam
			end;
			local a5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/jsdnfjdsfdjnsmvkjhlkslzLIB", true))()
			local a6 = a5:CreateWindow("Camera")
			a6:Button('Normal', function()
				game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false;
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false;
				game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid;
				game.Workspace.CurrentCamera.CameraType = "Follow"
				a4 = 1
			end)
			a6:Button('Follow Enemies (Default)', function()
				game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true;
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true;
				game.Workspace.CurrentCamera.CameraType = "Follow"
				a4 = 2
			end)
			a6:Button('Free Cam', function()
				a4 = 3;
				Camera.CameraType = Enum.CameraType.Scriptable;
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true;
				game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
			end)
			while wait() do
				if a4 == 1 then
					S = false
				elseif a4 == 2 then
					pcall(function()
						S = false;
						local a7 = game:GetService("Workspace").NPCs:GetChildren()
						if #a7 ~= 0 then
							for h, b in pairs(game.Workspace.NPCs:GetChildren()) do
								if b:WaitForChild("HumanoidRootPart").CFrame.Y > -5 then
									game.Workspace.Camera.CameraSubject = b.HumanoidRootPart;
									wait()
									break
								else
									game.Workspace.Camera.CameraSubject = game:GetService("Workspace").Map.Paths["1"]["1"]
									break
								end
							end
						else
							game.Workspace.Camera.CameraSubject = game:GetService("Workspace").Map.Paths["1"]["1"]
						end
					end)
				elseif a4 == 3 then
					S = true
				end
			end
		end)
	end)
end;
spawn(function()
	if isgame() and getgenv().Debug then
		game.Workspace.Towers.ChildAdded:Connect(function(b)
			wait(1)
			repeat
				wait()
			until tonumber(b.Name)
			local a8 = Instance.new("BillboardGui")
			a8.Parent = b:WaitForChild("HumanoidRootPart")
			a8.Adornee = b:WaitForChild("HumanoidRootPart")
			a8.StudsOffsetWorldSpace = Vector3.new(0, 2, 0)
			a8.Size = UDim2.new(0, 250, 0, 50)
			a8.AlwaysOnTop = true;
			local a9 = Instance.new("TextLabel")
			a9.Parent = a8;
			a9.BackgroundTransparency = 1;
			a9.Text = b.Name;
			a9.Font = "Legacy"
			a9.Size = UDim2.new(1, 0, 0, 70)
			a9.TextSize = 52;
			a9.TextScaled = fals;
			a9.TextColor3 = Color3.new(0, 0, 0)
			a9.TextStrokeColor3 = Color3.new(0, 0, 0)
			a9.TextStrokeTransparency = 0.5;
			local a9 = Instance.new("TextLabel")
			a9.Parent = a8;
			a9.BackgroundTransparency = 1;
			a9.Text = b.Name;
			a9.Font = "Legacy"
			a9.Size = UDim2.new(1, 0, 0, 70)
			a9.TextSize = 50;
			a9.TextScaled = false;
			a9.TextColor3 = Color3.new(1, 0, 0)
			a9.TextStrokeColor3 = Color3.new(0, 0, 0)
			a9.TextStrokeTransparency = 0.5
		end)
	end
end)
if not isgame() then
	f:InvokeServer("Login", "Claim")
	f:InvokeServer("Session", "Search", "Login")
	if getgenv().AutoBuy then
		getgenv().status = "Buying crates..."
		local aa = require(game:GetService("ReplicatedStorage").Assets.Crates[getgenv().Crate].Data)
		local ab, ac = aa.Price.Type, aa.Price.Value;
		if ab == "Coins" then
			ltimes = math.floor(game.Players.LocalPlayer.Coins.Value / ac)
			if ltimes ~= 0 then
				for c = 1, ltimes do
					f:InvokeServer("Shop", "Purchase", {
						["Name"] = getgenv().Crate,
						["Type"] = "Crate"
					})
					print("Bought " .. getgenv().Crate .. " Crate")
					wait(1)
					table1 = {}
					for ad, ae in next, game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Inventory", "Execute", "Crates", "Open", {
						["Name"] = getgenv().Crate
					}) do
						table.insert(table1, ae)
					end;
					if readfile(fileprefix .. "Webhook (Logs).txt") ~= "WEBHOOK HERE" then
						url = readfile(fileprefix .. "Webhook (Logs).txt")
						local aa = {
							["username"] = "TDS AutoStrat LOGGER",
							["embeds"] = {
								{
									["title"] = "**LOG (" .. TimeConverter(os.date("*t").year) .. "-" .. TimeConverter(os.date("*t").month) .. "-" .. TimeConverter(os.date("*t").day) .. " " .. TimeConverter(os.date("*t").hour) .. ":" .. TimeConverter(os.date("*t").min) .. ":" .. TimeConverter(os.date("*t").sec) .. ")**",
									["description"] = "**		------------ OPENED CRATE ------------**\n**Troop : **" .. table1[2] .. "\n**Skin : **" .. table1[4] .. "\n**Skin Rarity : **" .. table1[3] .. "\n**Skin Price : **" .. tostring(table1[1]),
									["type"] = "rich",
									["color"] = tonumber(16744448)
								}
							}
						}
						local af = game:GetService("HttpService"):JSONEncode(aa)
						local ag = {
							["content-type"] = "application/json"
						}
						request = http_request or request or HttpPost or syn.request;
						local ah = {
							Url = url,
							Body = af,
							Method = "POST",
							Headers = ag
						}
						request(ah)
						print("Webhook sent")
					end
				end
			end
		else
			warn(getgenv().Crate .. " Crate is for robux!")
		end
	end
end;
function sell(ai)
	if isgame() then
		repeat
			wait()
		until game.Workspace.Towers:FindFirstChild(tostring(ai))
		f:InvokeServer("Troops", "Sell", {
			["Troop"] = game.Workspace.Towers[tostring(ai)]
		})
	end
end;
function getTroopTypeCheck(ai)
	return ai.Replicator:GetAttribute("Type")
end;
function getTroopType(aj)
	local a7 = getTroopTypeCheck(aj)
	if a7 then
		return a7
	else
		return "Unable to GET"
	end
end;
function EquipTroop(ai)
	if not ai or ai == "Nil" then
		ai = "nil"
	end;
	if tostring(ai) ~= "nil" and table.find(getgenv().troops5, tostring(ai)) == nil then
		game.Players.LocalPlayer:Kick("\n\n---------- AUTO STRAT ----------\n\nError 2:\nYou don't own " .. tostring(ai) .. " troop.\n\n---------- AUTO STRAT ----------\n")
		wait(0.5)
		while true do
		end
	end;
	g:FireServer("Inventory", "Execute", "Troops", "Add", {
		["Name"] = ai
	})
	if not getgenv().GoldenPerks then
		getgenv().GoldenPerks = {}
	end;
	if table.find(getgenv().GoldenPerks, ai) then
		g:FireServer("Inventory", "Execute", "Troops", "GoldenPerks", {
			["Troop"] = ai,
			["Enabled"] = true
		})
	else
		g:FireServer("Inventory", "Execute", "Troops", "GoldenPerks", {
			["Troop"] = ai,
			["Enabled"] = false
		})
	end;
	getgenv().status = "Equipped " .. ai
end;
function CheckTroop(ai)
	if not ai or ai == "Nil" then
		ai = "nil"
	end;
	if tostring(ai) ~= "nil" and table.find(getgenv().troops5, tostring(ai)) == nil then
		game.Players.LocalPlayer:Kick("\n\n---------- AUTO STRAT ----------\n\nError 2:\nYou don't own " .. tostring(ai) .. " troop.\n\n---------- AUTO STRAT ----------\n")
		wait(0.5)
		while true do
		end
	end
end;
function skip()
	if isgame() then
		f:InvokeServer("Waves", "Skip")
		getgenv().output("Skipped Wave")
	end
end;
function conv(ak, al)
	local am = ak;
	local an = al * 60;
	local am = am + an;
	return am
end;
writefile(fileprefix .. "LastPrintLog.txt", "")
function prints(ao)
	appendfile(fileprefix .. "LastPrintLog.txt", tostring(ao) .. "\n")
	print(tostring(ao))
end;
function ability(ai, ap)
	if isgame() then
		repeat
			wait()
		until game.Workspace.Towers:FindFirstChild(tostring(ai))
		f:InvokeServer("Troops", "Abilities", "Activate", {
			["Troop"] = game.Workspace.Towers[tostring(ai)],
			["Name"] = ap
		})
		getgenv().output("Used Ability (Troop " .. getTroopType(game.Workspace.Towers[tostring(ai)]) .. " With Number " .. tostring(ai) .. " Ability " .. ap .. ")")
	end
end;
writefile(fileprefix .. "LastStrat.txt", "")
if getgenv().PotatoPC then
	appendfile(fileprefix .. "LastStrat.txt", "getgenv().PotatoPC = true\n")
end;
if getgenv().Debug then
	appendfile(fileprefix .. "LastStrat.txt", "getgenv().Debug = true\n")
end;
if getgenv().GoldenPerks then
	generateline = "getgenv().GoldenPerks = {"
	for c = 1, #getgenv().GoldenPerks do
		generateline = generateline .. "\"" .. getgenv().GoldenPerks[c] .. "\","
	end;
	generateline = generateline .. "}\n"
	appendfile(fileprefix .. "LastStrat.txt", generateline)
end;
appendfile(fileprefix .. "LastStrat.txt", "local TDS = loadstring(game:HttpGet(\"https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2\", true))()\n")
function a:Map(aq, ar, as)
	appendfile(fileprefix .. "LastStrat.txt", "TDS:Map('" .. aq .. "', '" .. tostring(ar) .. "', '" .. as .. "')\n")
	getgenv().mapc = aq;
	if not getgenv().Multiplayer or getgenv().Multiplayer and getgenv().PlayerType == "Host" then
		if as == "Hardcore" and game:GetService("Players").LocalPlayer.Level.Value < 50 then
			game.Players.LocalPlayer:Kick("\n\n---------- AUTO STRAT ----------\n\nError 4:\nYou are not level 50!\nYou can't use Hardcore Mode strats!\n\n---------- AUTO STRAT ----------\n")
			wait(0.5)
			while true do
			end
		end;
		local at = 1;
		if getgenv().Multiplayer and getgenv().PlayerType == "Host" then
			at = getgenv().PlayerNumber;
			repeat
				getgenv().status = "Waiting for plrs..."
				wait()
			until getgenv().FindMap
		else
			if getgenv().Multiplayer and getgenv().PlayerType == "Player" then
				getgenv().status = "Host control mode..."
			end;
			if isgame() and game:GetService("ReplicatedStorage").State.Map.Value ~= aq then
				game:GetService("TeleportService"):Teleport(3260590327)
			end;
			spawn(function()
				if not isgame() and not getgenv().IsMultiStrat then
					spawn(function()
						getgenv().timer = 0;
						while wait(1) do
							getgenv().timer = getgenv().timer + 1
						end
					end)
					getgenv().repeating = true;
					while wait(1) do
						if getgenv().repeating then
							getgenv().repeating = false;
							local au = 0;
							for r, av in pairs(game:GetService('Workspace').Elevators:GetChildren()) do
								local aw = av.State.Map.Title;
								local ax = require(av.Settings).Type;
								local ay = av.State.Players;
								if as == nil then
									as = "Survival"
								end;
								if aw.Value == aq and ax == as then
									if ay.Value <= 0 then
										au = au + 1;
										prints("Join attempt...")
										getgenv().status = "Joining..."
										f:InvokeServer("Elevators", "Enter", av)
										prints("Joined elavator...")
										getgenv().status = "Joined"
										if getgenv().Multiplayer and getgenv().Connection then
											getgenv().Connection:Send('{"client":"Host","action":"Elevator","number":' .. tostring(r) .. ',"userId":' .. game.Players.LocalPlayer.UserId .. ',"playerTwoId":' .. getgenv().Player2Id .. ',"playerThreeId":' .. getgenv().Player3Id .. ',"playerFourId":' .. getgenv().Player4Id .. '}')
										end;
										while wait() do
											getgenv().status = "Joined (" .. av.State.Timer.Value .. "s)"
											if av.State.Timer.Value == 0 then
												local az = true;
												for c = 1, 100 do
													if ar and ay.Value > at then
														if getgenv().Multiplayer and getgenv().Connection then
															getgenv().Connection:Send('{"client":"Host","action":"LElevator","userId":' .. game.Players.LocalPlayer.UserId .. ',"playerTwoId":' .. getgenv().Player2Id .. ',"playerThreeId":' .. getgenv().Player3Id .. ',"playerFourId":' .. getgenv().Player4Id .. '}')
														end;
														prints("Someone joined, leaving elevator...")
														getgenv().status = "Someone joined..."
														f:InvokeServer("Elevators", "Leave")
														getgenv().repeating = true;
														az = false;
														break
													end;
													wait(0.01)
												end;
												if av.State.Timer.Value == 0 and az then
													getgenv().status = "Teleporting..."
													wait(60)
													getgenv().status = "Teleport failed!"
													f:InvokeServer("Elevators", "Leave")
													if getgenv().Multiplayer and getgenv().Connection then
														getgenv().Connection:Send('{"client":"Host","action":"LElevator","userId":' .. game.Players.LocalPlayer.UserId .. ',"playerTwoId":' .. getgenv().Player2Id .. ',"playerThreeId":' .. getgenv().Player3Id .. ',"playerFourId":' .. getgenv().Player4Id .. '}')
													end
												else
													if getgenv().Multiplayer and getgenv().Connection then
														getgenv().Connection:Send('{"client":"Host","action":"LElevator","userId":' .. game.Players.LocalPlayer.UserId .. ',"playerTwoId":' .. getgenv().Player2Id .. ',"playerThreeId":' .. getgenv().Player3Id .. ',"playerFourId":' .. getgenv().Player4Id .. '}')
													end;
													getgenv().status = "Teleport failed! (Timer)"
													f:InvokeServer("Elevators", "Leave")
													getgenv().repeating = true
												end
											end;
											if aw.Value == aq then
												if ar then
													if ay.Value > at then
														if getgenv().Multiplayer and getgenv().Connection then
															getgenv().Connection:Send('{"client":"Host","action":"LElevator","userId":' .. game.Players.LocalPlayer.UserId .. ',"playerTwoId":' .. getgenv().Player2Id .. ',"playerThreeId":' .. getgenv().Player3Id .. ',"playerFourId":' .. getgenv().Player4Id .. '}')
														end;
														f:InvokeServer("Elevators", "Leave")
														prints("Someone joined, leaving elevator...")
														getgenv().status = "Someone joined..."
														getgenv().repeating = true;
														break
													elseif ay.Value == 0 then
														wait(1)
														if ay.Value == 0 then
															wait(1)
															if ay.Value == 0 then
																wait(1)
																if ay.Value == 0 then
																	wait(1)
																	if ay.Value == 0 then
																		if getgenv().Multiplayer and getgenv().Connection then
																			getgenv().Connection:Send('{"client":"Host","action":"LElevator","userId":' .. game.Players.LocalPlayer.UserId .. ',"playerTwoId":' .. getgenv().Player2Id .. ',"playerThreeId":' .. getgenv().Player3Id .. ',"playerFourId":' .. getgenv().Player4Id .. '}')
																		end;
																		prints("Error")
																		getgenv().status = "Error occured, check dev con"
																		prints("Error occured, please open ticket on Money Maker Development discord server!")
																		f:InvokeServer("Elevators", "Leave")
																		getgenv().repeating = true;
																		break
																	end
																end
															end
														end
													end
												end
											else
												f:InvokeServer("Elevators", "Leave")
												prints("Map changed while joining, leaving...")
												if getgenv().Multiplayer and getgenv().Connection then
													getgenv().Connection:Send('{"client":"Host","action":"LElevator","userId":' .. game.Players.LocalPlayer.UserId .. ',"playerTwoId":' .. getgenv().Player2Id .. ',"playerThreeId":' .. getgenv().Player3Id .. ',"playerFourId":' .. getgenv().Player4Id .. '}')
												end;
												getgenv().status = "Map changed..."
												getgenv().repeating = true;
												break
											end
										end
									end
								end
							end;
							if au == 0 then
								getgenv().repeating = true;
								prints("Waiting for map...")
								getgenv().status = "Waiting for map..."
								if getgenv().timer >= 15 then
									getgenv().status = "Force changing maps..."
									getgenv().timer = 0;
									for h, b in pairs(game:GetService('Workspace').Elevators:GetChildren()) do
										local ax = require(b.Settings).Type;
										local ay = b.State.Players;
										if ax == as and ay.Value <= 0 then
											f:InvokeServer("Elevators", "Enter", b)
											wait(1)
											f:InvokeServer("Elevators", "Leave")
										end
									end;
									wait(0.6)
									f:InvokeServer("Elevators", "Leave")
									if getgenv().Multiplayer and getgenv().Connection then
										getgenv().Connection:Send('{"client":"Host","action":"LElevator","userId":' .. game.Players.LocalPlayer.UserId .. ',"playerTwoId":' .. getgenv().Player2Id .. ',"playerThreeId":' .. getgenv().Player3Id .. ',"playerFourId":' .. getgenv().Player4Id .. '}')
									end;
									wait(1)
								end
							end
						end
					end
				end
			end)
		end
	end
end;
if not isfolder("TDS_AutoStrat") and not isfile(fileprefix .. "Webhook (Logs).txt") then
	makefolder("TDS_AutoStrat")
	writefile(fileprefix .. "Webhook (Logs).txt", "WEBHOOK HERE")
end;
writefile("ulszcszu.txt", "KxjhVghCJH")
function a:Mode(aA)
	appendfile(fileprefix .. "LastStrat.txt", "TDS:Mode('" .. aA .. "')\n")
	if isgame() then
		spawn(function()
			local aB = nil;
			repeat
				aB = f:InvokeServer('Difficulty', 'Vote', aA)
				wait()
			until aB;
			getgenv().output("Selected Mode (Mode " .. aA .. ")")
		end)
	end
end;
function a:Loadout(aC, aD, aE, aF, aG)
	getgenv().MapUsed = true;
	if aC == nil then
		aC = "nil"
	end;
	if aD == nil then
		aD = "nil"
	end;
	if aE == nil then
		aE = "nil"
	end;
	if aF == nil then
		aF = "nil"
	end;
	if aG == nil then
		aG = "nil"
	end;
	appendfile(fileprefix .. "LastStrat.txt", "TDS:Loadout('" .. aC .. "', '" .. aD .. "', '" .. aE .. "', '" .. aF .. "', '" .. aG .. "')\n")
	getgenv().status = "Equipping Loadout..."
	getgenv().TroopNameNEW = aC;
	getgenv().TroopName2NEW = aD;
	getgenv().TroopName3NEW = aE;
	getgenv().TroopName4NEW = aF;
	getgenv().TroopName5NEW = aG;
	getgenv().troops5 = {}
	for h, b in next, game.ReplicatedStorage.RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops") do
		table.insert(getgenv().troops5, h)
	end;
	CheckTroop(aC)
	CheckTroop(aD)
	CheckTroop(aE)
	CheckTroop(aF)
	CheckTroop(aG)
	if not isgame() and not getgenv().IsMultiStrat then
		for ad, ae in next, game.ReplicatedStorage.RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops") do
			if ae.Equipped then
				game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Inventory", "Execute", "Troops", "Remove", {
					["Name"] = ad
				})
				getgenv().status = "Removed " .. ad
			end
		end;
		EquipTroop(aC)
		EquipTroop(aD)
		EquipTroop(aE)
		EquipTroop(aF)
		EquipTroop(aG)
		getgenv().status = "Loadout Equipped"
	end
end;
getgenv().Placing = false;
getgenv().Upgrading = false;
local aH = {}
function a:Place(ai, aI, aJ, aK, aL, al, ak, aM, aN, aO, aP, aQ)
	spawn(function()
		if not aM then
			aM = false
		end;
		if aM then
			appendfile(fileprefix .. "LastStrat.txt", "TDS:Place('" .. ai .. "', " .. aI .. ", " .. aJ .. ", " .. aK .. ", " .. aL .. ", " .. al .. ", " .. ak .. ", " .. tostring(aM) .. ", " .. aN .. ", " .. aO .. ", " .. aP .. ")\n")
		else
			appendfile(fileprefix .. "LastStrat.txt", "TDS:Place('" .. ai .. "', " .. aI .. ", " .. aJ .. ", " .. aK .. ", " .. aL .. ", " .. al .. ", " .. ak .. ")\n")
		end;
		if isgame() then
			repeat
				wait()
			until tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value == conv(ak, al) or tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value + 1 == conv(ak, al)
			table.insert(aH, ai)
			table.insert(aH, aI)
			table.insert(aH, aJ)
			table.insert(aH, aK)
			repeat
				wait()
			until getgenv().Placing == false;
			getgenv().Placing = true;
			local aR = nil;
			local aS = 0;
			getgenv().PassPlace = false;
			repeat
				if aM then
					aR = f:InvokeServer("Troops", "Place", ai, {
						["Rotation"] = CFrame.new(aN, aO, aP),
						["Position"] = Vector3.new(aI, aJ, aK)
					})
				elseif not aM then
					aR = f:InvokeServer("Troops", "Place", ai, {
						["Rotation"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
						["Position"] = Vector3.new(aI, aJ, aK)
					})
				end
			until aR or getgenv().PassPlace == true;
			getgenv().Placing = false;
			getgenv().output("Placed " .. ai)
			getgenv().PassPlace = false
		end
	end)
end;
function a:Upgrade(aT, aL, al, ak, aQ)
	spawn(function()
		appendfile(fileprefix .. "LastStrat.txt", "TDS:Upgrade(" .. aT .. ", " .. aL .. ", " .. al .. ", " .. ak .. ")\n")
		if isgame() then
			local ai = aT;
			repeat
				wait()
			until tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value == conv(ak, al) and game.Workspace.Towers:FindFirstChild(tostring(ai)) or tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value + 1 == conv(ak, al) and game.Workspace.Towers:FindFirstChild(tostring(ai))
			repeat
				wait()
			until getgenv().Upgrading == false;
			getgenv().Upgrading = true;
			if not game.Workspace.Towers:FindFirstChild(tostring(ai)) then
				getgenv().output("Warning! Troop with id " .. ai .. " has not been placed!")
				local aR = nil;
				local aS = 0;
				repeat
					aR = f:InvokeServer("Troops", "Place", aH[aT], {
						["Rotation"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
						["Position"] = Vector3.new(aH[aT + 1], aH[aT + 2], aH[aT + 3])
					})
				until aR;
				getgenv().output("Placed " .. aH[aT])
			end;
			local aU = nil;
			repeat
				aU = f:InvokeServer("Troops", "Upgrade", "Set", {
					["Troop"] = game.Workspace.Towers:WaitForChild(tostring(ai))
				})
				wait()
			until aU;
			getgenv().Upgrading = false;
			getgenv().output("Upgraded (Troop " .. getTroopType(game.Workspace.Towers[tostring(aT)]) .. " With Number " .. tostring(ai) .. ")")
		end
	end)
end;
function a:Sell(aT, aL, al, ak, aQ)
	spawn(function()
		appendfile(fileprefix .. "LastStrat.txt", "TDS:Sell(" .. aT .. ", " .. aL .. ", " .. al .. ", " .. ak .. ")\n")
		if isgame() then
			repeat
				wait()
			until tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value == conv(ak, al) or tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value + 1 == conv(ak, al)
			getgenv().output("Sold (Troop " .. getTroopType(game.Workspace.Towers[tostring(aT)]) .. " With Number " .. tostring(aT) .. ")")
			sell(aT)
		end
	end)
end;
function a:Skip(aL, al, ak)
	spawn(function()
		appendfile(fileprefix .. "LastStrat.txt", "TDS:Skip(" .. aL .. ", " .. al .. ", " .. ak .. ")\n")
		if isgame() then
			repeat
				wait()
			until tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value == conv(ak, al) or tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value + 1 == conv(ak, al)
			skip()
		end
	end)
end;
function a:Ability(aT, ap, aL, al, ak)
	spawn(function()
		appendfile(fileprefix .. "LastStrat.txt", 'TDS:Ability(' .. aT .. ', "' .. ap .. '", ' .. aL .. ', ' .. al .. ', ' .. ak .. ')\n')
		if isgame() then
			repeat
				wait()
			until tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value == conv(ak, al) or tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value + 1 == conv(ak, al)
			ability(aT, ap)
		end
	end)
end;
function a:AutoChain(aV, aW, aX, aL, al, ak)
	spawn(function()
		appendfile(fileprefix .. "LastStrat.txt", "TDS:AutoChain(" .. aV .. ", " .. aW .. ", " .. aX .. ", " .. aL .. ", " .. al .. ", " .. ak .. ")\n")
		if isgame() then
			repeat
				wait()
			until tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value == conv(ak, al) or tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value + 1 == conv(ak, al)
			repeat
				wait()
			until game:GetService("Workspace").Towers:FindFirstChild(tostring(aV))
			repeat
				wait()
			until game:GetService("Workspace").Towers:FindFirstChild(tostring(aW))
			repeat
				wait()
			until game:GetService("Workspace").Towers:FindFirstChild(tostring(aX))
			if getTroopType(game.Workspace.Towers[tostring(aV)]) ~= "Commander" then
				getgenv().output("Error, troop with id " .. aV .. " is not Commander!")
			end;
			if getTroopType(game.Workspace.Towers[tostring(aW)]) ~= "Commander" then
				getgenv().output("Error, troop with id " .. aW .. " is not Commander!")
			end;
			if getTroopType(game.Workspace.Towers[tostring(aX)]) ~= "Commander" then
				getgenv().output("Error, troop with id " .. aX .. " is not Commander!")
			end;
			function Act(aY)
				if game:GetService("Workspace").Towers:FindFirstChild(tostring(aY)) then
					local ae = game:GetService("Workspace").Towers:FindFirstChild(tostring(aY))
					if not ae.Replicator.Stuns:GetAttribute("1") and not ae.Replicator.Stuns:GetAttribute("2") and not ae.Replicator.Stuns:GetAttribute("3") then
						game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Troops", "Abilities", "Activate", {
							["Troop"] = game:GetService("Workspace").Towers:FindFirstChild(tostring(aY)),
							["Name"] = "Call Of Arms"
						})
					else
						getgenv().output("Detected stun on commander " .. tostring(aY) .. ", waiting...")
						repeat
							wait()
						until not ae.Replicator.Stuns:GetAttribute("1") and not ae.Replicator.Stuns:GetAttribute("2") and not ae.Replicator.Stuns:GetAttribute("3")
						game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Troops", "Abilities", "Activate", {
							["Troop"] = game:GetService("Workspace").Towers:FindFirstChild(tostring(aY)),
							["Name"] = "Call Of Arms"
						})
					end
				else
					getgenv().output("Commander " .. tostring(aY) .. " removed, aborting AutoChain...")
					getgenv().breaks = true
				end
			end;
			getgenv().output("Activated AutoChain (Troops " .. tostring(aV) .. ", " .. tostring(aW) .. ", " .. tostring(aX) .. ")")
			while wait() do
				if getgenv().breaks then
					break
				end;
				Act(aV)
				wait(10.01)
				Act(aW)
				wait(10.01)
				Act(aX)
				wait(10.01)
			end;
			getgenv().breaks = false
		end
	end)
end;
function a:Target(aT, aL, al, ak)
	spawn(function()
		appendfile(fileprefix .. "LastStrat.txt", "TDS:Target(" .. aT .. ", " .. aL .. ", " .. al .. ", " .. ak .. ")\n")
		if isgame() then
			repeat
				wait()
			until tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value == conv(ak, al) or tonumber(stateRep:GetAttribute("Wave")) == aL and e.State.Timer.Time.Value + 1 == conv(ak, al)
			repeat
				wait()
			until game.Workspace.Towers:FindFirstChild(tostring(aT))
			f:InvokeServer("Troops", "Target", "Set", {
				["Troop"] = game.Workspace.Towers:WaitForChild(tostring(aT))
			})
			getgenv().output("Changed Target (Troop " .. getTroopType(game.Workspace.Towers[tostring(aT)]) .. " With Number " .. tostring(aT) .. ")")
		end
	end)
end;
if isgame() then
	did = false;
	while wait() do
		for h, b in pairs(game.CoreGui:GetDescendants()) do
			if b:IsA("TextLabel") and b.Text == "Camera" then
				b.Parent.Position = UDim2.new(0, 220, 0, 0)
				did = true;
				break
			end
		end;
		if did then
			break
		end
	end
end;
spawn(function()
	if not game.Players.LocalPlayer:IsInGroup(4914494) then
		setclipboard("https://www.roblox.com/groups/4914494/Paradoxum-Games")
		game.Players.LocalPlayer:Kick("\n\n---------- AUTO STRAT ----------\n\nError 5:\nYou need to joing Paradoxum Games group in order to use autostrats (link copied to clipboard)\n\n---------- AUTO STRAT ----------\n")
		wait(0.5)
		while true do
		end
	end
end)
spawn(function()
	local aZ = true;
	if game.PlaceId ~= 5591597781 then
		return
	end;
	repeat
		wait()
	until game:IsLoaded()
	game.Workspace.ChildAdded:Connect(function(b)
		if b.Name == "PhilipsRazor" and b.Position.Y < 1000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false;
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = b.CFrame;
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[getgenv().nameBlock].CFrame + Vector3.new(0, 10, 0)
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		end
	end)
end)
return a
