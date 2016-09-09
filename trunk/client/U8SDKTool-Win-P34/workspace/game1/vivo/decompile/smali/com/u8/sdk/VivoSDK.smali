.class public Lcom/u8/sdk/VivoSDK;
.super Ljava/lang/Object;
.source "VivoSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/u8/sdk/VivoSDK$InitialPayTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/u8/sdk/VivoSDK;


# instance fields
.field private APP_ID:Ljava/lang/String;

.field private SIGN_KEY:Ljava/lang/String;

.field private STORE_ID:Ljava/lang/String;

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

.field mOnVivoPayResultListener:Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mVivoUnionManager:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string v0, "VivoPay"

    sput-object v0, Lcom/u8/sdk/VivoSDK;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/u8/sdk/VivoSDK;->mProgress:Landroid/app/ProgressDialog;

    .line 70
    new-instance v0, Lcom/u8/sdk/VivoSDK$1;

    invoke-direct {v0, p0}, Lcom/u8/sdk/VivoSDK$1;-><init>(Lcom/u8/sdk/VivoSDK;)V

    iput-object v0, p0, Lcom/u8/sdk/VivoSDK;->mOnVivoPayResultListener:Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/VivoSDK;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK;->billsDic:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/u8/sdk/VivoSDK;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/u8/sdk/VivoSDK;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/u8/sdk/VivoSDK;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/u8/sdk/VivoSDK;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/u8/sdk/VivoSDK;)Lcom/vivo/sdkplugin/aidl/VivoUnionManager;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK;->mVivoUnionManager:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/u8/sdk/VivoSDK;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/u8/sdk/VivoSDK;->showPayMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/u8/sdk/VivoSDK;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK;->STORE_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/u8/sdk/VivoSDK;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK;->APP_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/u8/sdk/VivoSDK;Ljava/util/Map;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/u8/sdk/VivoSDK;->generateSignature(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateSignature(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "param_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 176
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/u8/sdk/VivoSDK;->SIGN_KEY:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/u8/sdk/VivoSignUtils;->getVivoSign(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    return-object v0
.end method

.method public static getInstance()Lcom/u8/sdk/VivoSDK;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/u8/sdk/VivoSDK;->instance:Lcom/u8/sdk/VivoSDK;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Lcom/u8/sdk/VivoSDK;

    invoke-direct {v0}, Lcom/u8/sdk/VivoSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/VivoSDK;->instance:Lcom/u8/sdk/VivoSDK;

    .line 46
    :cond_b
    sget-object v0, Lcom/u8/sdk/VivoSDK;->instance:Lcom/u8/sdk/VivoSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 4

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/u8/sdk/VivoSDK;->billsDic:Ljava/util/HashMap;

    .line 62
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK;->billsDic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 63
    new-instance v0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/u8/sdk/VivoSDK;->mVivoUnionManager:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    .line 64
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK;->mVivoUnionManager:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/u8/sdk/VivoSDK;->mOnVivoPayResultListener:Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->initVivoSinglePayment(Landroid/content/Context;Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V

    .line 66
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK;->mVivoUnionManager:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->singlePaymentInit(Landroid/content/Context;)V

    .line 67
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "init success"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 68
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 55
    const-string v0, "APP_ID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/VivoSDK;->APP_ID:Ljava/lang/String;

    .line 56
    const-string v0, "CPKEY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/VivoSDK;->SIGN_KEY:Ljava/lang/String;

    .line 57
    const-string v0, "CPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/VivoSDK;->STORE_ID:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private showPayMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK;->mVivoUnionManager:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->singlePaymentExit(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/u8/sdk/VivoSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 51
    invoke-direct {p0}, Lcom/u8/sdk/VivoSDK;->initSDK()V

    .line 52
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 5
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 103
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/u8/sdk/UtilTool;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 104
    .local v0, "isNetworkValid":Z
    if-eqz v0, :cond_1b

    .line 106
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/VivoSDK$2;

    invoke-direct {v2, p0, p1}, Lcom/u8/sdk/VivoSDK$2;-><init>(Lcom/u8/sdk/VivoSDK;Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 172
    :goto_1a
    return-void

    .line 170
    :cond_1b
    const-string v1, "\u672a\u8fde\u63a5\u5230\u7f51\u7edc"

    invoke-direct {p0, v1}, Lcom/u8/sdk/VivoSDK;->showPayMessage(Ljava/lang/String;)V

    goto :goto_1a
.end method
