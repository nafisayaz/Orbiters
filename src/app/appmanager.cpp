#include "appmanager.h"

AppManager::AppManager(QObject *parent)
    : QObject{parent}
{

}

bool AppManager::isNightMode() const
{
    qDebug() << "From C++ ";
    return m_isNightMode;

}

void AppManager::setIsNightMode(bool isNightMode)
{
    qDebug() << "From C++ " <<"AppManager::setIsNightMode(bool isNightMode)";
}

QString AppManager::ret(QString str)
{
    return str;

}

QString AppManager::gettime()
{

    QDateTime dt = QDateTime::currentDateTime();
    QString strdt = dt.toString("hh:mm AP");

    qDebug() << "From C++ " <<__func__ <<" " <<strdt;

    return strdt;

}


// /home/ayaz/Qt/6.3.2/gcc_64/bin/androiddeployqt
