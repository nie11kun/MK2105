#

|数组|全局变量|意义
|:----:|:----:|:----:|
|**PLC_NC交换变量**|
|$A_DBB[0]|DB4900.DBX0.0|是否修整
|$A_DBB[1]|DB4900.DBX1.0|是否手动对刀
|$A_DBB[2]|DB4900.DBX2.0|是否退刀，异步动作信号
|$A_DBB[3]|DB4900.DBX3.0|液压动作回退到位
|$A_DBB[4]|DB4900.DBX4.0|液压动作伸出到位
|$A_DBB[5]|DB4900.DBX5.0|是否自动对刀
|$A_DBB[6]|DB4900.DBX6.0|C轴旋转
|$A_DBB[7]|DB4900.DBX7.0|自动对刀测量机构1汽缸回退到位
|$A_DBB[8]|DB4900.DBX8.0|自动对刀测量机构1汽缸伸出到位
|$A_DBB[9]|DB4900.DBX9.0|自动门打开开关
|$A_DBB[10]|DB4900.DBX10.0|自动门关闭开关
|$A_DBB[11]|DB4900.DBX11.0|
|$A_DBB[12]|DB4900.DBX12.0|砂轮当前状态(0停止/1启动)
|$A_DBB[13]|DB4900.DBX13.0|修整轮当前状态(0停止/1启动)
|$A_DBB[14]|DB4900.DBX14.0|升角夹紧动作检测信号(0未松开/1已松开)
|$A_DBB[15]|DB4900.DBX15.0|
|$A_DBB[16]|DB4900.DBX16.0|外圆砂轮当前状态(0停止/1启动)
|$A_DBB[17]|DB4900.DBX17.0|液压卡盘夹紧到位时为1，未到位为0
|$A_DBB[18]|DB4900.DBX18.0|液压卡盘松开到位时为1，未到位为0
|$A_DBB[19]|DB4900.DBX19.0|zc插补期间x退刀，同步动作信号
|$A_DBB[20]|DB4900.DBX20.0|自动对刀测量机构2汽缸回退到位
|$A_DBB[21]|DB4900.DBX21.0|自动对刀测量机构2汽缸伸出到位
|$A_DBB[23]|DB4900.DBX23.0|液压修整器回退到位
|$A_DBB[24]|DB4900.DBX24.0|液压修整器伸出到位
|||与桁架机器人交互相关的信号
|$A_DBB[30]|DB4900.DBX30.0|机器人发给系统,取成品到位信号
|$A_DBB[31]|DB4900.DBX31.0|机器人发给系统,送毛坯到位信号
|$A_DBB[32]|DB4900.DBX32.0|机器人发给系统,手爪收回到位信号
|$A_DBB[60]|DB4900.DBX60.0|系统发给机器人,罩壳顶部门已打开信号,M80置1(有效),M81置0
|$A_DBB[61]|DB4900.DBX61.0|系统发给机器人,预完成,通知机械手准备,M82置1(有效),M83置0
|$A_DBB[62]|DB4900.DBX62.0|系统发给机器人,机床故障,M84置1(有效),M85置0
|$A_DBB[63]|DB4900.DBX63.0|系统发给机器人,卡盘松开完成,M86置1(有效),M87置0
|$A_DBB[64]|DB4900.DBX64.0|系统发给机器人,卡盘夹紧完成,M88置1(有效),M89置0
|||
|$A_PROBE[1]||测量探头1偏转
|$A_PROBE[2]||测量探头2偏转
|$AC_MEA[1]||测量探头1任务状态
|$AC_MEA[2]||测量探头2任务状态
||DB2700.DBX1.0|测头信号状态
|||
|$A_IN[4]||在线测量信号f3
|$A_IN[3]||在线测量信号f2
|$A_IN[2]||在线测量信号st
|$A_IN[1]||在线测量信号sr
|$A_IN[10]||在线测量自动模式信号
|$A_IN[11]||在线测量就绪信号
|$A_OUT[3]||启动测量
|||
|MD14510[0]|DB4500.DBW0|润滑间歇时间(1min)
|MD14510[1]|DB4500.DBW2|润滑启动时间(10ms)
|MD14514[0]|DB4500.DBD2000|模拟量砂轮极限速度
|MD14510[4]|DB4500.DBW8|砂轮风扇停留时间
|||
|R299|-->WHEEL_RPM1|模拟量砂轮1转速
|R298|-->WHEEL_RPM2|模拟量砂轮2转速
|R297|-->DWHEEL_RPM1|模拟量修整轮1转速
|R296|-->DWHEEL_RPM2|模拟量修整轮2转速
|R280|-->$AA_IM[X]|退刀时存储X轴当前坐标
|R281|-->$AA_IM[Z]|退刀时存储Z轴当前坐标
|R270|-->|vw修整器z回退中修整同步动作标记
|||
|PLCASUP1|ASUP1|PLC异步子程序-退刀键启动
|||
|**修整主参数(DRESSER)**|
|DRESSER[0]|DRESSWARE|修整器选择(0VW/1XZ/2滚压V/3液压/4滚压X)
|DRESSER[1]|ROLLING_VER|滚压轮齿高
|DRESSER[2]|WHEEL_DWHEEL_INTER|两轮中心距
|DRESSER[3]|DWHEEL_MODE|修整轮类型(0单/1双/2方)
|DRESSER[4]|DSHAPE|齿形选择(0三角/1梯形/2双圆弧)
|DRESSER[5]|WHEEL_STA|砂轮状态(0新/1旧)
|DRESSER[6]|DRESS_ALARM|修整报警(0无报警)
|AXIS_VER|AXIS_VER|垂直轴
|AXIS_HORI|AXIS_HORI|水平轴
|SHAPE|齿形程序的程序名|
|DRESSER[9]|DRESS_CUMU|砂轮修整累积
|DRESSER[10]|DRESS_FEED|当前速度
|DRESSER[11]|DRESS_TIME_R|粗修次数
|DRESSER[12]|DRESS_TIME_F|精修次数
|DRESSER[13]|DRESS_TIME_ADD|新砂轮初始余量对应修整次数
|DRESSER[14]|DRESS_DEEP_R|粗修进给
|DRESSER[15]|DRESS_DEEP_F|精修进给
|DRESSER[16]|DRESS_FEED_R|粗修速度
|DRESSER[17]|DRESS_FEED_F|精修速度
|DRESSER[18]|DRESS_TIME_RCURNT|当前粗修次数
|DRESSER[19]|DRESS_TIME_FCURNT|当前精修次数
|DRESSER[20]|DRESS_TIME_ACURNT|当前新砂轮抬刀需要修整次数
|DRESSER[21]|WHEEL_MID|修整轮与砂轮中心位置水平坐标
|DRESSER[22]|WHEEL_WIDTH|砂轮宽
|DRESSER[23]|WHEEL_DIA|砂轮初始直径
|DRESSER[24]|WHEEL_DIACURNT|砂轮当前直径
|||
|DRESSER[25]|D_DRESS_TIME_R|纯修整粗修次数
|DRESSER[26]|D_DRESS_TIME_F|纯修整精修次数
|DRESSER[27]|D_DRESS_DEEP_R|纯修整粗修进给
|DRESSER[28]|D_DRESS_DEEP_F|纯修整精修进给
|DRESSER[29]|D_DRESS_FEED_R|纯修整粗修速度
|DRESSER[30]|D_DRESS_FEED_F|纯修整精修速度
|||
|DRESSER[31]|DWHEEL_RND_L|修左侧砂轮齿形时使用的滚轮半径
|DRESSER[32]|DWHEEL_RND_R|修右侧砂轮齿形时使用的滚轮半径
|DRESSER[33]|DWHEEL_MID_L|左修整轮对砂轮中心
|DRESSER[34]|DWHEEL_MID_R|右修整轮对砂轮中心
|DRESSER[35]|WHEEL_MIN_diameter|砂轮最小直径
|DRESSER[36]|DRESS_WHEEL_RPM|修整时砂轮转速
|DRESSER[37]|N_CX_X_TYPE|成型X修整时,修整器在前还是在后,前(0)/后(1)
|DRESSER[38]|TECH_DRESS_CUMU|界面工艺修整量总量
|DRESSER[39]|双圆弧自动计算参数(0否1是)
|DRESSER[40]|
|DRESSER[41]|
|DRESSER[42]|
|DRESSER[43]|
|DRESSER[44]|
|DRESSER[45]|
|DRESSER[46]|
|DRESSER[47]|WHEEL_DSURFACE|砂轮到修整端面位置
|DRESSER[48]|DWHEEL_DSURFACE|修整轮到修整端面距离
|DRESSER[49]|WHEEL_MAX_diameter|砂轮最大磨削直径
|DRESSER[50]|
|DRESSER[51]|
|DRESSER[60]|JIAJU_GRIND_LEFT|夹具磨削,Z轴左端位置
|DRESSER[61]|JIAJU_GRIND_RIGHT|夹具磨削,Z轴右端位置
|DRESSER[62]|JIAJU_GRIND_TOUCH|夹具磨削,X轴初始接触
|DRESSER[63]|JIAJU_DRESS_LEFT|夹具修整砂轮,Z轴左端位置
|DRESSER[64]|JIAJU_DRESS_RIGHT|夹具修整砂轮,Z轴右端位置
|DRESSER[65]|JIAJU_GRESS_TOUCH|夹具修整砂轮,X轴初始接触
|DRESSER[66]|JIAJU_GRESS_TIME|夹具修整砂轮,修整次数
|DRESSER[67]|JIAJU_GRESS_FEED|夹具修整砂轮,进刀量
|DRESSER[68]|JIAJU_GRESS_CUMU|夹具磨削/修整砂轮,修整次数累积
|DRESSER[69]|JIAJU_GRIND_FEED|夹具磨削,进刀量
|磨削中心相关||
|DRESSER[70]||金刚笔与U轴砂轮外圆接触时的初始U坐标
|DRESSER[71]||金刚笔与U轴砂轮左端面接触时的Z坐标
|DRESSER[72]||外圆磨砂轮修整终点的Z坐标
|DRESSER[73]||外圆磨砂轮修整,当前粗修次数
|DRESSER[74]||外圆磨砂轮修整,当前精修次数
|DRESSER[75]||外圆磨砂轮修整,程序用粗修次数
|DRESSER[76]||外圆磨砂轮修整,程序用精修次数
|DRESSER[77]||外圆磨砂轮修整,粗修进刀量
|DRESSER[78]||外圆磨砂轮修整,精修进刀量
|DRESSER[79]||外圆磨砂轮修整,粗修进给速度
|DRESSER[80]||外圆磨砂轮修整,精修进给速度
|DRESSER[81]||外圆磨砂轮修整,共用修整速度
|DRESSER[82]||外圆磨砂轮修整,界面设定粗修次数
|DRESSER[83]||外圆磨砂轮修整,界面设定精修次数
|DRESSER[84]||外圆磨砂轮修整,界面设定粗修进给量
|DRESSER[85]||外圆磨砂轮修整,界面设定精修进给量
|DRESSER[86]||外圆磨砂轮修整,界面设定粗修进给速度
|DRESSER[87]||外圆磨砂轮修整,界面设定精修进给速度
|DRESSER[88]||金刚笔与U轴砂轮外圆接触时的当前U坐标
|DRESSER[89]||外圆外圆部分磨砂轮新旧(0新1旧)
|DRESSER[90]||外圆磨砂轮等效初始直径
|DRESSER[91]||外圆磨砂轮等效当前直径
|DRESSER[92]||外圆磨砂轮最小等效直径
|DRESSER[93]||外圆磨砂轮修整起点的Z坐标
|||
|DRESSER[94]||外圆磨砂轮侧面修整,界面设定粗修次数
|DRESSER[95]||外圆磨砂轮侧面修整,界面设定精修次数
|DRESSER[96]||外圆磨砂轮侧面修整,界面设定粗修进给量
|DRESSER[97]||外圆磨砂轮侧面修整,界面设定精修进给量
|DRESSER[98]||外圆磨砂轮右端面,磨削中是否修整累计计数(0不修整/1修整)
|DRESSER[99]||外圆磨砂轮侧面修整,Z轴初始位置,即起点)
|DRESSER[100]||外圆磨砂轮侧面修整,U轴初始位置,即起点,靠近头架
|DRESSER[101]||外圆磨砂轮侧面修整,U轴结束位置,终点,远离头架
|DRESSER[102]||外圆磨砂轮侧面修整,粗修进给速度)
|DRESSER[103]||外圆磨砂轮侧面修整,精修进给速度)
|||
|DRESSER[104]||外圆磨砂轮侧面修整,当前粗修次数)
|DRESSER[105]||外圆磨砂轮侧面修整,当前精修次数)
|DRESSER[106]||外圆磨砂轮侧面修整,累积进给量)
|DRESSER[107]||外圆磨砂轮侧面修整,公用进给速度)
|DRESSER[108]||外圆磨砂轮侧面修整,Z轴修整当前位置)
|DRESSER[109]||外圆磨砂轮左端面,磨削中是否修整累计计数(0不修整/1修整)
|DRESSER[110]||外圆磨砂轮外圆是否修整(1修整/0不修整)
|DRESSER[111]||外圆磨砂轮端面是否修整(1修整/0不修整)
|DRESSER[112]||修砂轮侧面时的砂轮转速
|DRESSER[113]||新砂轮是否是成型砂轮(0否1是)
|DRESSER[114]||是否使用通用齿形程序(0否1是)
|DRESSER[115]||
|DRESSER[116]||夹具修整砂轮转速
|DRESSER[117]||夹具修整修整轮转速
|DRESSER[118]||夹具磨削砂轮转速
|DRESSER[119]||金刚笔与U轴砂轮外圆初始接触时的坐标
|DRESSER[120]||端面砂轮修整,程序用粗修次数
|DRESSER[121]||端面砂轮修整,程序用精修次数
|DRESSER[122]||端面砂轮修整,程序用粗修进刀量
|DRESSER[123]||端面砂轮修整,程序用精修进刀量
|DRESSER[124]||端面砂轮修整,程序用粗修进给速度
|DRESSER[125]||端面砂轮修整,程序用精修进给速度
|DRESSER[126]||金刚笔与U轴砂轮端面初始接触时的Z坐标
|DRESSER[127]||外磨累积修整量
|DRESSER[128]||端面累积修整量
|DRESSER[129]||外圆端面部分磨砂轮新旧(0新1旧)
|DRESSER[130]||端面修整砂轮当前转速
|DRESSER[131]||
|DRESSER[132]||外圆修整锥度微调(正 左低右高/负 左高右低)
|DRESSER[133]||新砂轮修整模式(0抬齿高/1偏半个砂轮宽度)
|DRESSER[134]||新砂轮修整模式1偏半个砂轮宽度：当前左水平位置
|DRESSER[135]||新砂轮修整模式1偏半个砂轮宽度：当前右水平位置
|DRESSER[136]||端面修整锥度微调(正 前大后小/负 前小后大)
|DRESSER[137]||外圆砂轮最小磨削直径
|||
|**初始化参数(INI)**||
|INI[0]|ROTATION|螺纹旋向(0右旋/1左旋)
|INI[1]|L_POS|工件磨削左端坐标
|INI[2]|R_POS|工件磨削右端坐标
|INI[3]|LENGTH|磨削长度
|INI[4]|SCREW_PITCH|螺距
|INI[5]|SCREW_LEAD|导程
|INI[6]|START_POS|磨削起点
|INI[7]|END_POS|磨削终点
|INI[8]|MIDDLE_Z|磨削中点
|INI[9]|TOTAL_ANGLE|磨削总角度
|INI[10]|OPER_X|外螺纹时表示对刀起始位置的X值(内螺纹时为砂轮中心与头架中心重合时的X坐标)
|INI[11]|滚压轮修整中反向距离
|INI[12]
|INI[13]
|INI[14]|TAPER_VALUE|单位长度锥度值(半径方向)，内螺纹大头往小头磨,外螺纹小头往大头磨
|INI[15]|dx|锥度对应的全长X增量(半径方向)
|INI[16]|helix_angle_enable|螺旋升角使能
|INI[17]|degree|度
|INI[18]|minute|分
|INI[19]|second|秒
|INI[20]|helix_value|螺旋升角值
|INI[21]|LUB_INTER|润滑间歇时间(中间变量)
|INI[22]|LUB_TIME|润滑启动时间(中间变量)
|INI[23]|QUIT|退刀位置
|INI[24]|PITCH_COM|全长导程补偿
|INI[25]|QUIT_CALCULATE|退刀计算标志位
|INI[26]|MULTI_OR_SINGLE|单件小批量/批量生产
|INI[27]|C_INIT|头架在程序结束调整到合适角度
|INI[28]|Z_INIT|内螺纹时台面起始位置
|INI[29]||工件安装位置允许的最大误差
|INI[30]||磨削中心工件长度设置
|INI[31]||腰型孔角度(展开图尺寸)
|INI[32]||腰型孔长(展开图尺寸)
|INI[33]||腰型孔宽(展开图尺寸)
|INI[34]||内螺纹螺母外圆直径
|INI[35]||工件端面到反相器孔距离
|INI[36]|WHEEL_TYPE|砂轮类型选择(0模拟量/1伺服/2异步电机)
|INI[37]|DWHEEL_TYPE|修整轮类型选择(0模拟量/1伺服/2异步电机)
|INI[38]|helix_angle_auto|螺旋升角自动计算
|INI[39]|WORK_MID_DIA|工件中径
|INI[40]|TOUCH_POINT_CACU_FLAG|新砂轮磨削接触位计算标记
|INI[41]||X轴工件夹装安全位置
|INI[42]||(外螺纹自动对刀)砂轮中心与接近开关/测头中心重合时Z轴坐标
|INI[43]||耳朵深度
|INI[44]|QUIT_SN_EXCIRCLE_GRIND_X|外圆磨削X轴安全退刀位置
|INI[45]|QUIT_SN_EXCIRCLE_GRIND_U|外圆磨削U轴安全退刀位置
|INI[46]|SN_EXCIRCLE_GRIND_L|外圆磨削图纸上外圆磨削长度
|INI[47]||磨削中不正常退出标记(0正常/1不正常)
|INI[48]||自动对刀测头Z轴方向起始位置(此位置手动大概对出来保证安全)
|INI[49]||自动对刀工件C方向合适角度，换向器孔方便测量
|INI[50]||自动对刀测头接触工件右端面Z坐标
|INI[51]||内螺纹工件小径
|INI[52]||自动对刀开关测量方式下，开关进入工件开始测量Z起始位置
|INI[53]||对刀时砂轮转速
|INI[54]||X轴快速离开的动作的速度
|INI[55]||X轴快速接近/参与实际有效加工的动作的速度
|INI[56]||Z轴快速转换的动作的速度
|INI[57]||Z轴慢速转换的动作的速度
|INI[58]||C轴快速到位的速度
|INI[59]||C轴慢速参与加工的速度
|INI[60]||A轴到位的速度
|INI[61]||V轴快速离开砂轮的速度
|INI[62]||V轴快速接近砂轮的速度
|INI[63]||W轴快速离开砂轮的速度
|INI[64]||W轴快速接近砂轮的速度
|INI[65]||X轴慢速转换的动作的速度
|INI[66]||砂轮中心到工件中心X坐标
|INI[67]||自磨修整头架修整器C起始角度
|INI[68]||自磨动作差补螺距
|INI[69]||是否有自动对刀(0没有/1有)
|INI[70]||是否有自动门(0没有/1有)
|INI[71]||砂轮启动等待转速到位延时时间
|INI[72]||磨削中进行过修整后的标记，用来判断是否需要X到位(0未修整/1刚刚修整过)
|INI[73]||磨削工件计数(磨削完毕后累加)
|INI[74]||磨削几件后修整(次数到达后,下一次开始时修整)
|INI[75]||磨削几件后修整标记位
|INI[76]||蜗杆模数输入
|INI[77]||上一次新砂轮直径缓存
|INI[78]||有无二次对刀(0无1有)
|INI[79]||程序结束砂轮是否停止(0停/1不停)
|INI[80]||对刀zc插补速度
|INI[81]||打环形槽砂轮转速
|INI[82]||电主轴切换,0小1大
|INI[83]||电主轴切换,大小磨头比值系数
|INI[84]||内螺纹是否螺旋退出工件(0否1是)
|INI[85]||是否使用机械手(0否1是)
|INI[86]||蜗杆磨时选择输入模数(0)还是输入螺距(1)
|INI[87]||夹具修整是否修砂轮正面
|INI[88]||夹具修整是否修砂轮端面
|INI[89]||夹具磨削z轴安全起始位置
|INI[90]||自动对刀后是否直接磨削(0否1是)
|INI[91]||外圆砂轮类型选择(0模拟量/1伺服/2异步电机)
|INI[92]||外圆砂轮程序结束砂轮是否停止(0停/1不停)
|INI[93]||外圆磨削工件计数(磨削完毕后累加)
|INI[94]||外圆磨削几件后修整(次数到达后,下一次开始时修整)
|INI[95]||外圆磨削几件后修整标记位
|INI[96]||外圆磨削中不正常退出标记(0正常/1不正常)
|INI[97]||外圆0是单件磨削模式,1是批量磨削模式
|INI[98]||端面磨削工件计数(磨削完毕后累加)
|INI[99]||端面磨削几件后修整(次数到达后,下一次开始时修整)
|INI[100]||端面磨削几件后修整标记位
|INI[101]||左端面磨削中不正常退出标记(0正常/1不正常)
|INI[102]||右端面磨削中不正常退出标记(0正常/1不正常)
|INI[103]||端面0是单件磨削模式,1是批量磨削模式
|INI[104]||右端面进行过纯修整标记
|INI[105]||U轴快速转换的动作的速度
|INI[106]||U轴慢速转换的动作的速度
|INI[107]||外磨砂轮后退安全位置
|INI[108]||外磨砂轮磨削z起始安全位置
|INI[109]||对刀模式(zc插补0/静止对刀1)
|INI[110]||机械手加工模式下加工结束信号(0连续加工/1当前工件加工完后结束)
|INI[111]||静止对刀模式下，从第几个螺纹开始对刀
|INI[112]||砂轮静止启动延时
|INI[113]||砂轮动态启动延时
|INI[114]||修整轮静止启动延时
|INI[115]||修整轮动态启动延时
|INI[116]||在线测量FA速度
|INI[117]||在线测量F3速度
|INI[118]||在线测量F2速度
|INI[119]||在线测量延时
|INI[120]||工件外径
|INI[121]||三线测量
|INI[122]||钢球直径
|INI[123]||终尺寸H
|INI[124]||外圆测量点1
|INI[125]||外圆测量点2
|INI[126]||外圆测量点3
|INI[127]||外圆测量三点偏移报警阈值
|INI[128]||外圆测量三点最小值
|INI[129]||外圆测量三点最大值
|INI[130]||
|INI[131]||磨削中心：外圆测量合适角度
|INI[132]||滚压轮修整退出距离
|INI[133]||磨削中心：外圆测量跳动值
|INI[134]||任意点对刀位置输入
|INI[135]||螺纹旋转退出转速
|INI[136]||右端面测量安全值
|INI[137]||右端面测量阈值
|INI[138]||外圆是否测量圆度(0否1是)
|INI[139]||磨削中心右端测量与设置当前差值
|INI[140]||磨削中心工件长度测量
|INI[141]||全长锥度补偿(半径方向补偿)
|INI[142]||外圆砂轮静止启动延时
|INI[143]||外圆砂轮动态启动延时
|INI[144]||砂轮是否恒转速(0否1是)
|INI[145]||磨削中心外圆保持分段磨削段数
|INI[146]||磨削中心外圆磨削停留时间
|INI[147]||外圆/端面/环形槽进刀速度
|INI[148]||界面三线测量参数显示
|INI[149]||界面外圆在线测量参数显示
|INI[150]||砂轮最高速度限制
|INI[151]||滚轮最高速度限制
|INI[152]||磨削中心外圆砂轮最高速度限制
|INI[153]||修整时A轴角度调整
|INI[154]||显示修整时A轴角度调整参数(0不显示1显示)
|INI[155]||修整轮反向旋转(0不反1反)
|||
|**对刀(TOOL_SET)**||
|TOOL_SET[0]|RANDOM_POS|初始对刀点Z轴坐标
|TOOL_SET[1]|FINAL_Z|对刀完成后Z轴坐标(自动对刀)
|TOOL_SET[2]|DRF_Z|对刀完成时手轮偏置值
|TOOL_SET[3]|TOOL_SET_X|完成对刀时砂轮X轴坐标
|TOOL_SET[4]|START_C|计算出的C轴起始角度
|TOOL_SET[5]|START_POS_C|C轴初始角度
|TOOL_SET[6]|PRESENT_C|探头接触工件时C角度
|TOOL_SET[7]|OPERA_METHOD|对刀方式(0手动/1自动)
|TOOL_SET[8]|OPERA_MODEL|对刀类型(0首次/1二次)
|TOOL_SET[9]|MEASUER_R|测头半径
|TOOL_SET[10]|WHL_HEAD|测头与砂轮距离(Z向)
|TOOL_SET[11]|TOUCH_X|探头接触工件表面时X坐标(自动对刀参数)
|TOOL_SET[12]|WHEEL_TOUCH_X|砂轮接触工件表面时X坐标(自动对刀参数)
|TOOL_SET[13]|PRESENT_X|探头接触工件时X坐标
|TOOL_SET[14]|PRESENT_LZ|探头接触工件槽左侧时Z坐标
|TOOL_SET[15]|PRESENT_RZ|探头接触工件槽右侧时Z坐标
|TOOL_SET[16]|ANG_L|左齿形角
|TOOL_SET[17]|ANG_R|右齿形角
|TOOL_SET[18]|WORK_DEPTH_INIT|工件初开深度
|TOOL_SET[19]|TOOL_SET_POS|(0起点对刀/1中点对刀/2任意)
|TOOL_SET[20]|DRF_X|对刀完成时手轮偏置值
|TOOL_SET[21]|JOG_Z|对刀完成后Z轴坐标(手动对刀)
|TOOL_SET[22]|FXQK|(0=圆形孔,1=腰型孔)
|TOOL_SET[23]|WHL_HEAD_X|测头球中心/接近开关探测面与磨杆距离(X向)
|TOOL_SET[24]||首件工件端面接触侧头时Z向坐标
|TOOL_SET[25]||耳朵端面是否测量(1=不测量,0=测量)
|TOOL_SET[26]||自动对刀完成标志(1=完成,0=未完成)
|TOOL_SET[27]||自动对刀完成Z轴退刀位置(1=完成,0=未完成)
|TOOL_SET[28]|OPERA_SN_RIGHT_FACE_Z|自动对刀后右端面Z轴坐标，磨削中心
|TOOL_SET[29]|OPERA_SN_RIGHT_FACE_U|自动对刀后外圆U轴坐标，磨削中心
|TOOL_SET[30]|OPERA_SN_LEFT_FACE_Z|自动对刀后左端面Z轴坐标，磨削中心
|TOOL_SET[31]|OPERA_AUTO_MODEL|自动对刀是否有接近开关测量机构
|TOOL_SET[32]||测头接触上边沿C角度
|TOOL_SET[33]||测头接触下边沿C角度
|TOOL_SET[34]||测头接触左边沿Z坐标
|TOOL_SET[35]||测头接触右边沿Z坐标
|TOOL_SET[36]||测头在孔中间Z坐标
|TOOL_SET[37]||接近开关接触第一个齿C坐标
|TOOL_SET[38]||接近开关接触第二个齿C坐标
|TOOL_SET[39]||接近开关接触齿底C坐标
|TOOL_SET[40]||是否已进行过二次对刀的标记
|TOOL_SET[41]||自动对刀结果调整
|TOOL_SET[42]||Z轴偏刀微调
|TOOL_SET[43]||
|TOOL_SET[44]||砂轮在修整器上侧X坐标
|TOOL_SET[45]||砂轮在修整器下侧X坐标
|TOOL_SET[46]||砂轮接触修整器Z坐标
|TOOL_SET[47]||修整次数
|TOOL_SET[48]||进刀量
|TOOL_SET[49]|OPERA_AUTO_MODEL|自动对刀是否有测量头测量结构
|TOOL_SET[50]||外螺纹自动对刀测量头中心(左)到接近开关(右)的水平距离
|TOOL_SET[51]||接近开关(0-测量机构1/1-测量机构2)
|TOOL_SET[52]||测量头(0-测量机构1/1-测量机构2)
|TOOL_SET[53]||测量中AC_MEA信号的状态
|TOOL_SET[54]||测量中$A_PROBE信号的状态
|TOOL_SET[55]||当前正在进行接近开关0/测量头1机构测量
|TOOL_SET[56]||成量静止对刀模式下，x-drf手动输入值
|TOOL_SET[57]||是否是首件工件对刀,0是1否,用于批量但每件都手动对刀时保持尺寸一致性
|TOOL_SET[58]||磨削中心测左端面前让C转一角度,避开卡盘
|TOOL_SET[59]||变螺距工件：是否有变螺距
|TOOL_SET[60]||变螺距工件：孔1距右端距离
|TOOL_SET[61]||变螺距工件：孔2距右端距离
|TOOL_SET[62]||变螺距工件：孔1测量角度
|TOOL_SET[63]||变螺距工件：孔2测量角度
|TOOL_SET[64]||变螺距工件：砂轮在孔1处z坐标
|TOOL_SET[65]||变螺距工件：砂轮在孔2处z坐标
|TOOL_SET[66]||变螺距工件：中间段螺距
|TOOL_SET[67]||变螺距工件：位置1位置2相对c旋转角度
|TOOL_SET[68]||磨削中心：自动对刀标记
|TOOL_SET[69]||磨削中心：自动对刀圆孔测量在左端面(0否1是)
|||
|**滚轮参数(WHEEL)**||
|WHEEL[0]|DWHEEL_DIA|修整轮直径
|WHEEL[1]|DWHEEL_LINESPEED|修整轮线速度
|WHEEL[2]|DWHEEL_D_INTER|双滚轮间距
|WHEEL[3]|DWHEEL_W_WIDTH|方滚轮厚度
|WHEEL[4]|DWHEEL_S_RND_L|单滚轮左圆弧半径
|WHEEL[5]|DWHEEL_S_RND_R|单滚轮右圆弧半径
|WHEEL[6]|DWHEEL_D_RND_L|双滚轮左圆弧半径
|WHEEL[7]|DWHEEL_D_RND_R|双滚轮右圆弧半径
|WHEEL[8]|DWHEEL_W_RND_L|方滚轮左圆弧半径
|WHEEL[9]|DWHEEL_W_RND_R|方滚轮右圆弧半径
|WHEEL[10]|DRESS_VER_INIT_L|当前左端接触位置
|WHEEL[11]|DRESS_VER_INIT_R|当前右端接触位置
|WHEEL[12]|DWHEEL_TOUCH_L|初始左端接触位置
|WHEEL[13]|DWHEEL_TOUCH_R|初始右端接触位置
|WHEEL[14]|ROLLING_TOUCH|滚压轮接触位置
|WHEEL[15]|DWHEEL_VER_DISTANCE|双滚轮垂直误差
|WHEEL[16]|HY_LEFT|液压左开关
|WHEEL[17]|HY_LEFT|液压右开关
|WHEEL[18]|MOLD_TIME|成型修整轮向下停留时间
|WHEEL[19]|DRESS_RPM|修整轮转速
|||
|**三角齿形(TRI)**||
|TRI[0]|TRIANGLE_VER|齿高
|TRI[1]|TRIANGLE_ANG_LINIT|左角
|TRI[2]|TRIANGLE_ANG_RINIT|右角
|TRI[3]|TRIANGLE_RND_L|左半圆
|TRI[4]|TRIANGLE_RND_R|右半圆
|TRI[5]|TRIANGLE_RND_TL|过渡左圆弧半径
|TRI[6]|TRIANGLE_RND_TR|过渡右圆弧半径
|TRI[7]|TRIANGLE_ANG_LADD|调整左角
|TRI[8]|TRIANGLE_ANG_RADD|调整右角
|TRI[9]|TRIANGLE_ANG_L|当前左角
|TRI[10]|TRIANGLE_ANG_R|当前右角
|TRI[11]||调整左圆弧
|TRI[12]||调整右圆弧
|TRI[13]||过渡圆弧带直线段长度
|TRI[14]||新砂轮抬刀高度
|TRI[15]||齿形结束时修出线与水平线的角度
|||
|**梯形(TRAP)**||
|TRAP[0]|TRAP_VER|齿高
|TRAP[1]|TRAP_VER_BOTM|齿根高度
|TRAP[2]|TRAP_ANG_LINIT|左角
|TRAP[3]|TRAP_ANG_RINIT|右角
|TRAP[4]|TRAP_RND_L|左半圆
|TRAP[5]|TRAP_RND_R|右半圆
|TRAP[6]|TRAP_RND_TL|过渡左圆弧半径
|TRAP[7]|TRAP_RND_TR|过渡右圆弧半径
|TRAP[8]|TRAP_PITCH|齿形螺距
|TRAP[9]|TRAP_ANG_LADD|调整左角
|TRAP[10]|TRAP_ANG_RADD|调整右角
|TRAP[11]|TRAP_ANG_L|当前左角
|TRAP[12]|TRAP_ANG_R|当前右角
|||
|**双圆弧(DARC)**||
|DARC[0]|DARC_VER|齿高
|DARC[1]|DARC_DIA_FACE|外圆直径
|DARC[2]|DARC_DIA_PERFORM|球中心直径
|DARC[3]|DARC_DIA_BALL|钢球直径
|DARC[4]|DARC_ANG_TOUCH|接触角
|DARC[5]|DARC_RND_LINIT|初始滚道左半径
|DARC[6]|DARC_RND_RINIT|初始滚道右半径
|DARC[7]|DARC_RND_LADD|调整滚道左半径
|DARC[8]|DARC_RND_RADD|调整滚道右半径
|DARC[9]|DARC_RND_L|当前滚道左半径
|DARC[10]|DARC_RND_R|当前滚道右半径
|DARC[11]|DARC_RND_T|过渡圆弧半径
|DARC[12]|DARC_RND_LTRANS_HORI|当前滚道左半径水平偏心
|DARC[13]|DARC_RND_RTRANS_HORI|当前滚道右半径水平偏心
|DARC[14]|DARC_RND_LTRANS_VER|当前滚道左半径垂直偏心
|DARC[15]|DARC_RND_RTRANS_VER|当前滚道右半径垂直偏心
|DARC[16]|DARC_RND_LTRANS_HORI|滚道左半径水平偏心调整
|DARC[17]|DARC_RND_RTRANS_HORI|滚道右半径水平偏心调整
|DARC[18]|DARC_RND_LTRANS_VER|滚道左半径垂直偏心调整
|DARC[19]|DARC_RND_RTRANS_VER|滚道右半径垂直偏心调整
|DARC[20]|DARC_RND_LTRANS_HORI|滚道左半径水平偏心
|DARC[21]|DARC_RND_RTRANS_HORI|滚道右半径水平偏心
|DARC[22]|DARC_RND_LTRANS_VER|滚道左半径垂直偏心
|DARC[23]|DARC_RND_RTRANS_VER|滚道右半径垂直偏心
|||
|**磨削参数(GRIND)**||
|GRIND[0]|G_TYPE|磨削类型(0外螺纹/1内螺纹/2蜗杆/3外圆/4环形槽)
|GRIND[1]|DRESS_STA|是否修整(0否/1是)
|GRIND[2]|OPERA_STA|是否对刀(0否/1手动/2自动/3自动+手动)
|GRIND[3]|CYCLE_MODEL|磨削循环类型
|GRIND[4]||单次中径调整值
|GRIND[5]||是否外圆修整(0否/1是)
|GRIND[6]||是否端面修整(0否/1是)
|GRIND[7]||当前磨削左端面/右端面(0左/1右)
|GRIND[8]||机械手是否进行测试程序(0否1是)
|||
|**工序基本参数**||
|PROCESS[0]|TECH_MODEL|工艺类型(0界面/1DIY)
|PROCESS[1]|TECH_NUM|选择工艺
|PROCESS[2]|TECH_NUMCURNT|当前工艺
|PROCESS[3]|TECH_DRESS_FLAG|修整标记(0不修整/1修整)
|PROCESS[4]|WHEEL_POS_CURNT|当前砂轮进入工件位置
|PROCESS[5]|DIY_COUNTER|DIY工序计数
|PROCESS[6]|GRIND_METHOD|单双磨削
|PROCESS[7]|TECH_DRESS_CUMU_CURNT|当前磨削是否修整累计
|PROCESS[8]|TECH_GRIND_DEEP|磨削进给量
|PROCESS[9]|TECH_GRIND_FEED|磨削速度
|PROCESS[10]|WHEEL_LINESPEED_GRIND|磨削砂轮线速度
|PROCESS[11]|X_FEED_SPEED|磨削工件时X进给速度
|PROCESS[12]|GRIND_TOTAL|工艺设定磨削总量
|PROCESS[13]|WHEEL_POS_INI|初始磨削接触位置
|PROCESS[14]|GRID_TOTAL_ACCUMULATION|工艺磨削总量累计
|PROCESS[15]|TECH_DRESS_EXTEND|精简工艺参数/扩展工艺参数
|PROCESS[16]||磨削安全位置
|PROCESS[17]||
|磨削中心相关||
|PROCESS[18]||外圆磨当前所在工艺
|PROCESS[19]||外圆磨当前循环是否修整累计
|PROCESS[20]||外圆磨当前接触工件位置
|PROCESS[21]||外圆磨程序共用进给量
|PROCESS[22]||外圆磨程序共用Z轴进给速度
|PROCESS[23]||外圆磨程序共用砂轮线速度
|||
|PROCESS[24]|SN_GRIND_FEED|内螺纹外圆磨削U轴进给速度
|PROCESS[25]|SN_GRIND_DEEP|内螺纹外圆磨削进给量
|PROCESS[26]||
|PROCESS[27]||磨削中心:右端面磨削单面壁厚
|PROCESS[28]||外圆磨削是否修砂轮标志(1Y0N)
|PROCESS[29]||外圆磨时程序执行用C轴旋转速度
|PROCESS[30]||外圆磨粗磨时C轴旋转速度
|PROCESS[31]||外圆磨半精磨时C轴旋转速度
|PROCESS[32]||外圆磨精磨时C轴旋转速度
|PROCESS[33]||外圆磨终磨时C轴旋转速度
|PROCESS[34]||磨削中心:左端面磨削当前接触工件位置
|PROCESS[35]||磨削中心:端面磨削进给速度
|PROCESS[36]||
|PROCESS[37]||磨削中心:右端面磨削当前接触工件位置
|PROCESS[38]||磨削中心:端面磨削C转速
|PROCESS[39]||
|PROCESS[40]||磨削中心:端面磨削进给量
|PROCESS[41]||磨削中心:是否磨螺纹(0否/1是)
|PROCESS[42]||磨削中心:是否使用工艺界面(0否/1是)
|PROCESS[43]||磨削中心:是否磨外圆(0是/1否)
|PROCESS[44]||磨削中心:是否磨左端面(0否/1是)
|PROCESS[45]||磨削中心:是否磨右端面(0否/1是)
|PROCESS[46]||磨削中心:外圆磨初始接触位置
|PROCESS[47]||磨削中心:右端面磨削初始接触位置
|PROCESS[48]||磨削中心:左端面磨削初始接触位置
|PROCESS[49]||磨削中心:磨端面时砂轮转速
|PROCESS[50]||
|PROCESS[51]||磨削中心:是否已进行过侧面修整的标记
|PROCESS[52]||
|PROCESS[53]||磨削中心:测头顶部在工件中心时的X坐标
|PROCESS[54]||磨削中心:腰形孔缺口深度
|PROCESS[55]||磨削中心:外圆上台阶的长度,从左端面算起
|PROCESS[56]||磨削中心:外圆上的台阶深度
|PROCESS[57]||磨削中心:外圆砂轮方向(后正1后负-1)
|PROCESS[58]|GRID_TOTAL_ACCUMULATION|外圆工艺磨削总量累计
|PROCESS[59]||外圆单双向
|PROCESS[60]||左端面工艺磨削总量累计
|PROCESS[61]||右端面工艺磨削总量累计
|PROCESS[62]||端面单双向
|PROCESS[63]||端面磨削砂轮线速度
|PROCESS[64]||端面磨削粗磨砂轮线速度
|PROCESS[65]||端面磨削精磨砂轮线速度
|PROCESS[66]||左端面磨削粗磨砂轮线速度
|PROCESS[67]||左端面磨削精磨砂轮线速度
|PROCESS[68]||右端面磨削粗磨砂轮线速度
|PROCESS[69]||右端面磨削精磨砂轮线速度
|PROCESS[70]||粗磨端面单双向
|PROCESS[71]||精磨端面单双向
|PROCESS[72]||左端面粗磨端面单双向
|PROCESS[73]||左端面精磨端面单双向
|PROCESS[74]||右端面粗磨端面单双向
|PROCESS[75]||右端面精磨端面单双向
|PROCESS[76]||端面磨削精磨进给量
|PROCESS[77]||端面磨削粗磨进给量
|PROCESS[78]||左端面磨削精磨进给量
|PROCESS[79]||左端面磨削粗磨进给量
|PROCESS[80]||右端面磨削精磨进给量
|PROCESS[81]||右端面磨削粗磨进给量
|PROCESS[82]||端面磨削粗磨进给速度
|PROCESS[83]||端面磨削精磨进给速度
|PROCESS[84]||左端面磨削粗磨进给速度
|PROCESS[85]||左端面磨削精磨进给速度
|PROCESS[86]||右端面磨削粗磨进给速度
|PROCESS[87]||右端面磨削精磨进给速度
|PROCESS[88]||端面磨削粗磨C转速
|PROCESS[89]||端面磨削精磨C转速
|PROCESS[90]||左端面磨削粗磨C转速
|PROCESS[91]||左端面磨削精磨C转速
|PROCESS[92]||右端面磨削粗磨C转速
|PROCESS[93]||右端面磨削精磨C转速
|PROCESS[94]||是否磨台阶
|PROCESS[95]||磨台阶头架转速
|PROCESS[96]||磨台阶粗磨头架转速
|PROCESS[97]||磨台阶精磨头架转速
|PROCESS[98]||磨台阶进刀量
|PROCESS[99]||磨台阶粗磨进刀量
|PROCESS[100]||磨台阶精磨进刀量
|PROCESS[101]||磨台阶速度
|PROCESS[102]||磨台阶粗磨速度
|PROCESS[103]||磨台阶精磨速度
|PROCESS[104]||磨台阶单双
|PROCESS[105]||磨台阶粗磨单双
|PROCESS[106]||磨台阶精磨单双
|PROCESS[107]||磨台阶工艺磨削量累计
|PROCESS[108]||磨台阶当前磨削位置
|PROCESS[109]||磨台阶砂轮线速度
|PROCESS[110]||磨台阶粗磨砂轮线速度
|PROCESS[111]||磨台阶精磨砂轮线速度
|PROCESS[112]||退刀槽宽度
|PROCESS[113]||单件工艺设定总量
|PROCESS[114]||外圆工艺设定总量
|PROCESS[115]||台阶工艺设定总量
|PROCESS[116]||左端面工艺设定总量
|PROCESS[117]||右端面工艺设定总量
|**工艺表格参数**||
|TECHNOLOGY[0]|GRIND_METHOD_R|粗修单双磨削
|TECHNOLOGY[1]|GRIND_METHOD_MR|半粗修单双磨削
|TECHNOLOGY[2]|GRIND_METHOD_MF|半精修单双磨削
|TECHNOLOGY[3]|GRIND_METHOD_F|精修单双磨削
|TECHNOLOGY[4]||外圆工艺粗磨当前砂轮转速
|TECHNOLOGY[5]||外圆工艺半精磨当前砂轮转速
|TECHNOLOGY[6]||外圆工艺精磨当前砂轮转速
|TECHNOLOGY[7]||外圆工艺终磨当前砂轮转速
|TECHNOLOGY[8]||外圆修整当前砂轮转速
|||
|TECHNOLOGY[10]|TECH_TIME_R|粗磨次数
|TECHNOLOGY[11]|TECH_TIME_MR|半粗磨次数
|TECHNOLOGY[12]|TECH_TIME_MF|半精磨次数
|TECHNOLOGY[13]|TECH_TIME_F|精磨次数
|TECHNOLOGY[14]||台阶粗磨当前砂轮转速
|TECHNOLOGY[15]||台阶精磨当前砂轮转速
|TECHNOLOGY[16]||单件粗磨砂轮转速
|TECHNOLOGY[17]||单件半粗磨砂轮转速
|TECHNOLOGY[18]||单件精磨砂轮转速
|TECHNOLOGY[19]||单件终磨砂轮转速
|||
|TECHNOLOGY[20]|TECH_GRIND_DEEP_R|粗磨进给量
|TECHNOLOGY[21]|TECH_GRIND_DEEP_MR|半粗磨进给量
|TECHNOLOGY[22]|TECH_GRIND_DEEP_MF|半精磨进给量
|TECHNOLOGY[23]|TECH_GRIND_DEEP_F|精磨进给量
|TECHNOLOGY[24]||扩展单件粗磨修整砂轮转速
|TECHNOLOGY[25]||扩展单件半粗磨修整砂轮转速
|TECHNOLOGY[26]||扩展单件精磨修整砂轮转速
|TECHNOLOGY[27]||扩展单件终磨修整砂轮转速
|||
|TECHNOLOGY[30]|TECH_GRIND_FEED_R|粗磨速度
|TECHNOLOGY[31]|TECH_GRIND_FEED_MR|半粗磨速度
|TECHNOLOGY[32]|TECH_GRIND_FEED_MF|半精磨速度
|TECHNOLOGY[33]|TECH_GRIND_FEED_F|精磨速度
|||
|TECHNOLOGY[40]|TECH_DRESS_CUMU_R|粗磨是否修整累计
|TECHNOLOGY[41]|TECH_DRESS_CUMU_MR|半粗磨是否修整累计
|TECHNOLOGY[42]|TECH_DRESS_CUMU_MF|半精磨是否修整累计
|TECHNOLOGY[43]|TECH_DRESS_CUMU_F|精磨是否修整累计
|||
|TECHNOLOGY[50]|WHEEL_LINESPEED_GRIND_R|磨削砂轮线速度
|TECHNOLOGY[51]|WHEEL_LINESPEED_GRIND_MR|磨削砂轮线速度
|TECHNOLOGY[52]|WHEEL_LINESPEED_GRIND_MF|磨削砂轮线速度
|TECHNOLOGY[53]|WHEEL_LINESPEED_GRIND_F|磨削砂轮线速度
|||
|TECHNOLOGY[60]||粗磨头架转速
|TECHNOLOGY[61]||半粗磨头架转速
|TECHNOLOGY[62]||精磨头架转速
|TECHNOLOGY[63]||终磨头架转速
|TECHNOLOGY[70]||批量粗磨砂轮转速
|TECHNOLOGY[71]||批量半粗磨砂轮转速
|TECHNOLOGY[72]||批量精磨砂轮转速
|TECHNOLOGY[73]||批量终磨砂轮转速
|TECHNOLOGY[74]||批量粗磨修整砂轮转速
|TECHNOLOGY[75]||批量半粗磨修整砂轮转速
|TECHNOLOGY[76]||批量精磨修整砂轮转速
|TECHNOLOGY[77]||批量终磨修整砂轮转速
|磨削中心相关||
|TECHNOLOGY[78]||外圆磨粗磨次数
|TECHNOLOGY[79]||外圆磨粗磨几次修砂轮设定
|TECHNOLOGY[80]||外圆磨粗磨进给量
|TECHNOLOGY[81]||外圆磨粗磨进给速度
|TECHNOLOGY[82]||外圆磨粗磨砂轮线速度
|||
|TECHNOLOGY[83]||外圆磨半精磨次数
|TECHNOLOGY[84]||外圆磨半精磨几次修砂轮设定
|TECHNOLOGY[85]||外圆磨半精磨进给量
|TECHNOLOGY[86]||外圆磨半精磨进给速度
|TECHNOLOGY[87]||外圆磨半精磨砂轮线速度
|||
|TECHNOLOGY[88]||外圆磨精磨次数
|TECHNOLOGY[89]||外圆磨精磨几次修砂轮设定
|TECHNOLOGY[90]||外圆磨精磨进给量
|TECHNOLOGY[91]||外圆磨精磨进给速度
|TECHNOLOGY[92]||外圆磨精磨砂轮线速度
|||
|TECHNOLOGY[93]||外圆磨终磨次数
|TECHNOLOGY[94]||外圆磨终磨几次修砂轮设定
|TECHNOLOGY[95]||外圆磨终磨进给量
|TECHNOLOGY[96]||外圆磨终磨进给速度
|TECHNOLOGY[97]||外圆磨终磨砂轮线速度
|||
|TECHNOLOGY[98]||磨削中心:端面磨削粗磨已磨削次数
|TECHNOLOGY[99]||磨削中心:左端面磨削粗磨设定磨削次数
|||
|TECHNOLOGY[100]||磨削中心:端面磨削粗磨已磨削次数
|TECHNOLOGY[101]||磨削中心:右端面磨削粗磨设定磨削次数
|TECHNOLOGY[102]||磨削中心:右端面磨削砂轮线速度
|TECHNOLOGY[103]||磨削中心:右端面磨削量累计
|||
|TECHNOLOGY[104]||磨削中心:左端面磨削量累计
|TECHNOLOGY[105]||磨削中心:右端面磨削几个循环调用修整程序
|TECHNOLOGY[106]||磨削中心:端面磨削中修整次数
|||
|TECHNOLOGY[110]|GRIND_METHOD_R|批量磨削粗修单双磨削
|TECHNOLOGY[111]|GRIND_METHOD_MR|批量磨削半粗修单双磨削
|TECHNOLOGY[112]|GRIND_METHOD_MF|批量磨削半精修单双磨削
|TECHNOLOGY[113]|GRIND_METHOD_F|批量磨削精修单双磨削
|||
|TECHNOLOGY[120]|TECH_TIME_R|批量磨削粗磨次数
|TECHNOLOGY[121]|TECH_TIME_MR|批量磨削半粗磨次数
|TECHNOLOGY[122]|TECH_TIME_MF|批量磨削半精磨次数
|TECHNOLOGY[123]|TECH_TIME_F|批量磨削精磨次数
|||
|TECHNOLOGY[130]|TECH_GRIND_DEEP_R|批量磨削粗磨进给量
|TECHNOLOGY[131]|TECH_GRIND_DEEP_MR|批量磨削半粗磨进给量
|TECHNOLOGY[132]|TECH_GRIND_DEEP_MF|批量磨削半精磨进给量
|TECHNOLOGY[133]|TECH_GRIND_DEEP_F|批量磨削精磨进给量
|||
|TECHNOLOGY[140]|TECH_GRIND_FEED_R|批量磨削粗磨速度
|TECHNOLOGY[141]|TECH_GRIND_FEED_MR|批量磨削半粗磨速度
|TECHNOLOGY[142]|TECH_GRIND_FEED_MF|批量磨削半精磨速度
|TECHNOLOGY[143]|TECH_GRIND_FEED_F|批量磨削精磨速度
|||
|TECHNOLOGY[150]|TECH_DRESS_CUMU_R|批量磨削粗磨是否修整累计
|TECHNOLOGY[151]|TECH_DRESS_CUMU_MR|批量磨削半粗磨是否修整累计
|TECHNOLOGY[152]|TECH_DRESS_CUMU_MF|批量磨削半精磨是否修整累计
|TECHNOLOGY[153]|TECH_DRESS_CUMU_F|批量磨削精磨是否修整累计
|||
|TECHNOLOGY[160]|WHEEL_LINESPEED_GRIND_R|批量磨削磨削砂轮线速度
|TECHNOLOGY[161]|WHEEL_LINESPEED_GRIND_MR|批量磨削磨削砂轮线速度
|TECHNOLOGY[162]|WHEEL_LINESPEED_GRIND_MF|批量磨削磨削砂轮线速度
|TECHNOLOGY[163]|WHEEL_LINESPEED_GRIND_F|批量磨削磨削砂轮线速度
|||
|TECHNOLOGY[170]|GRIND_METHOD_R|单件磨削粗修单双磨削
|TECHNOLOGY[171]|GRIND_METHOD_MR|单件磨削半粗修单双磨削
|TECHNOLOGY[172]|GRIND_METHOD_MF|单件磨削半精修单双磨削
|TECHNOLOGY[173]|GRIND_METHOD_F|单件磨削精修单双磨削
|||
|TECHNOLOGY[180]|TECH_TIME_R|单件磨削粗磨次数
|TECHNOLOGY[181]|TECH_TIME_MR|单件磨削半粗磨次数
|TECHNOLOGY[182]|TECH_TIME_MF|单件磨削半精磨次数
|TECHNOLOGY[183]|TECH_TIME_F|单件磨削精磨次数
|||
|TECHNOLOGY[190]|TECH_GRIND_DEEP_R|单件磨削粗磨进给量
|TECHNOLOGY[191]|TECH_GRIND_DEEP_MR|单件磨削半粗磨进给量
|TECHNOLOGY[192]|TECH_GRIND_DEEP_MF|单件磨削半精磨进给量
|TECHNOLOGY[193]|TECH_GRIND_DEEP_F|单件磨削精磨进给量
|||
|TECHNOLOGY[200]|TECH_GRIND_FEED_R|单件磨削粗磨速度
|TECHNOLOGY[201]|TECH_GRIND_FEED_MR|单件磨削半粗磨速度
|TECHNOLOGY[202]|TECH_GRIND_FEED_MF|单件磨削半精磨速度
|TECHNOLOGY[203]|TECH_GRIND_FEED_F|单件磨削精磨速度
|||
|TECHNOLOGY[210]|TECH_DRESS_CUMU_R|单件磨削粗磨是否修整累计
|TECHNOLOGY[211]|TECH_DRESS_CUMU_MR|单件磨削半粗磨是否修整累计
|TECHNOLOGY[212]|TECH_DRESS_CUMU_MF|单件磨削半精磨是否修整累计
|TECHNOLOGY[213]|TECH_DRESS_CUMU_F|单件磨削精磨是否修整累计
|||
|TECHNOLOGY[220]|WHEEL_LINESPEED_GRIND_R|单件磨削磨削砂轮线速度
|TECHNOLOGY[221]|WHEEL_LINESPEED_GRIND_MR|单件磨削磨削砂轮线速度
|TECHNOLOGY[222]|WHEEL_LINESPEED_GRIND_MF|单件磨削磨削砂轮线速度
|TECHNOLOGY[223]|WHEEL_LINESPEED_GRIND_F|单件磨削磨削砂轮线速度
|||
|TECHNOLOGY[230]||夹具磨削砂轮当前直径
|TECHNOLOGY[231]||夹具磨削夹具终直径尺寸
|TECHNOLOGY[232]||夹具磨削是否磨爪子平面
|TECHNOLOGY[233]||夹具磨削是否磨爪子端面
|TECHNOLOGY[234]||夹具磨削端面部分砂轮磨削X起点坐标(靠近头架中心的位置)
|TECHNOLOGY[235]||夹具磨削端面部分砂轮磨削X终点坐标(靠近爪子平面的位置)
|TECHNOLOGY[236]||夹具磨削端面部分砂轮接触夹具Z初始坐标
|TECHNOLOGY[237]||夹具磨削端面部分磨削次数
|TECHNOLOGY[238]||夹具磨削端面部分进刀量
|TECHNOLOGY[239]|GRIND_METHOD_R|外圆粗磨单双磨削
|TECHNOLOGY[240]|GRIND_METHOD_MR|外圆半精磨单双磨削
|TECHNOLOGY[241]|GRIND_METHOD_MF|外圆精修单双磨削
|TECHNOLOGY[242]|GRIND_METHOD_F|外圆终磨单双磨削
|TECHNOLOGY[243]||磨削中心:左端面磨削精磨设定磨削次数
|TECHNOLOGY[244]||磨削中心:右端面磨削精磨设定磨削次数
|TECHNOLOGY[245]||磨削中心:当前端面磨削精磨设定磨削次数
|TECHNOLOGY[246]||磨削中心:当前端面磨削粗磨设定磨削次数
|TECHNOLOGY[247]||端面粗磨磨削中修整次数
|TECHNOLOGY[248]||端面精磨磨削中修整次数
|TECHNOLOGY[249]||左端面粗磨磨削中修整次数
|TECHNOLOGY[250]||左端面精磨磨削中修整次数
|TECHNOLOGY[251]||右端面粗磨磨削中修整次数
|TECHNOLOGY[252]||右端面精磨磨削中修整次数
|TECHNOLOGY[253]||端面粗磨磨削中修整设定
|TECHNOLOGY[254]||端面精磨磨削中修整设定
|TECHNOLOGY[255]||左端面粗磨磨削中修整设定
|TECHNOLOGY[256]||左端面精磨磨削中修整设定
|TECHNOLOGY[257]||右端面粗磨磨削中修整设定
|TECHNOLOGY[258]||右端面精磨磨削中修整设定
|TECHNOLOGY[259]||界面左端面工艺粗磨当前砂轮转速
|TECHNOLOGY[260]||界面左端面工艺精磨当前砂轮转速
|TECHNOLOGY[261]||界面右端面工艺粗磨当前砂轮转速
|TECHNOLOGY[262]||界面右端面工艺精磨当前砂轮转速
|TECHNOLOGY[263]||当前台阶粗磨次数
|TECHNOLOGY[264]||当前台阶精磨次数
|TECHNOLOGY[265]||初始台阶粗磨次数
|TECHNOLOGY[266]||初始台阶精磨次数
|TECHNOLOGY[267]||单件粗磨头架转速
|TECHNOLOGY[268]||单件半粗磨头架转速
|TECHNOLOGY[269]||单件精磨头架转速
|TECHNOLOGY[270]||单件终磨头架转速
|**DIY参数**||
|DIY[0]|GRIND_METHOD_DIY|DIY单双磨削
|DIY[1]|TECH_TIME_DIY|DIY磨削次数
|DIY[2]|TECH_GRIND_DEEP_DIY|DIY磨削进给量
|DIY[3]|TECH_GRIND_FEED_DIY|DIY磨削速度
|DIY[4]|TECH_DRESS_CUMU_DIY|DIY是否修整累计
|DIY[5]|WHEEL_LINESPEED_GRIND_DIY|DIY砂轮线速度
|磨削中心相关||
|DIY[7]||DIY外圆磨削次数
|DIY[8]||DIY外圆磨削循环几次修砂轮设定
|DIY[9]||DIY外圆磨削循环进给量
|DIY[10]||DIY外圆磨削进给速度
|DIY[11]||DIY外圆磨削砂轮线速度
|DIY[12]||外圆磨时C轴旋转速度
|DIY[13]|GRIND_METHOD_DIY|外圆DIY单双磨削
|DIY[14]||DIY外圆磨削转速速度
|||
|**工件头数参数**||
|WORK[0]|WORK_TH|头数
|WORK[1]|WORK_THCURNT|当前头数
|WORK[2]|WORK_TH_ANG|平均头数角度
|WORK[3]|WORK_TH_ANGCURNT|当前头角度
|||
|**当前磨削次数参数**||
|TECH_TIME[0]|TECH_TIME_RCURNT|当前粗磨次数
|TECH_TIME[1]|TECH_TIME_MRCURNT|当前半粗磨次数
|TECH_TIME[2]|TECH_TIME_MFCURNT|当前半精磨次数
|TECH_TIME[3]|TECH_TIME_FCURNT|当前精磨次数
|TECH_TIME[4]|TECH_TIME_DIYCURNT|当前DIY次数
|磨削中心相关||
|TECH_TIME[5]||外圆磨当前粗磨次数
|TECH_TIME[6]||外圆磨当前半精磨次数
|TECH_TIME[7]||外圆磨当前精磨次数
|TECH_TIME[8]||外圆磨当前终磨次数
|TECH_TIME[9]||外圆磨当前DIY磨削次数
|||
|**修整进给量参数**||
|TECH_DRESS_DEEP[0]|TECH_DRESS_DEEP|修整进给量
|TECH_DRESS_DEEP[1]|TECH_DRESS_DEEP_R|粗修修整进给量
|TECH_DRESS_DEEP[2]|TECH_DRESS_DEEP_MR|半粗修修整进给量
|TECH_DRESS_DEEP[3]|TECH_DRESS_DEEP_MF|半精修修整进给量
|TECH_DRESS_DEEP[4]|TECH_DRESS_DEEP_F|精修修整进给量
|TECH_DRESS_DEEP[5]|TECH_DRESS_DEEP_DIY|DIY修整进给量
|TECH_DRESS_DEEP[6]||外圆磨程序工用修整进给量
|TECH_DRESS_DEEP[7]||外圆磨粗磨修整进给量
|TECH_DRESS_DEEP[8]||外圆磨半精磨修整进给量
|TECH_DRESS_DEEP[9]||外圆磨精磨修整进给量
|TECH_DRESS_DEEP[10]||外圆磨终磨修整进给量
|TECH_DRESS_DEEP[11]||外圆磨DIY工序修整进给量
|TECH_DRESS_DEEP[21]|TECH_DRESS_DEEP_R|批量粗修修整进给量
|TECH_DRESS_DEEP[22]|TECH_DRESS_DEEP_MR|批量半粗修修整进给量
|TECH_DRESS_DEEP[23]|TECH_DRESS_DEEP_MF|批量半精修修整进给量
|TECH_DRESS_DEEP[24]|TECH_DRESS_DEEP_F|批量精修修整进给量
|TECH_DRESS_DEEP[31]|TECH_DRESS_DEEP_R|单件粗修修整进给量
|TECH_DRESS_DEEP[32]|TECH_DRESS_DEEP_MR|单件半粗修修整进给量
|TECH_DRESS_DEEP[33]|TECH_DRESS_DEEP_MF|单件半精修修整进给量
|TECH_DRESS_DEEP[34]|TECH_DRESS_DEEP_F|单件精修修整进给量
|TECH_DRESS_DEEP[35]||端面磨程序公用修整进给量
|TECH_DRESS_DEEP[36]||端面磨粗磨修整进给量
|TECH_DRESS_DEEP[37]||端面磨精磨修整进给量
|TECH_DRESS_DEEP[38]||左端面磨粗磨修整进给量
|TECH_DRESS_DEEP[39]||左端面磨精磨修整进给量
|TECH_DRESS_DEEP[40]||右端面磨粗磨修整进给量
|TECH_DRESS_DEEP[41]||右端面磨精磨修整进给量
|TECH_DRESS_DEEP[42]||左右通用端面磨粗磨修整进给量
|TECH_DRESS_DEEP[43]||左右通用端面磨精磨修整进给量
|||
|**修整速度参数**||
|TECH_DRESS_FEED[0]|TECH_DRESS_FEED|修整速度
|TECH_DRESS_FEED[1]|TECH_DRESS_FEED_R|粗修整速度
|TECH_DRESS_FEED[2]|TECH_DRESS_FEED_MR|半粗修整速度
|TECH_DRESS_FEED[3]|TECH_DRESS_FEED_MF|半精修整速度
|TECH_DRESS_FEED[4]|TECH_DRESS_FEED_F|精修整速度
|TECH_DRESS_FEED[5]|TECH_DRESS_FEED_DIY|DIY整速度
|TECH_DRESS_FEED[6]||外圆磨程序共用修整速度
|TECH_DRESS_FEED[7]||外圆磨程序粗磨中修整速度
|TECH_DRESS_FEED[8]||外圆磨程序半精磨中修整速度
|TECH_DRESS_FEED[9]||外圆磨程序精磨中修整速度
|TECH_DRESS_FEED[10]||外圆磨程序终磨中修整速度
|TECH_DRESS_FEED[11]||外圆磨程序DIY工序中修整速度
|TECH_DRESS_FEED[21]|TECH_DRESS_FEED_R|批量粗修整速度
|TECH_DRESS_FEED[22]|TECH_DRESS_FEED_MR|批量半粗修整速度
|TECH_DRESS_FEED[23]|TECH_DRESS_FEED_MF|批量半精修整速度
|TECH_DRESS_FEED[24]|TECH_DRESS_FEED_F|批量精修整速度
|TECH_DRESS_FEED[31]|TECH_DRESS_FEED_R|单件粗修整速度
|TECH_DRESS_FEED[32]|TECH_DRESS_FEED_MR|单件半粗修整速度
|TECH_DRESS_FEED[33]|TECH_DRESS_FEED_MF|单件半精修整速度
|TECH_DRESS_FEED[34]|TECH_DRESS_FEED_F|单件精修整速度
|TECH_DRESS_FEED[35]||端面磨程序共用修整速度
|TECH_DRESS_FEED[36]||端面磨程序粗磨中修整速度
|TECH_DRESS_FEED[37]||端面磨程序精磨中修整速度
|TECH_DRESS_FEED[38]||左端面磨程序粗磨中修整速度
|TECH_DRESS_FEED[39]||左端面磨程序精磨中修整速度
|TECH_DRESS_FEED[40]||右端面磨程序粗磨中修整速度
|TECH_DRESS_FEED[41]||右端面磨程序精磨中修整速度
|TECH_DRESS_FEED[42]||左右通用端面磨程序粗磨中修整速度
|TECH_DRESS_FEED[43]||左右通用端面磨程序精磨中修整速度
|||
|**修整轮线速度参数**||
|WHEEL_LINESPEED_DRESS[0]|WHEEL_LINESPEED_DRESS|修整砂轮线速度
|WHEEL_LINESPEED_DRESS[1]|WHEEL_LINESPEED_DRESS_D|单纯修整砂轮线速度
|WHEEL_LINESPEED_DRESS[2]|WHEEL_LINESPEED_DRESS_TECH|工艺修整砂轮线速度
|WHEEL_LINESPEED_DRESS[3]|WHEEL_LINESPEED_DRESS_R|粗磨修整砂轮线速度
|WHEEL_LINESPEED_DRESS[4]|WHEEL_LINESPEED_DRESS_MR|半粗磨修整砂轮线速度
|WHEEL_LINESPEED_DRESS[5]|WHEEL_LINESPEED_DRESS_MF|半精磨修整砂轮线速度
|WHEEL_LINESPEED_DRESS[6]|WHEEL_LINESPEED_DRESS_F|精磨修整砂轮线速度
|WHEEL_LINESPEED_DRESS[7]|WHEEL_LINESPEED_DRESS_DIY|DIY砂轮线速度
|WHEEL_LINESPEED_DRESS[8]||外圆磨过程中修整程序共用砂轮线速度
|WHEEL_LINESPEED_DRESS[9]||外圆磨粗磨过程中修整砂轮线速度
|WHEEL_LINESPEED_DRESS[10]||外圆磨半精磨过程中修整砂轮线速度
|WHEEL_LINESPEED_DRESS[11]||外圆磨精磨过程中修整砂轮线速度
|WHEEL_LINESPEED_DRESS[12]||外圆磨终磨过程中修整砂轮线速度
|WHEEL_LINESPEED_DRESS[13]||外圆磨DIY工序中修整砂轮线速度
|WHEEL_LINESPEED_DRESS[14]||外圆磨修整程序执行用砂轮线速度
|WHEEL_LINESPEED_DRESS[15]||外圆磨修整界面设定砂轮线速度
|WHEEL_LINESPEED_DRESS[23]|WHEEL_LINESPEED_DRESS_R|批量粗磨修整砂轮线速度
|WHEEL_LINESPEED_DRESS[24]|WHEEL_LINESPEED_DRESS_MR|批量半粗磨修整砂轮线速度
|WHEEL_LINESPEED_DRESS[25]|WHEEL_LINESPEED_DRESS_MF|批量半精磨修整砂轮线速度
|WHEEL_LINESPEED_DRESS[26]|WHEEL_LINESPEED_DRESS_F|批量精磨修整砂轮线速度
|WHEEL_LINESPEED_DRESS[33]|WHEEL_LINESPEED_DRESS_R|单件粗磨修整砂轮线速度
|WHEEL_LINESPEED_DRESS[34]|WHEEL_LINESPEED_DRESS_MR|单件半粗磨修整砂轮线速度
|WHEEL_LINESPEED_DRESS[35]|WHEEL_LINESPEED_DRESS_MF|单件半精磨修整砂轮线速度
|WHEEL_LINESPEED_DRESS[36]|WHEEL_LINESPEED_DRESS_F|单件精磨修整砂轮线速度
|WHEEL_LINESPEED_DRESS[37]||端面磨过程中修整程序公用砂轮线速度
|WHEEL_LINESPEED_DRESS[38]||端面磨粗磨过程中修整砂轮线速度
|WHEEL_LINESPEED_DRESS[39]||端面磨精磨过程中修整砂轮线速度
|WHEEL_LINESPEED_DRESS[40]||端面磨修整程序执行用砂轮线速度
|WHEEL_LINESPEED_DRESS[41]||端面磨修整界面设定砂轮线速度
|WHEEL_LINESPEED_DRESS[42]||左端面磨粗磨过程中修整砂轮线速度
|WHEEL_LINESPEED_DRESS[43]||左端面磨精磨过程中修整砂轮线速度
|WHEEL_LINESPEED_DRESS[44]||右端面磨粗磨过程中修整砂轮线速度
|WHEEL_LINESPEED_DRESS[45]||右端面磨精磨过程中修整砂轮线速度
|WHEEL_LINESPEED_DRESS[46]||左右通用端面磨粗磨过程中修整砂轮线速度
|WHEEL_LINESPEED_DRESS[47]||左右通用端面磨精磨过程中修整砂轮线速度
|||
|**磨削修整次数参数**||
|TECH_DRESS_TIME[0]|TECH_DRESS_TIME_R|粗磨修整次数
|TECH_DRESS_TIME[1]|TECH_DRESS_TIME_MR|半粗磨修整次数
|TECH_DRESS_TIME[2]|TECH_DRESS_TIME_MF|半精磨修整次数
|TECH_DRESS_TIME[3]|TECH_DRESS_TIME_F|精磨修整次数
|TECH_DRESS_TIME[4]|TECH_DRESS_TIME_DIY|DIY修整次数
|TECH_DRESS_TIME[5]|TECH_DRESS_TIME|当前磨削修整次数
|TECH_DRESS_TIME[6]||外圆磨削当前磨削修整次数
|TECH_DRESS_TIME[7]||外圆磨削粗磨工序修整次数
|TECH_DRESS_TIME[8]||外圆磨削半精磨工序修整次数
|TECH_DRESS_TIME[9]||外圆磨削精磨工序修整次数
|TECH_DRESS_TIME[10]||外圆磨削终磨工序修整次数
|TECH_DRESS_TIME[11]||外圆磨削DIY工序中修整次数
|TECH_DRESS_TIME[20]|TECH_DRESS_TIME_R|批量粗磨修整次数
|TECH_DRESS_TIME[21]|TECH_DRESS_TIME_MR|批量半粗磨修整次数
|TECH_DRESS_TIME[22]|TECH_DRESS_TIME_MF|批量半精磨修整次数
|TECH_DRESS_TIME[23]|TECH_DRESS_TIME_F|批量精磨修整次数
|TECH_DRESS_TIME[30]|TECH_DRESS_TIME_R|单件粗磨修整次数
|TECH_DRESS_TIME[31]|TECH_DRESS_TIME_MR|单件半粗磨修整次数
|TECH_DRESS_TIME[32]|TECH_DRESS_TIME_MF|单件半精磨修整次数
|TECH_DRESS_TIME[33]|TECH_DRESS_TIME_F|单件精磨修整次数
|TECH_DRESS_TIME[34]||端面磨削当前磨削修整次数
|TECH_DRESS_TIME[35]||端面磨削粗磨工序修整次数
|TECH_DRESS_TIME[36]||端面磨削精磨工序修整次数
|TECH_DRESS_TIME[37]||左端面磨削粗磨工序修整次数
|TECH_DRESS_TIME[38]||左端面磨削精磨工序修整次数
|TECH_DRESS_TIME[39]||右端面磨削粗磨工序修整次数
|TECH_DRESS_TIME[40]||右端面磨削精磨工序修整次数
|TECH_DRESS_TIME[41]||左右通用端面磨削粗磨工序修整次数
|TECH_DRESS_TIME[42]||左右通用端面磨削精磨工序修整次数
|||
|**蜗杆用R参数**||
|R3|修整次数||
|R7|当前V轴修整位置|
|R8|砂轮宽度|
|R9|当前砂轮直径|
|R10|修整轮中心间距|L=W左-W右+B+r1+r2|
|R11|左修整轮比右修整轮高出的举例|
|R12|修整轮电主轴转速|
|R13|电主轴启动延时|
|R14|双滚轮间距的中心和砂轮中心重合时的W坐标|W=(W左+W右)/2 W方向修整中心|
|R15|修整轮圆弧中心和砂轮中心在V方向重合时的V坐标|砂轮中心V坐标|
|R16|修整结束水平轴停泊点|
|R17|修整结束垂直轴停泊点|
|R29|修整轮圆弧半径,生成蜗杆程序时确定,此处变量只检验|
|修整参数||
|R18|粗修进给速度|
|R19|精修进给速度|
|R20|粗修进给量|
|R21|精修进给量|
|R22|修整定位速度|
|R23|修整返回速度|
||不需要修改的参数||
|R28|修整偏移距离|
|R25|当前修整次数|
|R26|当前修整进给速度|
|R27|当前修整进给量|
|||
|**通用齿形模型变量**||
|WHICH_COMMON_SHAPE||齿形选择
|COMMON_VER_TOP||齿形最高点位置
|COMMON_VER_BOTTOM||齿形最低点位置
|COMMON_VER_HEIGHT||实际齿高
|COMMON_MACHINE_STATUS||机床类型
|COMMON_ANG_MODIFY||不同机床类型的角度计算变量
|COMMON_LENGTH[1]||第1段线长度
|COMMON_LENGTH[2]||第2段线长度
|COMMON_LENGTH[3]||第3段线长度
|COMMON_LENGTH[4]||第4段线长度
|COMMON_LENGTH[5]||第5段线长度
|COMMON_LENGTH[6]||第6段线长度
|COMMON_LENGTH[7]||第7段线长度
|COMMON_LENGTH[8]||第8段线长度
|COMMON_LENGTH[9]||第9段线长度
|COMMON_LENGTH[10]||第10段线长度
|COMMON_ANG[1]||第1段线角度
|COMMON_ANG[2]||第2段线角度
|COMMON_ANG[3]||第3段线角度
|COMMON_ANG[4]||第4段线角度
|COMMON_ANG[5]||第5段线角度
|COMMON_ANG[6]||第6段线角度
|COMMON_ANG[7]||第7段线角度
|COMMON_ANG[8]||第8段线角度
|COMMON_ANG[9]||第9段线角度
|COMMON_ANG[10]||第10段线角度
|COMMON_RND[1]||第1段线圆弧半径
|COMMON_RND[2]||第2段线圆弧半径
|COMMON_RND[3]||第3段线圆弧半径
|COMMON_RND[4]||第4段线圆弧半径
|COMMON_RND[5]||第5段线圆弧半径
|COMMON_RND[6]||第6段线圆弧半径
|COMMON_RND[7]||第7段线圆弧半径
|COMMON_RND[8]||第8段线圆弧半径
|COMMON_RND[9]||第9段线圆弧半径
|COMMON_RND[10]||第10段线圆弧半径
|COMMON_STATUS_CACU[0]||中间点轮廓相对原线段加或减
|COMMON_STATUS_CACU[1]||第1段线轮廓相对原线段加或减
|COMMON_STATUS_CACU[2]||第2段线轮廓相对原线段加或减
|COMMON_STATUS_CACU[3]||第3段线轮廓相对原线段加或减
|COMMON_STATUS_CACU[4]||第4段线轮廓相对原线段加或减
|COMMON_STATUS_CACU[5]||第5段线轮廓相对原线段加或减
|COMMON_STATUS_CACU[6]||第6段线轮廓相对原线段加或减
|COMMON_STATUS_CACU[7]||第7段线轮廓相对原线段加或减
|COMMON_STATUS_CACU[8]||第8段线轮廓相对原线段加或减
|COMMON_STATUS_CACU[9]||第9段线轮廓相对原线段加或减
|COMMON_STATUS_CACU[10]||第10段线轮廓相对原线段加或减
|COMMON_LENGTH_ADD[0]||中间点轮廓增加/减少部分长度
|COMMON_LENGTH_ADD[1]||第1段轮廓增加/减少部分长度
|COMMON_LENGTH_ADD[2]||第2段轮廓增加/减少部分长度
|COMMON_LENGTH_ADD[3]||第3段轮廓增加/减少部分长度
|COMMON_LENGTH_ADD[4]||第4段轮廓增加/减少部分长度
|COMMON_LENGTH_ADD[5]||第5段轮廓增加/减少部分长度
|COMMON_LENGTH_ADD[6]||第6段轮廓增加/减少部分长度
|COMMON_LENGTH_ADD[7]||第7段轮廓增加/减少部分长度
|COMMON_LENGTH_ADD[8]||第8段轮廓增加/减少部分长度
|COMMON_LENGTH_ADD[9]||第9段轮廓增加/减少部分长度
|COMMON_LENGTH_ADD[10]||第10段轮廓增加/减少部分长度
|COMMON_POINT_REF_VER[1]||第1点相对垂直坐标
|COMMON_POINT_REF_VER[2]||第2点相对垂直坐标
|COMMON_POINT_REF_VER[3]||第3点相对垂直坐标
|COMMON_POINT_REF_VER[4]||第4点相对垂直坐标
|COMMON_POINT_REF_VER[5]||第5点相对垂直坐标
|COMMON_POINT_REF_VER[6]||第6点相对垂直坐标
|COMMON_POINT_REF_VER[7]||第7点相对垂直坐标
|COMMON_POINT_REF_VER[8]||第8点相对垂直坐标
|COMMON_POINT_REF_VER[9]||第9点相对垂直坐标
|COMMON_POINT_REF_VER[10]||第10点相对垂直坐标
|COMMON_POINT_REF_HORI[1]||第1点相对水平坐标
|COMMON_POINT_REF_HORI[2]||第2点相对水平坐标
|COMMON_POINT_REF_HORI[3]||第3点相对水平坐标
|COMMON_POINT_REF_HORI[4]||第4点相对水平坐标
|COMMON_POINT_REF_HORI[5]||第5点相对水平坐标
|COMMON_POINT_REF_HORI[6]||第6点相对水平坐标
|COMMON_POINT_REF_HORI[7]||第7点相对水平坐标
|COMMON_POINT_REF_HORI[8]||第8点相对水平坐标
|COMMON_POINT_REF_HORI[9]||第9点相对水平坐标
|COMMON_POINT_REF_HORI[10]||第10点相对水平坐标
|||
|**SHAPE MODEL**||
|SHAPE_MODEL[0]||齿顶长度
|SHAPE_MODEL[1]||左斜线角度
|SHAPE_MODEL[2]||右斜线角度
|SHAPE_MODEL[3]||锥度
|SHAPE_MODEL[4]||螺距
|SHAPE_MODEL[5]||齿高
|SHAPE_MODEL[6]||槽高
|SHAPE_MODEL[7]||
|SHAPE_MODEL[8]||底部斜线延长长度(水平)
|SHAPE_MODEL[9]||过度线角度(0-90)
|SHAPE_MODEL[110]||锥度(X方向)

|SHAPE_MODEL[10]||弧底圆弧半径
|SHAPE_MODEL[11]||左弧顶圆弧半径
|SHAPE_MODEL[12]||右弧顶圆弧半径
|SHAPE_MODEL[13]||左斜线角度
|SHAPE_MODEL[14]||右斜线角度
|SHAPE_MODEL[15]||锥度
|SHAPE_MODEL[16]||螺距
|SHAPE_MODEL[17]||齿高
|SHAPE_MODEL[18]||
|SHAPE_MODEL[19]||底部圆弧延长长度(水平)
|SHAPE_MODEL[20]||过度线角度(0-90)
|SHAPE_MODEL[21]||过度线长度(水平)
|SHAPE_MODEL[111]||锥度(X方向)

|SHAPE_MODEL[30]||齿底圆弧半径
|SHAPE_MODEL[31]||第一斜边左角度
|SHAPE_MODEL[32]||第一斜边右角度
|SHAPE_MODEL[33]||第二斜边左角度
|SHAPE_MODEL[34]||第二斜边右角度
|SHAPE_MODEL[35]||锥度
|SHAPE_MODEL[36]||螺距
|SHAPE_MODEL[37]||齿高
|SHAPE_MODEL[38]||中径小径距
|SHAPE_MODEL[39]||
|SHAPE_MODEL[40]||底部斜线延长长度(水平)
|SHAPE_MODEL[41]||过度线角度(0-90)

|SHAPE_MODEL[50]||左侧斜线角度
|SHAPE_MODEL[51]||右侧斜线角度
|SHAPE_MODEL[52]||锥度
|SHAPE_MODEL[53]||螺距
|SHAPE_MODEL[54]||齿高
|SHAPE_MODEL[55]||中径小径距
|SHAPE_MODEL[56]||
|SHAPE_MODEL[57]||底部斜线延长长度(水平)
|SHAPE_MODEL[58]||过度线角度(0-90)
|SHAPE_MODEL[59]||过度线长度(水平)

|SHAPE_MODEL[60]||顶部长度
|SHAPE_MODEL[61]||左侧斜线角度
|SHAPE_MODEL[62]||右侧斜线角度
|SHAPE_MODEL[63]||锥度
|SHAPE_MODEL[64]||螺距
|SHAPE_MODEL[65]||齿高
|SHAPE_MODEL[66]||中径小径距
|SHAPE_MODEL[67]||
|SHAPE_MODEL[68]||底部斜线延长长度(水平)
|SHAPE_MODEL[69]||过度线角度(0-90)
|双圆弧||
|SHAPE_MODEL[80]||左圆弧半径当前
|SHAPE_MODEL[81]||右圆弧半径当前
|SHAPE_MODEL[82]||左偏心当前
|SHAPE_MODEL[83]||右偏心当前
|SHAPE_MODEL[112]||左圆弧半径初始
|SHAPE_MODEL[113]||右圆弧半径初始
|SHAPE_MODEL[114]||左偏心初始
|SHAPE_MODEL[115]||右偏心初始
|SHAPE_MODEL[116]||左圆弧半径调整
|SHAPE_MODEL[117]||右圆弧半径调整
|SHAPE_MODEL[118]||左偏心调整
|SHAPE_MODEL[119]||右偏心调整
|SHAPE_MODEL[84]||过度1斜线角度
|SHAPE_MODEL[85]||过度1斜线长度延长
|SHAPE_MODEL[86]||过度2斜线角度
|SHAPE_MODEL[87]||过度2斜线长度
|SHAPE_MODEL[88]||圆弧部分角度
|梯形||
|SHAPE_MODEL[90]||齿底长度
|SHAPE_MODEL[91]||齿底左圆弧半径
|SHAPE_MODEL[92]||齿底右圆弧半径
|SHAPE_MODEL[93]||左斜面角度
|SHAPE_MODEL[94]||右斜面角度
|SHAPE_MODEL[95]||齿高
|SHAPE_MODEL[96]||延长线角度
|三角||
|SHAPE_MODEL[100]||齿底圆弧半径
|SHAPE_MODEL[101]||左半角
|SHAPE_MODEL[102]||右半角
|SHAPE_MODEL[103]||齿高
|SHAPE_MODEL[104]||延长线角度
|||
|SHAPE_MODEL[110]||锥度(X方向)齿形一
|SHAPE_MODEL[111]||锥度(X方向)齿形二
|SHAPE_MODEL[112]-SHAPE_MODEL[119]||双圆弧已占用
|||
|**RING GROOVE**||
|RING[0]||螺纹0/环形槽1
|RING[1]||总槽数
|RING[2]||起始磨削槽
|RING[3]||终止磨削槽
|RING[4]||需加工槽数
|RING[5]||已加工槽数
|RING[6]||当前槽的X相对偏移量
|RING[7]||当前槽的Z相对偏移量
|RING[8]||当前槽起始磨削位置X
|RING[9]||当前槽起始磨削位置Z
|RING[10]||环形槽组1螺距
|RING[11]||环形槽组1槽数
|RING[12]||环形槽组1组间水平偏移
|RING[13]||环形槽组1组间垂直偏移
|RING[14]||环形槽组1槽间锥度偏移
|RING[20]||环形槽组2螺距
|RING[21]||环形槽组2槽数
|RING[22]||环形槽组2组间水平偏移
|RING[23]||环形槽组2组间垂直偏移
|RING[24]||环形槽组2槽间锥度偏移
|RING[30]||环形槽组3螺距
|RING[31]||环形槽组3槽数
|RING[32]||环形槽组3组间水平偏移
|RING[33]||环形槽组3组间垂直偏移
|RING[34]||环形槽组3槽间锥度偏移
|RING[40]||环形槽组4螺距
|RING[41]||环形槽组4槽数
|RING[42]||环形槽组4组间水平偏移
|RING[43]||环形槽组4组间垂直偏移
|RING[44]||环形槽组4槽间锥度偏移
|RING[49]||显示环形槽选择参数
|**SCREW TAP**||
|SCREW_TAP[0]||螺纹0/丝锥1
|SCREW_TAP[1]||丝锥槽数
|SCREW_TAP[2]||直槽0/螺旋槽1
|SCREW_TAP[3]||螺旋槽右旋0/左旋1
|SCREW_TAP[4]||螺旋槽升角
|SCREW_TAP[5]||B轴初始角
|SCREW_TAP[6]||是否跳齿(0否1是)
|SCREW_TAP[7]||跳齿c起始角度调整
|SCREW_TAP[8]||跳齿每槽角度调整
|SCREW_TAP[9]||B轴快速动作速度
|SCREW_TAP[10]||B轴慢速动作速度
|SCREW_TAP[11]||跳齿后退距离
|SCREW_TAP[12]||跳齿每齿停留时间
|SCREW_TAP[13]||螺旋槽升角度
|SCREW_TAP[14]||螺旋槽升角分
|SCREW_TAP[15]||螺旋槽升角秒
|SCREW_TAP[16]||B轴随动系数