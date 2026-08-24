
local px, py, pz = ThePlayer.Transform:GetWorldPosition()
local prefabs = {
	"kyno_banana", "kyno_kokonut", "kyno_coffeebeans", "kyno_glowberry",
	"ancientfruit_nightvision", "kyno_spotspice_leaf", "kyno_wheat",
	"kyno_milk_beefalo", "kyno_milk_koalefant",
	"kyno_cheese", "kyno_cheese_white", "kyno_cheese_koalefant",
	"cutlichen", "smallmeat", "meat", "monstermeat", "leafymeat",
	"froglegs", "koalefant_trunk", "koalefant_trunk_winter", "bird_egg",
	"wobster_shrimp", "oceanfish_sunfish", "oceanfish_icebream",
	"kyno_oil", "kyno_aloe", "kyno_radish", "kyno_rice",
	"kyno_sweetpotato", "kyno_turnip", "kyno_parznip",
	"kyno_cucumber", "littlebread", "kyno_juicyberry"
}
local missing = {}
for i = 0, 4 do
	local sx = px + i * 2
	for _, name in ipairs(prefabs) do
		local ent = c_spawn(name)
		if ent then
			ent.Transform:SetPosition(sx, py, pz)
		else
			table.insert(missing, name)
		end
	end
end
print(string.format("Spawned %d / %d (5 x %d prefabs)", 5 * #prefabs - #missing, 5 * #prefabs, #prefabs))
if #missing > 0 then
	print("Missing prefabs (" .. #missing .. "):")
	for _, n in ipairs(missing) do print("  - " .. n) end
end
