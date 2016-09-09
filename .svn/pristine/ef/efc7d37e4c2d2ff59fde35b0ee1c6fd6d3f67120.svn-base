.class public final Lcom/baidu/gamesdk/BDGameSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/gamesdk/BDGameSDK;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 46
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static closeFloatView(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 187
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/c;->a()V

    .line 188
    return-void
.end method

.method public static destroy()V
    .registers 1

    .prologue
    .line 114
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/c;->b(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->b(Landroid/content/Context;)V

    .line 117
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->f()V

    .line 118
    return-void
.end method

.method public static gameExit(Landroid/content/Context;Lcom/baidu/gamesdk/OnGameExitListener;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onGameExitListener"    # Lcom/baidu/gamesdk/OnGameExitListener;

    .prologue
    .line 253
    new-instance v0, Lcom/baidu/gamesdk/BDGameSDK$1;

    invoke-direct {v0, p1}, Lcom/baidu/gamesdk/BDGameSDK$1;-><init>(Lcom/baidu/gamesdk/OnGameExitListener;)V

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/c;->a(Landroid/content/Context;Lcom/duoku/platform/DkExitListener;)V

    .line 265
    return-void
.end method

.method public static getAnnouncementInfo(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 207
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/c;->b(Landroid/app/Activity;)V

    .line 208
    return-void
.end method

.method public static getLoginAccessToken()Ljava/lang/String;
    .registers 1

    .prologue
    .line 144
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginUid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 136
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Lcom/baidu/gamesdk/BDGameSDKSetting;Lcom/baidu/gamesdk/IResponse;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "setting"    # Lcom/baidu/gamesdk/BDGameSDKSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/baidu/gamesdk/BDGameSDKSetting;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "responser":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Ljava/lang/Void;>;"
    const-string v0, "BDGameSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-boolean v0, Lcom/baidu/gamesdk/BDGameSDK;->a:Z

    if-nez v0, :cond_28

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please call initApplication method in you Application frist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_28
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/gamesdk/BDGameSDKSetting;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/e;->a(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_44

    .line 75
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/e;->a(Landroid/content/Context;)V

    .line 77
    :cond_44
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/c;->a(Landroid/app/Activity;Lcom/baidu/gamesdk/BDGameSDKSetting;Lcom/baidu/gamesdk/IResponse;)V

    .line 78
    return-void
.end method

.method public static initApplication(Landroid/app/Application;)V
    .registers 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/e;->a(Landroid/app/Application;)V

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/gamesdk/BDGameSDK;->a:Z

    .line 43
    return-void
.end method

.method public static isLogined()Z
    .registers 1

    .prologue
    .line 129
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSupportScreenRecord(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/a;->h(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static login(Lcom/baidu/gamesdk/IResponse;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "responser":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    .line 106
    return-void
.end method

.method public static logout()V
    .registers 1

    .prologue
    .line 151
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method public static oldDKSdkSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "dkAppId"    # Ljava/lang/String;
    .param p1, "dkAppKey"    # Ljava/lang/String;

    .prologue
    .line 57
    sput-object p0, Lcom/baidu/bdgame/sdk/obf/b;->b:Ljava/lang/String;

    .line 58
    sput-object p1, Lcom/baidu/bdgame/sdk/obf/b;->c:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 223
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/a;->b(Landroid/app/Activity;)V

    .line 224
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 215
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/app/Activity;)V

    .line 216
    return-void
.end method

.method public static pay(Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z
    .registers 4
    .param p0, "payOrderInfo"    # Lcom/baidu/platformsdk/PayOrderInfo;
    .param p1, "debugCallbackUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            "Ljava/lang/String;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "responser":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Lcom/baidu/platformsdk/PayOrderInfo;>;"
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z

    move-result v0

    return v0
.end method

.method public static queryLoginUserAuthenticateState(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "callback":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Ljava/lang/Integer;>;"
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/a;->b(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)Z

    move-result v0

    return v0
.end method

.method public static queryPayOrderStatus(Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z
    .registers 3
    .param p0, "cpOrderSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Lcom/baidu/platformsdk/OrderStatus;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "responser":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Lcom/baidu/platformsdk/OrderStatus;>;"
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z

    move-result v0

    return v0
.end method

.method public static setSessionInvalidListener(Lcom/baidu/gamesdk/IResponse;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "response":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/e;->a(Lcom/baidu/gamesdk/IResponse;)V

    .line 96
    return-void
.end method

.method public static setSuspendWindowChangeAccountListener(Lcom/baidu/gamesdk/IResponse;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "changeAccountResponser":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/baidu/bdgame/sdk/obf/c;->a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    .line 87
    return-void
.end method

.method public static showFloatView(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 198
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/c;->a(Landroid/app/Activity;)V

    .line 199
    return-void
.end method
