
local tbTable = GameMain:GetMod("_ModifierScript");
local tbModifier = tbTable:GetModifier("Male_Model_Change_Lua_2112");
local skin = {
{n = 1 ,Mod = "Mod/Npc/Male/HauNghe/HauNghe.FBX" ,CHName = "[color=#66CD00]HouYi[/color]",Role = "Spr/Npc/LuoJie.png"},
{n = 2 ,Mod = "Mod/Npc/Male/LuBo/LuBo.FBX" ,CHName = "[color=#66CD00]Lu Bu[/color]",Role = "Spr/Npc/LuoJie.png"},
{n = 3 ,Mod = "Mod/Npc/Male/QuanVu/QuanVu.FBX" ,CHName = "[color=#66CD00]GuanYu[/color]",Role = "Spr/Npc/LuoJie.png"},
{n = 4 ,Mod = "Mod/Npc/Male/SunWuKong/SunWuKong.FBX" ,CHName = "[color=#66CD00]Monkey King[/color]",Role = "Spr/Npc/LuoJie.png"},
{n = 5 ,Mod = "Mod/Npc/Male/MaThan/MaThan.FBX" ,CHName = "[color=#66CD00]Shen Ma[/color]",Role = "Spr/Npc/LuoJie.png"},
{n = 6 ,Mod = "Mod/Npc/Male/DuocLao/DuocLao.FBX" ,CHName = "[color=#66CD00]Yao Chen[/color]",Role = "Spr/Npc/LuoJie.png"},
{n = 7 ,Mod = "Mod/Npc/Male/TieuViem/TieuViem.FBX" ,CHName = "[color=#66CD00]li bai[/color]",Role = "Spr/Npc/LuoJie.png"},
{n = 8 ,Mod = "Mod/Npc/Male/LuoJie/LuoJie.FBX" ,CHName = "[color=#66CD00]LuoJie[/color]",Role = "Spr/Npc/LuoJie.png"},
}



function tbModifier:Enter(modifier, npc)
	modifierName = "Female_Model_Change_"..modifier:GetDesc()
	cur = tonumber(modifier:GetDesc())
	for k,v in pairs(skin) do
		if cur == v.n then
			npc:AddNpcModPath(v.Mod)
			npc:SetFixedRolepaint(v.Role)
			world:ShowMsgBox(npc:GetName().."模型和头像变成 "..v.CHName, "Fantasy Appearance")
			npc:RemoveModifier(modifierName)
		end
	end
	if npc.view ~= nil then
		npc.view.needUpdateMod = true;
	end
end





--function tbModifier:UpdateStack(modifier, npc, add)
--end





--function tbModifier:Leave(modifier, npc)
--end






--function tbModifier:OnGetSaveData()
--end





--function tbModifier:OnLoadData(modifier, npc, tbData)
--end




























