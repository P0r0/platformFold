.class public Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final MESSAGE_FAILED:I = 0x2

.field private static final MESSAGE_SUCCESS:I = 0x1

.field private static final MESSAGE_VOTE_SUCCESS:I = 0x3

.field public static activeurl:Ljava/lang/String;

.field public static defaulturl:Ljava/lang/String;

.field public static defaulturl1:Ljava/lang/String;

.field public static defaulturl2:Ljava/lang/String;

.field public static defaulturl3:Ljava/lang/String;

.field public static defaulturl4:Ljava/lang/String;

.field public static forumurl:Ljava/lang/String;

.field public static giftpackageurl:Ljava/lang/String;

.field public static gifturl:Ljava/lang/String;

.field public static mActivity:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

.field public static url:Ljava/lang/String;


# instance fields
.field private final MSG_POSTROLE_INFO_SUCCESS:I

.field public final TAG:Ljava/lang/String;

.field private bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field height:I

.field private isTitleShow:Z

.field isToolBarShow:Z

.field m:Landroid/widget/TextView;

.field private mApprovalCnt:Ljava/lang/String;

.field private mAssistWindowManager:Lcom/vivo/assist/AssistWindowManager;

.field mClipboardManager:Landroid/content/ClipboardManager;

.field public mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoadBar:Landroid/widget/RelativeLayout;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field public mPkgName:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarHandler:Landroid/os/Handler;

.field private mStrategyContent:Ljava/lang/String;

.field private mStrategyId:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mTitleTextView:Landroid/widget/TextView;

.field mTitleViewLayout:Landroid/widget/RelativeLayout;

.field private mToolBarLayout:Landroid/widget/LinearLayout;

.field private mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

.field private mWebViewLayout:Landroid/widget/RelativeLayout;

.field mWebviewbackwardportraitlayout:Landroid/widget/TextView;

.field mWebviewforwardportraitlayout:Landroid/widget/TextView;

.field mWebviewhomeportraitlayout:Landroid/widget/TextView;

.field mWebviewrefreshportraitlayout:Landroid/widget/TextView;

.field private titleRightBtn:Landroid/widget/Button;

.field private titleRightBtnLayout:Landroid/widget/LinearLayout;

.field x1:F

.field x2:F

.field y1:F

.field y2:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "http://113.98.231.125:1200/h5/mygift.html"

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    const-string v0, "http://hf.gamecenter.vivo.com.cn/h5/activityList.html"

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->activeurl:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl1:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl2:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl3:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl4:Ljava/lang/String;

    const-string v0, "http://hf.gamecenter.vivo.com.cn/h5/mygift.html"

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->gifturl:Ljava/lang/String;

    const-string v0, "http://hf.gamecenter.vivo.com.cn/h5/gift-certificate.html"

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->giftpackageurl:Ljava/lang/String;

    const-string v0, "http://mbbs.g.vivo.com.cn/mvc/modulebbs?origin=555&packName="

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->forumurl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    const-string v0, "AccountAssistWebViewActivity"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->TAG:Ljava/lang/String;

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->x1:F

    iput v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->x2:F

    iput v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->y1:F

    iput v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->y2:F

    const-string v0, "\u4e2a\u4eba\u4e2d\u5fc3"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mStrategyId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mStrategyContent:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mApprovalCnt:Ljava/lang/String;

    const/16 v0, 0xd

    iput v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->MSG_POSTROLE_INFO_SUCCESS:I

    new-instance v0, Lcom/vivo/sdkplugin/activity/a;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/a;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/activity/c;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/c;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mProgressBarHandler:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/activity/d;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/d;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isToolBarShow:Z

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isTitleShow:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->height:I

    return-void
.end method

.method static synthetic access$0(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/Utils/VivoWebView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mStrategyContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mStrategyId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mStrategyContent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->resetWebviewMarginTop()V

    return-void
.end method

.method static synthetic access$15(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->setWebviewMarginTop()V

    return-void
.end method

.method static synthetic access$2(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;Lcom/vivo/assist/AssistWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mAssistWindowManager:Lcom/vivo/assist/AssistWindowManager;

    return-void
.end method

.method static synthetic access$3(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/assist/AssistWindowManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mAssistWindowManager:Lcom/vivo/assist/AssistWindowManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mLoadBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->requestStrategyDetail()V

    return-void
.end method

.method static synthetic access$7(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Ljava/util/Map;
    .registers 2

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getClientrequestGamedynamicInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mStrategyId:Ljava/lang/String;

    return-void
.end method

.method private getClientrequestGamedynamicInfo()Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "av"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_29
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "model"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "openid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getMainToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "g;a"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendGreneralInfomation(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_CLIENTREQUEST_GAMEDYNAMIC_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/k;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/k;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_6d
    move-object v0, v2

    goto :goto_29
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    :goto_10
    return v0

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_10
.end method

.method private hidePortTitle()V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isTitleShow:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitleViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {v1, v2, v2, v2, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/j;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/j;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitleViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isTitleShow:Z

    :cond_2b
    return-void
.end method

.method private hideToolBar()V
    .registers 7

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isToolBarShow:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mToolBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v0

    invoke-direct {v2, v4, v4, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mToolBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-------hideToolBar() enter ---------height: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " screenHeight: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isToolBarShow:Z

    :cond_4a
    return-void
.end method

.method private init()V
    .registers 9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mPkgName:Ljava/lang/String;

    sput-object p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mActivity:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "webview"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/Utils/VivoWebView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_webview_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "progress_bar"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mLoadBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "loading_web_progress_bar"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/WebChrome;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mProgressBarHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/WebChrome;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "tool_bar_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mToolBarLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_23d

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mToolBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "title_view_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitleViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "title"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "webview_backward_portrait_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebviewbackwardportraitlayout:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "webview_forward_portrait_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebviewforwardportraitlayout:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "webview_refresh_portrait_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebviewrefreshportraitlayout:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "webview_home_portrait_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebviewhomeportraitlayout:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->titleRightBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->titleRightBtn:Landroid/widget/Button;

    :cond_132
    :goto_132
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebviewbackwardportraitlayout:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebviewforwardportraitlayout:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebviewrefreshportraitlayout:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebviewhomeportraitlayout:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->titleRightBtn:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/e;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/e;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->titleRightBtnLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/f;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/f;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity$JsInterface;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    const-string v2, "vivoaccount"

    invoke-virtual {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v0, v5}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->clearCache(Z)V

    const-string v0, "AccountAssistWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIntent()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tab"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f6

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u793c\u5305"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30c

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->gifturl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?vercode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "5.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    const-string v0, "\u793c\u5305"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitle:Ljava/lang/String;

    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->setCookies(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1f6
    :goto_1f6
    const-string v0, "AccountAssistWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_21a

    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_454

    :cond_21a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    const-string v1, "file:///android_asset/offline.html"

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->loadUrl(Ljava/lang/String;)V

    :goto_221
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/g;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/g;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->setOnCustomScroolChangeListener(Lcom/vivo/sdkplugin/Utils/VivoWebView$ScrollInterface;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/h;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/h;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_23c
    return-void

    :cond_23d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_132

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "title_view_layout_land"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitleViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "title_land"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "title_view_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mToolBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitleViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "webview_backward_land_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebviewbackwardportraitlayout:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "webview_forward_land_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebviewforwardportraitlayout:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "webview_refresh_land_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebviewrefreshportraitlayout:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "webview_home_land_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebviewhomeportraitlayout:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->titleRightBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn_land"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->titleRightBtn:Landroid/widget/Button;

    goto/16 :goto_132

    :cond_30c
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6d3b\u52a8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_346

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->activeurl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?vercode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "5.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    const-string v0, "\u6d3b\u52a8"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitle:Ljava/lang/String;

    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->setCookies(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1f6

    :cond_346
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8bba\u575b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_386

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->forumurl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&vercode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "5.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    const-string v0, "\u8bba\u575b"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitle:Ljava/lang/String;

    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->setCookies(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1f6

    :cond_386
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u793c\u5238"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->giftpackageurl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?vercode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "5.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    const-string v0, "\u793c\u5238"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitle:Ljava/lang/String;

    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->setGiftCookies(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1f6

    :cond_3c0
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u653b\u7565"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3dc

    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->giftpackageurl:Ljava/lang/String;

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    const-string v0, "\u653b\u7565"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitle:Ljava/lang/String;

    goto/16 :goto_1f6

    :cond_3dc
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f6

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tab"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_48e

    :goto_417
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tab"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitle:Ljava/lang/String;

    goto/16 :goto_1f6

    :pswitch_43b
    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl:Ljava/lang/String;

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    goto :goto_417

    :pswitch_440
    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl1:Ljava/lang/String;

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    goto :goto_417

    :pswitch_445
    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl2:Ljava/lang/String;

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    goto :goto_417

    :pswitch_44a
    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl3:Ljava/lang/String;

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    goto :goto_417

    :pswitch_44f
    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->defaulturl4:Ljava/lang/String;

    sput-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    goto :goto_417

    :cond_454
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u653b\u7565"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_484

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mStrategyId:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mStrategyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47f

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->finish()V

    goto/16 :goto_23c

    :cond_47f
    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->requestStrategyDetail()V

    goto/16 :goto_221

    :cond_484
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    sget-object v1, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_221

    nop

    :pswitch_data_48e
    .packed-switch 0x6
        :pswitch_43b
        :pswitch_440
        :pswitch_445
        :pswitch_44a
        :pswitch_44f
    .end packed-switch
.end method

.method private isUrl(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "www"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isWebviewInBottom()Z
    .registers 6

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    const-string v2, "AccountAssistWebViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "webviewHeight: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contentHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float v0, v0, v1

    if-nez v0, :cond_40

    const/4 v0, 0x1

    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method private isWebviewInTop()Z
    .registers 4

    const-string v0, "AccountAssistWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scollY: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private requestStrategyDetail()V
    .registers 5

    const-string v0, "AccountAssistWebViewActivity"

    const-string v1, "%%%%%%%requestStrategyDetail%%%%%%%"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/sdkplugin/activity/i;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/i;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    invoke-static {p0}, Lcom/huanju/data/HjDataClient;->getInstance(Landroid/content/Context;)Lcom/huanju/data/HjDataClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mStrategyId:Ljava/lang/String;

    sget-object v3, Lcom/huanju/data/content/raw/HjRequestFrom;->hj_gamedetial:Lcom/huanju/data/content/raw/HjRequestFrom;

    invoke-virtual {v1, v0, v2, v3}, Lcom/huanju/data/HjDataClient;->requestInfoDetail(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjRequestFrom;)V

    return-void
.end method

.method private resetWebviewMarginTop()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setWebviewMarginTop()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitleViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->height:I

    const-string v0, "AccountAssistWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------------height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->height:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showPortTitle()V
    .registers 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isTitleShow:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitleViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {v1, v2, v2, v0, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/b;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/b;-><init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mTitleViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v4, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isTitleShow:Z

    :cond_2a
    return-void
.end method

.method private showToolBar()V
    .registers 8

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isToolBarShow:Z

    if-nez v0, :cond_4e

    const-string v0, "-------showToolBar() enter ---------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mToolBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v0

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mToolBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-------showToolBar() enter ---------height: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " screenHeight: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isToolBarShow:Z

    :cond_4e
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "AccountAssistWebViewActivity"

    const-string v1, "-----------onCreate()---------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->setOritation(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_webview_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->init()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_65

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getUrl()Ljava/lang/String;

    const-string v0, "AccountAssistWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWebView.getUrl()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mWebView.canGoBack()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->canGoBack()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->goBack()V

    const/4 v0, 0x1

    :goto_64
    return v0

    :cond_65
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_64
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    const-string v0, "AccountAssistWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScroll"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public setCookies(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    const/4 v1, 0x0

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_154

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_28
    const-string v0, "012345678987654"

    :cond_2a
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v6, "status "

    const-string v7, "1"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "pkgName"

    iget-object v7, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "imei"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_48
    const-string v0, "model"

    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_48 .. :try_end_53} :catch_115

    :goto_53
    const-string v0, "elapsedtime"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_version"

    const-string v1, "30"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "from"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ec"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getEmmcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "n"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "r"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getMainToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getMainToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "k"

    invoke-static {v0}, Lcom/vivo/md5/Wave;->getM2(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/vivo/md5/Wave;->getM2(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-virtual {v2, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f2

    invoke-virtual {p0, p0, p2}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->setCookies(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f2
    const-string v0, "AccountAssistWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mWebView"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_115
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_53

    :cond_11b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    goto/16 :goto_c6

    :cond_154
    move-object v0, v1

    goto/16 :goto_1a
.end method

.method public setGiftCookies(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    const/4 v1, 0x0

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_13c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_28
    const-string v0, "012345678987654"

    :cond_2a
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v6, "status "

    const-string v7, "1"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "imei"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p"

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v6}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "av"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cs"

    const-string v6, "0"

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "elapsedtime"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_version"

    const-string v1, "30"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "n"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "q"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a6

    const-string v1, ""

    if-eq v0, v1, :cond_a6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "has "

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a6
    const-string v0, "r"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getMainToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_104

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/vivo/md5/Wave;->getM2(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AccountAssistWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mWebView"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void

    :cond_104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_be

    :cond_13c
    move-object v0, v1

    goto/16 :goto_1a
.end method
