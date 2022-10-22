# JoyShockLibrary-For-HSP3
動作させるには[HSP3の最新バージョン](https://www.hsp.tv/idman/download.html)と[JoyShockLibraryの最新バージョン](https://github.com/JibbSmart/JoyShockLibrary/releases/latest/)が必要です。
## How To Install
①使いたいプログラム(.hsp)と同じフォルダか、HSPのcommonフォルダにJoyShockLibrary.asを入れます。  
②使いたいプログラム(.hsp)と同じフォルダと、HSPのフォルダにJoyShockLibrary.dll(x32)を入れます。  
(64ビット版ランタイムを使用している場合はJoyShockLibrary.dll(x64)を入れてください。  
また、その場合は使いたいプログラム(.hsp)と同じフォルダに入れてください。)  
③使いたいプログラム(.hsp)の上部に以下を追加します。
<pre>
#include "JoyShockLibrary.as"
</pre>
## Functions
### JslConnectDevices()
接続されているすべてのコントローラーを登録し、登録したコントローラーの数を返します。
### JslGetConnectedDeviceHandles(var array,int size)
varに接続されているすべてのデバイスのハンドルを配列の長さまで格納します。  
配列の長さを使用して、JslConnectDevicesで接続されたすべてのデバイスのハンドルを取得していることを確認します。
### JslDisconnectAndDisposeAll()
デバイスを切断し、入力を受け付けなくなります。
### JslGetSimpleState(var array,int device ID)
指定されたIDのコントローラーの最新のボタン + トリガー + スティック状態を取得します。varに構造体が返されます。  
**構造体を使用するには、[sample2.hsp](sample2.hsp)のようにする必要があります。**
### JslGetIMUState(var array,int device ID)
指定されたIDのコントローラーの最新の加速度センサーとジャイロスコープの状態を取得します。  
**構造体を使用するには、[sample2.hsp](sample2.hsp)のようにする必要があります。**
### JslGetMotionState(var array,int device ID)
指定されたIDのコントローラーの最新のモーション状態を取得します。  
**構造体を使用するには、[sample2.hsp](sample2.hsp)のようにする必要があります。**
### JslGetTouchState(var array,int device ID)
指定されたIDを持つコントローラの最新または以前のタッチパッドの状態を取得します。これをサポートしているのはDualShock 4sとDualSenseだけです。  
**構造体を使用するには、[sample2.hsp](sample2.hsp)のようにする必要があります。**
