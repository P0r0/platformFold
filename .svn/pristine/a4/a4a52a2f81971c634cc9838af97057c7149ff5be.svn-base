.class public Lcom/gionee/game/offlinesdk/common/GamePayer;
.super Ljava/lang/Object;
.source "GamePayer.java"


# static fields
.field private static sAmigoPayer:Lcom/gionee/gsp/AmigoPayer;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/common/GamePayer;->mActivity:Landroid/app/Activity;

    .line 28
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/common/GamePayer;->initAmigoPayer()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/gionee/game/offlinesdk/common/GamePayer;Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/common/GamePayer;
    .param p1, "x1"    # Lcom/gionee/game/offlinesdk/PayCallback;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/gionee/game/offlinesdk/common/GamePayer;->dealResult(Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/gionee/game/offlinesdk/common/GamePayer;Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/common/GamePayer;
    .param p1, "x1"    # Lcom/gionee/game/offlinesdk/PayCallback;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/gionee/game/offlinesdk/common/GamePayer;->dealResult(Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/gionee/game/offlinesdk/common/GamePayer;Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;ILjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/common/GamePayer;
    .param p1, "x1"    # Lcom/gionee/gsp/GnOrderInfo;
    .param p2, "x2"    # Lcom/gionee/game/offlinesdk/PayCallback;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gionee/game/offlinesdk/common/GamePayer;->payInner(Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;ILjava/lang/String;)V

    return-void
.end method

.method private dealResult(Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "payCallback"    # Lcom/gionee/game/offlinesdk/PayCallback;
    .param p2, "stateCode"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p2}, Lcom/gionee/game/offlinesdk/ErrorCode;->getErrorDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "description":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/gionee/game/offlinesdk/common/GamePayer;->dealResult(Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private dealResult(Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "payCallback"    # Lcom/gionee/game/offlinesdk/PayCallback;
    .param p2, "stateCode"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePayer$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/gionee/game/offlinesdk/common/GamePayer$3;-><init>(Lcom/gionee/game/offlinesdk/common/GamePayer;Ljava/lang/String;Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->post(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method private initAmigoPayer()V
    .registers 3

    .prologue
    .line 32
    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePayer;->sAmigoPayer:Lcom/gionee/gsp/AmigoPayer;

    if-nez v0, :cond_d

    .line 33
    new-instance v0, Lcom/gionee/gsp/AmigoPayer;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/common/GamePayer;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/gionee/gsp/AmigoPayer;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/gionee/game/offlinesdk/common/GamePayer;->sAmigoPayer:Lcom/gionee/gsp/AmigoPayer;

    .line 35
    :cond_d
    return-void
.end method

.method private payInner(Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;ILjava/lang/String;)V
    .registers 11
    .param p1, "orderInfo"    # Lcom/gionee/gsp/GnOrderInfo;
    .param p2, "payCallback"    # Lcom/gionee/game/offlinesdk/PayCallback;
    .param p3, "payMethod"    # I
    .param p4, "userId"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v3, Lcom/gionee/game/offlinesdk/common/GamePayer$2;

    sget-object v0, Lcom/gionee/game/offlinesdk/common/GamePayer;->sAmigoPayer:Lcom/gionee/gsp/AmigoPayer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, p0, v0, p2}, Lcom/gionee/game/offlinesdk/common/GamePayer$2;-><init>(Lcom/gionee/game/offlinesdk/common/GamePayer;Lcom/gionee/gsp/AmigoPayer;Lcom/gionee/game/offlinesdk/PayCallback;)V

    .line 98
    .local v3, "myPayCallback":Lcom/gionee/gsp/AmigoPayer$MyPayCallback;
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstance()Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/common/GamePayer;->mActivity:Landroid/app/Activity;

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->pay(Landroid/app/Activity;Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/gsp/AmigoPayer$MyPayCallback;ILjava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method public pay(Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 12
    .param p1, "orderInfo"    # Lcom/gionee/game/offlinesdk/OrderInfo;
    .param p2, "payCallback"    # Lcom/gionee/game/offlinesdk/PayCallback;

    .prologue
    const/4 v4, 0x0

    .line 38
    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/common/GamePayer;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 39
    .local v3, "dialog":Landroid/app/ProgressDialog;
    const-string v1, "\u6b63\u5728\u521b\u5efa\u8ba2\u5355..."

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 41
    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 42
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 45
    :try_start_16
    new-instance v2, Lcom/gionee/gsp/standalone/CreateOrderForStandalone;

    invoke-direct {v2}, Lcom/gionee/gsp/standalone/CreateOrderForStandalone;-><init>()V

    .line 46
    .local v2, "order":Lcom/gionee/gsp/standalone/CreateOrderForStandalone;
    invoke-virtual {p1}, Lcom/gionee/game/offlinesdk/OrderInfo;->getCpOrderNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/gionee/gsp/standalone/CreateOrderForStandalone;->setOutOrderNo(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/gionee/game/offlinesdk/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/gionee/gsp/standalone/CreateOrderForStandalone;->setSubject(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/gionee/game/offlinesdk/OrderInfo;->getTotalFee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/gionee/gsp/standalone/CreateOrderForStandalone;->setTotalFee(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/gionee/game/offlinesdk/OrderInfo;->getPayMethod()I

    move-result v5

    .line 51
    .local v5, "payMethod":I
    invoke-virtual {p1}, Lcom/gionee/game/offlinesdk/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "userId":Ljava/lang/String;
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/gionee/game/offlinesdk/common/GamePayer$1;-><init>(Lcom/gionee/game/offlinesdk/common/GamePayer;Lcom/gionee/gsp/standalone/CreateOrderForStandalone;Landroid/app/ProgressDialog;Lcom/gionee/game/offlinesdk/PayCallback;ILjava/lang/String;)V

    .line 76
    .local v0, "gnCreateOrderListener":Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getInstance()Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    move-result-object v1

    iget-object v4, p0, Lcom/gionee/game/offlinesdk/common/GamePayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4, v2, v0}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->createOrder(Landroid/app/Activity;Lcom/gionee/gsp/standalone/CreateOrderForStandalone;Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_48} :catch_49

    .line 81
    .end local v0    # "gnCreateOrderListener":Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;
    .end local v2    # "order":Lcom/gionee/gsp/standalone/CreateOrderForStandalone;
    .end local v5    # "payMethod":I
    .end local v6    # "userId":Ljava/lang/String;
    :goto_48
    return-void

    .line 77
    :catch_49
    move-exception v7

    .line 78
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pay exception:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "6002"

    invoke-direct {p0, p2, v1}, Lcom/gionee/game/offlinesdk/common/GamePayer;->dealResult(Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;)V

    goto :goto_48
.end method
