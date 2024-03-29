;

;ifIsInternalBegin
;**********************MASK18:磨削参数_内:panel_18:;**********************
//M(Mask18/$85020/"panel_18_0_chs.png"/)

	DEF DIAMETER_ADJ=(R4/-0.2,0.2//$85174,$85174,$85043,/WR2//"/NC/_N_NC_GD2_ACX/GRIND[5]"/360,210,202/460,210,60//"UserGuide/section_1.html","S1D2");单次中径调整值
	DEF DIAMETER_ADJ_2=(R4///$85177,$85177,$85043,/WR2,ac4//"/NC/_N_NC_GD2_ACX/PROCESS[122]"/360,240,202/460,240,60//"UserGuide/section_1.html","S1D2");直径固定每件调整设定

	DEF VAR1=(I/*0=$85135,1=$85136,2=$85137,3=$85138,4=$85139/1/$85134,,,/WR4//"/NC/_N_NC_GD2_ACX/GRIND[1]"/0,0,0/10,10,60/);磨削类型,生成文件用

	DEF X_IM=(R///$85118,$85118,,/WR1//"$AA_IM[X]"/10,10,20/30,10,60/3);X_IM
	DEF Z_IM=(R///$85119,$85119,,/WR1//"$AA_IM[Z]"/10,30,20/30,30,60/3);Z_IM
	DEF X_DRF=(R///$85116,$85116,,/WR1//"$AC_DRF[X]"/120,10,50/170,10,60/7);DRF_X
	DEF Z_DRF=(R///$85117,$85117,,/WR1//"$AC_DRF[Z]"/120,30,50/170,30,60/7);DRF_Z

	DEF GRINDING_TYPE=(I/*0=$85900,1=$85901//$85902,$85902,,/WR4//"/NC/_N_NC_GD2_ACX/RING[1]"/10,60,110/110,60,60//"UserGuide/section_1.html","S1D31");螺纹/环形槽加工
	DEF RING_DISPLAY=(I////WR4//"/NC/_N_NC_GD2_ACX/RING[50]"/0,0,0/0,0,0/);显示环形槽选择参数

	DEF Z_SOFTENDP=(R////WR4//"$AA_SOFTENDP[Z]"/0,0,0/0,0,0/);SOFRENDP_Z

	DEF PIECE_VOLUME=(I/*0=$85166,1=$85167//$85170,$85170,,/WR1,ac4//"/NC/_N_NC_GD2_ACX/INI[27]"/360,10,70/460,10,80//"UserGuide/section_1.html","S1D1");单件/批量磨削方式选择
	DEF VAR8=(R3/-2000,2000//$85108,$85108,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/INI[2]"/360,40,202/460,40,60/6/"UserGuide/section_1.html","S1D10");工件左端
	DEF VAR9=(R3/-2000,2000//$85109,$85109,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/INI[3]"/360,60,202/460,60,60/6/"UserGuide/section_1.html","S1D11");工件右端
	DEF VAR10=(R/-500,500//$85165,$85165,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/INI[11]"/360,90,202/460,90,60/6/"UserGuide/section_1.html","S1D28");工件中心
	DEF Z_INIT=(R/-2000,2000//$85101,$85101,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/INI[29]"/360,110,202/460,110,60/6/"UserGuide/section_1.html","S1D30");内螺纹时台面起始位置

	DEF JSX_X=(R/-800,800//$85126,$85126,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/INI[24]"/360,140,202/460,140,60/7/"UserGuide/section_1.html","S1D14");机械手停留x
	DEF JXS_Z=(R/-2000,2000//$85127,$85127,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/INI[156]"/360,160,202/460,160,60/7/"UserGuide/section_1.html","S1D30");机械手停留z
	DEF JXS_C=(R/0,360//$85128,$85128,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/INI[157]"/360,180,202/460,180,60/7/"UserGuide/section_1.html","S1D30");机械手停留c

	DEF VAR19=(R4///$85158,$85158,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/PROCESS[5]"/360,270,202/460,270,60//"UserGuide/section_1.html","S1D25");当前磨削接触位
	DEF WHELL_POS_INI=(R4///$85169,$85169,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/PROCESS[14]"/360,290,202/460,290,60/6/"UserGuide/section_1.html","S1D26");初始磨削接触位(对刀完成后磨削接触位)

	DEF JIAJU_TEXT=(I///$85155,$85155,,/WR1///10,190,202/0,0,0//);
	DEF JIAJU_TOUJIA=(I/0,//$85129,$85129,,/WR2//"$R[100]"/10,210,202/110,210,60//);头架转速
	DEF JIAJU_SHALUN=(I/0,//$85149,$85149,,/WR2//"$R[101]"/10,230,202/110,230,60//);砂轮转速
	DEF JIAJU_YOUDUAN=(R///$85150,$85150,,/WR2//"$R[102]"/10,260,202/110,260,60//);磨削右端z
	DEF JIAJU_ZUODUAN=(R///$85151,$85151,,/WR2//"$R[103]"/10,280,202/110,280,60//);磨削左端z
	DEF JIAJU_QIDIAN=(R///$85152,$85152,,/WR2//"$R[104]"/10,310,202/110,310,60//);磨削起点x
	DEF JIAJU_JINDAO=(R///$85153,$85153,,/WR2//"$R[105]"/10,330,202/110,330,60//);进刀量
	DEF JIAJU_SUDU=(R///$85154,$85154,,/WR2//"$R[106]"/10,350,202/110,350,60//);磨削速度

	DEF CLEAN_DATE=(I///$85130,$85130,,/WR1,ac4///10,70,202/0,0,0//);离心机清理日期
	DEF YEAR_LAST=(I////WR1//"/NC/_N_NC_GD2_ACX/INI[117]"/0,0,0/130,70,20//);YEAR
	DEF MONTH_LAST=(I////WR1//"/NC/_N_NC_GD2_ACX/INI[118]"/0,0,0/150,70,20//);MONTH
	DEF DAY_LAST=(I////WR1//"/NC/_N_NC_GD2_ACX/INI[119]"/0,0,0/170,70,20//);DAY
	DEF CLEAN_DAYS=(I///$85144,$85144,,/WR1//"/NC/_N_NC_GD2_ACX/INI[169]"/10,90,202/130,90,60//);上次清理离心机已过去多少天

	DEF CLEAN_INTER=(I/0,//$85131,$85131,,/WR2//"/NC/_N_NC_GD2_ACX/INI[13]"/10,110,202/130,110,60//);清理间隔天数
	DEF CLEAN_RESET=(I/*0=$85123,1=$85143//$85132,$85132,,/WR2//"/NC/_N_NC_GD2_ACX/INI[14]"/10,130,202/130,130,60//);重置清理离心机日期
	DEF CLEAN_ALARM=(I/*0=$85140,1=$85141//$85133,$85133,,/WR2//"/NC/_N_NC_GD2_ACX/INI[168]"/10,150,202/130,150,60//);清理离心机是否报警提示(0否1是)

	DEF SPINDLE_RUN_LEVEL=(I/*0=$85191,1=$85192,2=$85193,3=$85194//$85190,$85190,,/WR2//"/NC/_N_NC_GD2_ACX/INI[170]"/360,350,202/460,350,60//);电主轴长时间停机后安全启动(0:1天/1:2天/2:2-7天/3:7天以上)

	DEF VAR45=(I////WR4//"/NC/_N_NC_GD2_ACX/PROCESS[16]"/0,0,0/0,0,0);精简工艺参数/扩展工艺参数

	DEF QCHECK=(I////WR4//"/Plc/Q113.5"/0,0,0/0,0,0);循环启动Q点检测
	
	DEF JIXIESHOU=(I////WR4//"/NC/_N_NC_GD2_ACX/INI[86]"/0,0,0/0,0,0);机械手
	DEF KONG_YUN_XING=(I////WR4//"/NC/_N_NC_GD2_ACX/INI[154]"/0,0,0/0,0,0/);空运行
	DEF MONI_TEST=(I////WR4//"/NC/_N_NC_GD2_ACX/GRIND[9]"/0,0,0/0,0,0/);模拟测试
	DEF JIAJU_DRESS=(I////WR4//"/NC/_N_NC_GD2_ACX/INI[159]"/0,0,0/0,0,0/);夹具修整
	DEF TOUJIA_RUN=(I////WR4//"/NC/_N_NC_GD2_ACX/PROCESS[119]"/0,0,0/0,0,0/);头架旋转
	DEF KAZHUA_MOVE=(I////WR4//"/NC/_N_NC_GD2_ACX/PROCESS[120]"/0,0,0/0,0,0/);卡爪活动
	DEF ZHUZHOU_RUN=(I////WR4//"/NC/_N_NC_GD2_ACX/PROCESS[121]"/0,0,0/0,0,0/);主轴跑合

	HS1=(["\\S_003.png",$85068],ac7,se3,pa0);磨削参数
	HS2=(["\\S_004.png",$85069],ac7,se1,pa0);工艺参数
	HS3=(["\\S_005.png",$85070],ac7,se1,pa0);修整参数
;

	;

	HS8=(["\\S_010.png",$85071],ac7,se1,pa0);返回

	VS1=($85035,ac7,se1);
	VS2=($85064,ac7,se1);
	VS3=($85065,ac7,se1);
	VS4=($85066,ac7,se1);
	VS5=($85073,ac7,se1);
	VS6=($85074,ac7,se1);
	VS7=($85075,ac7,se1);

	LOAD
		IF JIXIESHOU.VAL==1
			VS1.SE=3
		ENDIF
		IF KONG_YUN_XING.VAL==1
			VS2.SE=3
		ENDIF
		IF MONI_TEST.VAL==1
			VS3.SE=3
		ENDIF
		IF JIAJU_DRESS.VAL==1
			VS4.SE=3
		ENDIF
		IF TOUJIA_RUN.VAL==1
			VS5.SE=3
		ENDIF
		IF KAZHUA_MOVE.VAL==1
			VS6.SE=3
		ENDIF
		IF ZHUZHOU_RUN.VAL==1
			VS7.SE=3
		ENDIF
	END_LOAD

	PRESS(VS1)
		IF JIXIESHOU.VAL==0
			JIXIESHOU.VAL=1
			VS1.SE=3
		ELSE
			JIXIESHOU.VAL=0
			VS1.SE=1
		ENDIF	
	END_PRESS

	PRESS(VS2)
		IF KONG_YUN_XING.VAL==0
			KONG_YUN_XING.VAL=1
			VS2.SE=3
		ELSE
			KONG_YUN_XING.VAL=0
			VS2.SE=1
		ENDIF	
	END_PRESS

	PRESS(VS3)
		IF MONI_TEST.VAL==0
			MONI_TEST.VAL=1
			VS3.SE=3
		ELSE
			MONI_TEST.VAL=0
			VS3.SE=1
		ENDIF	
	END_PRESS

	PRESS(VS4)
		IF JIAJU_DRESS.VAL==0
			JIAJU_DRESS.VAL=1
			VS4.SE=3
		ELSE
			JIAJU_DRESS.VAL=0
			VS4.SE=1
		ENDIF	
	END_PRESS

	PRESS(VS5)
		IF TOUJIA_RUN.VAL==0
			TOUJIA_RUN.VAL=1
			VS5.SE=3
		ELSE
			TOUJIA_RUN.VAL=0
			VS5.SE=1
		ENDIF	
	END_PRESS

	PRESS(VS6)
		IF KAZHUA_MOVE.VAL==0
			KAZHUA_MOVE.VAL=1
			VS6.SE=3
		ELSE
			KAZHUA_MOVE.VAL=0
			VS6.SE=1
		ENDIF	
	END_PRESS

	PRESS(VS7)
		IF ZHUZHOU_RUN.VAL==0
			ZHUZHOU_RUN.VAL=1
			VS7.SE=3
		ELSE
			ZHUZHOU_RUN.VAL=0
			VS7.SE=1
		ENDIF	
	END_PRESS

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

	CHANGE(CLEAN_RESET)
		IF CLEAN_RESET.VAL==0
			CLEAN_RESET.BC=10
		ELSE
			CLEAN_RESET.BC=3
		ENDIF
	END_CHANGE

	CHANGE(CLEAN_DAYS)
		IF CLEAN_DAYS.VAL>CLEAN_INTER.VAL
			CLEAN_DAYS.BC=7
		ELSE
			CLEAN_DAYS.BC=4
		ENDIF
	END_CHANGE

	CHANGE(CLEAN_INTER)
		IF CLEAN_DAYS.VAL>CLEAN_INTER.VAL
			CLEAN_DAYS.BC=7
		ELSE
			CLEAN_DAYS.BC=4
		ENDIF
	END_CHANGE

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
			PIECE_VOLUME.WR=1
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
//M(Mask51/$85025//)

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

	HS1=(["\\S_003.png",$85068],ac7,se3,pa0);磨削参数
	HS2=(["\\S_004.png",$85069],ac7,se1,pa0);工艺参数
	HS3=(["\\S_005.png",$85070],ac7,se1,pa0);修整参数
;

	;

	HS8=(["\\S_010.png",$85071],ac7,se1,pa0);返回

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
