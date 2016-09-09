.class public Lcom/u8/sdk/UnicomSDK;
.super Ljava/lang/Object;
.source "UnicomSDK.java"


# static fields
.field private static instance:Lcom/u8/sdk/UnicomSDK;


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

.field offlineListener:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/UnicomSDK;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/u8/sdk/UnicomSDK;->billsDic:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/u8/sdk/UnicomSDK;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/u8/sdk/UnicomSDK;->instance:Lcom/u8/sdk/UnicomSDK;

    if-nez v0, :cond_b

    .line 21
    new-instance v0, Lcom/u8/sdk/UnicomSDK;

    invoke-direct {v0}, Lcom/u8/sdk/UnicomSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/UnicomSDK;->instance:Lcom/u8/sdk/UnicomSDK;

    .line 23
    :cond_b
    sget-object v0, Lcom/u8/sdk/UnicomSDK;->instance:Lcom/u8/sdk/UnicomSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 4

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/u8/sdk/UnicomSDK;->billsDic:Ljava/util/HashMap;

    .line 37
    new-instance v0, Lcom/u8/sdk/UnicomSDK$1;

    invoke-direct {v0, p0}, Lcom/u8/sdk/UnicomSDK$1;-><init>(Lcom/u8/sdk/UnicomSDK;)V

    iput-object v0, p0, Lcom/u8/sdk/UnicomSDK;->offlineListener:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    .line 75
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "init success"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 76
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 32
    return-void
.end method


# virtual methods
.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/u8/sdk/UnicomSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 28
    invoke-direct {p0}, Lcom/u8/sdk/UnicomSDK;->initSDK()V

    .line 29
    return-void
.end method

.method public login()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 4
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 84
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/UnicomSDK$2;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/UnicomSDK$2;-><init>(Lcom/u8/sdk/UnicomSDK;Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method
