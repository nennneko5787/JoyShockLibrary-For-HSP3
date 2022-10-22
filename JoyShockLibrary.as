//JoyShockLibraryをHSPで使えるようにするモジュール１
//Note:JslSetCallbackはよくわかりませんでした。
#define false 0
#define true 1

#define JS_TYPE_JOYCON_LEFT 1
#define JS_TYPE_JOYCON_RIGHT 2
#define JS_TYPE_PRO_CONTROLLER 3
#define JS_TYPE_DS4 4
#define JS_TYPE_DS 5

#define JS_SPLIT_TYPE_LEFT 1
#define JS_SPLIT_TYPE_RIGHT 2
#define JS_SPLIT_TYPE_FULL 3

#define JSMASK_UP 0x00001
#define JSMASK_DOWN 0x00002
#define JSMASK_LEFT 0x00004
#define JSMASK_RIGHT 0x00008
#define JSMASK_PLUS 0x00010
#define JSMASK_OPTIONS 0x00010
#define JSMASK_MINUS 0x00020
#define JSMASK_SHARE 0x00020
#define JSMASK_LCLICK 0x00040
#define JSMASK_RCLICK 0x00080
#define JSMASK_L 0x00100
#define JSMASK_R 0x00200
#define JSMASK_ZL 0x00400
#define JSMASK_ZR 0x00800
#define JSMASK_S 0x01000
#define JSMASK_E 0x02000
#define JSMASK_W 0x04000
#define JSMASK_N 0x08000
#define JSMASK_HOME 0x10000
#define JSMASK_PS 0x10000
#define JSMASK_CAPTURE 0x20000
#define JSMASK_TOUCHPAD_CLICK 0x20000
#define JSMASK_MIC 0x40000
#define JSMASK_SL 0x40000
#define JSMASK_SR 0x80000

#define JSOFFSET_UP 0
#define JSOFFSET_DOWN 1
#define JSOFFSET_LEFT 2
#define JSOFFSET_RIGHT 3
#define JSOFFSET_PLUS 4
#define JSOFFSET_OPTIONS 4
#define JSOFFSET_MINUS 5
#define JSOFFSET_SHARE 5
#define JSOFFSET_LCLICK 6
#define JSOFFSET_RCLICK 7
#define JSOFFSET_L 8
#define JSOFFSET_R 9
#define JSOFFSET_ZL 10
#define JSOFFSET_ZR 11
#define JSOFFSET_S 12
#define JSOFFSET_E 13
#define JSOFFSET_W 14
#define JSOFFSET_N 15
#define JSOFFSET_HOME 16
#define JSOFFSET_PS 16
#define JSOFFSET_CAPTURE 17
#define JSOFFSET_TOUCHPAD_CLICK 17
#define JSOFFSET_MIC 18
#define JSOFFSET_SL 18
#define JSOFFSET_SR 19

// PS5 Player maps for the DS Player Lightbar
#define DS5_PLAYER_1 4
#define DS5_PLAYER_2 10
#define DS5_PLAYER_3 21
#define DS5_PLAYER_4 27
#define DS5_PLAYER_5 31

#uselib "JoyShockLibrary"

#cfunc global JslConnectDevices "JslConnectDevices" //intが返されます
#func global JslGetConnectedDeviceHandles "JslGetConnectedDeviceHandles" int,var //varにintが返されます
#func global JslDisconnectAndDisposeAll "JslDisconnectAndDisposeAll" //何も返されません

#func global JslGetSimpleState "JslGetSimpleState" var,int //p1:device ID、varに構造体が返されます
#func global JslGetIMUState "JslGetIMUState" var,int //p1:device ID、varに構造体が返されます
#func global JslGetMotionState "JslGetMotionState" var,int //p1:device ID、varに構造体が返されます
#func global JslGetTouchState "JslGetTouchState" var,int,int //p2:device ID、p3:bool previous = false、varに構造体が返されます()、DualShock4,5のみ対応

#cfunc JslGetTouchpadDimension "JslGetTouchpadDimension" int,var,var //p1:device ID、p2とp3にタッチパネルの寸法が出力されます、int(bool)が返されます
#cfunc JslGetButtons "JslGetButtons" int //p1:device ID、intが返されます、 ボタン以上のもの(スティック押し込みなど)が必要な場合は、JslGetSimpleStateを使用する方が効率的です。

#cfunc JslGetLeftX "JslGetLeftX" int //p1:device ID、floatが返されます、 複数のスティック軸が必要な場合は、JslGetSimpleStateを使用する方が効率的です。
#cfunc JslGetLeftY "JslGetLeftY" int //p1:device ID、floatが返されます、 複数のスティック軸が必要な場合は、JslGetSimpleStateを使用する方が効率的です。
#cfunc JslGetRightX "JslGetRightX" int //p1:device ID、floatが返されます、 複数のスティック軸が必要な場合は、JslGetSimpleStateを使用する方が効率的です。
#cfunc JslGetRightY "JslGetRightY" int //p1:device ID、floatが返されます、 複数のスティック軸が必要な場合は、JslGetSimpleStateを使用する方が効率的です。

#cfunc JslGetLeftTrigger "JslGetLeftTrigger" int //p1:device ID、floatが返されます、 複数のトリガーが必要な場合は、JslGetSimpleStateを使用する方が効率的です。
#cfunc JslGetRightTrigger "JslGetRightTrigger" int //p1:device ID、floatが返されます、 複数のトリガーが必要な場合は、JslGetSimpleStateを使用する方が効率的です。

#cfunc JslGetGyroX "JslGetGyroX" int //p1:device ID、floatが返されます、複数のジャイロスコープ軸速度が必要な場合は、JslGetIMUStateを使用する方が効率的です。
#cfunc JslGetGyroY "JslGetGyroY" int //p1:device ID、floatが返されます、複数のジャイロスコープ軸速度が必要な場合は、JslGetIMUStateを使用する方が効率的です。
#cfunc JslGetGyroZ "JslGetGyroZ" int //p1:device ID、floatが返されます、複数のジャイロスコープ軸速度が必要な場合は、JslGetIMUStateを使用する方が効率的です。
#cfunc global JslGetAccelX "JslGetAccelX" int //p1:device ID、floatが返されます、加速度計の軸以上のものが必要な場合は、JslGetIMUStateを使用する方が効率的です。
#cfunc global JslGetAccelY "JslGetAccelY" int //p1:device ID、floatが返されます、加速度計の軸以上のものが必要な場合は、JslGetIMUStateを使用する方が効率的です。
#cfunc global JslGetAccelZ "JslGetAccelZ" int //p1:device ID、floatが返されます、加速度計の軸以上のものが必要な場合は、JslGetIMUStateを使用する方が効率的です。

#cfunc global JslGetTouchId "JslGetTouchId" int,int //p1:device ID、p2:bool secondTouch=false、DualShock 4s のみがこれをサポートしています。タッチ ID 以外の情報が必要な場合は、JslGetTouchStateを使用する方が効率的です。
#cfunc global JslGetTouchDown "JslGetTouchDown" int,int //p1:device ID、p2:bool secondTouch=false、DualShock 4s のみがこれをサポートしています。タッチの存在以上のものが必要な場合は、JslGetTouchStateを使用する方が効率的です。
#cfunc global JslGetTouchX "JslGetTouchX" int,int //p1:device ID、p2:bool secondTouch=false、DualShock 4s のみがこれをサポートしています。 複数のタッチ軸が必要な場合は、JslGetTouchStateを使用する方が効率的です。
#cfunc global JslGetTouchY "JslGetTouchY" int,int //p1:device ID、p2:bool secondTouch=false、DualShock 4s のみがこれをサポートしています。 複数のタッチ軸が必要な場合は、JslGetTouchStateを使用する方が効率的です。
#cfunc global JslGetTouchZ "JslGetTouchZ" int,int //p1:device ID、p2:bool secondTouch=false、DualShock 4s のみがこれをサポートしています。 複数のタッチ軸が必要な場合は、JslGetTouchStateを使用する方が効率的です。

#cfunc global JslGetStickStep "JslGetStickStep" int //p1:device ID、floatが返されます
#cfunc global JslGetTriggerStep "JslGetTriggerStep" int //p1:device ID、floatが返されます
#cfunc global JslGetPollRate "JslGetPollRate" int //p1:device ID、floatが返されます

#func global JslResetContinuousCalibration "JslResetContinuousCalibration" int //p1:device ID、何も返されません
#func global JslStartContinuousCalibration "JslStartContinuousCalibration" int //p1:device ID、何も返されません
#func global JslPauseContinuousCalibration "JslPauseContinuousCalibration" int //p1:device ID、何も返されません
#func global JslSetAutomaticCalibration "JslSetAutomaticCalibration" int,int //p1:device ID、p2:bool
#func global JslGetCalibrationOffset "JslGetCalibrationOffset" int,var,var,var //p1:device ID、p2とp3とp4の変数にそれぞれXYZが返されます
#func global JslSetCalibrationOffset "JslSetCalibrationOffset" int,float,float,float //p1:device ID、p2:xOffset、p3:yOffset p4:zOffset

#func global JslSetCallback "JslSetCallback" int,var,var,var,var,float //p1:int、p2:JOY_SHOCK_STATE、p3:JOY_SHOCK_STATE、p4:IMU_STATE、p5:IMU_STATE、p6:float、ちょくと氏のコールバックプラグインが必要かもしれません
#func global JslSetTouchCallback "JslSetTouchCallback" int,var,var,float //p1:int、p2:TOUCH_STATE、p3:TOUCH_STATE、p4:float、ちょくと氏のコールバックプラグインが必要かもしれません

#cfunc global JslGetControllerType "JslGetControllerType" int //p1:device ID、intが返されます
#cfunc global JslGetControllerSplitType "JslGetControllerSplitType" int //p1:device ID、intが返されます
#cfunc global JslGetControllerColour "JslGetControllerColour" int //p1:device ID、intが返されます、Nintendo系のコントローラー以外は白を返します。
#func global JslSetLightColour "JslSetLightColour" int,int //p1:device ID、p2:colour、何も返されません
#func global JslSetRumble "JslSetRumble" int,int,int //p1:device ID、p2:smallRumble、p3:bigRumble、何も返されません、Nintendo系のコントローラーには非対応
#func global JslSetPlayerNumber "JslSetPlayerNumber" int,int //p1:device ID、p2:number、何も返されません
