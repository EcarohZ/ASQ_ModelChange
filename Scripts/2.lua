
local tbTable = GameMain:GetMod("_ModifierScript");
local tbModifier = tbTable:GetModifier("Female_Model_Change_Lua_2112");
local skin = {
{n = 1 ,Mod = "Mod/Npc/Female/BichDao/BichDao.FBX" ,CHName = "[color=#7FFFD4]Biyao[/color]",Role = "Spr/Npc/HanBa.png"},
{n = 2 ,Mod = "Mod/Npc/Female/DieuThuyen/DieuThuyen.FBX" ,CHName = "[color=#66CD00]貂蝉[/color]",Role = "Spr/Npc/diaochan.png"},
{n = 3 ,Mod = "Mod/Npc/Female/LucTuyetKy/LucTuyetKy.FBX" ,CHName = "[color=#66CD00]Lu Xueqi[/color]",Role = "Spr/Npc/VanVan.png"},
{n = 4 ,Mod = "Mod/Npc/Female/NguCo/NguCo.FBX" ,CHName = "[color=#66CD00]虞姬[/color]",Role = "Spr/Npc/XuanNv.png"},
{n = 5 ,Mod = "Mod/Npc/Female/TuHa/TuHa.FBX" ,CHName = "[color=#66CD00]Zi hé[/color]",Role = "Spr/Npc/YaoJi.png"},
{n = 6 ,Mod = "Mod/Npc/Female/MyDoToa/MyDoToa.FBX" ,CHName = "[color=#66CD00]Medusa[/color]",Role = "Spr/Npc/YuZaoQian.png"},
{n = 7 ,Mod = "Mod/Npc/Female/TieuYTien/TieuYTien.FBX" ,CHName = "[color=#66CD00]Xiǎo yī xiān[/color]",Role = "Spr/Npc/MyDoToa.png"},
{n = 8 ,Mod = "Mod/Npc/Female/VanVan/VanVan.FBX" ,CHName = "[color=#66CD00]Yun Yun[/color]",Role = "Spr/Npc/MyDoToa.png"},
{n = 9 ,Mod = "Mod/Npc/Female/YuZaoQian/YuZaoQian.FBX" ,CHName = "[color=#66CD00]YuZaoQian[/color]",Role = "Spr/Npc/MyDoToa.png"},
{n = 10 ,Mod = "Mod/Npc/Female/bbl/bbl.FBX" ,CHName = "[color=#66CD00]芭芭拉[/color]",Role = "Spr/Npc/bbl.png"},
{n = 11 ,Mod = "Mod/Npc/Female/y/y.FBX" ,CHName = "[color=#66CD00]旅行者[/color]",Role = "Spr/Npc/y.png"},
{n = 12 ,Mod = "Mod/Npc/Female/ganyu/ganyu.FBX" ,CHName = "[color=#66CD00]甘雨[/color]",Role = "Spr/Npc/ganyu.png"},
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




























