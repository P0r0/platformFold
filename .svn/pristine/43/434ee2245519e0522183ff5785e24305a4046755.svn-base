.class public Lcom/baidu/bdgame/sdk/obf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/a$g;,
        Lcom/baidu/bdgame/sdk/obf/a$a;,
        Lcom/baidu/bdgame/sdk/obf/a$f;,
        Lcom/baidu/bdgame/sdk/obf/a$c;,
        Lcom/baidu/bdgame/sdk/obf/a$e;,
        Lcom/baidu/bdgame/sdk/obf/a$d;,
        Lcom/baidu/bdgame/sdk/obf/a$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static a(Lcom/baidu/gamesdk/BDGameSDKSetting;)Lcom/baidu/platformsdk/BDPlatformSetting;
    .registers 4

    .prologue
    .line 47
    new-instance v0, Lcom/baidu/platformsdk/BDPlatformSetting;

    invoke-direct {v0}, Lcom/baidu/platformsdk/BDPlatformSetting;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->getAppID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/BDPlatformSetting;->setAppID(I)V

    .line 49
    invoke-virtual {p0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/BDPlatformSetting;->setAppKey(Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;->DEBUG:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    invoke-virtual {p0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->getDomain()Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 51
    sget-object v1, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/BDPlatformSetting;->setDomain(Lcom/baidu/platformsdk/BDPlatformSetting$Domain;)V

    .line 55
    :goto_24
    sget-object v1, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->PORTRAIT:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    invoke-virtual {p0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->getOrientation()Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/BDPlatformSetting;->setOrientation(I)V

    .line 60
    :goto_34
    return-object v0

    .line 53
    :cond_35
    sget-object v1, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_ONLINE:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/BDPlatformSetting;->setDomain(Lcom/baidu/platformsdk/BDPlatformSetting$Domain;)V

    goto :goto_24

    .line 58
    :cond_3b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/BDPlatformSetting;->setOrientation(I)V

    goto :goto_34
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 225
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/k;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 408
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 409
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/app/Activity;)V

    .line 411
    :cond_11
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 203
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->e(Landroid/content/Context;)Z

    .line 205
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 403
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;I)V

    .line 404
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/baidu/gamesdk/IResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/a$b;->a(Landroid/content/Context;ILcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/a$b;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 138
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->i(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 125
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/gamesdk/BDGameSDKSetting;)V
    .registers 5

    .prologue
    .line 64
    const-string v0, "BDPlaform"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/a;->a(Lcom/baidu/gamesdk/BDGameSDKSetting;)Lcom/baidu/platformsdk/BDPlatformSetting;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Lcom/baidu/platformsdk/BDPlatformSetting;)V

    .line 66
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/a;->b()V

    .line 67
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/a;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 179
    const-string v0, "bd_game_sdkversion_invalid_desc"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/k;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/h;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v1, "login"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v1, -0x15

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 185
    :goto_25
    return-void

    .line 184
    :cond_26
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/a$d;->a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/a$d;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    goto :goto_25
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 399
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Z)V

    .line 400
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            "Ljava/lang/String;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 269
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/a$c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/a$c;-><init>(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)V

    invoke-virtual {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    .line 270
    const/4 v0, 0x1

    .line 273
    :goto_1d
    return v0

    :cond_1e
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/a$e;->a(Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/a$e;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_1d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Lcom/baidu/platformsdk/OrderStatus;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 356
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/a$f;->a(Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/a$f;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    return v0
.end method

.method private static b()V
    .registers 3

    .prologue
    .line 70
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/c;->b()Lcom/duoku/platform/bean/SynLoginUserInfo;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/duoku/platform/bean/SynLoginUserInfo;->getDktoken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 73
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/bean/SynLoginUserInfo;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/duoku/platform/bean/SynLoginUserInfo;->getDktoken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1f
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 414
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 415
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/app/Activity;)V

    .line 417
    :cond_11
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 208
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->n(Landroid/content/Context;)V

    .line 209
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;Z)V

    .line 210
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)Z
    .registers 4
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
    .line 462
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/a$g;->a(Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/o;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 213
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 320
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->p(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 324
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/r;->a(Landroid/content/Context;Lcom/baidu/platformsdk/BDPlatformUser;)V

    .line 325
    return-void
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 432
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->q(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static i(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 190
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "BDGameVersion"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 192
    :cond_2c
    const-string v0, "bd_game_sdkversion_invalid"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_3a} :catch_3c

    move v0, v1

    .line 198
    :cond_3b
    :goto_3b
    return v0

    .line 196
    :catch_3c
    move-exception v0

    .line 197
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v1

    .line 198
    goto :goto_3b
.end method
