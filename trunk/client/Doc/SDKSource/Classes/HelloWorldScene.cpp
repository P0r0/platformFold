#include "HelloWorldScene.h"

USING_NS_CC;

Scene* HelloWorld::createScene()
{
    // 'scene' is an autorelease object
    auto scene = Scene::create();
    
    // 'layer' is an autorelease object
    auto layer = HelloWorld::create();

    // add layer as a child to scene
    scene->addChild(layer);

    // return the scene
    return scene;
}

// on "init" you need to initialize your instance
bool HelloWorld::init()
{
    //////////////////////////////
    // 1. super init first
    if ( !Layer::init() )
    {
        return false;
    }
    
    Size visibleSize = Director::getInstance()->getVisibleSize();
    Vec2 origin = Director::getInstance()->getVisibleOrigin();

    /////////////////////////////
    // 2. add a menu item with "X" image, which is clicked to quit the program
    //    you may modify it.

    // add a "close" icon to exit the progress. it's an autorelease object
    auto closeItem = MenuItemImage::create(
                                           "CloseNormal.png",
                                           "CloseSelected.png",
                                           CC_CALLBACK_1(HelloWorld::menuCloseCallback, this));
    
	closeItem->setPosition(Vec2(origin.x + visibleSize.width - closeItem->getContentSize().width/2 ,
                                origin.y + closeItem->getContentSize().height/2));

    // create menu, it's an autorelease object
    auto menu = Menu::create(closeItem, NULL);
    menu->setPosition(Vec2::ZERO);
    this->addChild(menu, 1);

    /////////////////////////////
    // 3. add your codes below...

    this->labelUsername = Label::createWithTTF("U8SDK", "fonts/Marker Felt.ttf", 24);
    
    // position the label on the center of the screen
    this->labelUsername->setPosition(Vec2(origin.x + visibleSize.width / 2,
        origin.y + visibleSize.height - this->labelUsername->getContentSize().height));

    // add the label as a child to this layer
    this->addChild(this->labelUsername, 1);

    ui::Button* btnLogin = ui::Button::create("login_normal.png", "login_selected.png");
    btnLogin->setPosition(Vec2(visibleSize.width / 2 + origin.x, visibleSize.height / 2 + origin.y + 30));
    btnLogin->addClickEventListener(CC_CALLBACK_1(HelloWorld::loginClickCallback, this));
    // add the sprite as a child to this layer
    this->addChild(btnLogin, 0);

    ui::Button* btnPay = ui::Button::create("pay_normal.png", "pay_selected.png");
    btnPay->setPosition(Vec2(visibleSize.width / 2 + origin.x, visibleSize.height / 2 + origin.y - 30));
    btnPay->addClickEventListener(CC_CALLBACK_1(HelloWorld::payClickCallback, this));
    // add the sprite as a child to this layer
    this->addChild(btnPay, 0);
    
    //NDKHelper::addSelector("U8Selectors", "onU8LoginResult", CC_CALLBACK_2(HelloWorld::onU8LoginResult, this), this);
    U8SDKInterface::getInstance()->initSDK(this);    

    // add a label shows "Hello World"
    // create and initialize a label
    
    // auto label = Label::createWithTTF("Hello World", "fonts/Marker Felt.ttf", 24);
    
    // // position the label on the center of the screen
    // label->setPosition(Vec2(origin.x + visibleSize.width/2,
    //                         origin.y + visibleSize.height - label->getContentSize().height));

    // // add the label as a child to this layer
    // this->addChild(label, 1);

    // // add "HelloWorld" splash screen"
    // auto sprite = Sprite::create("HelloWorld.png");

    // // position the sprite on the center of the screen
    // sprite->setPosition(Vec2(visibleSize.width/2 + origin.x, visibleSize.height/2 + origin.y));

    // // add the sprite as a child to this layer
    // this->addChild(sprite, 0);
    
    return true;
}



void HelloWorld::OnInitSuc()
{
    CCLOG("SDK初始化成功...");	
    //一般不需要做什么处理
}

void HelloWorld::OnLoginSuc(U8LoginResult* result)
{
    CCLOG("SDK登录并认证成功...%s",result->userId.c_str());
    this->labelUsername->setString(result->sdkUsername);

    if (result->isSwitchAccount)
    {
        //TODO:这里退回到登录界面，并且SDK是已经登录成功状态，不用再弹出SDK的登录界面
    }
    else
    {
        //TODO:登录认证成功
    }
}

void HelloWorld::OnSwitchLogin()
{
    CCLOG("切换帐号成功...");
    //TODO:退回到登录界面，并弹出SDK登录界面(调用U8SDKInterface::getInstance()->login())
}

void HelloWorld::OnLogout()
{
    CCLOG("SDK帐号退出成功...");
    this->labelUsername->setString("U8SDK");
    //TODO:退回到登录界面，并弹出SDK登录界面(调用U8SDKInterface::getInstance()->login())
}


void HelloWorld::loginClickCallback(Ref *pSender)
{
    CCLOG("Btn Login Clicked...U8 Login...");
    U8SDKInterface::getInstance()->login();
}

void HelloWorld::payClickCallback(Ref *pSender)
{
    CCLOG("Btn Pay Clicked...U8 Pay...");
    
    U8PayParams* params = U8PayParams::create();

    params->productId = "1";
    params->productName = "元宝";
    params->productDesc = "购买100元宝，赠送20元宝";
    params->price = 100;
    params->buyNum = 1;
    params->coinNum = 300;
    params->serverId = "10";
    params->serverName = "地狱之恋";
    params->roleId = "u8_24532452";
    params->roleName = "麻利麻利吼";
    params->roleLevel = 15;
    params->vip = "v15";

    //去服务器获取游戏中商品的订单号以及扩展数据,这里测试
    params->orderID = "345435634534";
    params->extension = "test111";

    U8SDKInterface::getInstance()->pay(params);
}


void HelloWorld::menuCloseCallback(Ref* pSender)
{
    Director::getInstance()->end();

#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
    exit(0);
#endif
}
