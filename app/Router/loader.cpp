#include "loader.h"

Loader::Loader()
{
}

bool Loader::load(QString path)
{
    const QUrl url(path);


//    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
//                     &app, [url](QObject *obj, const QUrl &objUrl) {
//        if (!obj && url == objUrl)
//            QCoreApplication::exit(-1);
//    }, Qt::QueuedConnection);
//    engine.load(url);


    return true;
}
