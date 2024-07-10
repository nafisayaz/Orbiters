#ifndef APPMANAGER_H
#define APPMANAGER_H

#include <QObject>
#include <QQuickItem>
#include <QDate>

class AppManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool isNightMode READ isNightMode WRITE setIsNightMode NOTIFY isNightModeChanged)
public:
    explicit AppManager(QObject *parent);
    bool isNightMode() const;
    void setIsNightMode(bool isNightMode);
    Q_INVOKABLE QString ret(QString str);
    Q_INVOKABLE QString gettime();


signals:
    void isNightModeChanged();

private:
    bool m_isNightMode = false;


};

#endif // APPMANAGER_H
