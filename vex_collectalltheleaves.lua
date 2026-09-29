local lib
lib = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local RunService, localPlayer
local Players = game:GetService("Players")
RunService = game:GetService("RunService")
localPlayer = Players.LocalPlayer
local fn

fn = function(arg, arg2, arg3)
	local str = ""
	local n = #arg

	for i = 1, n do
		local n2 = (i - 1) / math.max(n - 1, 1)
		local floor = math.floor
		local r = arg2.R
		local v = arg3 or arg3
		local v2 = floor((r + (v.R - arg2.R) * n2) * 255)
		local floor2 = math.floor
		local g = arg2.G
		arg3 = v or v
		str ..= string.format("<font color=\"rgb(%d,%d,%d)\">%s</font>", v2, floor2((g + (arg3.G - arg2.G) * n2) * 255), math.floor((arg2.B + (arg3.B - arg2.B) * n2) * 255), arg:sub(i, i))
	end

	return str
end

local str
str = "P"
local str2
str2 = "Willow Rose"
local flag
flag = false
local flag2
flag2 = false
local flag3
flag3 = false
local v
v = nil
local str3 = "https://discord.com/api/v10/invites/" .. "DXHHswuYPb" .. "?with_counts=true&with_expiration=true"
local tbl
tbl = {}
local fn2

fn2 = function(arg, rotation)
	local tbl2 = {}

	for k, v2 in pairs(arg) do
		if type(v2) == "table" then
			local tbl3 = { Color = Color3.fromHex(v2.Color), Transparency = v2.Transparency or 0 }
			tbl2 = tbl2 or tbl2
			tbl2[k] = tbl3
		else
			tbl2[k] = { Color = Color3.fromHex(v2), Transparency = 0 }
		end
	end

	local gradient = lib.Gradient
	local v2 = lib
	local v3 = tbl2
	local tbl3 = {}
	tbl3.Rotation = rotation or 45
	return gradient(v2, v3, tbl3)
end

local fn3

fn3 = function(arg, arg2, arg3, arg4, arg5, arg6)
	local tbl2 = {
		Name = arg,
		Accent = arg2,
		Background = arg3,
		Outline = arg4,
		Text = Color3.fromHex("#FFFFFF"),
		Placeholder = Color3.fromHex("#B8A0A8"),
		Button = arg5,
		Icon = arg6,
	}

	tbl[arg] = tbl2
	lib:AddTheme(tbl2)
	local v2 = nil or nil
end

fn3("Willow Rose", fn2({ ["0"] = "#711E42", ["50"] = "#E45B91", ["100"] = "#711E42" }, 45), fn2({
	["0"] = { Color = "#0B0408", Transparency = 0.06 },
	["25"] = { Color = "#190812", Transparency = 0.08 },
	["50"] = { Color = "#351126", Transparency = 0.1 },
	["75"] = { Color = "#711E42", Transparency = 0.13 },
	["100"] = { Color = "#0B0408", Transparency = 0.06 },
}, 135), fn2({
	["0"] = { Color = "#4B1730", Transparency = 0.45 },
	["50"] = { Color = "#D14F85", Transparency = 0.22 },
	["100"] = { Color = "#5A1C39", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#2A0C1C", Transparency = 0.72 },
	["50"] = { Color = "#7E2850", Transparency = 0.61 },
	["100"] = { Color = "#2A0C1C", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Noir", fn2({
	["0"] = "#111111",
	["25"] = "#252525",
	["50"] = "#777777",
	["75"] = "#252525",
	["100"] = "#111111",
}, 45), fn2({
	["0"] = { Color = "#050505", Transparency = 0.05 },
	["30"] = { Color = "#101010", Transparency = 0.07 },
	["55"] = { Color = "#202020", Transparency = 0.1 },
	["75"] = { Color = "#333333", Transparency = 0.13 },
	["100"] = { Color = "#050505", Transparency = 0.05 },
}, 135), fn2({
	["0"] = { Color = "#FFFFFF", Transparency = 0.78 },
	["50"] = { Color = "#8D8D8D", Transparency = 0.45 },
	["100"] = { Color = "#FFFFFF", Transparency = 0.8 },
}, 90), fn2({
	["0"] = { Color = "#101010", Transparency = 0.7 },
	["50"] = { Color = "#555555", Transparency = 0.48 },
	["100"] = { Color = "#101010", Transparency = 0.7 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Crimson", fn2({ ["0"] = "#5C0B1C", ["50"] = "#A81738", ["100"] = "#5C0B1C" }, 45), fn2({
	["0"] = { Color = "#090306", Transparency = 0.08 },
	["25"] = { Color = "#14050A", Transparency = 0.09 },
	["55"] = { Color = "#260710", Transparency = 0.1 },
	["80"] = { Color = "#5C0B1C", Transparency = 0.14 },
	["100"] = { Color = "#090306", Transparency = 0.08 },
}, 135), fn2({
	["0"] = { Color = "#3A0A15", Transparency = 0.45 },
	["50"] = { Color = "#8B1732", Transparency = 0.22 },
	["100"] = { Color = "#420A17", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#2A0A14", Transparency = 0.72 },
	["50"] = { Color = "#70152B", Transparency = 0.61 },
	["100"] = { Color = "#2A0A14", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Midnight", fn2({ ["0"] = "#171B35", ["50"] = "#4652A8", ["100"] = "#171B35" }, 45), fn2({
	["0"] = { Color = "#05060C", Transparency = 0.08 },
	["25"] = { Color = "#080B17", Transparency = 0.09 },
	["55"] = { Color = "#11182B", Transparency = 0.1 },
	["80"] = { Color = "#202B52", Transparency = 0.14 },
	["100"] = { Color = "#05060C", Transparency = 0.08 },
}, 135), fn2({
	["0"] = { Color = "#1D2447", Transparency = 0.45 },
	["50"] = { Color = "#5867C7", Transparency = 0.22 },
	["100"] = { Color = "#252B55", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#11162D", Transparency = 0.72 },
	["50"] = { Color = "#303D7D", Transparency = 0.61 },
	["100"] = { Color = "#11162D", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Violet", fn2({ ["0"] = "#4A176E", ["50"] = "#A44BE2", ["100"] = "#4A176E" }, 45), fn2({
	["0"] = { Color = "#08040D", Transparency = 0.08 },
	["25"] = { Color = "#12071B", Transparency = 0.09 },
	["55"] = { Color = "#251039", Transparency = 0.1 },
	["80"] = { Color = "#4A176E", Transparency = 0.14 },
	["100"] = { Color = "#08040D", Transparency = 0.08 },
}, 135), fn2({
	["0"] = { Color = "#35144C", Transparency = 0.45 },
	["50"] = { Color = "#9844CF", Transparency = 0.22 },
	["100"] = { Color = "#431B5C", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#1D0C2B", Transparency = 0.72 },
	["50"] = { Color = "#60308A", Transparency = 0.61 },
	["100"] = { Color = "#1D0C2B", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Ocean", fn2({ ["0"] = "#0B4C67", ["50"] = "#36BFEA", ["100"] = "#0B4C67" }, 45), fn2({
	["0"] = { Color = "#03080C", Transparency = 0.08 },
	["25"] = { Color = "#05131C", Transparency = 0.09 },
	["55"] = { Color = "#082735", Transparency = 0.1 },
	["80"] = { Color = "#0B4C67", Transparency = 0.14 },
	["100"] = { Color = "#03080C", Transparency = 0.08 },
}, 135), fn2({
	["0"] = { Color = "#0B384A", Transparency = 0.45 },
	["50"] = { Color = "#36A9D0", Transparency = 0.22 },
	["100"] = { Color = "#0B4055", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#06212E", Transparency = 0.72 },
	["50"] = { Color = "#185E76", Transparency = 0.61 },
	["100"] = { Color = "#06212E", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Emerald", fn2({ ["0"] = "#0B593C", ["50"] = "#38D79A", ["100"] = "#0B593C" }, 45), fn2({
	["0"] = { Color = "#030907", Transparency = 0.08 },
	["25"] = { Color = "#06160F", Transparency = 0.09 },
	["55"] = { Color = "#0A2D20", Transparency = 0.1 },
	["80"] = { Color = "#0B593C", Transparency = 0.14 },
	["100"] = { Color = "#030907", Transparency = 0.08 },
}, 135), fn2({
	["0"] = { Color = "#0B3E2B", Transparency = 0.45 },
	["50"] = { Color = "#32B986", Transparency = 0.22 },
	["100"] = { Color = "#0B4934", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#06261A", Transparency = 0.72 },
	["50"] = { Color = "#177955", Transparency = 0.61 },
	["100"] = { Color = "#06261A", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Ember", fn2({ ["0"] = "#7A2A0C", ["50"] = "#E87530", ["100"] = "#7A2A0C" }, 45), fn2({
	["0"] = { Color = "#0B0604", Transparency = 0.08 },
	["25"] = { Color = "#1A0B06", Transparency = 0.09 },
	["55"] = { Color = "#3A180B", Transparency = 0.1 },
	["80"] = { Color = "#7A2A0C", Transparency = 0.14 },
	["100"] = { Color = "#0B0604", Transparency = 0.08 },
}, 135), fn2({
	["0"] = { Color = "#52200E", Transparency = 0.45 },
	["50"] = { Color = "#CF5C25", Transparency = 0.22 },
	["100"] = { Color = "#642810", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#2C1107", Transparency = 0.72 },
	["50"] = { Color = "#7F3514", Transparency = 0.61 },
	["100"] = { Color = "#2C1107", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Sakura", fn2({ ["0"] = "#8B3A62", ["50"] = "#F4A7C3", ["100"] = "#8B3A62" }, 45), fn2({
	["0"] = { Color = "#0D0508", Transparency = 0.07 },
	["25"] = { Color = "#1C0A12", Transparency = 0.09 },
	["50"] = { Color = "#3A1226", Transparency = 0.11 },
	["75"] = { Color = "#8B3A62", Transparency = 0.14 },
	["100"] = { Color = "#0D0508", Transparency = 0.07 },
}, 135), fn2({
	["0"] = { Color = "#5C2740", Transparency = 0.45 },
	["50"] = { Color = "#E090B0", Transparency = 0.22 },
	["100"] = { Color = "#6B2E4A", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#2E1020", Transparency = 0.72 },
	["50"] = { Color = "#8B4060", Transparency = 0.61 },
	["100"] = { Color = "#2E1020", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Gold", fn2({ ["0"] = "#7A5C00", ["50"] = "#FFD700", ["100"] = "#7A5C00" }, 45), fn2({
	["0"] = { Color = "#0C0A00", Transparency = 0.07 },
	["25"] = { Color = "#1A1400", Transparency = 0.09 },
	["50"] = { Color = "#332900", Transparency = 0.11 },
	["75"] = { Color = "#7A5C00", Transparency = 0.14 },
	["100"] = { Color = "#0C0A00", Transparency = 0.07 },
}, 135), fn2({
	["0"] = { Color = "#4A3800", Transparency = 0.45 },
	["50"] = { Color = "#D4A800", Transparency = 0.22 },
	["100"] = { Color = "#5A4500", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#2A2000", Transparency = 0.72 },
	["50"] = { Color = "#806000", Transparency = 0.61 },
	["100"] = { Color = "#2A2000", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Arctic", fn2({ ["0"] = "#1A4A6E", ["50"] = "#A8DCFF", ["100"] = "#1A4A6E" }, 45), fn2({
	["0"] = { Color = "#030810", Transparency = 0.07 },
	["25"] = { Color = "#06111E", Transparency = 0.09 },
	["55"] = { Color = "#0D253C", Transparency = 0.11 },
	["80"] = { Color = "#1A4A6E", Transparency = 0.14 },
	["100"] = { Color = "#030810", Transparency = 0.07 },
}, 135), fn2({
	["0"] = { Color = "#143555", Transparency = 0.45 },
	["50"] = { Color = "#7ABFEE", Transparency = 0.22 },
	["100"] = { Color = "#184066", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#0A1E32", Transparency = 0.72 },
	["50"] = { Color = "#2060A0", Transparency = 0.61 },
	["100"] = { Color = "#0A1E32", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Lime", fn2({ ["0"] = "#3A6B00", ["50"] = "#A8FF3C", ["100"] = "#3A6B00" }, 45), fn2({
	["0"] = { Color = "#050A00", Transparency = 0.07 },
	["25"] = { Color = "#0C1800", Transparency = 0.09 },
	["55"] = { Color = "#1C3800", Transparency = 0.11 },
	["80"] = { Color = "#3A6B00", Transparency = 0.14 },
	["100"] = { Color = "#050A00", Transparency = 0.07 },
}, 135), fn2({
	["0"] = { Color = "#2A4E00", Transparency = 0.45 },
	["50"] = { Color = "#88DD22", Transparency = 0.22 },
	["100"] = { Color = "#325C00", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#182C00", Transparency = 0.72 },
	["50"] = { Color = "#508000", Transparency = 0.61 },
	["100"] = { Color = "#182C00", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Sunset", fn2({ ["0"] = "#C43B10", ["33"] = "#E0186A", ["66"] = "#7A20B0", ["100"] = "#2A0A55" }, 45), fn2({
	["0"] = { Color = "#080204", Transparency = 0.08 },
	["25"] = { Color = "#150408", Transparency = 0.09 },
	["55"] = { Color = "#280A18", Transparency = 0.1 },
	["80"] = { Color = "#3C0A30", Transparency = 0.14 },
	["100"] = { Color = "#080204", Transparency = 0.08 },
}, 135), fn2({
	["0"] = { Color = "#6A1A08", Transparency = 0.45 },
	["33"] = { Color = "#AA1050", Transparency = 0.3 },
	["66"] = { Color = "#5A1888", Transparency = 0.3 },
	["100"] = { Color = "#18083C", Transparency = 0.45 },
}, 90), fn2({
	["0"] = { Color = "#300804", Transparency = 0.72 },
	["50"] = { Color = "#680E40", Transparency = 0.61 },
	["100"] = { Color = "#140428", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Venom", fn2({ ["0"] = "#2A0855", ["50"] = "#39FF14", ["100"] = "#0A3A04" }, 45), fn2({
	["0"] = { Color = "#06020C", Transparency = 0.08 },
	["25"] = { Color = "#0C0418", Transparency = 0.09 },
	["55"] = { Color = "#0E1A06", Transparency = 0.1 },
	["80"] = { Color = "#182E08", Transparency = 0.14 },
	["100"] = { Color = "#06020C", Transparency = 0.08 },
}, 135), fn2({
	["0"] = { Color = "#1E0640", Transparency = 0.45 },
	["50"] = { Color = "#28BB10", Transparency = 0.22 },
	["100"] = { Color = "#083A04", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#100320", Transparency = 0.72 },
	["50"] = { Color = "#147008", Transparency = 0.61 },
	["100"] = { Color = "#041C02", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Galaxy", fn2({ ["0"] = "#0A1A5E", ["33"] = "#6A10C8", ["66"] = "#C0208E", ["100"] = "#0A1A5E" }, 45), fn2({
	["0"] = { Color = "#03040F", Transparency = 0.08 },
	["25"] = { Color = "#070312", Transparency = 0.09 },
	["55"] = { Color = "#12062A", Transparency = 0.1 },
	["80"] = { Color = "#25083A", Transparency = 0.14 },
	["100"] = { Color = "#03040F", Transparency = 0.08 },
}, 135), fn2({
	["0"] = { Color = "#081045", Transparency = 0.45 },
	["50"] = { Color = "#8A1898", Transparency = 0.25 },
	["100"] = { Color = "#081045", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#050A28", Transparency = 0.72 },
	["50"] = { Color = "#4E0E70", Transparency = 0.61 },
	["100"] = { Color = "#050A28", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Inferno", fn2({ ["0"] = "#6A0808", ["33"] = "#CC3A05", ["66"] = "#EE8000", ["100"] = "#FFCC00" }, 45), fn2({
	["0"] = { Color = "#0C0301", Transparency = 0.08 },
	["25"] = { Color = "#180702", Transparency = 0.09 },
	["55"] = { Color = "#301002", Transparency = 0.1 },
	["80"] = { Color = "#581A00", Transparency = 0.14 },
	["100"] = { Color = "#0C0301", Transparency = 0.08 },
}, 135), fn2({
	["0"] = { Color = "#480604", Transparency = 0.45 },
	["50"] = { Color = "#C85500", Transparency = 0.22 },
	["100"] = { Color = "#A07800", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#280302", Transparency = 0.72 },
	["50"] = { Color = "#883000", Transparency = 0.61 },
	["100"] = { Color = "#5A4400", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Candy", fn2({ ["0"] = "#CC0066", ["50"] = "#00DDFF", ["100"] = "#CC0066" }, 45), fn2({
	["0"] = { Color = "#0C0108", Transparency = 0.08 },
	["25"] = { Color = "#160210", Transparency = 0.09 },
	["55"] = { Color = "#06141A", Transparency = 0.1 },
	["80"] = { Color = "#0A1E26", Transparency = 0.14 },
	["100"] = { Color = "#0C0108", Transparency = 0.08 },
}, 135), fn2({
	["0"] = { Color = "#800040", Transparency = 0.45 },
	["50"] = { Color = "#00AABB", Transparency = 0.22 },
	["100"] = { Color = "#800040", Transparency = 0.42 },
}, 90), fn2({
	["0"] = { Color = "#400020", Transparency = 0.72 },
	["50"] = { Color = "#006878", Transparency = 0.61 },
	["100"] = { Color = "#400020", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

fn3("Willow Prism", fn2({
	["0"] = "#CC1010",
	["25"] = "#EE8800",
	["50"] = "#AADD00",
	["75"] = "#00CCEE",
	["100"] = "#CC1010",
}, 45), fn2({
	["0"] = { Color = "#0C0101", Transparency = 0.08 },
	["25"] = { Color = "#180A01", Transparency = 0.09 },
	["55"] = { Color = "#0A1204", Transparency = 0.1 },
	["80"] = { Color = "#011418", Transparency = 0.14 },
	["100"] = { Color = "#0C0101", Transparency = 0.08 },
}, 135), fn2({
	["0"] = { Color = "#882008", Transparency = 0.45 },
	["33"] = { Color = "#887700", Transparency = 0.35 },
	["66"] = { Color = "#008899", Transparency = 0.35 },
	["100"] = { Color = "#882008", Transparency = 0.45 },
}, 90), fn2({
	["0"] = { Color = "#441204", Transparency = 0.72 },
	["50"] = { Color = "#444400", Transparency = 0.61 },
	["100"] = { Color = "#004455", Transparency = 0.74 },
}, 90), Color3.fromHex("#FFFFFF"))

lib:SetTheme("Willow Rose")
local v2, fn4, v3, fn5, fn6

do
	local tbl2 = {
		["Willow Rose"] = { Low = "#711E42", High = "#E45B91" },
		["Willow Noir"] = { Low = "#101010", High = "#777777" },
		["Willow Crimson"] = { Low = "#5C0B1C", High = "#A81738" },
		["Willow Midnight"] = { Low = "#171B35", High = "#4652A8" },
		["Willow Violet"] = { Low = "#4A176E", High = "#A44BE2" },
		["Willow Ocean"] = { Low = "#0B4C67", High = "#36BFEA" },
		["Willow Emerald"] = { Low = "#0B593C", High = "#38D79A" },
		["Willow Ember"] = { Low = "#7A2A0C", High = "#E87530" },
		["Willow Sakura"] = { Low = "#8B3A62", High = "#F4A7C3" },
		["Willow Gold"] = { Low = "#7A5C00", High = "#FFD700" },
		["Willow Arctic"] = { Low = "#1A4A6E", High = "#A8DCFF" },
		["Willow Lime"] = { Low = "#3A6B00", High = "#A8FF3C" },
		["Willow Sunset"] = { Low = "#C43B10", High = "#E0186A" },
		["Willow Venom"] = { Low = "#2A0855", High = "#39FF14" },
		["Willow Galaxy"] = { Low = "#0A1A5E", High = "#C0208E" },
		["Willow Inferno"] = { Low = "#6A0808", High = "#FFCC00" },
		["Willow Candy"] = { Low = "#CC0066", High = "#00DDFF" },
		["Willow Prism"] = { Low = "#CC1010", High = "#00CCEE" },
	}

	local tbl3 = {
		["Willow Rose"] = "#E45B91",
		["Willow Noir"] = "#666666",
		["Willow Crimson"] = "#A81738",
		["Willow Midnight"] = "#4652A8",
		["Willow Violet"] = "#A44BE2",
		["Willow Ocean"] = "#36BFEA",
		["Willow Emerald"] = "#38D79A",
		["Willow Ember"] = "#E87530",
		["Willow Sakura"] = "#F4A7C3",
		["Willow Gold"] = "#FFD700",
		["Willow Arctic"] = "#A8DCFF",
		["Willow Lime"] = "#A8FF3C",
		["Willow Sunset"] = "#E0186A",
		["Willow Venom"] = "#39FF14",
		["Willow Galaxy"] = "#C0208E",
		["Willow Inferno"] = "#EE8000",
		["Willow Candy"] = "#00DDFF",
		["Willow Prism"] = "#AADD00",
	}

	local function fn7(arg)
		local willowRose = tbl2[arg] or tbl2["Willow Rose"]
		local color = Color3.fromHex
		local high = willowRose.High
		return ColorSequence.new(Color3.fromHex(willowRose.Low), color(high))
	end

	local v4 = fn7

	local function fn8(arg)
		return Color3.fromHex(tbl3[arg] or tbl3["Willow Rose"])
	end

	local v5 = fn8

	local function fn9(arg, content, icon, duration, arg2)
		duration = duration or 4
		if flag and not arg2 then
			return
		end

		if flag2 and not arg2 then
			return
		end
		flag2 = true
		local notify = lib.Notify
		local v6 = lib
		local tbl4 = { Title = arg }
		tbl4.Content = content or content
		tbl4.Icon = icon or "info"
		tbl4.Duration = duration
		notify(v6, tbl4)

		task.delay(duration, function()
			flag2 = false
		end)
	end

	v2 = fn9

	fn4 = function()
		if flag3 then
			return
		end
		flag3 = true

		lib:Notify({
			Title = "CollectAllTheLeaves Closed",
			Content = "Press \"" .. str .. "\" to reopen.",
			Icon = "keyboard",
			Duration = 5,
		})

		task.delay(5, function()
			flag3 = false
		end)
	end

	local createWindow = lib.CreateWindow
	local v6 = lib

	local tbl4 = {
		Title = "Collect All The Leaves",
		Icon = "leaf",
		Author = "Join our discord server now!",
		Folder = "CollectAllTheLeaves",
		Size = UDim2.fromOffset(700, 480),
		MinSize = Vector2.new(580, 390),
		MaxSize = Vector2.new(920, 680),
		ToggleKey = Enum.KeyCode.P,
		Transparent = true,
		Theme = "Willow Rose",
		Resizable = true,
		SideBarWidth = 180,
		HideSearchBar = true,
	}

	local v7 = tbl4 or tbl4
	v7.ScrollBarEnabled = true
	v7.BackgroundImageTransparency = 0.5
	v7.ShadowTransparency = 0.22
	v7.Radius = 14
	v7.ElementsRadius = 10
	v7.Acrylic = true
	v7.NewElements = true
	v7.HidePanelBackground = true

	v7.OpenButton = {
		Title = "Collect All The Leaves",
		Icon = "leaf",
		CornerRadius = UDim.new(1, 0),
		StrokeThickness = 1,
		Draggable = true,
		Enabled = true,
		OnlyMobile = false,
		Scale = 0.92,
		Color = v4("Willow Rose"),
	}

	v7.User = {
		Enabled = true,
		Anonymous = false,
		Callback = function()
			v2("CollectAllTheLeaves", localPlayer.Name, "user", 3)
		end,
	}

	v3 = createWindow(v6, v7)
	v3:SetBackgroundTransparency(0.5)

	fn5 = function(arg)
		pcall(function()
			v3:EditOpenButton({
				Title = "Collect All The Leaves",
				Icon = "leaf",
				CornerRadius = UDim.new(1, 0),
				StrokeThickness = 1,
				Enabled = true,
				Draggable = true,
				OnlyMobile = false,
				Scale = 0.92,
				Color = v4(arg),
			})
		end)
	end

	local v8 = v3:Tag({ Title = "v1.0.0", Icon = "badge-check", Color = v5("Willow Rose"), Radius = 7 })
	local v9 = v3:Tag({ Title = "FPS: --", Icon = "gauge", Color = v5("Willow Rose"), Radius = 7 })

	fn6 = function(arg)
		local v10 = v5(arg)

		pcall(function()
			v8:SetColor(v10)
		end)

		pcall(function()
			v9:SetColor(v10)
		end)

		local v11 = nil or nil
	end

	fn5("Willow Rose")
	fn6("Willow Rose")
	local clock = os.clock
	local n = 0
	local n2 = 0
	local now = clock()

	RunService.RenderStepped:Connect(function()
		n2 += 1

		if os.clock() - now >= 1 then
			n = n2
			n2 = 0
			now = os.clock()
			v9:SetTitle("FPS: " .. tostring(n))
		end
	end)
end

local v4
v4 = v3:Tab({ Title = "Home", Icon = "house", Border = true })
local v5
v5 = v3:Tab({ Title = "Main", Icon = "leaf", Border = true })
local v6
v6 = v3:Tab({ Title = "Misc", Icon = "sparkles", Border = true })
local v7
v7 = v3:Tab({ Title = "Settings", Icon = "settings", Border = true })
v4:Select()
local LeafSim
LeafSim = nil

pcall(function()
	LeafSim = require(localPlayer:WaitForChild("PlayerScripts"):WaitForChild("LeafSim"))
end)

local ReplicatedStorage
ReplicatedStorage = game:GetService("ReplicatedStorage")
local emptyBackpack
emptyBackpack = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("EmptyBackpack")
local UpgradeConfig
UpgradeConfig = nil

pcall(function()
	UpgradeConfig = require(ReplicatedStorage:WaitForChild("UpgradeConfig", 5))
end)

local buyUpgrade
buyUpgrade = nil

pcall(function()
	buyUpgrade = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("BuyUpgrade")
end)

local MapRegistry
MapRegistry = nil

pcall(function()
	MapRegistry = require(ReplicatedStorage:WaitForChild("MapRegistry", 5))
end)

local buyVent
buyVent = nil

pcall(function()
	buyVent = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("BuyVent")
end)

local buyBagUpgrade
buyBagUpgrade = nil

pcall(function()
	buyBagUpgrade = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("BuyBagUpgrade")
end)

local buyToolCash
buyToolCash = nil

pcall(function()
	buyToolCash = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("BuyToolCash")
end)

local doorToggle
doorToggle = nil

do
	local v8 = pcall

	local function fn7()
		doorToggle = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("DoorToggle")
	end

	v8(fn7)
end

local flag4
flag4 = false
local flag5
flag5 = false
local flag6
flag6 = false
local tbl2
tbl2 = { Normal = true, Red = true, Rainbow = true }
local flag7
flag7 = false
local n, connection, v8, v9, v10

do
	local connection2 = nil
	n = 20
	local connection3 = nil
	connection = nil
	local thread = nil

	local function fn7()
		local character = localPlayer.Character
		return character and character:FindFirstChild("HumanoidRootPart")
	end

	v8 = fn7

	local function fn8()
		if localPlayer:GetAttribute("InfiniteBag") or localPlayer:GetAttribute("PermInfiniteBag") then
			return 100
		end
		local n2 = math.floor(((localPlayer:GetAttribute("LeafCapacity") or 25) - (localPlayer:GetAttribute("Leaves") or 0)) / math.max(localPlayer:GetAttribute("LeafMult") or 1, 1))

		if LeafSim and LeafSim.collectBudget then
			local ok, result = pcall(LeafSim.collectBudget)

			if ok and type(result) == "number" and result > 0 and result < n2 then
				n2 = result
			end
		end

		return math.max(n2, 0)
	end

	local v11 = fn8

	local function fn9()
		return v11() <= 0
	end

	local v12 = fn9

	local function fn10()
		if not getfenv()[nil] then
			local tbl3 = {}
			getfenv()[nil] = { [false] = tbl3, [true] = tbl3, [0] = tbl3 }
		end

		local flag8 = not LeafSim

		if not flag8 then
			local v13 = LeafSim[nil]
			local v14 = getfenv()[nil]
			local v15 = v14[false]
			local v16 = v14[true]
			local v17 = v14[0]

			if not v13 then
				v15[2116951813] = v13
			else
				v16[2116951813] = v13
			end

			flag8 = not v17[2116951813]
		end

		if flag8 then
			return
		end
		local v13 = LeafSim[nil]

		for _, v14 in getfenv()[nil](v13[nil](v13)) do
			if v14[nil](v14, nil) and v14[nil](v14, nil) then
				return v14
			end
		end
	end

	local v13 = fn10

	local function fn11(arg)
		if not LeafSim then
			return 1
		end
		local ok, result = pcall(LeafSim.leafValueOfPart, arg)
		return ok and type(result) == "number" and result or 1
	end

	local v14 = fn11

	local function fn12(arg)
		if tbl2.Rainbow and arg >= 10 then
			return true
		end
		local flag8 = tbl2.Red and arg >= 2

		if flag8 then
			arg = arg or arg
			flag8 = arg < 10
		end

		if flag8 then
			return true
		end

		if tbl2.Normal and arg == 1 then
			return true
		end
		return false
	end

	local v15 = fn12

	local function fn13(arg)
		local v16 = arg[nil](arg, nil)
		if v16 == nil or v16 == nil then
			return true
		end

		if v16 == localPlayer[nil](localPlayer, nil) then
			return true
		end

		if localPlayer[nil](localPlayer, nil .. v16) then
			return true
		end
		return false
	end

	local v16 = fn13

	local function fn14()
		local tbl3 = {}
		local v17 = getfenv()[nil][nil](getfenv()[nil], nil)
		local v18 = v17 and v17[nil](v17, nil)

		if v18 then
			for _, v19 in getfenv()[nil](v18[nil](v18)) do
				if v19[nil](v19, nil) then
					tbl3[#tbl3 + 1] = v19
				end
			end
		end

		if #tbl3 == 0 then
			local v19 = getfenv()[nil]

			for _, v20 in getfenv()[nil](v19[nil](v19)) do
				if v20[nil](v20, nil) and v20[nil](v20, nil) then
					tbl3[#tbl3 + 1] = v20
				end
			end
		end

		local v19 = v8()
		if not v19 or #tbl3 == 0 then
			return nil, nil
		end
		local v20 = nil

		for _, v21 in getfenv()[nil](tbl3) do
			local v22 = v21
			local v23 = v21[nil](v22, nil)

			if getfenv()[nil](v23) == nil and v23 == nil then
				local v24 = v21[nil](v21, nil)
				local v25 = nil

				if v24 and v24[nil](v24, nil) then
					v25 = v24[nil]
				else
					local v26 = nil

					local v27, v28 = getfenv()[nil](function()
						return v21[nil](v21)[nil]
					end)

					if v27 then
						v25 = v28
					end
				end

				if v25 then
					if (v19[nil] - v25)[nil] < v22 then
						v20 = v21
					end
				end
			end
		end

		if not v20 then
			return nil, nil
		end
		local v21 = v20[nil](v20, nil)
		if v21 and v21[nil](v21, nil) then
			return v21[nil], v20
		end
		local v22 = nil

		local v23, v24 = getfenv()[nil](function()
			return v20[nil](v20)[nil]
		end)

		return v23 and v24 or nil, v20
	end

	local v17 = fn14

	local function fn15()
		if not getfenv()[nil] then
			local tbl3 = {}
			getfenv()[nil] = { [false] = tbl3, [true] = tbl3, [0] = tbl3 }
		end

		local tbl3 = {}
		local v18 = getfenv()[nil][nil](getfenv()[nil], nil)
		local v19 = v18 and v18[nil](v18, nil)

		if v19 then
			for _, v20 in getfenv()[nil](v19[nil](v19)) do
				if v20[nil](v20, nil) then
					tbl3[#tbl3 + 1] = v20
				end
			end
		end

		if #tbl3 == 0 then
			local v20 = getfenv()[nil]

			for _, v21 in getfenv()[nil](v20[nil](v20)) do
				if v21[nil](v21, nil) and v21[nil](v21, nil) then
					tbl3[#tbl3 + 1] = v21
				end
			end
		end

		if #tbl3 == 0 then
			return nil
		end
		local v20 = v8()
		if not v20 then
			return nil
		end
		local tbl4 = {}
		local tbl5 = {}

		for _, v21 in getfenv()[nil](tbl3) do
			if v16(v21) then
				local v22 = v21[nil](v21, nil)

				if v22 == nil or v22 == nil then
					local v23 = getfenv()[nil]
					local v24 = v23[false]
					local v25 = v23[true]
					local v26 = v23[0]

					if not tbl5 then
						v24[2116689006] = tbl5
					else
						v25[2116689006] = tbl5
					end

					tbl5 = v26[2116689006]
					local n2 = #tbl5
					local v27 = getfenv()[nil]
					local v28 = v27[false]
					local v29 = v27[true]
					local v30 = v27[0]

					if not n2 then
						v28[2116820380] = n2
					else
						v29[2116820380] = n2
					end

					tbl5[v30[2116820380] + 1] = v21
				else
					tbl4[#tbl4 + 1] = v21
				end
			end
		end

		local n2 = #tbl4
		local v21 = getfenv()[nil]
		local v22 = v21[false]
		local v23 = v21[true]
		local v24 = v21[0]

		if not n2 then
			v22[2116951438] = n2
		else
			v23[2116951438] = n2
		end

		local flag8 = v24[2116951438] > 0 and tbl4 or tbl5
		if #flag8 == 0 then
			return nil
		end
		local v25 = nil

		for _, v26 in getfenv()[nil](flag8) do
			local v27 = v26
			local v28 = v26[nil](v27, nil)
			local v29 = nil

			if v28 and v28[nil](v28, nil) then
				v29 = v28[nil]
			else
				local v30 = nil

				local v31, v32 = getfenv()[nil](function()
					return v26[nil](v26)[nil]
				end)

				if v31 then
					v29 = v32
				end
			end

			if v29 then
				if (v20[nil] - v29)[nil] < v27 then
					v25 = v26
				end
			end
		end

		if not v25 then
			return nil
		end
		local v26 = v25[nil](v25, nil)
		if v26 and v26[nil](v26, nil) then
			return v26[nil]
		end
		local v27 = nil

		local v28, v29 = getfenv()[nil](function()
			return v25[nil](v25)[nil]
		end)

		if v28 then
			return v29
		end
	end

	local v18 = fn15

	local function fn16()
		local v19 = v8()
		if not v19 then
			return
		end
		local v20 = v17()
		if not v20 then
			return
		end
		local vector = Vector3.new(0, 3, 0)
		local cFrame = v19.CFrame
		v19.CFrame = CFrame.new(v20 + vector)
		task.wait(0.15)

		local function fn17()
			emptyBackpack[nil](emptyBackpack)
		end

		for i = 1, 8 do
			pcall(fn17)
			task.wait(0.3)

			if v12() then
				v19.CFrame = CFrame.new(v20 + vector + Vector3.new(0, 0.05 * i, 0))
				task.wait(0.1)
				continue
			end

			break
		end

		task.wait(0.1)
		v19.CFrame = cFrame
	end

	local raycastParams = RaycastParams.new()
	raycastParams.FilterType = Enum.RaycastFilterType.Exclude
	raycastParams.IgnoreWater = true

	local function fn17(arg)
		if not getfenv()[nil] then
			local tbl3 = {}
			getfenv()[nil] = { [false] = tbl3, [true] = tbl3, [0] = tbl3 }
		end

		local v19 = raycastParams
		local v20 = nil
		local tbl3 = {}
		local v21 = localPlayer[nil]
		local v22 = LeafSim and LeafSim[nil]
		tbl3[1] = v21
		tbl3[2] = v22
		v19[v20] = tbl3
		local v23 = getfenv()[nil][nil](getfenv()[nil], arg + Vector3.new(0, 3, 0), Vector3.new(0, -40, 0), raycastParams)
		local flag8 = v23

		if flag8 then
			local y = v23.Position.Y
			local y2 = arg.Y
			local v24 = getfenv()[nil]
			local v25 = v24[false]
			local v26 = v24[true]
			local v27 = v24[0]

			if not y2 then
				v25[2116952047] = y2
			else
				v26[2116952047] = y2
			end

			flag8 = y <= v27[2116952047] + 3
		end

		if flag8 then
			return v23.Position + Vector3.new(0, 3.5, 0)
		end
		return arg + Vector3.new(0, 3.5, 0)
	end

	v9 = fn17

	local function fn18(arg, arg2)
		if not getfenv()[nil] then
			local tbl3 = {}
			getfenv()[nil] = { [false] = tbl3, [true] = tbl3, [0] = tbl3 }
		end

		local v19 = v8()
		if not v19 then
			return false
		end
		local cFrame = v19.CFrame
		local v20 = getfenv()[nil][nil](arg)
		local n2 = arg - cFrame[nil]
		local v21 = nil
		local v22 = getfenv()[nil]
		local v23 = v22[false]
		local v24 = v22[true]
		local v25 = v22[0]

		if not n2 then
			v23[2116951691] = n2
		else
			v24[2116951691] = n2
		end

		local v26 = v25[2116951691][v21]

		if v26 < 3 then
			v19.AssemblyLinearVelocity = Vector3.zero
			v19.CFrame = v20
			return true
		end

		local v27 = getfenv()[nil][nil](v26 / 420, 0.08, 0.35)
		local now = os.clock()
		local anchored = v19.Anchored
		v19.Anchored = true

		while true do
			if arg2 and arg2() then
				v19.Anchored = anchored
				return false
			end
			local n3 = (os.clock() - now) / v27

			if n3 >= 1 then
				v19.CFrame = v20
				v19.Anchored = anchored
				v19.AssemblyLinearVelocity = Vector3.zero
				return true
			end

			v19.CFrame = cFrame[nil](cFrame, v20, n3)
			RunService.Heartbeat[nil](RunService.Heartbeat)
			local v28 = v8()
			if not v28 then
				break
			end
			v19 = v28
		end

		getfenv()[nil](function()
			v19[nil] = anchored
		end)

		return false
	end

	v10 = fn18

	local function fn19()
		if not LeafSim or not LeafSim.folder then
			return
		end
		local v19 = v8()
		if not v19 then
			return
		end

		if v12() then
			fn16()
			task.wait(0.5)
		end

		local tbl3 = {}

		for _, child in ipairs(LeafSim.folder:GetChildren()) do
			if child:IsA("BasePart") then
				local v20 = v14(child)

				if v15(v20) then
					local n2 = #tbl3 + 1

					if not { part = child, pos = child.Position } then
					end

					local v21 = nil
					v21.value = v20
					tbl3[n2] = v21
				end
			end
		end

		if #tbl3 == 0 then
			return
		end
		local position = v19.Position

		table.sort(tbl3, function(arg, arg2)
			if not getfenv()[nil] then
				local tbl4 = {}
				getfenv()[nil] = { [false] = tbl4, [true] = tbl4, [0] = tbl4 }
			end

			if arg.value ~= arg2.value then
				return arg.value > arg2.value
			end
			local magnitude = (arg.pos - position).Magnitude
			local magnitude2 = (arg2.pos - position).Magnitude
			local v20 = getfenv()[nil]
			local v21 = v20[false]
			local v22 = v20[true]
			local v23 = v20[0]

			if not magnitude then
				v21[2116951887] = magnitude
			else
				v22[2116951887] = magnitude
			end

			return v23[2116951887] < magnitude2
		end)

		local function fn20()
			return not flag6
		end

		local tbl4 = {}

		for _, v20 in ipairs(tbl3) do
			if not fn20() then
				if v20.part.Parent ~= LeafSim.folder then
					continue
				else
					local v21 = v9(v20.pos)
					local flag8 = false
					local exitTo = nil

					for _, v22 in ipairs(tbl4) do
						if (v21 - v22).Magnitude < 8 then
							exitTo = 1
							break
						end
					end

					if exitTo == 1 then
						flag8 = true
					end

					if flag8 then
						continue
					else
						tbl4[#tbl4 + 1] = v21

						if v10(v21, fn20) then
							task.wait(0.2)

							if not fn20() then
								local v22 = v8()

								if v22 then
									local v23, tbl5, flag9, n2

									if v12() then
										fn16()
										task.wait(0.5)

										if not fn20() then
											v23 = v11()

											if not (v23 <= 0) then
												tbl5 = {}

												for _, child in ipairs(LeafSim.folder:GetChildren()) do
													flag9 = child:IsA("BasePart") and v15(v14(child)) and (child.Position - v22.Position).Magnitude <= 14 and #tbl5 < v23

													if flag9 then
														n2 = #tbl5 + 1
														tbl5[n2] = child
													end
												end

												if #tbl5 > 0 then
													pcall(function()
														LeafSim[nil](tbl5)
													end)
												end

												task.wait(0.1)

												if v12() then
													fn16()
													task.wait(0.5)
												end
											end

											continue
										end
									else
										v23 = v11()

										if not (v23 <= 0) then
											tbl5 = {}

											for _, child in ipairs(LeafSim.folder:GetChildren()) do
												flag9 = child:IsA("BasePart") and v15(v14(child)) and (child.Position - v22.Position).Magnitude <= 14 and #tbl5 < v23

												if flag9 then
													n2 = #tbl5 + 1
													tbl5[n2] = child
												end
											end

											if #tbl5 > 0 then
												pcall(function()
													LeafSim[nil](tbl5)
												end)
											end

											task.wait(0.1)

											if v12() then
												fn16()
												task.wait(0.5)
											end
										end

										continue
									end
								end
							end
						end
					end
				end
			end

			break
		end
	end

	local v19 = fn19

	local function fn20()
		if thread then
			return
		end

		thread = task.spawn(function()
			while flag6 do
				pcall(v19)
				task.wait(0.5)
			end

			pcall(function()
				if not getfenv()[nil] then
					getfenv()[nil] = { {}, [false] = {}, [true] = {} }
				end

				local v20 = v18()
				if not v20 then
					return
				end
				local v21 = v8()
				if not v21 then
					return
				end
				local n2 = v21[nil] - v20
				local v22 = getfenv()[nil][nil](n2[nil], 0, n2[nil])
				local v23 = v22
				local v24 = v22[nil]
				local v25 = getfenv()[nil]
				local v26 = v25[false]
				local v27 = v25[true]
				local v28 = v25[0]

				if not v24 then
					v26[2116951710] = v24
				else
					v27[2116951710] = v24
				end

				if v28[2116951710] < 1 then
					v23 = getfenv()[nil][nil](0, 0, 1)
				end

				local n3 = v20 + v23[nil] * 4 + getfenv()[nil][nil](0, 3, 0)
				local v29 = nil
				v21[v29] = getfenv()[nil][nil](n3, getfenv()[nil][nil](v20[nil], n3[nil], v20[nil]))
				getfenv()[nil][nil](0.15)

				local function fn21()
					emptyBackpack[nil](emptyBackpack)
				end

				for i = 1, 8 do
					local v30 = v8()

					if v30 then
						v30[nil] = getfenv()[nil][nil](n3, getfenv()[nil][nil](v20[nil], n3[nil], v20[nil]))
						getfenv()[nil](fn21)
						getfenv()[nil][nil](0.3)
						if v12() then
							getfenv()[nil][nil](0.1)
							continue
						end
					end

					break
				end

				local v30 = v8()

				if v30 then
					v30[v29] = false
					v30[v29] = getfenv()[nil][nil]
				end
			end)

			thread = nil
		end)
	end

	local v20 = fn20

	local function fn21()
		local flag8 = not LeafSim

		if not flag8 then
			local folder = LeafSim.folder
			flag8 = not (folder or folder)
		end

		if flag8 then
			return
		end

		connection3 = RunService.Heartbeat:Connect(function()
			if not flag4 then
				return
			end

			if localPlayer:GetAttribute("HandCooldown") or v12() then
				return
			end

			if not localPlayer:GetAttribute("HoveringLeaf") then
				return
			end
			local v21 = v13()
			if not v21 then
				return
			end

			pcall(function()
				if typeof(LeafSim.collect) == nil then
					LeafSim.collect(v21)
				else
					LeafSim.collectMany({ v21 })
				end
			end)

			localPlayer:SetAttribute("HandCooldown", true)
			local n2 = 0.5

			if LeafSim.upgEffect then
				local ok, result = pcall(LeafSim.upgEffect, "Hand", "Dexterity")

				if ok and type(result) == "number" then
					n2 = result
				end
			end

			task.delay(n2, function()
				localPlayer[nil](localPlayer, nil, false)
			end)
		end)
	end

	local v21 = fn21

	local function fn22()
		if not getfenv()[nil] then
			getfenv()[nil] = { {}, [false] = {}, [true] = {} }
		end

		local flag8 = not LeafSim

		if not flag8 then
			local v22 = LeafSim[nil]
			local v23 = getfenv()[nil]
			local v24 = v23[false]
			local v25 = v23[true]
			local v26 = v23[0]

			if not v22 then
				v24[2116952049] = v22
			else
				v25[2116952049] = v22
			end

			flag8 = not v26[2116952049]
		end

		if flag8 then
			return
		end
		local v22 = v8()
		if not v22 then
			return
		end

		if v12() then
			return
		end
		local v23 = v22[nil]
		local v24 = v11()
		local tbl3 = {}
		local v25 = LeafSim[nil]

		for _, v26 in getfenv()[nil](v25[nil](v25)) do
			if not (#tbl3 >= v24) then
				if v26[nil](v26, nil) then
					if (v26[nil] - v23)[nil] <= n then
						tbl3[#tbl3 + 1] = v26
					end
				end

				continue
			end

			break
		end

		if #tbl3 > 0 then
			local v26 = nil

			getfenv()[nil](function()
				LeafSim[nil](tbl3)
			end)
		end
	end

	local v22 = fn22

	local function fn23()
		if connection2 then
			return
		end

		connection2 = RunService.Heartbeat:Connect(function()
			if not flag7 then
				return
			end
			pcall(v22)
		end)
	end

	local v23 = fn23

	local function fn24()
		local flag8 = false

		connection = RunService.Heartbeat:Connect(function()
			if not flag5 then
				return
			end

			if flag8 or not v12() then
				return
			end
			flag8 = true
			local v24 = v8()
			local v25 = v18()

			if v24 and v25 then
				local cFrame = v24.CFrame
				v24.CFrame = CFrame.new(v25 + Vector3.new(0, 3, 0))
				task.wait(0.05)

				pcall(function()
					emptyBackpack[nil](emptyBackpack)
				end)

				task.wait(0.1)
				v24.CFrame = cFrame
			end

			task.delay(0.5, function()
				flag8 = false
			end)
		end)
	end

	v4:Paragraph({
		Title = "Collect All The Leaves " .. "v1.0.0",
		Thumbnail = "https://cdn.phototourl.com/free/2026-08-19-243eba55-c8eb-446d-9614-8c593a57cd7c.webp",
		ThumbnailSize = 160,
	})

	local num = tonumber(os.date("%H"))
	local str4

	if num >= 5 and num < 12 then
		str4 = "Good morning, hope you slept well. Ready to collect some leaves?"
	elseif num >= 12 and num < 14 then
		str4 = "Right in the middle of the day. Good time to get some farming in."
	else
		local flag8 = num >= 14

		if flag8 ~= nil then
			if flag8 ~= false then
				flag8 = num < 17
			end
		end

		if flag8 then
			str4 = "Afternoon already. Hope the day's been treating you well."
		elseif num >= 17 and num < 20 then
			str4 = "Evening's coming in. Nothing like winding down with a good farm."
		else
			local flag9 = num >= 20

			if flag9 ~= nil then
				if flag9 ~= false then
					flag9 = num < 23
				end
			end

			if flag9 then
				str4 = "Getting late. Don't stay up too long, but get those leaves first."
			else
				str4 = "It's pretty late. You're either dedicated or just can't sleep."
			end
		end
	end

	local str5 = "Unknown"

	if type(identifyexecutor) == "function" then
		local ok, result = pcall(identifyexecutor)

		if ok and type(result) == "string" then
			str5 = result
		end
	elseif type(getexecutorname) == "function" then
		local ok, result = pcall(getexecutorname)

		if ok and type(result) == "string" then
			str5 = result
		end
	end

	v4:Paragraph({
		Title = "<font color=\"#22c55e\">Welcome " .. localPlayer.Name .. "</font>",
		Desc = str4 .. "\n\n" .. "• Executor : " .. str5 .. "\n" .. "• " .. "v1.0.0" .. " | Managed by Luna",
		Icon = "layers-3",
	})

	v4:Divider()
	v4:Section({ Title = "Discord Server", Icon = "message-circle", Opened = true })
	local HttpService = game:GetService("HttpService")

	local ok, result = pcall(function()
		return lib.Creator.Request({
			Url = "https://discord.com/api/v10/invites/DXHHswuYPb?with_counts=true&with_expiration=true",
			Method = "GET",
			Headers = { ["User-Agent"] = "RobloxBot/1.0", Accept = "application/json" },
		})
	end)

	if ok and result and result.Body then
		local ok2, result2 = pcall(function()
			return HttpService:JSONDecode(result.Body)
		end)

		if ok2 and result2 and result2.guild then
			local v24 = tostring
			local v25 = result2
			local guild

			if v25 == nil then
				guild = v25
			elseif v25.guild == nil then
				guild = v25.guild
			else
				guild = v25.guild.id
			end

			local v26 = v24(guild)
			local v27 = result2
			local guild2

			if v27 == nil then
				guild2 = v27
			elseif v27.guild == nil then
				guild2 = v27.guild
			else
				guild2 = v27.guild.icon
			end

			local v28 = result2
			local guild3

			if v28 == nil then
				guild3 = v28
			elseif v28.guild == nil then
				guild3 = v28.guild
			else
				guild3 = v28.guild.banner
			end

			local image = guild2
			local n2, n3

			if not image then
				n2 = 3452
				local n4 = n2 - 1
				n3 = n4 + n2 - n4
			else
				n2 = 3452
				local n4 = n2 - 1
				n3 = n4 + n2 - n4
				image = "https://cdn.discordapp.com/icons/" .. v26 .. "/" .. guild2 .. ".png?size=128"
			end

			local n4, n5

			if image then
				n4 = 7
				n5 = 1
			else
				image = nil
				n4 = 7
				n5 = 1
			end

			local thumbnail = guild3 and "https://cdn.discordapp.com/banners/" .. v26 .. "/" .. guild3 .. ".png?size=480" or nil
			local paragraph = v4.Paragraph
			local v29 = v4
			local tbl3 = {}
			local v30 = result2
			local guild4

			if v30 == nil then
				guild4 = v30
			elseif v30.guild == nil then
				guild4 = v30.guild
			else
				guild4 = v30.guild.name
			end

			tbl3.Title = guild4
			tbl3.Desc = "<font color=\"#52525b\">•</font> Members: " .. tostring(result2.approximate_member_count) .. "\n<font color=\"#16a34a\">•</font> Online: " .. tostring(result2.approximate_presence_count)
			tbl3.Image = image
			tbl3.ImageSize = 64
			tbl3.Thumbnail = thumbnail
			tbl3.ThumbnailSize = 100

			tbl3.Buttons = {
				{
					Title = "Copy Invite",
					Icon = "message-circle",
					Callback = function()
						if type(setclipboard) == "function" then
							setclipboard("https://discord.gg/" .. "DXHHswuYPb")
						end

						lib:Notify({
							Title = "Invite Copied",
							Content = "discord.gg/" .. "DXHHswuYPb" .. " copied to clipboard!",
							Icon = "square-arrow-out-up-right",
							Duration = 5,
						})
					end,
				},
			}

			paragraph(v29, tbl3)
		else
			v4:Paragraph({
				Title = "Discord",
				Desc = "Failed to load server info.\ndiscord.gg/" .. "DXHHswuYPb",
				Icon = "message-circle",
				Buttons = {
					{
						Title = "Copy Invite",
						Icon = "copy",
						Callback = function()
							if type(setclipboard) == nil then
								setclipboard(nil .. "DXHHswuYPb")
							end

							lib[nil](lib, { Title = nil, Content = nil .. "DXHHswuYPb" .. nil, Icon = nil, Duration = 5 })
						end,
					},
				},
			})
		end
	end

	v4:Divider()
	v4:Section({ Title = "Information", Icon = "info", Opened = true })
	local paragraph = v4.Paragraph
	local tbl3 = { Title = "Credits" }
	local color = Color3.fromHex

	tbl3.Desc = fn("Developers", Color3.fromHex("#FFD700"), color("#FFA500")) .. [[

Luna
Coro

<font color="#FFD700">Contributors</font>
Vexon / Renji
Cryptic
Santiago
Afkar]]

	tbl3.Icon = "heart"
	paragraph(v4, tbl3)
	v5:Section({ Title = "Collect and Sell", Icon = "leaf", Opened = true })

	v5:Toggle({
		Title = "Auto Collect Hovered Leaves",
		Flag = "MulEA5S8",
		Desc = "Pick-ups leaf's that are focused on your crosshair",
		Default = false,
		Callback = function(arg)
			flag4 = arg

			if arg and not connection3 then
				v21()
			elseif not arg and connection3 then
				connection3:Disconnect()
				connection3 = nil
			end

			v2("Auto Collect Hovered Leaves", arg and "Enabled" or "Disabled", "leaf", 2)
			local v24 = nil or nil
		end,
	})

	v5:Toggle({
		Title = "Radius Auto Collect",
		Flag = "ugxmxHmJ",
		Desc = "Picks up every leaf within a set range around you",
		Icon = "scan",
		Default = false,
		Callback = function(arg)
			flag7 = arg

			if arg and not connection2 then
				v23()
			elseif not arg and connection2 then
				connection2:Disconnect()
				connection2 = nil
			end

			v2("Radius Auto Collect", arg and "Enabled" or "Disabled", "scan", 2)
			local v24 = nil or nil
		end,
	})

	local slider = v5.Slider
	local v24 = v5

	local tbl4 = {
		Title = "Radius Collect Range",
		Flag = "SViYVBVg",
		Desc = "How far out the radius collect reaches",
	}

	local v25 = tbl4 or tbl4
	v25.Icon = "circle-dashed"
	v25.Value = { Min = 6, Max = 60, Default = 20 }
	v25.Suffix = " studs"

	v25.Callback = function(arg)
		n = arg
	end

	slider(v24, v25)

	v5:Toggle({
		Title = "Auto Sell to Dumpster",
		Flag = "SDw6GRri",
		Desc = "Heads to the nearest dumpster and sells when your bag is full",
		Default = false,
		Callback = function(arg)
			flag5 = arg

			if arg and not connection then
				fn24()
			elseif not arg and connection then
				connection:Disconnect()
				connection = nil
			end

			v2("Auto Sell to Dumpster", arg and "Enabled" or "Disabled", "shopping-bag", 2)
		end,
	})

	v5:Divider()
	v5:Section({ Title = "Auto Farm", Icon = "star", Opened = true })

	v5:Dropdown({
		Title = "Leaf Types",
		Flag = "93VwQqEQ",
		Desc = "Pick which leaf types to go for All three are selected by default",
		Icon = "filter",
		Values = { "Normal", "Red", "Rainbow" },
		Multi = true,
		Value = { "Normal", "Red", "Rainbow" },
		Callback = function(arg)
			tbl2 = { Normal = false, Red = false, Rainbow = false }

			for _, v26 in ipairs(arg) do
				tbl2[v26] = true
			end

			local v26 = nil or nil
		end,
	})

	v5:Toggle({
		Title = "Leaves Auto Farm",
		Flag = "FqRgzlaj",
		Desc = "Chases down and collects your chosen leaf types Sells automatically when full, and once more when you turn it off",
		Icon = "star",
		Default = false,
		Callback = function(arg)
			flag6 = arg

			if arg then
				v20()
			end

			v2("Leaves Auto Farm", arg and "Enabled" or "Disabled", "star", 2)
		end,
	})
end

v5:Divider()
v5:Section({ Title = "Free Items", Icon = "package", Opened = true })

do
	local tbl3 = {
		"Rake",
		"OwnsRake",
		"Leaf Blower",
		"OwnsLeafBlower",
		"Leaf Vacuum",
		"OwnsLeafVacuum",
		"Molotov",
		"OwnsMolotov",
		"Rainbow Blower",
		"OwnsRainbowBlower",
		"Leaf Mower",
		"OwnsLeafMower",
	}

	local tbl4 = {}
	local tbl5 = {}
	local n2 = #tbl3

	for i = 1, n2, 2 do
		local v11 = tbl3[i]
		tbl4[v11] = tbl3[i + 1]
		tbl5[#tbl5 + 1] = v11
	end

	local tbl6 = {}
	local flag8 = false

	v5:Dropdown({
		Title = "Select Item",
		Flag = "1fESX6En",
		Desc = "Pick the items you want to give yourself",
		Icon = "package",
		Values = tbl5,
		Multi = true,
		Callback = function(arg)
			tbl6 = arg

			if flag8 then
				for _, v11 in ipairs(tbl6) do
					local v12 = tbl4[v11]

					if v12 then
						localPlayer:SetAttribute(v12, true)
					end
				end

				if #tbl6 > 0 then
					v2("Own Item", "Granted: " .. table.concat(tbl6, ", "), "check", 2)
				end
			end
		end,
	})

	v5:Toggle({
		Title = "Give Selected Item",
		Flag = "GRzUaIga",
		Desc = "Gives you the selected items Leave it on to keep them active",
		Icon = "check",
		Default = false,
		Callback = function(arg)
			flag8 = arg

			for _, v11 in ipairs(tbl6) do
				local v12 = tbl4[v11]

				if v12 then
					localPlayer:SetAttribute(v12, arg)
				end
			end

			if #tbl6 > 0 then
				v2("Own Item", (arg and "Granted: " or "Removed: ") .. table.concat(tbl6, ", "), "check", 2)
			else
				v2("Give Selected Item", arg and "Enabled" or "Disabled", "check", 2)
			end
		end,
	})
end

v5:Toggle({
	Title = "Remove Cooldown",
	Flag = "PpHp0BIw",
	Desc = "Gets rid of cooldowns on your hand, rake, and molotov",
	Icon = "zap",
	Default = false,
	Callback = function(arg)
		local tbl3 = { "HandCooldown", "RakeCooldown", "MolotovCooldown" }

		if arg then
			for _, v11 in ipairs(tbl3) do
				localPlayer:SetAttribute(v11, false)
			end

			v2("Remove Cooldown", "Enabled.", "zap", 2)
		else
			v2("Remove Cooldown", "Disabled.", "zap", 2)
		end
	end,
})

do
	local flag8 = false
	local thread = nil
	local tool = nil
	local stat = nil

	local tbl3 = {
		"Hand - Dexterity",
		"Hand - Hold",
		"Hand - Grasp",
		"Rake - Radius",
		"Rake - Range",
		"Rake - Stickiness",
		"LeafBlower - Width",
		"LeafBlower - Power",
		"LeafBlower - Spread",
	}

	local tbl4 = {
		["Hand - Dexterity"] = { tool = "Hand", stat = "Dexterity" },
		["Hand - Hold"] = { tool = "Hand", stat = "Hold" },
		["Hand - Grasp"] = { tool = "Hand", stat = "Grasp" },
		["Rake - Radius"] = { tool = "Rake", stat = "Radius" },
		["Rake - Range"] = { tool = "Rake", stat = "Range" },
		["Rake - Stickiness"] = { tool = "Rake", stat = "Stickiness" },
		["LeafBlower - Width"] = { tool = "LeafBlower", stat = "Width" },
		["LeafBlower - Power"] = { tool = "LeafBlower", stat = "Power" },
		["LeafBlower - Spread"] = { tool = "LeafBlower", stat = "Spread" },
	}

	local v11 = nil

	local function fn7()
		if not tool or not stat then
			return
		end

		if not buyUpgrade then
			return
		end

		if not UpgradeConfig then
			return
		end
		local v12 = tool
		local v13 = stat

		local ok, result = pcall(function()
			return UpgradeConfig.tools[v12].upgrades[v13]
		end)

		if not ok or type(result) ~= "table" then
			return
		end
		local max = result.max
		if type(max) ~= "number" then
			return
		end
		local attribute = localPlayer:GetAttribute("Upg_" .. v12 .. "_" .. v13) or 0

		if attribute >= max then
			local str4 = v12 .. "_" .. v13

			if v11 ~= str4 then
				v11 = str4
				v2("Auto Upgrade", v12 .. " " .. v13 .. " is maxed. Switch upgrade.", "check-circle", 4)
			end

			return
		end

		v11 = nil
		local prices = result.prices
		if type(prices) ~= "table" then
			return
		end
		local v14 = prices[attribute + 1]
		if type(v14) ~= "number" then
			return
		end

		if (localPlayer:GetAttribute("Cash") or 0) >= v14 then
			pcall(function()
				buyUpgrade[nil](buyUpgrade, v12, v13)
			end)
		end
	end

	local v12 = fn7

	local function fn8()
		if thread then
			return
		end

		thread = task.spawn(function()
			while flag8 do
				pcall(v12)
				task.wait(1)
			end

			thread = nil
		end)
	end

	local flag9 = false
	local thread2 = nil

	local function fn9()
		if thread2 then
			return
		end

		thread2 = task.spawn(function()
			while flag9 do
				pcall(function()
					if not buyVent then
						return
					end
					local Vents = nil

					pcall(function()
						Vents = MapRegistry and MapRegistry.get("Vents")
					end)

					if not Vents then
						return
					end
					local attribute = localPlayer:GetAttribute("Cash") or 0
					local tbl5 = {}

					for _, child in ipairs(Vents:GetChildren()) do
						if child:IsA("BasePart") then
							local attribute2 = child:GetAttribute("Cost")
							local attribute3 = child:GetAttribute("Unlocked")

							if type(attribute2) == "number" and attribute3 == false and attribute >= attribute2 then
								if not tbl5 then
								end

								tbl5 = nil
								tbl5[#tbl5 + 1] = { vent = child, cost = attribute2 }
							end
						end
					end

					if #tbl5 == 0 then
						return
					end
					local v13 = v8()
					local cFrame = v13

					if cFrame then
						cFrame = v13.CFrame
					end

					table.sort(tbl5, function(arg, arg2)
						return arg.cost < arg2.cost
					end)

					local function fn10()
						return not flag9
					end

					local flag10 = false

					for _, v14 in ipairs(tbl5) do
						if flag9 then
							if v14.vent:GetAttribute("Unlocked") ~= false then
								continue
							elseif (localPlayer:GetAttribute("Cash") or 0) < v14.cost then
								continue
							elseif v8() then
								if v10(v9(v14.vent.Position), fn10) then
									task.wait(0.15)

									pcall(function()
										buyVent[nil](buyVent, v14.vent)
									end)

									task.wait(0.25)
									flag10 = true
									continue
								end
							end
						end

						break
					end

					if flag10 and cFrame then
						local v14 = v8()

						if v14 then
							v14.CFrame = cFrame
						end
					end
				end)

				task.wait(1)
			end

			thread2 = nil
		end)
	end

	local flag10 = false
	local thread3 = nil

	local function fn10()
		if thread3 then
			return
		end

		thread3 = task.spawn(function()
			while flag10 do
				pcall(function()
					if not buyUpgrade or not UpgradeConfig then
						return
					end
					local attribute = localPlayer:GetAttribute("Cash") or 0

					for k, tool2 in pairs(UpgradeConfig.tools) do
						for k2, upgrade in pairs(tool2.upgrades) do
							if not flag10 then
								return
							end

							if type(upgrade) == "table" then
								local max = upgrade.max

								if type(max) == "number" then
									local attribute2 = localPlayer:GetAttribute("Upg_" .. k .. "_" .. k2) or 0

									if not (attribute2 >= max) then
										local prices = upgrade.prices

										if type(prices) == "table" then
											local v13 = prices[attribute2 + 1]

											if type(v13) == "number" then
												if attribute >= v13 then
													pcall(function()
														buyUpgrade[nil](buyUpgrade, k, k2)
													end)

													attribute = localPlayer:GetAttribute("Cash") or 0
												end
											end
										end
									end
								end
							end
						end
					end
				end)

				task.wait(1)
			end

			thread3 = nil
		end)
	end

	v5:Divider()
	v5:Section({ Title = "Auto Upgrade", Icon = "trending-up", Opened = true })

	v5:Dropdown({
		Title = "Select Upgrade",
		Flag = "2Dh1EllM",
		Desc = "Choose the upgrade you want to buy automatically",
		Icon = "list",
		Values = tbl3,
		Value = tbl3[1],
		Callback = function(arg)
			local v13 = tbl4[arg]

			if v13 then
				tool = v13.tool
				stat = v13.stat
				v11 = nil
				v2("Auto Upgrade", "Selected " .. arg, "trending-up", 2)
			end
		end,
	})

	v5:Toggle({
		Title = "Auto Upgrade",
		Flag = "yYxBuIce",
		Desc = "Buys your chosen upgrade whenever you can afford it",
		Icon = "trending-up",
		Default = false,
		Callback = function(arg)
			flag8 = arg

			if arg then
				if not tool then
					local v13 = tbl4[tbl3[1]]
					tool = v13.tool
					stat = v13.stat
				end

				fn8()
			elseif thread then
				task.cancel(thread)
				thread = nil
			end

			v2("Auto Upgrade", arg and "Enabled" or "Disabled", "trending-up", 2)
			local v13 = nil or nil
		end,
	})

	v5:Toggle({
		Title = "Auto Buy Affordable Upgrades",
		Flag = "VftiTKmq",
		Desc = "Buys every upgrade you can currently afford across all your tools",
		Icon = "trending-up",
		Default = false,
		Callback = function(arg)
			flag10 = arg

			if arg then
				fn10()
			elseif thread3 then
				task.cancel(thread3)
				thread3 = nil
			end

			v2("Auto Buy Affordable Upgrades", arg and "Enabled" or "Disabled", "trending-up", 2)
		end,
	})

	v5:Button({
		Title = "Max All Upgrades",
		Flag = "OTa7kCMU",
		Desc = "Maxes out every upgrades all at once",
		Icon = "chevrons-up",
		Callback = function()
			for k, v13 in pairs({
				Upg_Hand_Hold = 1,
				Upg_Hand_Dexterity = 5,
				Upg_Hand_Grasp = 5,
				Upg_Rake_Radius = 5,
				Upg_Rake_Range = 4,
				Upg_Rake_Stickiness = 4,
				Upg_LeafBlower_Width = 5,
				Upg_LeafBlower_Power = 4,
				Upg_LeafBlower_Spread = 4,
				LobbyWalkSpeed = 21,
				LobbyBagBonus = 125,
				LobbyCashMult = 1.5,
				LobbyGemsMult = 1.5,
				LobbyRakeDiscount = 1,
				LobbyBlowerDiscount = 1,
			}) do
				localPlayer:SetAttribute(k, v13)
			end

			local ok, result = pcall(function()
				return require(game:GetService("ReplicatedStorage"):WaitForChild("PlayerUpgradeConfig", 3))
			end)

			if ok and result then
				result.levelOf = function()
					return 5
				end
			end

			v2("Max All Upgrades", "All upgrades maxed.", "chevrons-up", 2)
		end,
	})

	v5:Divider()
	local flag11 = false
	local tbl5 = {}
	local tbl6 = tbl5

	local function fn11(arg, arg2, arg3)
		if not getfenv()[nil] then
			local tbl7 = {}
			getfenv()[nil] = { [false] = tbl7, [true] = tbl7, [0] = tbl7 }
		end

		local v13 = arg3 and arg3[arg]
		if v13 == nil then
			return true
		end

		if v13 == nil then
			local v14 = getfenv()[nil]
			arg2[nil](arg2)

			for _, v15 in v14() do
				if v15[nil](v15, nil) and v15[nil](v15, nil) then
					local v16 = arg3[v15[nil]]
					local v17 = nil
					local v18 = getfenv()[nil]
					local v19 = v18[false]
					local v20 = v18[true]
					local v21 = v18[0]

					if not v16 then
						v19[2116952034] = v16
					else
						v20[2116952034] = v16
					end

					if v21[2116952034] ~= v17 and v15[nil] ~= arg then
						if v15[nil](v15, nil) ~= true then
							return false
						end
					end
				end
			end

			return true
		end

		for _, v14 in getfenv()[nil](v13) do
			local v15 = arg2[nil](arg2, v14)
			if not v15 or v15[nil](v15, nil) ~= true then
				return false
			end
		end

		return true
	end

	local v13 = fn11

	local function fn12(arg, arg2, arg3)
		for _, child in ipairs(arg2:GetChildren()) do
			if child:IsA("Model") then
				if child:GetAttribute("Open") ~= true then
					local attribute = child:GetAttribute("Zone")

					if type(attribute) == "string" then
						if v13(attribute, arg, arg3) then
							pcall(function()
								doorToggle[nil](doorToggle, child)
							end)
						end
					end
				end
			end
		end

		local v14 = nil or nil
	end

	local v14 = fn12

	local function fn13()
		if #tbl6 > 0 then
			return
		end

		if not doorToggle or not MapRegistry then
			return
		end
		local v15 = nil
		local Doors = nil
		local v16 = nil

		pcall(function()
			error("devirt: len of <luasym.RegFile object at 0x0000014a121277f8>, function 85 (at 0:4)")
		end)

		pcall(function()
			Doors = MapRegistry.get("Doors")
		end)

		pcall(function()
			v16 = MapRegistry.config()
		end)

		if not v15 or not Doors or not v16 then
			return
		end
		local zonePrereq = v16.zonePrereq
		v14(v15, Doors, zonePrereq)
		local v17 = ipairs
		v15:GetChildren()

		for _, v18 in v17() do
			if v18:IsA("Model") then
				tbl6[#tbl6 + 1] = v18:GetAttributeChangedSignal("Completed"):Connect(function()
					if not flag11 then
						return
					end

					if v18:GetAttribute("Completed") == true then
						v14(v15, Doors, zonePrereq)
					end
				end)
			end
		end
	end

	local v15 = fn13

	local function fn14()
		for _, v16 in ipairs(tbl6) do
			v16:Disconnect()
		end

		tbl6 = {}
	end

	v5:Section({ Title = "Zones and Vents", Icon = "wind", Opened = true })

	v5:Toggle({
		Title = "Auto Buy Vents",
		Flag = "ZlDXTqbt",
		Desc = "Buys vents you can afford, starting with the cheapest ones first",
		Icon = "wind",
		Default = false,
		Callback = function(arg)
			flag9 = arg

			if arg then
				fn9()
			elseif thread2 then
				task.cancel(thread2)
				thread2 = nil
			end

			v2("Auto Buy Vents", arg and "Enabled" or "Disabled", "wind", 2)
		end,
	})

	local function fn15(arg)
		flag11 = arg

		if arg then
			v15()
		else
			fn14()
		end

		v2("Auto Open Zone", arg and "Enabled" or "Disabled", "door-open", 2)
	end

	v5:Toggle({
		Title = "Auto Open Zone",
		Flag = "P6upAzTF",
		Desc = "Opens doors to zones you've unlocked by finishing the required areas",
		Icon = "door-open",
		Default = false,
		Callback = fn15,
	})
end

v5:Divider()
v5:Section({ Title = "Auto Buy Tools & Bag", Icon = "shopping-cart", Opened = true })

do
	local flag8 = false
	local flag9 = false
	local flag10 = false
	local thread = nil
	local thread2 = nil
	local thread3 = nil

	local function fn7()
		return tonumber(localPlayer:GetAttribute("Cash") or 0) or 0
	end

	local v11 = fn7

	local function fn8()
		local BagConfig = nil

		pcall(function()
			BagConfig = require(ReplicatedStorage:WaitForChild("BagConfig", 5))
		end)

		if not BagConfig or type(BagConfig.prices) ~= "table" then
			return nil
		end
		local n2 = tonumber(localPlayer:GetAttribute("BagLevel") or 0) or 0
		local prices = BagConfig.prices
		return (prices or prices)[n2 + 1]
	end

	v5:Toggle({
		Title = "Auto Buy Bag",
		Flag = "CAZiIcIr",
		Desc = "Buys the next bag upgrade as soon as you have enough cash",
		Icon = "shopping-cart",
		Default = false,
		Callback = function(arg)
			flag8 = arg

			if arg and not thread then
				thread = task.spawn(function()
					while flag8 do
						if buyBagUpgrade then
							local v12 = fn8()

							if v12 and v11() >= v12 then
								pcall(function()
									buyBagUpgrade[nil](buyBagUpgrade)
								end)

								task.wait(1)
							end
						end

						task.wait(1)
					end

					thread = nil
				end)
			end

			v2("Auto Buy Bag", arg and "Enabled." or "Disabled.", "shopping-cart", 2)
		end,
	})

	v5:Toggle({
		Title = "Auto Buy Rake",
		Flag = "i6IYGgRw",
		Desc = "Picks up the Rake for you once you've got enough money",
		Icon = "shopping-cart",
		Default = false,
		Callback = function(arg)
			flag9 = arg

			if arg and not thread2 then
				thread2 = task.spawn(function()
					while flag9 do
						local flag11 = buyToolCash

						if flag11 then
							flag11 = localPlayer:GetAttribute("OwnsRake") ~= true
						end

						if flag11 then
							local n2 = 7.99

							while true do
								local v12 = n2

								pcall(function()
									local UpgradeConfig2 = require(ReplicatedStorage:WaitForChild("UpgradeConfig", 3))
									local rake = UpgradeConfig2 and UpgradeConfig2.shop and UpgradeConfig2.shop.Rake

									if rake then
										local shop = UpgradeConfig2.shop
										rake = (shop or shop).Rake.cash
									end

									v12 = rake or v12
								end)

								if v11() >= v12 then
									pcall(function()
										buyToolCash[nil](buyToolCash, nil)
									end)

									task.wait(1)
								end

								local exitTo = nil

								while true do
									task.wait(1)

									if flag9 then
										local v13 = buyToolCash

										if not v13 then
											if v13 then
												exitTo = 2
												break
											end
										else
											exitTo = 1
											break
										end
									else
										break
									end
								end

								if exitTo == 1 then
									local exitTo3 = nil

									while true do
										local flag12 = localPlayer:GetAttribute("OwnsRake") ~= true
										local exitTo2 = nil

										while true do
											if flag12 then
												exitTo2 = 1
												break
											else
												task.wait(1)

												if flag9 then
													flag12 = buyToolCash

													if not flag12 then
														continue
													else
														exitTo2 = 2
														break
													end
												end

												break
											end
										end

										if exitTo2 == 1 then
											exitTo3 = 1
											break
										elseif exitTo2 == 2 then
											continue
										end

										break
									end

									if exitTo3 == 1 then
										n2 = 7.99
										continue
									end
								elseif exitTo == 2 then
									n2 = 7.99
									continue
								end

								break
							end

							thread2 = nil
							return
						else
							task.wait(1)
						end
					end

					thread2 = nil
				end)
			end

			v2("Auto Buy Rake", arg and "Enabled." or "Disabled.", "shopping-cart", 2)
		end,
	})

	v5:Toggle({
		Title = "Auto Buy Leaf Blower",
		Flag = "eSfmprd5",
		Desc = "Grabs the Leaf Blower for you when you can afford it",
		Icon = "shopping-cart",
		Default = false,
		Callback = function(arg)
			flag10 = arg

			if arg and not thread3 then
				thread3 = task.spawn(function()
					while flag10 do
						local flag11 = buyToolCash

						if flag11 then
							flag11 = localPlayer:GetAttribute("OwnsLeafBlower") ~= true
						end

						if flag11 then
							local n2 = 24.99

							while true do
								local v12 = n2

								pcall(function()
									local UpgradeConfig2 = require(ReplicatedStorage:WaitForChild("UpgradeConfig", 3))
									local leafBlower = UpgradeConfig2 and UpgradeConfig2.shop and UpgradeConfig2.shop.LeafBlower

									if leafBlower then
										local shop = UpgradeConfig2.shop
										leafBlower = (shop or shop).LeafBlower.cash
									end

									v12 = leafBlower or v12
								end)

								if v11() >= v12 then
									pcall(function()
										buyToolCash[nil](buyToolCash, nil)
									end)

									task.wait(1)
								end

								local exitTo = nil

								while true do
									task.wait(1)

									if flag10 then
										local v13 = buyToolCash

										if not v13 then
											if v13 then
												exitTo = 2
												break
											end
										else
											exitTo = 1
											break
										end
									else
										break
									end
								end

								if exitTo == 1 then
									local exitTo3 = nil

									while true do
										local flag12 = localPlayer:GetAttribute("OwnsLeafBlower") ~= true
										local exitTo2 = nil

										while true do
											if flag12 then
												exitTo2 = 1
												break
											else
												task.wait(1)

												if flag10 then
													flag12 = buyToolCash

													if not flag12 then
														continue
													else
														exitTo2 = 2
														break
													end
												end

												break
											end
										end

										if exitTo2 == 1 then
											exitTo3 = 1
											break
										elseif exitTo2 == 2 then
											continue
										end

										break
									end

									if exitTo3 == 1 then
										n2 = 24.99
										continue
									end
								elseif exitTo == 2 then
									n2 = 24.99
									continue
								end

								break
							end

							thread3 = nil
							return
						else
							task.wait(1)
						end
					end

					thread3 = nil
				end)
			end

			v2("Auto Buy Leaf Blower", arg and "Enabled." or "Disabled.", "shopping-cart", 2)
		end,
	})
end

v5:Divider()

do
	local flag8 = false

	local function fn7()
		if not flag8 then
			return
		end
		local playerGui = localPlayer:FindFirstChild("PlayerGui")
		local gui = playerGui and playerGui:FindFirstChild("Gui")
		local skipCutscene = gui and gui:FindFirstChild("SkipCutscene")
		if not (skipCutscene and skipCutscene.Visible) then
			return
		end
		local price = skipCutscene:FindFirstChild("Price")
		local text = price and price.Text or ""
		if text:match("%d") or text:find("R%$") then
			return
		end

		local ok, result = pcall(function()
			return getconnections(skipCutscene.Activated)
		end)

		if not ok or not result then
			return
		end

		for _, v11 in ipairs(result) do
			pcall(function()
				v11[nil](v11)
			end)
		end
	end

	task.spawn(function()
		while true do
			pcall(fn7)
			task.wait(0.4)
		end
	end)

	v5:Section({ Title = "Auto Skip Cutscene", Icon = "fast-forward", Opened = true })

	v5:Toggle({
		Title = "Auto Skip Cutscene",
		Flag = "GuNCtHvX",
		Desc = "Skips opening and ending cutscenes for you",
		Icon = "fast-forward",
		Default = false,
		Callback = function(arg)
			flag8 = arg
			v2("Auto Skip Cutscene", arg and "Enabled." or "Disabled.", "fast-forward", 2)
			local v11 = nil or nil
		end,
	})
end

local cameraMode = localPlayer.CameraMode
v6:Section({ Title = "View", Icon = "camera", Opened = true })

v6:Toggle({
	Title = "Enable 3rd Person View",
	Flag = "vfFsQbFA",
	Icon = "camera",
	Default = false,
	Callback = function(arg)
		if arg then
			localPlayer.CameraMode = Enum.CameraMode.Classic
			v2("3rd Person View", "Enabled.", "camera", 2)
		else
			localPlayer.CameraMode = cameraMode
			v2("3rd Person View", "Disabled.", "camera", 2)
		end
	end,
})

do
	local flag8 = false
	local connection2 = nil

	v6:Toggle({
		Title = "Anti-AFK",
		Flag = "iZ2X6rWO",
		Icon = "shield",
		Default = false,
		Callback = function(arg)
			flag8 = arg

			if arg and not connection2 then
				local VirtualUser = game:GetService("VirtualUser")

				connection2 = localPlayer.Idled:Connect(function()
					pcall(function()
						VirtualUser:CaptureController()
						VirtualUser:ClickButton2(Vector2.new())
					end)
				end)
			elseif not arg and connection2 then
				connection2:Disconnect()
				connection2 = nil
			end

			v2("Anti-AFK", arg and "Enabled." or "Disabled.", "shield", 2)
		end,
	})
end

v6:Section({ Title = "Physics", Icon = "zap", Opened = true })
local connection2 = nil

v6:Toggle({
	Title = "Allow Jump",
	Flag = "LK51qxsn",
	Icon = "chevrons-up",
	Default = false,
	Callback = function(arg)
		if connection2 then
			connection2:Disconnect()
			connection2 = nil
		end

		if arg then
			connection2 = RunService.Heartbeat:Connect(function()
				local character = localPlayer.Character
				local humanoid = character and character:FindFirstChildOfClass("Humanoid")

				if humanoid then
					humanoid.UseJumpPower = true
					humanoid.JumpPower = 50
				end
			end)
		else
			local character = localPlayer.Character
			local humanoid = character and character:FindFirstChildOfClass("Humanoid")

			if humanoid then
				humanoid.UseJumpPower = false
				humanoid.JumpPower = 0
			end
		end

		v2("Allow Jump", arg and "Enabled." or "Disabled.", "chevrons-up", 2)
		local v11 = nil or nil
	end,
})

do
	local flag8 = false
	local connection3 = nil

	local function fn7()
		connection3 = RunService.Stepped:Connect(function()
			if not flag8 then
				return
			end
			local character = localPlayer.Character
			if not character then
				return
			end

			for _, descendant in ipairs(character:GetDescendants()) do
				if descendant:IsA("BasePart") and descendant.CanCollide then
					descendant.CanCollide = false
				end
			end
		end)
	end

	local v11 = fn7

	local function fn8()
		if connection3 then
			connection3:Disconnect()
			connection3 = nil
		end

		local character = localPlayer.Character
		if not character then
			return
		end

		for _, descendant in ipairs(character:GetDescendants()) do
			if descendant:IsA("BasePart") then
				descendant.CanCollide = true
			end
		end
	end

	v6:Toggle({
		Title = "Noclip",
		Flag = "a5wifGzn",
		Icon = "ghost",
		Default = false,
		Callback = function(arg)
			flag8 = arg

			if arg then
				v11()
				v2("Noclip", "Enabled.", "ghost", 2)
			else
				fn8()
				v2("Noclip", "Disabled.", "ghost", 2)
			end
		end,
	})
end

v6:Section({ Title = "Movement", Icon = "footprints", Opened = true })

do
	local UserInputService = game:GetService("UserInputService")
	local flag8 = false
	local n2 = 60
	local bodyVelocity = nil
	local bodyGyro = nil

	local function fn7()
		local ok, result = pcall(function()
			local playerModule = localPlayer.PlayerScripts:FindFirstChild("PlayerModule")

			if playerModule then
				local controlModule = playerModule:FindFirstChild("ControlModule")
				if controlModule then
					return require(controlModule):GetMoveVector()
				end
			end

			return Vector3.new(0, 0, 0)
		end)

		return ok and result or Vector3.new(0, 0, 0)
	end

	local v11 = fn7

	local function fn8()
		pcall(function()
			RunService:UnbindFromRenderStep("CATLFly")
		end)

		if bodyVelocity then
			bodyVelocity:Destroy()
			bodyVelocity = nil
		end

		if bodyGyro then
			bodyGyro:Destroy()
			bodyGyro = nil
		end

		local character = localPlayer.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")

		if humanoid then
			humanoid.PlatformStand = false
			humanoid.UseJumpPower = true
			humanoid.JumpPower = 50
		end
	end

	local v12 = fn8

	local function fn9()
		local character = localPlayer.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		if not humanoidRootPart or not humanoid then
			return
		end
		humanoid.UseJumpPower = true
		humanoid.JumpPower = 50
		humanoid.PlatformStand = true
		bodyVelocity = Instance.new("BodyVelocity")
		bodyVelocity.MaxForce = Vector3.new(99999, 99999, 99999)
		bodyVelocity.Velocity = Vector3.new(0, 0, 0)
		bodyVelocity.Parent = humanoidRootPart
		bodyGyro = Instance.new("BodyGyro")
		bodyGyro.MaxTorque = Vector3.new(99999, 99999, 99999)
		bodyGyro.P = 12500
		bodyGyro.Parent = humanoidRootPart

		RunService:BindToRenderStep("CATLFly", Enum.RenderPriority.Camera.Value + 1, function()
			if not flag8 or not bodyVelocity or not bodyGyro then
				v12()
				return
			end
			local currentCamera = workspace.CurrentCamera
			local v13 = v11()
			local n3 = 0

			if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
				n3 = 1
			end

			if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
				n3 = -1
			end

			local vector = Vector3.new(v13.X, n3, v13.Z)

			if vector.Magnitude > 0 then
				bodyVelocity.Velocity = currentCamera.CFrame:VectorToWorldSpace(vector.Unit) * n2
			else
				bodyVelocity.Velocity = Vector3.new(0, 0, 0)
			end

			bodyGyro.CFrame = currentCamera.CFrame
		end)
	end

	v6:Toggle({
		Title = "Fly",
		Flag = "679vYbs7",
		Icon = "plane",
		Default = false,
		Callback = function(arg)
			flag8 = arg

			if arg then
				fn9()
				v2("Fly", "Enabled.", "plane", 2)
			else
				v12()
				v2("Fly", "Disabled.", "plane", 2)
			end
		end,
	})

	v6:Slider({
		Title = "Fly Speed",
		Flag = "61IhlyVy",
		Icon = "gauge",
		Value = { Min = 10, Max = 300, Default = 60 },
		Callback = function(arg)
			n2 = arg
		end,
	})
end

v7:Section({ Title = "Window", Icon = "panel-top", Opened = true })

do
	local v11 = v7:Keybind({
		Title = "Open / Close Keybind",
		Flag = "cHF5qCnN",
		Desc = "Change the key used to toggle the UI.",
		Value = str,
		Callback = function(arg)
			if type(arg) ~= "string" then
				return
			end
			local str4 = arg:upper()
			local v11 = Enum.KeyCode[str4]
			if not (v11 or v11) then
				return
			end
			str = str4
			v3:SetToggleKey(Enum.KeyCode[str4])
			v2("Keybind Updated", "Now using \"" .. str4 .. "\".", "keyboard", 3)
		end,
	})

	v7:Button({
		Title = "Open Window",
		Flag = "ZnTmgNl1",
		Desc = "Open the UI immediately.",
		Icon = "panel-top-open",
		Callback = function()
			v3:Open()
		end,
	})

	v7:Button({
		Title = "Reset Keybind",
		Flag = "NFsCNrjb",
		Desc = "Reset the toggle key back to \"" .. "P" .. "\".",
		Icon = "rotate-ccw",
		Callback = function()
			str = "P"
			v3:SetToggleKey(Enum.KeyCode.P)
			v11:Set("P")
			v2("Keybind Reset", "Now using \"" .. "P" .. "\".", "keyboard", 3)
		end,
	})

	v7:Divider()
	v7:Section({ Title = "Themes", Icon = "palette", Opened = true })

	local v12 = v7:Dropdown({
		Title = "Theme",
		Flag = "8UohmpOE",
		Desc = "Choose your glass theme.",
		Values = {
			"Willow Rose",
			"Willow Noir",
			"Willow Crimson",
			"Willow Midnight",
			"Willow Violet",
			"Willow Ocean",
			"Willow Emerald",
			"Willow Ember",
			"Willow Sakura",
			"Willow Gold",
			"Willow Arctic",
			"Willow Lime",
			"Willow Sunset",
			"Willow Venom",
			"Willow Galaxy",
			"Willow Inferno",
			"Willow Candy",
			"Willow Prism",
		},
		Value = "Willow Rose",
		Callback = function(arg)
			if not tbl[arg] then
				return
			end
			str2 = arg
			lib:SetTheme(arg)
			fn5(arg)
			fn6(arg)
			v2("Theme Changed", arg .. " applied.", "palette", 3)
		end,
	})

	v7:Divider()
	v7:Section({ Title = "Notifications", Icon = "bell", Opened = true })

	local v13 = v7:Toggle({
		Title = "Silence Notifications",
		Flag = "1p5hJvTc",
		Desc = "Prevent non-critical notifications from appearing.",
		Icon = "bell-off",
		Default = false,
		Callback = function(arg)
			flag = arg == true
		end,
	})

	v7:Paragraph({
		Title = "Reopen Reminder",
		Desc = "The closed-window reminder always appears so you never lose your keybind.",
		Icon = "message-square-warning",
	})

	v7:Divider()
	v7:Section({ Title = "Configs", Icon = "folder-cog", Opened = true })
	local configManager = v3.ConfigManager
	local str4 = "Default"

	local v14 = v7:Input({
		Title = "Config Name",
		Flag = "csbnvzos",
		Desc = "Name of the config to save or load.",
		InputIcon = "file-cog",
		Value = str4,
		Placeholder = "MyConfig",
		Callback = function(arg)
			if arg and arg ~= "" then
				str4 = arg
			end
		end,
	})

	local function fn7(arg)
		local v15 = configManager[nil](configManager, arg)
		v15[nil](v15, nil, v11)
		v15[nil](v15, nil, v13)
		v15[nil](v15, nil, v12)
		return v15
	end

	local v15 = fn7

	local function fn8()
		local ok, result = pcall(function()
			return configManager:AllConfigs()
		end)

		if not ok or type(result) ~= "table" or #result == 0 then
			return { "No configs" }
		end
		table.sort(result)
		return result
	end

	local v16 = v7:Dropdown({
		Title = "Saved Configs",
		Flag = "AMK2S6aR",
		Desc = "Choose a saved configuration.",
		Values = fn8(),
		Value = "No configs",
		Callback = function(arg)
			if arg == "No configs" then
				v = nil
				return
			end
			v = arg
			str4 = arg
			v14:Set(arg)
		end,
	})

	local function fn9()
		pcall(function()
			v16:Refresh(fn8())
		end)
	end

	v7:Button({
		Title = "Save Config",
		Flag = "nU17y7LX",
		Desc = "Save current settings to a config.",
		Icon = "save",
		Callback = function()
			if not str4 or str4 == "" then
				v2("Config", "Enter a config name first.", "triangle-alert", 3)
				return
			end
			local str5 = str4:gsub("[^%w_%-%s]", "")
			if str5 == "" then
				v2("Config", "Invalid config name.", "triangle-alert", 3)
				return
			end

			local ok, result = pcall(function()
				v15(str5)[nil]((v15(str5)))
			end)

			if not ok then
				v2("Config Error", tostring(result), "triangle-alert", 4)
				return
			end
			v = str5
			fn9()
			v2("Config Saved", "Saved " .. str5 .. ".", "save", 3)
		end,
	})

	v7:Button({
		Title = "Load Config",
		Flag = "gEpE34xo",
		Desc = "Load the selected configuration.",
		Icon = "folder-open",
		Callback = function()
			local v17 = v or str4
			if not v17 or v17 == "" or v17 == "No configs" then
				v2("Config", "Select or enter a config first.", "triangle-alert", 3)
				return
			end

			local ok, result = pcall(function()
				v15(v17)[nil]((v15(v17)))
			end)

			if not ok then
				v2("Config Error", tostring(result), "triangle-alert", 4)
				return
			end
			str = v11.Value or str

			if type(str) == "string" and Enum.KeyCode[str] then
				v3:SetToggleKey(Enum.KeyCode[str])
			end

			flag = v13.Value == true
			v2("Config Loaded", "Loaded " .. v17 .. ".", "folder-open", 3)
		end,
	})

	v7:Button({
		Title = "Delete Config",
		Flag = "G6gbEyo2",
		Desc = "Delete the selected configuration.",
		Icon = "trash-2",
		Callback = function()
			local v17 = v or str4
			if not v17 or v17 == "" or v17 == "No configs" then
				v2("Config", "Select a config first.", "triangle-alert", 3)
				return
			end

			local ok, result = pcall(function()
				v15(v17)[nil]((v15(v17)))
			end)

			if not ok then
				v2("Config Error", tostring(result), "triangle-alert", 4)
				return
			end
			v = nil
			fn9()
			v2("Config Deleted", "Deleted " .. v17 .. ".", "trash-2", 3)
		end,
	})

	v7:Button({
		Title = "Refresh Configs",
		Flag = "HncW0nHO",
		Desc = "Refresh the saved configuration list.",
		Icon = "refresh-cw",
		Callback = function()
			fn9()
			v2("Configs", "List refreshed.", "refresh-cw", 3)
		end,
	})
end

lib:Popup({
	Title = "JOIN OUR DISCORD SERVER!!!",
	Icon = "message-circle",
	Buttons = {
		{
			Title = "Okay",
			Icon = "copy",
			Variant = "Primary",
			Callback = function()
				local str4 = "https://discord.gg/" .. "DXHHswuYPb"

				pcall(function()
					setclipboard("https://discord.gg/DXHHswuYPb")
				end)

				v2("Discord", "Invite link copied to clipboard!", "clipboard-check", 3, true)
			end,
		},
	},
})

v3:OnClose(function()
	task.delay(0.2, fn4)
end)

v2("Collect All The Leaves", "Loaded! Press \"" .. "P" .. "\" to toggle.", "leaf", 5, true)
