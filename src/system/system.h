
// #ifndef SYSTEM_H
#define SYSTEM_H
#include <QtGlobal>
#include <QtSystemDetection>
#include <iostream>
#include <string>

class System
{
private:
    /* data */
public:
    System(/* args */);
    ~System();
    void init(std::string OS_Name);
};

