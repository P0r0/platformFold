#include "NotificationHandler.h"

USING_NS_CC;

void NotificationHandler::postNotificationOnMainThread(const char *name)
{
    postNotificationOnMainThread(name, NULL);
}

void NotificationHandler::postNotificationOnMainThread(const char *name, Ref *object)
{
    // Since in the non-UI thread, an autoreleased instance may released by UI thread on loop end,
    // we retain() a reference.
    // For futher information, see http://www.cocos2d-x.org/wiki/Reference_Count_and_AutoReleasePool_in_Cocos2d-x
    Ref *target = new NotificationHandler(name, object);
    target->retain();
    target->autorelease();

    Director::getInstance()->getScheduler()->schedule(schedule_selector(NotificationHandler::postNotification), target, 0, 0, 0, false);
}

NotificationHandler::~NotificationHandler()
{
    //if (_object)
    //	_object->release();
}

NotificationHandler::NotificationHandler(const char *name, Ref *object)
{
    _name = name;
    _object = object;
    //if (_object) _object->retain();
}

void NotificationHandler::postNotification(float update)
{
    NotificationCenter::getInstance()->postNotification(_name.c_str(), _object);
    this->release();
    // CCTimer will unschedule this selector later, and 'this' will be autoreleased by main loop
}
