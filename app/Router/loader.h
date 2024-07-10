#ifndef LOADER_H
#define LOADER_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QGuiApplication>
#include <QString>
#include <memory>

class Loader
{
public:
    explicit Loader();
    bool load(QString path);

private:
    QQmlApplicationEngine engine;


};

#endif // LOADER_H
