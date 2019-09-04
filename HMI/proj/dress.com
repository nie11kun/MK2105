;***********************MASK3:修整参数_主界面:panel_3**********************
//M(Mask3/$85022/"panel_3_4_chs.png"/)

	DEF VAR0=(R///$85366,$85366,,$85043/WR1//"/NC/_N_NC_GD2_ACX/DRESSER[10]"/110,10,110/200,10,110//"UserGuide/section_3.html","S3D18");累计修整量

	DEF VAR5=(I/0,1000//$85340,$85340,,/WR2/"panel_3_5_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[26]"/330,60,110/440,60,60//"UserGuide/section_3.html","S3D7");粗修次数
	DEF VAR6=(R/0,0.5//$85308,$85308,,$85043/WR2/"panel_3_5_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[28]"/330,80,110/440,80,110//"UserGuide/section_3.html","S3D8");粗修量
	DEF VAR7=(R/0,1000//$85306,$85306,,$85045/WR2/"panel_3_5_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[30]"/330,100,110/440,100,110//"UserGuide/section_3.html","S3D9");粗修速度

	DEF VAR8=(I/0,1000//$85341,$85341,,/WR2/"panel_3_6_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[27]"/330,130,110/440,130,60//"UserGuide/section_3.html","S3D10");精修次数
	DEF VAR9=(R/0,0.5//$85309,$85309,,$85043/WR2/"panel_3_6_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[29]"/330,150,110/440,150,110//"UserGuide/section_3.html","S3D11");精修量
	DEF VAR10=(R/0,1000//$85307,$85307,,$85045/WR2/"panel_3_6_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[31]"/330,170,110/440,170,110//"UserGuide/section_3.html","S3D12");精修速度

	DEF VAR12=(R/0,200//$85316,$85316,,$85043/WR2/"panel_3_9_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[23]"/330,200,110/440,200,110//"UserGuide/section_3.html","S3D13");砂轮宽度
	DEF VAR13=(R/0,1000//$85319,$85319,,$85043/WR2/"panel_3_7_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[24]"/330,220,110/440,220,110//"UserGuide/section_3.html","S3D14");新砂轮直径
	DEF VAR14=(R/0,1000//$85320,$85320,,$85043/WR1//"/NC/_N_NC_GD2_ACX/DRESSER[25]"/330,240,110/440,240,110/);砂轮当前直径
	DEF VAR15=(R/0,80//$85317,$85317,,$85046/WR1/"panel_3_8_chs.png"/"/NC/_N_NC_GD2_ACX/WHEEL_LINESPEED_DRESS[2]"/330,260,110/440,260,110//"UserGuide/section_3.html","S3D15");砂轮线速度
	DEF VAR16=(I/0,//$85221,$85221,,$85044/WR1/"panel_3_15_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[37]"/330,280,110/440,280,110//"UserGuide/section_3.html","S3D19");修整时砂轮转速

	DEF VAR4=(I/*0=$85327,1=$85328//$85350,,,/WR2/"panel_3_4_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[6]"/0,0,0/440,30,60//"UserGuide/section_3.html","S3D16");砂轮状态

	;+++++++++++++++++++++++++++++++++++++++++++++
;
	DEF WHEEL_N_MIN=(R/0,1000//$85303,$85303,,$85043/WR4/"panel_3_12_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[36]"/310,310,130/440,310,110//"UserGuide/section_3.html","S3D5");内螺纹砂轮最小直径 ifIsInternal
	DEF WHEEL_N_MAX=(R/0,1000//$85304,$85304,,$85043/WR4/"panel_3_13_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[50]"/310,330,130/440,330,110//"UserGuide/section_3.html","S3D6");内螺纹砂轮最大磨削直径 ifIsInternal

;
;
;
	DEF VAR1=(I/*4=$85348/4/$85387,,,/WR1//"/NC/_N_NC_GD2_ACX/DRESSER[1]"/0,0,0/335,10,60/);X_内后  ifIsDressWare4
;

;
;

;
;
	DEF cixindiaoyong=(I////WR4//"/NC/_N_NC_GD2_ACX/DRESSER[115]"/0,0,0/0,0,0/);调用默认齿形程序0/通用齿形程序1

	DEF ROLLING_1=(I/*0=$85379,1=$85379/0/$85388,,,/WR4///0,0,0/440,10,60/);成型修整轮
	DEF HY_1=(I/*0=$85378,1=$85378/0/$85388,,,/WR4///0,0,0/440,10,60/);液压修整

;
	DEF N_CX_X_TYPE=(I//1//WR4//"/NC/_N_NC_GD2_ACX/DRESSER[38]"/0,0,0/0,0,0/);成型X修整时修整器在后 ifIsBackDress

	;DEF MODEL_NAME=(S///$85464,$85464,,/WR4,ac7,al0,fs2,li0,cb0//"/NC/_N_NC_GD2_ACX/WORM_SHAPE"/0,0,0/10,290,250/);存储齿形程序名,蜗杆用

	;+++++++++++++++++++++++++++++++++++++++++++++

	DEF VAR20=(S1////WR4//"/NC/_N_NC_GD2_ACX/AXIS_VER"/0,0,0/0,0,0/);垂直轴
	DEF VAR21=(S1////WR4//"/NC/_N_NC_GD2_ACX/AXIS_HORI"/0,0,0/0,0,0/);水平轴
	DEF QCHECK=(I////WR4//"/Plc/Q113.5"/0,0,0/0,0,0);循环启动Q点检测

	DEF VAR30=(R////WR4//"/NC/_N_NC_GD2_ACX/DRESSER[3]"/0,0,0/0,0,0);回零时砂轮与修整轮中间距
	DEF VAR31=(R////WR4//"/NC/_N_NC_GD2_ACX/WHEEL[13]"/0,0,0/0,0,0/);NC用初始接触左
	DEF VAR40=(R////WR4//"/NC/_N_NC_GD2_ACX/WHEEL[14]"/0,0,0/0,0,0/);NC用初始接触右
	DEF VAR41=(R////WR4//"/NC/_N_NC_GD2_ACX/WHEEL[11]"/0,0,0/0,0,0/);当前接触左
	DEF VAR42=(R////WR4//"/NC/_N_NC_GD2_ACX/WHEEL[12]"/0,0,0/0,0,0/);当前接触右
	DEF VAR33=(R////WR4//"/NC/_N_NC_GD2_ACX/WHEEL[15]"/0,0,0/0,0,0/);初始接触位置
	DEF VAR34=(R////WR4//"/NC/_N_NC_GD2_ACX/WHEEL[1]"/0,0,0/0,0,0/);修整轮直径
	
	DEF TYPE=(I////WR4//"/NC/_N_NC_GD2_ACX/GRIND[1]"/0,0,0/0,0,0/);磨削类型
	DEF TECH=(I////WR4//"/NC/_N_NC_GD2_ACX/PROCESS[16]"/0,0,0/0,0,0);精简工艺参数/扩展工艺参数
	DEF PIECE_VOLUME=(I////WR4//"/NC/_N_NC_GD2_ACX/INI[27]"/0,0,0/0,0,0/);单件/批量磨削方式选择
	DEF WHEEL_RUN_MODE=(I////WR4//"/NC/_N_NC_GD2_ACX/INI[145]"/0,0,0/0,0,0/);砂轮是否恒转速(0否1是)

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
	VS7=($85379,ac7,se1);"滚压轮"
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
		IF (VAR1.VAL==0) OR (VAR1.VAL==2);VW/V
			LM("MASK4","dressware.com")
		ELSE;XZ/X
			LM("MASK12","dressware.com")
		ENDIF
	END_PRESS

	PRESS(VS5)
		IF (VAR1.VAL==0) OR (VAR1.VAL==2);VW/V
			LM("MASK5","dressware.com")
		ELSE;XZ/X
			LM("MASK13","dressware.com")
		ENDIF
	END_PRESS

	PRESS(VS6)
		IF (VAR1.VAL==0) OR (VAR1.VAL==2);VW/V
			LM("MASK6","dressware.com")
		ELSE;XZ/X
			LM("MASK14","dressware.com")
		ENDIF
	END_PRESS

	PRESS(VS7)
		IF (VAR1.VAL==0) OR (VAR1.VAL==2);VW/V
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

	CHANGE(VAR1)
		call("UP2")
		call("UP3")
	END_CHANGE

	CHANGE(VAR2)
		call("UP2")
	END_CHANGE
	
	CHANGE(VAR13)
		call("UP5")
		IF WHEEL_N_MAX.VAL+0.2>VAR13.VAL
			WHEEL_N_MAX.VAL=VAR13.VAL-0.2
		ENDIF
		call("UP1")
	END_CHANGE

	CHANGE(WHEEL_N_MAX)
		IF WHEEL_N_MAX.VAL+0.2>VAR13.VAL
			WHEEL_N_MAX.VAL=VAR13.VAL-0.2
		ENDIF
	END_CHANGE

	CHANGE(VAR4)
		call("UP1")
		call("UP6")
	END_CHANGE

	CHANGE(VAR14)
		VAR0.VAL=(VAR13.VAL-VAR14.VAL)/2;累计修整量计算
		call("ROTATE_LINE")
	END_CHANGE
	
	CHANGE(VAR15)
		call("ROTATE_LINE")
	END_CHANGE
	
	CHANGE(VAR16)
		call("ROTATE_LINE")
	END_CHANGE

	CHANGE(WHEEL_RUN_MODE)
		IF WHEEL_RUN_MODE.VAL==0
			VAR15.WR=2
			VAR16.WR=1
		ELSE
			VAR15.WR=1
			VAR16.WR=2
		ENDIF
	END_CHANGE

	CHANGE(QCHECK)
		call("UP2")
		call("UP6")
	END_CHANGE

	SUB(UP1)
		IF VAR4.VAL==0;新砂轮
			VAR14.VAL=VAR13.VAL
		ELSE
			IF TYPE.VAL<>1;不是内螺纹
				IF VAR31.VAL>=VAR41.VAL;初始大于当前
					VAR14.VAL=VAR13.VAL-(VAR31.VAL-VAR41.VAL)*2
				ELSE
					VAR14.VAL=VAR13.VAL
				ENDIF
			ELSE;内螺纹
				IF N_CX_X_TYPE.VAL==0;前/后修整
					IF VAR41.VAL>=VAR31.VAL;当前大于初始
						VAR14.VAL=VAR13.VAL-(VAR41.VAL-VAR31.VAL)*2
					ELSE
						VAR14.VAL=VAR13.VAL
					ENDIF
				ELSE
					IF VAR31.VAL>=VAR41.VAL;初始大于当前
						VAR14.VAL=VAR13.VAL-(VAR31.VAL-VAR41.VAL)*2
					ELSE
						VAR14.VAL=VAR13.VAL
					ENDIF
				ENDIF
			ENDIF
		ENDIF
	END_SUB

	SUB(UP2)
		call("UP4")
		IF QCHECK.VAL==0
;
;
		ELSE
;
;
		ENDIF
		IF VAR1.VAL==0
			ROLLING_1.WR=4
			HY_1.WR=4
			VS1.se=1
			VS2.se=1
			VS3.se=1
			VS4.se=1
			VS5.se=1
			VS6.se=1
			VS7.se=2
			VS8.se=2
			IF QCHECK.VAL==0
;
;
;
;
				VAR12.WR=2
			ELSE
;
;
;
;
				VAR12.WR=1
			ENDIF
		ELSE
			IF VAR1.VAL==1
				ROLLING_1.WR=4
				HY_1.WR=4
				VS1.se=1
				VS2.se=1
				VS3.se=1
				VS4.se=1
				VS5.se=1
				VS6.se=1
				VS7.se=2
				VS8.se=2
				IF QCHECK.VAL==0
;
;
;
;
					VAR12.WR=2
				ELSE
;
;
;
;
					VAR12.WR=1
				ENDIF
			ELSE
				IF VAR1.VAL==2
					VAR2.WR=4
					VAR3.WR=4
					VAR12.WR=4
					ROLLING_1.WR=1
					HY_1.WR=4
					VS1.se=2
					VS2.se=2
					VS3.se=2
					VS4.se=2
					VS5.se=2
					VS6.se=2
					VS7.se=1
					VS8.se=2
				ELSE
					IF VAR1.VAL==3
						VAR2.WR=4
						VAR3.WR=4
						VAR12.WR=4
						ROLLING_1.WR=4
						HY_1.WR=1
						VS1.se=2
						VS2.se=2
						VS3.se=2
						VS4.se=2
						VS5.se=2
						VS6.se=2
						VS7.se=2
						VS8.se=1
					ELSE
						IF VAR1.VAL==4
							VAR2.WR=4
							VAR3.WR=4
							VAR12.WR=2
							ROLLING_1.WR=1
							HY_1.WR=4
							VS1.se=2
							VS2.se=2
							VS3.se=2
							VS4.se=2
							VS5.se=2
							VS6.se=2
							VS7.se=1
							VS8.se=2
						ENDIF
					ENDIF
				ENDIF
			ENDIF
		ENDIF
	END_SUB

	SUB(UP3)
		IF VAR1.VAL==0
			VAR20.VAL="V"
			VAR21.VAL="W"
		ELSE
			IF VAR1.VAL==1
				VAR20.VAL="X"
				VAR21.VAL="Z"
			ELSE
				IF VAR1.VAL==2
					VAR20.VAL="V"
					VAR21.VAL=""
				ELSE
					IF VAR1.VAL==3
						VAR20.VAL="V"
						VAR21.VAL=""
					ELSE
						IF VAR1.VAL==4
							VAR20.VAL="X"
							VAR21.VAL=""
						ENDIF
					ENDIF
				ENDIF
			ENDIF
		ENDIF
	END_SUB

	SUB(UP4)
		IF QCHECK.VAL==1
			VAR4.WR=1
			VAR5.WR=1
			VAR6.WR=1
			VAR7.WR=1
			VAR8.WR=1
			VAR9.WR=1
			VAR10.WR=1
			VAR13.WR=1
			MODEL_NAME.WR=1
			IF TYPE.VAL<>1;不是内螺纹
				WHEEL_W_MIN.WR=1
				WHEEL_N_MIN.WR=4
				WHEEL_N_MAX.WR=4
			ELSE
				WHEEL_W_MIN.WR=4
				WHEEL_N_MIN.WR=1
				WHEEL_N_MAX.WR=1
			ENDIF
		ELSE
			VAR4.WR=2
			VAR5.WR=2
			VAR6.WR=2
			VAR7.WR=2
			VAR8.WR=2
			VAR9.WR=2
			VAR10.WR=2
			VAR13.WR=2
			MODEL_NAME.WR=2
			IF TYPE.VAL<>1;不是内螺纹
				WHEEL_W_MIN.WR=2
				WHEEL_N_MIN.WR=4
				WHEEL_N_MAX.WR=4
			ELSE
				WHEEL_W_MIN.WR=4
				WHEEL_N_MIN.WR=2
				WHEEL_N_MAX.WR=2
			ENDIF
		ENDIF
	END_SUB

	SUB(UP5)
		IF VAR1.VAL==4;成型X
			IF TYPE.VAL<>1;不是内螺纹
				VAR33.VAL=-(VAR30.VAL-VAR34.VAL/2-VAR13.VAL/2);初始接触位
				VAR31.VAL=VAR33.VAL-VAR32.VAL;NC用初始接触
			ELSE
				IF N_CX_X_TYPE.VAL==0;内螺纹成型前/后
					VAR33.VAL=-(VAR30.VAL+VAR34.VAL/2+VAR13.VAL/2);初始接触位
					VAR31.VAL=VAR33.VAL+VAR32.VAL;NC用初始接触
				ELSE
					VAR33.VAL=-(VAR30.VAL-VAR34.VAL/2-VAR13.VAL/2);初始接触位
					VAR31.VAL=VAR33.VAL;NC用初始接触
				ENDIF
			ENDIF
		ELSE
			IF VAR1.VAL==1;XZ
				IF TYPE.VAL<>1;不是内螺纹
					VAR31.VAL=-(VAR30.VAL-VAR34.VAL/2-VAR13.VAL/2);初始接触位
				ELSE
					VAR31.VAL=-(VAR30.VAL+VAR34.VAL/2+VAR13.VAL/2);初始接触位
				ENDIF
				VAR40.VAL=VAR31.VAL
			ENDIF
		ENDIF
	END_SUB

	SUB(UP6)
		IF TYPE.VAL<>1;不是内螺纹
			CHENGXING.WR=4
			CHENGXING.VAL=0
		ELSE
			IF VAR4.VAL==0;新砂轮
				IF QCHECK==1
					CHENGXING.WR=1
				ELSE
					CHENGXING.WR=2
				ENDIF
			ELSE
				CHENGXING.WR=4
			ENDIF
		ENDIF
	END_SUB

	SUB(ROTATE_LINE)
		IF WHEEL_RUN_MODE.VAL==0
			VAR16.VAL=VAR15.VAL*60000/(PI*VAR14.VAL);修整时砂轮转速计算
		ELSE
			VAR15.VAL=VAR16.VAL*PI*VAR14.VAL/60000
		ENDIF
	END_SUB

//END

