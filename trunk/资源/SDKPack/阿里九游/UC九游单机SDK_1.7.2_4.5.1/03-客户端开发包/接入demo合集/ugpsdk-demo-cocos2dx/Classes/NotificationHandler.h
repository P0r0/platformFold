#ifndef _NOTIFICATION_HANDLER_H_
#define _NOTIFICATION_HANDLER_H_

#include "cocos2d.h"
using namespace cocos2d;

class NotificationHandler : public Ref {

public:
    static void postNotificationOnMainThread(const char *name);
    static void postNotificationOnMainThread(const char *name, Ref *object);

private:
    std::string _name;
    Ref*_object;

    ~NotificationHandler();
    NotificationHandler(const char *name, Ref *object);
    void postNotification(float update);

};

#endif
