#include "qmlengine.h"

QMLEngine::QMLEngine(QObject *parent)
    : m_App(parent)
{
    m_AppManager = new AppManager(m_App);
    m_engine.rootContext()->setContextProperty(appManager, m_AppManager);
}


void QMLEngine::load(QString path)
{
    const QUrl url(path);

    QObject::connect(&m_engine, &QQmlApplicationEngine::objectCreated,
                        m_App, [url](QObject *obj, const QUrl &objUrl) {
           if (!obj && url == objUrl)
               QCoreApplication::exit(-1);
       }, Qt::QueuedConnection);

    m_engine.load(url);
}
