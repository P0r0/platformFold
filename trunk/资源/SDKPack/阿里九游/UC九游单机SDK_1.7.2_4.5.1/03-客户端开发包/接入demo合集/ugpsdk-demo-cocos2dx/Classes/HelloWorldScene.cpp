#include "HelloWorldScene.h"
#include "json/json.h"
#include "NotificationHandler.h"
#include <sstream>

USING_NS_CC;
using namespace std;

const int kProgressTimerTag = 0x0020;
const int kProgressTag = 0x0021;
const int KlblProgressTag = 0x0022;
const int KbgProgressTag = 0x0023;
const int KBuyTag = 0x0024;
const int KBuyItemsTag = 0x0025;

cocos2d::Scene* HelloWorld::scene = NULL;
HelloWorld* HelloWorld::instance = NULL;

Scene* HelloWorld::createScene()
{
    // 'scene' is an autorelease object
	HelloWorld::scene = Scene::create();
    
    // 'layer' is an autorelease object
	HelloWorld::instance = HelloWorld::create();

    // add layer as a child to scene
    scene->addChild(instance);

    // return the scene
    return scene;
}

void HelloWorld::getNotification(Ref* object)
{
	char * tradeId = (char *)object; 
	log("getNotification->%s",tradeId);
	// Show Information

	HelloWorld::instance->removeChildByTag(KlblProgressTag);

	Size visibleSize = Director::getInstance()->getVisibleSize();
	Vec2 origin = Director::getInstance()->getVisibleOrigin();
	auto lblProgress = Label::createWithTTF(tradeId, "fonts/tahoma.ttf", 25);
	lblProgress->setTag(KlblProgressTag);
	lblProgress->setPosition(Vec2(visibleSize.width/2 + origin.x, origin.y + visibleSize.height/2));
	HelloWorld::instance->addChild(lblProgress, 4);

	if (tradeId)
	{
		delete tradeId;
		tradeId = NULL;
	}
}



void HelloWorld::initMainScence()
{
	Size visibleSize = Director::getInstance()->getVisibleSize();
	Size winSize = Director::getInstance()->getWinSize();
    Vec2 origin = Director::getInstance()->getVisibleOrigin();
	sprite = Sprite::create("background.png");
	sprite->setPosition(Vec2(visibleSize.width/2 + origin.x, visibleSize.height/2 + origin.y));
	float scale_rate = (float)winSize.width / (float)sprite->getContentSize().width;
	sprite->setScale(scale_rate);
	this->addChild(sprite,0);

	Size frameSize = Director::getInstance()->getOpenGLView()->getFrameSize(); //屏幕分辨率
	float coin_scale_rate = (float)frameSize.width / 1280.0;

	auto coin = MenuItemImage::create("coins.png",
                                      "coins_select.png",
                                      CC_CALLBACK_1(HelloWorld::mainItemCallback, this));
	coin->setTag(KBuyTag);
	coin->setScale(coin_scale_rate);
	coin->setPosition(
			Vec2(
			origin.x + visibleSize.width - (coin->getContentSize().width/2  + 10) * coin_scale_rate,
			origin.y + visibleSize.height - (coin->getContentSize().height/2 + 10) * coin_scale_rate));




	auto menu = Menu::create(coin, NULL);
    menu->setPosition(Vec2::ZERO);
    this->addChild(menu, 2);

	auto items = MenuItemImage::create("items.png",
                                      "items_select.png",
                                      CC_CALLBACK_1(HelloWorld::mainItemCallback, this));

	items->setPosition(Vec2(coin->getPosition().x -
			(coin->getContentSize().width) * coin_scale_rate ,
			coin->getPosition().y ));
	items->setTag(KBuyItemsTag);

	items->setScale(coin_scale_rate);
	auto menuItems = Menu::create(items, NULL);
    menuItems->setPosition(Vec2::ZERO);
    this->addChild(menuItems, 3);

}

void HelloWorld::addProgress()
{
	/*Size frameSize = Director::getInstance()->getOpenGLView()->getFrameSize(); //屏幕分辨率
    float coin_scale_rate = (float)frameSize.width / 1280.0;

	Size visibleSize = Director::getInstance()->getVisibleSize();
	//visibleSize.width *= coin_scale_rate;
	//visibleSize.height *= coin_scale_rate;

    Vec2 origin = Director::getInstance()->getVisibleOrigin();

    //origin.x *=coin_scale_rate;
    //origin.y *=coin_scale_rate;

	auto progressbg = Sprite::create("progressbarbg.png");
	progressbg->setPosition(Vec2(visibleSize.width/2 + origin.x, visibleSize.height/2 + origin.y));
	//progressbg->setScale(1.0f);
	progressbg->setTag(KbgProgressTag);

	auto progress = Sprite::create("progress.png"); // progressbarbg.png
	progress->setPosition(Vec2(visibleSize.width/2 + origin.x, visibleSize.height/2 + origin.y));
	//progress->setScale(2.0f);
	progress->setTag(kProgressTag);

	auto lblProgress = Label::createWithTTF("Loading resource, please wait...", "fonts/tahoma.ttf", 20);
	lblProgress->setTag(KlblProgressTag);
	// position the label on the center of the screen
	lblProgress->setPosition(Vec2(visibleSize.width/2 + origin.x, origin.y + visibleSize.height/2 - progressbg->getContentSize().height - lblProgress->getContentSize().height));

	ProgressTimer* pt = ProgressTimer::create(progress);
	pt->setType(ProgressTimer::Type::BAR);
	pt->setBarChangeRate(Point(1,0));
	pt->setMidpoint(Point(0,0));
	pt->setTag(kProgressTimerTag);
	pt->setPosition(Vec2(visibleSize.width/2 + origin.x, visibleSize.height/2 + origin.y));
	//pt->setPosition(Point(visibleSize/2));
	//pt->setScale(2.0f);



	auto func_callback = [&]()
	{
		this->removeChildByTag(kProgressTag);
		this->removeChildByTag(KbgProgressTag);
		this->removeChildByTag(KlblProgressTag);
		this->removeChildByTag(kProgressTimerTag);

		initMainScence();
	};

	FiniteTimeAction *action = Sequence::create(  
        ProgressFromTo::create(2,0,100),
        CallFunc::create(func_callback),NULL); 

	pt->runAction(action);

	this->addChild(progressbg,1);
	this->addChild(lblProgress, 2);
	this->addChild(pt,3);*/
	
	initMainScence();
}

void HelloWorld::actionCallback(int status,Response response)
{
	log("Payment SDK callback End");
    /*CP根据自己的业务逻辑处理支付成功、失败
     * 但是不应该等待支付结果而锁住屏幕
     * 好的体验应该是支付界面退出游戏继续进行
	*/
	if (response.type == LISTENER_TYPE_INIT)
	{
		int len = strlen("Initialize successful");
		char *tradeId = new char[len + 1];
		strcpy(tradeId,"Initialize successful");

		NotificationHandler::postNotificationOnMainThread(MESSAGE_NOTIFICATION,(Ref*)tradeId);
	}
	else if (response.type == LISTENER_TYPE_PAY)
	{
		log(response.data);
		Json::Reader reader;
		Json::Value root;
		if (!reader.parse(response.data, root, false))
		{
			log("parse result occur error!");
		}
		else
		{
			// parse the trade id form Json data.
			int len = strlen(root["TRADE_ID"].asString().c_str());
			char *tradeId = new char[len + 1];
			strcpy(tradeId,root["TRADE_ID"].asString().c_str());

			NotificationHandler::postNotificationOnMainThread(MESSAGE_NOTIFICATION,(Ref*)tradeId);
			log(tradeId);
		}
	}
}

void HelloWorld::errorCallback(int error,const char* message)
{
	log(message);
	/*CP根据自己的业务逻辑处理支付成功、失败
	 * 但是不应该等待支付结果而锁住屏幕
	 * 好的体验应该是支付界面退出游戏继续进行
	*/
}

void HelloWorld::onEnter()
{
	Layer::onEnter();
	NotificationCenter::getInstance()->addObserver(this,callfuncO_selector(HelloWorld::getNotification),MESSAGE_NOTIFICATION,NULL);
}

void HelloWorld::onExit()
{
	Layer::onExit();

	NotificationCenter::getInstance()->removeObserver(this,MESSAGE_NOTIFICATION);
	#if(CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID)
		sdk->exitSDK();
	#endif
}



// on "init" you need to initialize your instance
bool HelloWorld::init()
{
	log("HelloWorld::init");
    //////////////////////////////
    // 1. super init first
    if ( !Layer::init() )
    {
        return false;
    }
    

    if (sdk == NULL)
    	sdk = new NineGamePaymentSDK();

    log("HelloWorld::new sdk");
    Size visibleSize = Director::getInstance()->getVisibleSize();
    Vec2 origin = Director::getInstance()->getVisibleOrigin();

    /////////////////////////////
    // 2. add a menu item with "X" image, which is clicked to quit the program
    //    you may modify it.

    // add a "close" icon to exit the progress. it's an autorelease object
    /*auto closeItem = MenuItemImage::create(
                                           "CloseNormal.png",
                                           "CloseSelected.png",
                                           CC_CALLBACK_1(HelloWorld::menuCloseCallback, this));
    
    Size frameSize = Director::getInstance()->getOpenGLView()->getFrameSize(); //屏幕分辨率
    float coin_scale_rate = (float) (frameSize.width / 1280.0) * 1.5;
    closeItem->setScale(coin_scale_rate);
	closeItem->setPosition(Vec2(origin.x + visibleSize.width - closeItem->getContentSize().width/2 * coin_scale_rate ,
                                origin.y + closeItem->getContentSize().height/2 * coin_scale_rate));

    // create menu, it's an autorelease object
    auto menu = Menu::create(closeItem, NULL);
    menu->setPosition(Vec2::ZERO);
    this->addChild(menu, 1);*/

    // add "HelloWorld" splash screen"
    sprite = Sprite::create("Muxin.png");

	auto func = [&]()
	{
		if (sprite)
		{
			sprite->removeFromParent();
		}

		addProgress();
	};

 	FiniteTimeAction *actionF = CallFunc::create(func);
 	FiniteTimeAction *action = Sequence::create(DelayTime::create(2.f), actionF,NULL);	
    sprite->setPosition(Vec2(visibleSize.width/2 + origin.x, visibleSize.height/2 + origin.y));

    // add the sprite as a child to this layer
    this->addChild(sprite, 0);
    sprite->runAction(action);
    log("HelloWorld::end");
    return true;
}

void HelloWorld::mainItemCallback(cocos2d::Ref* pSender)
{
	log("item click");

	MenuItemImage* pMenuItem = dynamic_cast<MenuItemImage*>(pSender);
    if (pMenuItem) {
        if (pMenuItem->getTag() == KBuyTag){
			log("coin item click");

        }
		else if (pMenuItem->getTag() == KBuyItemsTag)
		{
			log("items item click");
		}
	}
	#if(CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID)
			map<int, string> parameters;
			//必选参数
			parameters.insert(pair<int, string>(APP_NAME, "ugp-cocos2dx-demo")); //应用名
			parameters.insert(pair<int, string>(PRODUCT_NAME, "productname1")); //商品名称
			parameters.insert(pair<int, string>(AMOUNT, "1")); //商品价格
			//可选参数
			long orderID = time((time_t*)NULL);
			stringstream ss;
			ss << orderID;
			string str = ss.str();
			parameters.insert(pair<int, string>(CP_ORDER_ID, str)); // 订单号，必须唯一
			//parameters.insert(pair<int, string>(ATTACH_INFO, "xxx")); //附加信息
			//parameters.insert(pair<int, string>(NOTIFY_URL, "http://xxx")); //订单服务器通知地址(非运营商支付)
			//运营商支付的paycode由CP实现，接入运营商支付必传
			sdk->pay(parameters,&HelloWorld::actionCallback,&HelloWorld::errorCallback);
	#endif
}


void HelloWorld::menuCloseCallback(Ref* pSender)
{
    Director::getInstance()->end();

#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
    exit(0);
#endif
}


