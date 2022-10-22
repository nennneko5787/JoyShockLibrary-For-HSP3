//JoyShockLibrary��HSP�Ŏg����悤�ɂ��郂�W���[���P
//Note:JslSetCallback�͂悭�킩��܂���ł����B
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

#cfunc global JslConnectDevices "JslConnectDevices" //int���Ԃ���܂�
#func global JslGetConnectedDeviceHandles "JslGetConnectedDeviceHandles" int,var //var��int���Ԃ���܂�
#func global JslDisconnectAndDisposeAll "JslDisconnectAndDisposeAll" //�����Ԃ���܂���

#func global JslGetSimpleState "JslGetSimpleState" var,int //p1:device ID�Avar�ɍ\���̂��Ԃ���܂�
#func global JslGetIMUState "JslGetIMUState" var,int //p1:device ID�Avar�ɍ\���̂��Ԃ���܂�
#func global JslGetMotionState "JslGetMotionState" var,int //p1:device ID�Avar�ɍ\���̂��Ԃ���܂�
#func global JslGetTouchState "JslGetTouchState" var,int,int //p2:device ID�Ap3:bool previous = false�Avar�ɍ\���̂��Ԃ���܂�()�ADualShock4,5�̂ݑΉ�

#cfunc JslGetTouchpadDimension "JslGetTouchpadDimension" int,var,var //p1:device ID�Ap2��p3�Ƀ^�b�`�p�l���̐��@���o�͂���܂��Aint(bool)���Ԃ���܂�
#cfunc JslGetButtons "JslGetButtons" int //p1:device ID�Aint���Ԃ���܂��A �{�^���ȏ�̂���(�X�e�B�b�N�������݂Ȃ�)���K�v�ȏꍇ�́AJslGetSimpleState���g�p������������I�ł��B

#cfunc JslGetLeftX "JslGetLeftX" int //p1:device ID�Afloat���Ԃ���܂��A �����̃X�e�B�b�N�����K�v�ȏꍇ�́AJslGetSimpleState���g�p������������I�ł��B
#cfunc JslGetLeftY "JslGetLeftY" int //p1:device ID�Afloat���Ԃ���܂��A �����̃X�e�B�b�N�����K�v�ȏꍇ�́AJslGetSimpleState���g�p������������I�ł��B
#cfunc JslGetRightX "JslGetRightX" int //p1:device ID�Afloat���Ԃ���܂��A �����̃X�e�B�b�N�����K�v�ȏꍇ�́AJslGetSimpleState���g�p������������I�ł��B
#cfunc JslGetRightY "JslGetRightY" int //p1:device ID�Afloat���Ԃ���܂��A �����̃X�e�B�b�N�����K�v�ȏꍇ�́AJslGetSimpleState���g�p������������I�ł��B

#cfunc JslGetLeftTrigger "JslGetLeftTrigger" int //p1:device ID�Afloat���Ԃ���܂��A �����̃g���K�[���K�v�ȏꍇ�́AJslGetSimpleState���g�p������������I�ł��B
#cfunc JslGetRightTrigger "JslGetRightTrigger" int //p1:device ID�Afloat���Ԃ���܂��A �����̃g���K�[���K�v�ȏꍇ�́AJslGetSimpleState���g�p������������I�ł��B

#cfunc JslGetGyroX "JslGetGyroX" int //p1:device ID�Afloat���Ԃ���܂��A�����̃W���C���X�R�[�v�����x���K�v�ȏꍇ�́AJslGetIMUState���g�p������������I�ł��B
#cfunc JslGetGyroY "JslGetGyroY" int //p1:device ID�Afloat���Ԃ���܂��A�����̃W���C���X�R�[�v�����x���K�v�ȏꍇ�́AJslGetIMUState���g�p������������I�ł��B
#cfunc JslGetGyroZ "JslGetGyroZ" int //p1:device ID�Afloat���Ԃ���܂��A�����̃W���C���X�R�[�v�����x���K�v�ȏꍇ�́AJslGetIMUState���g�p������������I�ł��B
#cfunc global JslGetAccelX "JslGetAccelX" int //p1:device ID�Afloat���Ԃ���܂��A�����x�v�̎��ȏ�̂��̂��K�v�ȏꍇ�́AJslGetIMUState���g�p������������I�ł��B
#cfunc global JslGetAccelY "JslGetAccelY" int //p1:device ID�Afloat���Ԃ���܂��A�����x�v�̎��ȏ�̂��̂��K�v�ȏꍇ�́AJslGetIMUState���g�p������������I�ł��B
#cfunc global JslGetAccelZ "JslGetAccelZ" int //p1:device ID�Afloat���Ԃ���܂��A�����x�v�̎��ȏ�̂��̂��K�v�ȏꍇ�́AJslGetIMUState���g�p������������I�ł��B

#cfunc global JslGetTouchId "JslGetTouchId" int,int //p1:device ID�Ap2:bool secondTouch=false�ADualShock 4s �݂̂�������T�|�[�g���Ă��܂��B�^�b�` ID �ȊO�̏�񂪕K�v�ȏꍇ�́AJslGetTouchState���g�p������������I�ł��B
#cfunc global JslGetTouchDown "JslGetTouchDown" int,int //p1:device ID�Ap2:bool secondTouch=false�ADualShock 4s �݂̂�������T�|�[�g���Ă��܂��B�^�b�`�̑��݈ȏ�̂��̂��K�v�ȏꍇ�́AJslGetTouchState���g�p������������I�ł��B
#cfunc global JslGetTouchX "JslGetTouchX" int,int //p1:device ID�Ap2:bool secondTouch=false�ADualShock 4s �݂̂�������T�|�[�g���Ă��܂��B �����̃^�b�`�����K�v�ȏꍇ�́AJslGetTouchState���g�p������������I�ł��B
#cfunc global JslGetTouchY "JslGetTouchY" int,int //p1:device ID�Ap2:bool secondTouch=false�ADualShock 4s �݂̂�������T�|�[�g���Ă��܂��B �����̃^�b�`�����K�v�ȏꍇ�́AJslGetTouchState���g�p������������I�ł��B
#cfunc global JslGetTouchZ "JslGetTouchZ" int,int //p1:device ID�Ap2:bool secondTouch=false�ADualShock 4s �݂̂�������T�|�[�g���Ă��܂��B �����̃^�b�`�����K�v�ȏꍇ�́AJslGetTouchState���g�p������������I�ł��B

#cfunc global JslGetStickStep "JslGetStickStep" int //p1:device ID�Afloat���Ԃ���܂�
#cfunc global JslGetTriggerStep "JslGetTriggerStep" int //p1:device ID�Afloat���Ԃ���܂�
#cfunc global JslGetPollRate "JslGetPollRate" int //p1:device ID�Afloat���Ԃ���܂�

#func global JslResetContinuousCalibration "JslResetContinuousCalibration" int //p1:device ID�A�����Ԃ���܂���
#func global JslStartContinuousCalibration "JslStartContinuousCalibration" int //p1:device ID�A�����Ԃ���܂���
#func global JslPauseContinuousCalibration "JslPauseContinuousCalibration" int //p1:device ID�A�����Ԃ���܂���
#func global JslSetAutomaticCalibration "JslSetAutomaticCalibration" int,int //p1:device ID�Ap2:bool
#func global JslGetCalibrationOffset "JslGetCalibrationOffset" int,var,var,var //p1:device ID�Ap2��p3��p4�̕ϐ��ɂ��ꂼ��XYZ���Ԃ���܂�
#func global JslSetCalibrationOffset "JslSetCalibrationOffset" int,float,float,float //p1:device ID�Ap2:xOffset�Ap3:yOffset p4:zOffset

#func global JslSetCallback "JslSetCallback" int,var,var,var,var,float //p1:int�Ap2:JOY_SHOCK_STATE�Ap3:JOY_SHOCK_STATE�Ap4:IMU_STATE�Ap5:IMU_STATE�Ap6:float�A���傭�Ǝ��̃R�[���o�b�N�v���O�C�����K�v��������܂���
#func global JslSetTouchCallback "JslSetTouchCallback" int,var,var,float //p1:int�Ap2:TOUCH_STATE�Ap3:TOUCH_STATE�Ap4:float�A���傭�Ǝ��̃R�[���o�b�N�v���O�C�����K�v��������܂���

#cfunc global JslGetControllerType "JslGetControllerType" int //p1:device ID�Aint���Ԃ���܂�
#cfunc global JslGetControllerSplitType "JslGetControllerSplitType" int //p1:device ID�Aint���Ԃ���܂�
#cfunc global JslGetControllerColour "JslGetControllerColour" int //p1:device ID�Aint���Ԃ���܂��ANintendo�n�̃R���g���[���[�ȊO�͔���Ԃ��܂��B
#func global JslSetLightColour "JslSetLightColour" int,int //p1:device ID�Ap2:colour�A�����Ԃ���܂���
#func global JslSetRumble "JslSetRumble" int,int,int //p1:device ID�Ap2:smallRumble�Ap3:bigRumble�A�����Ԃ���܂���ANintendo�n�̃R���g���[���[�ɂ͔�Ή�
#func global JslSetPlayerNumber "JslSetPlayerNumber" int,int //p1:device ID�Ap2:number�A�����Ԃ���܂���
