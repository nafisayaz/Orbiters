
// #include <iostream>

#include <QGuiApplication>
#include <QCoreApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QDebug>
#include <QQuickView>
#include <QQmlContext>

#include "app/qmlengine.h"
#include "system/system.h"


int main(int argc, char *argv[])
{
//    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

  if (qEnvironmentVariableIsEmpty("QTGLESSTREAM_DISPLAY")) {
      qputenv("QT_QPA_EGLFS_PHYSICAL_WIDTH", QByteArray("213"));
      qputenv("QT_QPA_EGLFS_PHYSICAL_HEIGHT", QByteArray("120"));

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
        QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    }

  System system;
#ifdef Q_OS_ANDROID 
  system.init("OS_ANDROID");
#elif defined(Q_OS_LINUX)
  system.init("OS_LINUX");
#else
    #error "We support only ANDROID and UNIX System..."
#endif

  

  QGuiApplication app(argc, argv);
  // QCoreApplication app(argc, argv);
  QCoreApplication::setApplicationName("Orbiters-In");
  QCoreApplication::setOrganizationName("Nheuristics");
  QMLEngine engine(&app);
  engine.load("qrc:/qml/main.qml");
  return app.exec();


}
