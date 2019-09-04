;

;ifIsInternalBegin
;**********************MASK18:磨削参数_内:panel_18:;**********************
//M(Mask18/$85020/"panel_18_4_chs.png"/)

	DEF DIAMETER_ADJ=(R///$85174,$85174,$85043,/WR2/"panel_18_29_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[5]"/360,330,202/460,330,60//"UserGuide/section_1.html","S1D2");单次中径调整值

	DEF VAR1=(I/*0=$85135,1=$85136,2=$85137,3=$85138,4=$85139/1/$85134,,,/WR4//"/NC/_N_NC_GD2_ACX/GRIND[1]"/0,0,0/10,10,60/);磨削类型,生成文件用	

	DEF X_IM=(R///$85118,$85118,,/WR1//"$AA_IM[X]"/10,10,20/30,10,60/3);X_IM
	DEF Z_IM=(R///$85119,$85119,,/WR1//"$AA_IM[Z]"/10,30,20/30,30,60/3);Z_IM
	DEF X_DRF=(R///$85116,$85116,,/WR1//"$AC_DRF[X]"/120,10,50/170,10,60/7);DRF_X
	DEF Z_DRF=(R///$85117,$85117,,/WR1//"$AC_DRF[Z]"/120,30,50/170,30,60/7);DRF_Z

	DEF GRINDING_TYPE=(I/*0=$85900,1=$85901//$85902,$85902,,/WR4/"panel_18_31_chs.png"/"/NC/_N_NC_GD2_ACX/RING[1]"/10,60,110/110,60,60//"UserGuide/section_1.html","S1D31");螺纹/环形槽加工
	DEF RING_DISPLAY=(I////WR4//"/NC/_N_NC_GD2_ACX/RING[50]"/0,0,0/0,0,0/);显示环形槽选择参数

	DEF Z_SOFTENDP=(R////WR4//"$AA_SOFTENDP[Z]"/0,0,0/0,0,0/);SOFRENDP_Z

	DEF PIECE_VOLUME=(I/*0=$85166,1=$85167//$85170,$85170,,/WR2/"panel_18_17_chs.png"/"/NC/_N_NC_GD2_ACX/INI[27]"/360,10,70/460,10,80//"UserGuide/section_1.html","S1D1");单件/批量磨削方式选择
	DEF VAR8=(R3/-2000,2000//$85108,$85108,,/WR2/"panel_18_7_chs.png"/"/NC/_N_NC_GD2_ACX/INI[2]"/360,100,202/460,100,60/6/"UserGuide/section_1.html","S1D10");工件左端
	DEF VAR9=(R3/-2000,2000//$85109,$85109,,/WR2/"panel_18_8_chs.png"/"/NC/_N_NC_GD2_ACX/INI[3]"/360,120,202/460,120,60/6/"UserGuide/section_1.html","S1D11");工件右端
	DEF VAR10=(R/-500,500//$85165,$85165,,/WR2/"panel_18_9_chs.png"/"/NC/_N_NC_GD2_ACX/INI[11]"/360,150,202/460,150,60/6/"UserGuide/section_1.html","S1D28");工件中心
	DEF X_QUIT=(R/-500,500//$85106,$85106,,/WR2/"panel_18_25_chs.png"/"/NC/_N_NC_GD2_ACX/INI[24]"/360,170,202/460,170,60/6/"UserGuide/section_1.html","S1D14");退刀位置
	DEF Z_INIT=(R/-2000,2000//$85101,$85101,,/WR2/"panel_18_23_chs.png"/"/NC/_N_NC_GD2_ACX/INI[29]"/360,240,202/460,240,60/6/"UserGuide/section_1.html","S1D30");内螺纹时台面起始位置

	DEF VAR19=(R///$85158,$85158,,/WR1//"/NC/_N_NC_GD2_ACX/PROCESS[5]"/10,330,210/120,330,60//"UserGuide/section_1.html","S1D25");当前磨削接触位
	DEF WHELL_POS_INI=(R///$85169,$85169,,/WR1/"panel_18_27_chs.png"/"/NC/_N_NC_GD2_ACX/PROCESS[14]"/10,350,210/120,350,60/6/"UserGuide/section_1.html","S1D26");初始磨削接触位(对刀完成后磨削接触位)

	DEF VAR45=(I////WR4//"/NC/_N_NC_GD2_ACX/PROCESS[16]"/0,0,0/0,0,0);精简工艺参数/扩展工艺参数

	DEF QCHECK=(I////WR4//"/Plc/Q113.5"/0,0,0/0,0,0);循环启动Q点检测
	
	HS1=($85001,ac7,se3);磨削参数
	HS2=($85002,ac7,se1);工艺参数
	HS3=($85003,ac7,se1);修整参数
;

	;

	HS8=($85005,ac7,se1);返回

	VS1=("")

	PRESS(HS1)
		LM("MASK18","grind.com")
	END_PRESS

	PRESS(HS2)
		IF VAR45.VAL==0;基本工艺
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

	CHANGE(VAR1)
		IF VAR1.VAL<>1
			LM("MASK1","grind.com")
		ENDIF
	END_CHANGE

	CHANGE(VAR6)
		call("UP3")
	END_CHANGE

	CHANGE(VAR7)
		call("UP3")
	END_CHANGE

	CHANGE(WORK_MID_DIA)
		call("UP3")
	END_CHANGE

	CHANGE(VAR23)
		call("UP2")
		call("UP3")
	END_CHANGE
	
	CHANGE(QCHECK)
		call("UP2")
	END_CHANGE

	CHANGE(RING_DISPLAY)
		IF RING_DISPLAY.VAL==0
			GRINDING_TYPE.WR=4
		ELSE
			GRINDING_TYPE.WR=2
		ENDIF
	END_CHANGE

	CHANGE(GRINDING_TYPE)
		IF GRINDING_TYPE.VAL==1
			LM("MASK51","grind.com")
		ENDIF
	END_CHANGE


	SUB(UP2)
		IF QCHECK.VAL==1
			SCREW_R.WR=1
			VAR6.WR=1
			VAR7.WR=1
			VAR8.WR=1
			VAR9.WR=1
			VAR10.WR=1
			ZUIDU.WR=1
			X_QUIT.WR=1
			PITCH_COM.WR=1
			PIECE_VOLUME.WR=1
			C_INIT.WR=1
			Z_INIT.WR=1
			SHOUJIAN.WR=1
			VAR23.WR=1
			IF VAR23.VAL==0
				VAR24.WR=1
				VAR25.WR=1
				VAR26.WR=1
				WORK_MID_DIA.WR=4
			ELSE
				VAR24.WR=1
				VAR25.WR=1
				VAR26.WR=1
				WORK_MID_DIA.WR=1
			ENDIF
		ELSE
			SCREW_R.WR=2
			VAR6.WR=2
			VAR7.WR=2
			VAR8.WR=2
			VAR9.WR=2
			ZUIDU.WR=2
			VAR10.WR=2
			X_QUIT.WR=2
			PITCH_COM.WR=2
			PIECE_VOLUME.WR=2
			C_INIT.WR=2
			Z_INIT.WR=2
			SHOUJIAN.WR=2
			VAR23.WR=2
			IF VAR23.VAL==0
				VAR24.WR=2
				VAR25.WR=2
				VAR26.WR=2
				WORK_MID_DIA.WR=4
			ELSE
				VAR24.WR=1
				VAR25.WR=1
				VAR26.WR=1
				WORK_MID_DIA.WR=2
			ENDIF
		ENDIF
	END_SUB

	SUB(UP3)
		IF VAR23.VAL==1
			IF WORK_MID_DIA.VAL>0
				VAR24.VAL=SDEG(ATAN((VAR6.VAL*VAR7.VAL),(PI*WORK_MID_DIA.VAL)))
				VAR25.VAL=(SDEG(ATAN((VAR6.VAL*VAR7.VAL),(PI*WORK_MID_DIA.VAL)))-VAR24.VAL)*60
				VAR26.VAL=((SDEG(ATAN((VAR6.VAL*VAR7.VAL),(PI*WORK_MID_DIA.VAL)))-VAR24.VAL)*60-VAR25.VAL)*60
			ENDIF
		ENDIF
	END_SUB

//END
;ifIsInternalEnd

;**********************MASK51:环形槽:panel_51:**********************
//M(Mask51/$85025/"panel_51_0_chs.png"/)

	DEF X_IM=(R///$85118,$85118,,/WR1//"$AA_IM[X]"/10,10,20/30,10,60/3);X_IM
	DEF Z_IM=(R///$85119,$85119,,/WR1//"$AA_IM[Z]"/10,30,20/30,30,60/3);Z_IM
	DEF X_DRF=(R///$85116,$85116,,/WR1//"$AC_DRF[X]"/120,10,50/170,10,60/7);DRF_X
	DEF Z_DRF=(R///$85117,$85117,,/WR1//"$AC_DRF[Z]"/120,30,50/170,30,60/7);DRF_Z

	DEF PIECE_VOLUME=(I/*0=$85166,1=$85167/1/$85170,$85170,,/WR1//"/NC/_N_NC_GD2_ACX/INI[27]"/10,60,110/110,60,80/);单件/批量磨削方式选择

	DEF SLOT_AMOUNT=(I///$85903,$85903,,/WR1//"/NC/_N_NC_GD2_ACX/RING[2]"/10,90,110/110,90,60/);总槽数
	
	DEF SLOT_NEED=(I///$85906,$85906,,/WR1//"/NC/_N_NC_GD2_ACX/RING[5]"/10,110,110/110,110,60/);需加工槽数
	DEF SLOT_CURRENT=(I///$85907,$85907,,/WR1//"/NC/_N_NC_GD2_ACX/RING[6]"/10,130,110/110,130,60/);已加工槽数

	DEF Z_CURRENT=(R///$85909,$85909,,/WR1//"/NC/_N_NC_GD2_ACX/RING[10]"/10,160,110/110,160,60/);当前槽起始磨削位置Z
	DEF X_CURRENT_INIT=(R///$85908,$85908,,/WR1//"/NC/_N_NC_GD2_ACX/RING[9]"/10,180,110/110,180,60/);当前槽起始磨削位置X
	DEF X_CURRENT_CURRENT=(R///$85919,$85919,,/WR1//"/NC/_N_NC_GD2_ACX/PROCESS[5]"/10,200,110/110,200,60/);当前磨削接触位

	DEF SLOT_INIT=(I/0,//$85904,$85904,,/WR2//"/NC/_N_NC_GD2_ACX/RING[3]"/360,40,110/460,40,60//"UserGuide/section_1.html","S1D43");起始磨削槽
	DEF SLOT_END=(I/0,//$85905,$85905,,/WR2//"/NC/_N_NC_GD2_ACX/RING[4]"/360,60,110/460,60,60//"UserGuide/section_1.html","S1D44");终止磨削槽

	DEF Z_POSITION_INIT=(R///$85920,$85920,,/WR2//"/NC/_N_NC_GD2_ACX/INI[3]"/360,90,110/460,90,60/6/"UserGuide/section_1.html","S1D45");工件右端
	DEF X_POSITION_INIT=(R///$85921,$85921,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESS[14]"/360,110,110/460,110,60/6/"UserGuide/section_1.html","S1D46");初始磨削接触位

	DEF WORK_CENTER=(R///$85165,$85165,,/WR2//"/NC/_N_NC_GD2_ACX/INI[11]"/360,140,202/460,140,60//"UserGuide/section_1.html","S1D28");工件中心  ifIsInternal
;

	DEF X_QUIT=(R///$85106,$85106,,/WR2//"/NC/_N_NC_GD2_ACX/INI[24]"/360,160,202/460,160,60//"UserGuide/section_1.html","S1D14");退刀位置

	DEF Z_INIT=(R///$85101,$85101,,/WR2//"/NC/_N_NC_GD2_ACX/INI[29]"/360,180,202/460,180,60//"UserGuide/section_1.html","S1D30");内螺纹时台面起始位置  ifIsInternal

	DEF ZUIDU=(R4/-10,10//$85159,$85159,$85043,/WR2//"/NC/_N_NC_GD2_ACX/INI[15]"/360,200,202/460,200,60//"UserGuide/section_1.html","S1D16");单位长度锥度值(半径方向)

	DEF DIAMETER_ADJ=(R///$85174,$85174,$85043,/WR2//"/NC/_N_NC_GD2_ACX/GRIND[5]"/360,220,202/460,220,60//"UserGuide/section_1.html","S1D2");单次中径调整值

	DEF GRINDING_TYPE=(I/*0=$85900,1=$85901//$85902,$85902,,/WR2//"/NC/_N_NC_GD2_ACX/RING[1]"/360,10,110/460,10,60//"UserGuide/section_1.html","S1D31");螺纹/环形槽加工

	DEF TYPE=(I////WR4//"/NC/_N_NC_GD2_ACX/GRIND[1]"/0,0,0/0,0,0/);磨削类型

	;环形槽组螺距
	DEF PITCH_1=(R/0,//$85915,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[11]"/0,0,0/132,270,60//"UserGuide/section_1.html","S1D47");
	DEF PITCH_2=(R/0,//$85916,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[21]"/0,0,0/222,270,60//"UserGuide/section_1.html","S1D47");
	DEF PITCH_3=(R/0,//$85917,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[31]"/0,0,0/312,270,60//"UserGuide/section_1.html","S1D47");
	DEF PITCH_4=(R/0,//$85918,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[41]"/0,0,0/402,270,60//"UserGuide/section_1.html","S1D47");

	;环形槽组槽数
	DEF SLOTS_1=(I/0,//$85915,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[12]"/0,0,0/132,295,60//"UserGuide/section_1.html","S1D48");
	DEF SLOTS_2=(I/0,//$85916,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[22]"/0,0,0/222,295,60//"UserGuide/section_1.html","S1D48");
	DEF SLOTS_3=(I/0,//$85917,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[32]"/0,0,0/312,295,60//"UserGuide/section_1.html","S1D48");
	DEF SLOTS_4=(I/0,//$85918,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[42]"/0,0,0/402,295,60//"UserGuide/section_1.html","S1D48");

	;环形槽组水平偏移
	DEF Z_DELTA_1=(R///$85915,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[13]"/0,0,0/132,320,60//"UserGuide/section_1.html","S1D49");
	DEF Z_DELTA_2=(R///$85916,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[23]"/0,0,0/222,320,60//"UserGuide/section_1.html","S1D49");
	DEF Z_DELTA_3=(R///$85917,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[33]"/0,0,0/312,320,60//"UserGuide/section_1.html","S1D49");
	DEF Z_DELTA_4=(R///$85918,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[43]"/0,0,0/402,320,60//"UserGuide/section_1.html","S1D49");

	;环形槽组垂直偏移
	DEF X_DELTA_1=(R///$85915,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[14]"/0,0,0/132,344,60//"UserGuide/section_1.html","S1D50");
	DEF X_DELTA_2=(R///$85916,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[24]"/0,0,0/222,344,60//"UserGuide/section_1.html","S1D50");
	DEF X_DELTA_3=(R///$85917,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[34]"/0,0,0/312,344,60//"UserGuide/section_1.html","S1D50");
	DEF X_DELTA_4=(R///$85918,,,/WR2//"/NC/_N_NC_GD2_ACX/RING[44]"/0,0,0/402,344,60//"UserGuide/section_1.html","S1D50");

	DEF VAR45=(I////WR4//"/NC/_N_NC_GD2_ACX/PROCESS[16]"/0,0,0/0,0,0);精简工艺参数/扩展工艺参数

	HS1=($85001,ac7,se3);磨削参数
	HS2=($85002,ac7,se1);工艺参数
	HS3=($85003,ac7,se1);修整参数
;

	;

	HS8=($85005,ac7,se1);返回

	VS1=("")

	PRESS(HS1)
		LM("MASK51","grind.com")
	END_PRESS

	PRESS(HS2)
		IF VAR45.VAL==0;基本工艺
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

	CHANGE(SLOTS_1)
		call("UP1")
	END_CHANGE

	CHANGE(SLOTS_2)
		call("UP1")
	END_CHANGE

	CHANGE(SLOTS_3)
		call("UP1")
	END_CHANGE

	CHANGE(SLOTS_4)
		call("UP1")
	END_CHANGE

	CHANGE(PITCH_1)
		IF PITCH_1.VAL==0
			SLOTS_1.VAL=0
		ENDIF
	END_CHANGE

	CHANGE(PITCH_2)
		IF PITCH_2.VAL==0
			SLOTS_2.VAL=0
		ENDIF
	END_CHANGE

	CHANGE(PITCH_3)
		IF PITCH_3.VAL==0
			SLOTS_3.VAL=0
		ENDIF
	END_CHANGE

	CHANGE(PITCH_4)
		IF PITCH_4.VAL==0
			SLOTS_4.VAL=0
		ENDIF
	END_CHANGE

	CHANGE(SLOT_END)
		IF SLOT_END.VAL>SLOT_AMOUNT
			SLOT_END.VAL=SLOT_AMOUNT
		ENDIF
		call("UP2")
	END_CHANGE

	CHANGE(SLOT_INIT)
		IF SLOT_INIT<1
			SLOT_INIT=1
		ENDIF
		call("UP2")
	END_CHANGE

	CHANGE(SLOT_AMOUNT)
		IF SLOT_END.VAL>SLOT_AMOUNT
			SLOT_END.VAL=SLOT_AMOUNT
		ENDIF
	END_CHANGE

	CHANGE(GRINDING_TYPE)
		IF GRINDING_TYPE.VAL==0
			IF TYPE.VAL<>1
				LM("MASK1","grind.com")
			ELSE
				LM("MASK18","grind.com")
			ENDIF
		ENDIF
	END_CHANGE

	SUB(UP1)
		SLOT_AMOUNT.VAL=SLOTS_1+SLOTS_2+SLOTS_3+SLOTS_4
	END_SUB

	SUB(UP2)
		SLOT_NEED.VAL=SLOT_END.VAL-SLOT_INIT.VAL+1
	END_SUB

//END

;
