Orbiters-In
=======

Orbiters is an instant messaging (IM) and voice-over-IP (VoIP) service, it allows users to send text, voice messages, documents, user locations. 


### Platform support

This is in development stage, the application is supporting on linux and Android. The official first release of Orbiters-In for Android and IOS will be launched in Decenber 2024.

## On Ubuntu 20.04.5 LTS

Add below lines in bashrc:
```console
export ANDROID_SDK_ROOT=/home/ayaz/Android/Sdk 
export PATH=$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH
export PATH=$ANDROID_SDK_ROOT/ndk/26.1.10909125:$PATH
export CMAKE_PREFIX_PATH=/home/ayaz/Qt/6.7.2/gcc_64
```
For more info: 
- https://doc.qt.io/qt-6/supported-platforms.html
- https://doc.qt.io/qt-6/android.html


