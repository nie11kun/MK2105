;

;

;

;

;

;

;

;ifIsXNeiBackBegin
;**********************MASK19:修整参数_滚压轮X_内_后:panel_19:;**********************
//M(Mask19/$85379//)

	DEF X_IM=(R///$85118,$85118,,/WR1//"$AA_IM[X]"/10,10,20/30,10,60/3);X_IM
	DEF Z_IM=(R///$85119,$85119,,/WR1//"$AA_IM[Z]"/10,30,20/30,30,60/3);Z_IM

	DEF VAR0=(R/-800,800//$85601,$85601,,$85043/WR2,ac4/"panel_19_2_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[3]"/325,10,110/440,10,110//"UserGuide/section_4.html","S4D12");回零时砂轮与修整轮中间距
	DEF para_switch=(I/*0=$85058,1=$85059//$85063,$85063,,/WR2,ac4/"panel_19_2_chs.png"/"/NC/_N_NC_GD2_ACX/PARA_LOCK_SWITCH[10]"/0,0,0/530,10,18/);参数锁定开关

	DEF VAR12=(R/-2000,2000//$85626,$85626,,$85043/WR2,ac4/"panel_17_7_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[22]"/325,30,110/440,30,110/);砂轮与修整轮Z中心
	DEF QIDIAN2=(R/-2000,2000//$85634,$85634,,$85043/WR2,ac4/"panel_17_7_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[44]"/325,50,110/440,50,110/);2起点
	DEF QIDIAN3=(R/-2000,2000//$85635,$85635,,$85043/WR2,ac4/"panel_17_7_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[45]"/325,70,110/440,70,110/);3起点
	DEF ZHONGDIAN=(R/-2000,2000//$85636,$85636,,$85043/WR2,ac4/"panel_17_7_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[46]"/325,90,110/440,90,110/);终点

	DEF ZUIDU1=(R/-1,1//$85637,$85637,,$85043/WR2//"/NC/_N_NC_GD2_ACX/DRESSER[41]"/325,120,110/440,120,110/);第1段锥度
	DEF ZUIDU2=(R/-1,1//$85638,$85638,,$85043/WR2//"/NC/_N_NC_GD2_ACX/DRESSER[42]"/325,140,110/440,140,110/);第2段锥度
	DEF ZUIDU3=(R/-1,1//$85639,$85639,,$85043/WR2//"/NC/_N_NC_GD2_ACX/DRESSER[43]"/325,160,110/440,160,110/);第3段锥度

	DEF BANJIN2=(R/-1,1//$85640,$85640,,$85043/WR2//"/NC/_N_NC_GD2_ACX/DRESSER[51]"/325,190,110/440,190,110/);第2段半径调整
	DEF BANJIN3=(R/-1,1//$85641,$85641,,$85043/WR2//"/NC/_N_NC_GD2_ACX/DRESSER[52]"/325,210,110/440,210,110/);第3段半径调整

	DEF VAR7=(R/0,500//$85620,$85620,,$85043/WR2,ac4/"panel_19_5_chs.png"/"/NC/_N_NC_GD2_ACX/WHEEL[1]"/325,240,110/440,240,110//"UserGuide/section_4.html","S4D4");修整轮直径
	DEF VAR8=(R/0,60//$85621,$85621,,$85046/WR2,ac4/"panel_19_6_chs.png"/"/NC/_N_NC_GD2_ACX/WHEEL[2]"/325,260,110/440,260,110//"UserGuide/section_4.html","S4D5");修整轮线速度
	DEF VAR9=(I///$85600,$85600,,$85044/WR1,ac4//"/NC/_N_NC_GD2_ACX/WHEEL[20]"/325,280,110/440,280,110/);修整轮转速

	DEF VAR1=(R///$85633,$85633,,$85043/WR1//"/NC/_N_NC_GD2_ACX/WHEEL[13]"/325,300,130/440,300,110/);NC用初始接触
	DEF VAR3=(R///$85627,$85627,,$85043/WR1//"/NC/_N_NC_GD2_ACX/WHEEL[15]"/325,320,130/440,320,110/);初始接触位置
	DEF VAR5=(R///$85628,$85628,,$85043/WR1/"panel_19_4_chs.png"/"/NC/_N_NC_GD2_ACX/WHEEL[11]"/325,340,130/440,340,110/);当前接触位置

	DEF VAR10=(R////WR4//"/NC/_N_NC_GD2_ACX/DRESSER[24]"/0,0,0/0,0,0/);新砂轮直径

	DEF QCHECK=(I////WR4//"/Plc/Q113.5"/0,0,0/0,0,0);循环启动Q点检测

	DEF TYPE=(I////WR4//"/NC/_N_NC_GD2_ACX/GRIND[1]"/0,0,0/0,0,0/);磨削类型
	DEF TECH=(I////WR4//"/NC/_N_NC_GD2_ACX/PROCESS[16]"/0,0,0/0,0,0);精简工艺参数/扩展工艺参数
	DEF PIECE_VOLUME=(I////WR4//"/NC/_N_NC_GD2_ACX/INI[27]"/0,0,0/0,0,0/);单件/批量磨削方式选择
	DEF WARE=(I////WR4//"/NC/_N_NC_GD2_ACX/DRESSER[1]"/0,0,0/0,0,0/);修整器
	DEF N_CX_X_TYPE=(I////WR4//"/NC/_N_NC_GD2_ACX/DRESSER[38]"/0,0,0/0,0,0/);成型X修整时修整器前后
	DEF cixindiaoyong=(I////WR4//"/NC/_N_NC_GD2_ACX/DRESSER[115]"/0,0,0/0,0,0/);调用默认齿形程序0/通用齿形程序1

	HS1=($85001,ac7,se1);磨削参数
	HS2=($85002,ac7,se1);工艺参数
	HS3=($85003,ac7,se3);修整参数
;

	;

	HS8=($85005,ac7,se1);返回

;
;
;
;
;
;
	VS7=($85379,ac7,se3);"滚压轮"
;

	PRESS(HS1)
		IF TYPE.VAL<>1
			LM("MASK1","grind.com")
		ELSE
			LM("MASK18","grind.com")
		ENDIF
	END_PRESS

	PRESS(HS2)
		IF TECH.VAL==0;基本工艺
			IF PIECE_VOLUME.VAL==0;单件
				LM("MASK29","process.com")
			ELSE
				LM("MASK2","process.com")
			ENDIF
		ELSE
			IF PIECE_VOLUME.VAL==0;单件
				LM("MASK30","process.com")
			ELSE
				LM("MASK20","process.com")
			ENDIF
		ENDIF
	END_PRESS

	PRESS(HS3)
		LM("MASK3","dress.com")
	END_PRESS

	PRESS(HS4)
		LM("MASK21","auto.com")
	END_PRESS

	PRESS(HS5)
		LM("MASK31","centerwaiyuan.com")
	END_PRESS
	
	PRESS(HS6)
		LM("MASK32","centerduanmian.com")
	END_PRESS
	
	PRESS(HS7)
		LM("MASK23","centermain.com")
	END_PRESS

	PRESS(HS8)
		EXIT
	END_PRESS

	PRESS(VS1)
		IF cixindiaoyong.VAL==0
			LM("MASK7","shape.com")
		ELSE
			LM("MASK7","shapecommon.com")
		ENDIF
	END_PRESS

	PRESS(VS2)
		IF cixindiaoyong.VAL==0
			LM("MASK8","shape.com")
		ELSE
			LM("MASK8","shapecommon.com")
		ENDIF
	END_PRESS

	PRESS(VS3)
		IF cixindiaoyong.VAL==0
			LM("MASK9","shape.com")
		ELSE
			LM("MASK9","shapecommon.com")
		ENDIF
	END_PRESS

	PRESS(VS4)
		IF (WARE.VAL==0) OR (WARE.VAL==2);VW/V
			LM("MASK4","dressware.com")
		ELSE;XZ/X
			LM("MASK12","dressware.com")
		ENDIF
	END_PRESS

	PRESS(VS5)
		IF (WARE.VAL==0) OR (WARE.VAL==2);VW/V
			LM("MASK5","dressware.com")
		ELSE;XZ/X
			LM("MASK13","dressware.com")
		ENDIF
	END_PRESS

	PRESS(VS6)
		IF (WARE.VAL==0) OR (WARE.VAL==2);VW/V
			LM("MASK6","dressware.com")
		ELSE;XZ/X
			LM("MASK14","dressware.com")
		ENDIF
	END_PRESS

	PRESS(VS7)
		IF (WARE.VAL==0) OR (WARE.VAL==2);VW/V
			LM("MASK11","dressware.com")
		ELSE;XZ/X
			IF TYPE.VAL==0;WAI
				LM("MASK16","dressware.com")
			ELSE;NEI
				IF N_CX_X_TYPE.VAL==0;NEI-QIAN
					LM("MASK17","dressware.com")
				ELSE
					LM("MASK19","dressware.com")
				ENDIF
			ENDIF
		ENDIF
	END_PRESS

	PRESS(VS8)
		LM("MASK15","dressware.com")
	END_PRESS

	CHANGE(VAR0)
		call("UP1")
	END_CHANGE

	CHANGE(VAR2)
		call("UP1")
	END_CHANGE

	CHANGE(VAR3)
		call("UP1")
	END_CHANGE

	CHANGE(VAR7)
		call("UP1")
		VAR9.VAL=VAR8.VAL*60000/(PI*VAR7.VAL);修整轮转速计算
	END_CHANGE

	CHANGE(VAR8)
		VAR9.VAL=VAR8.VAL*60000/(PI*VAR7.VAL);修整轮转速计算
	END_CHANGE

	CHANGE(para_switch)
		CALL("UP2")
	END_CHANGE

	CHANGE(QCHECK)
		IF QCHECK.VAL==1
			VAR0.WR=1
			VAR2.WR=1
			VAR7.WR=1
		ELSE
			VAR2.WR=2
			VAR7.WR=2
			para_switch.WR=2
			CALL("UP2")
		ENDIF
	END_CHANGE

	SUB(UP1)
		VAR3.VAL=-(VAR0.VAL-VAR7.VAL/2-VAR10.VAL/2);初始接触位
		VAR1.VAL=VAR3.VAL;NC用初始接触
	END_SUB

	SUB(UP2)
		IF para_switch.VAL==0
			VAR0.WR=2
		ELSE
			VAR0.WR=1
		ENDIF
	END_SUB

//END
;ifIsXNeiBackEnd

;

