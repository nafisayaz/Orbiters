#ifndef QMLENGINE_H
#define QMLENGINE_H
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlContext>

#include <app/appmanager.h>

class QMLEngine
{
public:
    explicit QMLEngine(QObject *parent);
    void load(QString path);




private:
    QQmlApplicationEngine m_engine;
    AppManager *m_AppManager = nullptr;
    QObject *m_App = nullptr;
    const QString appManager = "appManager";
};

#endif // QMLENGINE_H
