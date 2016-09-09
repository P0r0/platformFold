.class public Lcom/u8/sdk/EGameSDK;
.super Ljava/lang/Object;
.source "EGameSDK.java"


# static fields
.field private static instance:Lcom/u8/sdk/EGameSDK;


# instance fields
.field private billsDic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/u8/sdk/PayParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/EGameSDK;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/u8/sdk/EGameSDK;->billsDic:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/u8/sdk/EGameSDK;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/u8/sdk/EGameSDK;->instance:Lcom/u8/sdk/EGameSDK;

    if-nez v0, :cond_b

    .line 22
    new-instance v0, Lcom/u8/sdk/EGameSDK;

    invoke-direct {v0}, Lcom/u8/sdk/EGameSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/EGameSDK;->instance:Lcom/u8/sdk/EGameSDK;

    .line 24
    :cond_b
    sget-object v0, Lcom/u8/sdk/EGameSDK;->instance:Lcom/u8/sdk/EGameSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 4

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/u8/sdk/EGameSDK;->billsDic:Ljava/util/HashMap;

    .line 38
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/egame/terminal/paysdk/EgamePay;->init(Landroid/app/Activity;)V

    .line 39
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "init success"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 40
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 33
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 3

    .prologue
    .line 107
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/EGameSDK$2;

    invoke-direct {v1, p0}, Lcom/u8/sdk/EGameSDK$2;-><init>(Lcom/u8/sdk/EGameSDK;)V

    invoke-static {v0, v1}, Lcn/egame/terminal/paysdk/EgamePay;->exit(Landroid/app/Activity;Lcn/egame/terminal/paysdk/EgameExitListener;)V

    .line 115
    return-void
.end method

.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/u8/sdk/EGameSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 29
    invoke-direct {p0}, Lcom/u8/sdk/EGameSDK;->initSDK()V

    .line 30
    return-void
.end method

.method public login()V
    .registers 1

    .prologue
    .line 44
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 6
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v0, "hashParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getEgameCode()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "payCode":Ljava/lang/String;
    const-string v2, "toolsAlias"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v2, "priority"

    const-string v3, "sms"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v2, p0, Lcom/u8/sdk/EGameSDK;->billsDic:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 52
    iget-object v2, p0, Lcom/u8/sdk/EGameSDK;->billsDic:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_22
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/u8/sdk/EGameSDK$1;

    invoke-direct {v3, p0}, Lcom/u8/sdk/EGameSDK$1;-><init>(Lcom/u8/sdk/EGameSDK;)V

    invoke-static {v2, v0, v3}, Lcn/egame/terminal/paysdk/EgamePay;->pay(Landroid/app/Activity;Ljava/util/Map;Lcn/egame/terminal/paysdk/EgamePayListener;)V

    .line 103
    return-void
.end method
