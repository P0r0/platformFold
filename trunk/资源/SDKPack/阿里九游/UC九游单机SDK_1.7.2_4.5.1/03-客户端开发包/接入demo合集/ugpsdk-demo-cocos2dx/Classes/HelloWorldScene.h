#ifndef __HELLOWORLD_SCENE_H__
#define __HELLOWORLD_SCENE_H__

#include "cocos2d.h"
#include "android/NineGamePaymentSDK.h"

#define MESSAGE_NOTIFICATION "message_notification"

class HelloWorld : public cocos2d::Layer
{
private:
	cocos2d::Sprite* sprite;
	cocos2d::Sprite* m_pMainSprite;
	cocos2d::Sprite* m_pMolaimoqu;
	cocos2d::MenuItemImage* m_pEnterGame;
	NineGamePaymentSDK *sdk;
public:
    // there's no 'id' in cpp, so we recommend returning the class instance pointer
    static cocos2d::Scene* createScene();

    static cocos2d::Scene* scene;

    static HelloWorld* instance;

	void getNotification(cocos2d::Ref* object);

	virtual void onEnter();
	virtual void onExit();
    // Here's a difference. Method 'init' in cocos2d-x returns bool, instead of returning 'id' in cocos2d-iphone
    virtual bool init();

	void addProgress();
    void initMainScence();
    // a selector callback
    void menuCloseCallback(cocos2d::Ref* pSender);

	static void actionCallback(int status,Response response);
	static void errorCallback(int error,const char* message);

	void mainItemCallback(cocos2d::Ref* pSender);

    // implement the "static create()" method manually
    CREATE_FUNC(HelloWorld);
};

#endif // __HELLOWORLD_SCENE_H__
