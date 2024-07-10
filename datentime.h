#ifndef DATENTIME_H
#define DATENTIME_H

#include <QObject>

class Datentime : public QObject
{
    Q_OBJECT
public:
    Datentime();
private:
    QString     m_dt;
};

#endif // DATENTIME_H
