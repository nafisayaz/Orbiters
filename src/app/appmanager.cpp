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


bool AppManager::switchIndex(QString msg)
{
    qDebug() << "From C++ " <<msg <<" ";
    
    return true;

}

bool AppManager::switchLogin(QString passcode)
{
    QString local_passcode = "ayaz";

    qDebug() << "From C++ " << passcode <<" ";
    
    return passcode == local_passcode ? true : false;

}
