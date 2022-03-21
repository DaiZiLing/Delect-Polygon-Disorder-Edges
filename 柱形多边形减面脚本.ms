
rollout jianmian "柱形多边形减面 v0.1" width:228 height:154
(
	button 'btn1' "选中边" pos:[129,60] width:85 height:34 align:#left
	button 'btn2' "转化为 Ploy" pos:[130,9] width:85 height:34 align:#left
	spinner 'spn1' "" pos:[53,68] width:62 height:16 enabled:true range:[1,100,0] type:#integer align:#left
	label 'lbl1' "间隔" pos:[16,70] width:28 height:22 align:#left
	GroupBox 'grp1' "减线处理" pos:[7,46] width:214 height:101 align:#left

	button 'btn3' "删除边" pos:[129,103] width:85 height:34 align:#left
	
	local xinshuzu
	local xinshuzuzhi
	local gehsu
	local shande
	local qunxin
	local shandezhi
	global tiaoyue

	on btn1 pressed do --减边
	(
	xinshuzu = #()
	xinshuzuzhi = xinshuzu as BitArray
	xinshuzuzhi = polyop.getEdgeSelection $
	gehsu = xinshuzuzhi as Array
	gehsuzhi = gehsu.count
	shande = #()
	shande = gehsu
	qunxin = #()
	
	for i = 1 to gehsuzhi do 
		(
	qunxin[i] = shande[i]
		)
	qunxin_2 = #()
	
	for i = 1 to gehsuzhi by tiaoyue do
		(
	append qunxin_2 qunxin[i]
	shandezhi = qunxin_2 as BitArray
	$.EditablePoly.SetSelection #Edge shandezhi
		)
	)
	
	on btn2 pressed do --转化为 Ploy
		(
	convertTo $ PolyMeshObject
			)
	
	on spn1 changed var do
		(
		tiaoyue = var
			)
	
	on btn3 pressed do --删除边
		(
	macros.run "Editable Polygon Object" "EPoly_Remove"
			)
	
)
-- End of Rollout --
 createDialog jianmian
gc()
clearlistener()




