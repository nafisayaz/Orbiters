QT += quick gui #virtualkeyboard
QT += core
CONFIG+= qml_debug
DEFINES += QT_QML_DEBUG_NO_WARNING
#QT_IM_MODULE=qtvirtualkeyboard myapp
# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        appmanager.cpp \
        datentime.cpp \
        main.cpp \
        Router/loader.cpp \
        qmlengine.cpp


HEADERS += \
    Router/loader.h \
    appmanager.h \
    datentime.h \
    qmlengine.h

RESOURCES += qml.qrc\
    images
#    Components \
#    js \


#TRANSLATIONS += \
#    Orbiters_en_IN.ts


CONFIG += lrelease
CONFIG += embed_translations

ICON += images/inorbiter.png

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

