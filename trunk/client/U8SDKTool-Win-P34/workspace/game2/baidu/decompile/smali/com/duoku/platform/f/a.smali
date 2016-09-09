.class public final Lcom/duoku/platform/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/duoku/platform/util/k;

.field private b:Lorg/json/JSONObject;

.field private c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/duoku/platform/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    .line 32
    iput-object v1, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    .line 34
    iput-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    .line 39
    return-void
.end method

.method private h()Lorg/json/JSONObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/duoku/platform/g/b;

    invoke-direct {v0}, Lcom/duoku/platform/g/b;-><init>()V

    .line 45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    .line 46
    invoke-virtual {v0}, Lcom/duoku/platform/g/b;->h()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->f()Ljava/lang/String;

    move-result-object v2

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static {}, Lcom/duoku/platform/util/l;->a()Ljava/lang/String;

    move-result-object v4

    .line 53
    iget-object v5, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v6, "version"

    const-string v7, "3.7.1"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v5, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v6, "ua"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object v5, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v6, "os"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "android"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object v5, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v6, "gameversion"

    invoke-static {}, Lcom/duoku/platform/util/q;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object v5, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v6, "channel"

    invoke-static {}, Lcom/duoku/platform/util/q;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object v5, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v6, "connecttype"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v5, "imei"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v4, "appid"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "appkey"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "app_secret"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "sessionid"

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v2

    const-string v3, "91sessionId"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "udid"

    invoke-static {}, Lcom/duoku/platform/util/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "androidid"

    invoke-static {}, Lcom/duoku/platform/util/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "ipaddress"

    invoke-static {}, Lcom/duoku/platform/util/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "bdcuid"

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/StatSDKService;->getCuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "push_channelid"

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v2

    const-string v3, "push_channelid"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "push_userid"

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v2

    const-string v3, "push_userid"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    if-eqz v0, :cond_155

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_155

    .line 82
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_155

    .line 85
    iget-object v1, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v2, "bduss"

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    iget-object v1, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v2, "oauthid"

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduOAuthUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v1, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v2, "oauthtoken"

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduOAuthAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v1, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v2, "displayname"

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_155
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method private i()Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 884
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    .line 886
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    const-string v2, "sessionid"

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    iget-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    const-string v2, "duokuid"

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v3

    const-string v4, "dkuserid"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 889
    iget-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    const-string v2, "uid"

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduOAuthUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 891
    iget-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    const-string v2, "uname"

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 892
    iget-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    const-string v2, "displayname"

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 893
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 155
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 156
    const-string v2, "tag"

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    .line 166
    :goto_14
    return-object v0

    .line 159
    :catch_15
    move-exception v1

    .line 162
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 163
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public a(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 373
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 374
    const-string v2, "state_code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    .line 382
    :goto_f
    return-object v0

    .line 377
    :catch_10
    move-exception v1

    .line 380
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 332
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 333
    const-string v2, "tag"

    const/16 v3, 0x67

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v2, "logintype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v2, "baidu91sessionid"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_26} :catch_28

    move-result-object v0

    .line 345
    :goto_27
    return-object v0

    .line 339
    :catch_28
    move-exception v1

    .line 341
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 342
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 353
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 354
    const-string v2, "state_code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    const-string v2, "user_id"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v2, "user_name"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    const-string v2, "user_sessionid"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 365
    :goto_1e
    return-object v0

    .line 360
    :catch_1f
    move-exception v1

    .line 363
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    .prologue
    .line 916
    const/4 v1, 0x0

    .line 919
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->i()Lorg/json/JSONObject;

    move-result-object v0

    .line 920
    const-string v2, "quarry"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 921
    const-string v2, "lottaryid"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 922
    const-string v2, "cardid"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 923
    const-string v2, "title"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    const-string v2, "cost"

    invoke-virtual {v0, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 925
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_21} :catch_28

    move-result-object v0

    .line 927
    :try_start_22
    iget-object v1, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_27} :catch_39

    .line 934
    :goto_27
    return-object v0

    .line 929
    :catch_28
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 931
    :goto_2c
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 932
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_27

    .line 929
    :catch_39
    move-exception v1

    goto :goto_2c
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 216
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v2

    .line 217
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 219
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_4a

    .line 222
    invoke-virtual {v1}, Lcom/baidu/platformsdk/BDPlatformUser;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 223
    const-string v3, "tag"

    const/16 v4, 0x68

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v3, "sessionid"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v3, "statisticsid"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v3, "userid"

    if-nez v1, :cond_40

    const-string v1, ""

    :cond_40
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v1, "product_key"

    const-string v3, "opengame"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    :cond_4a
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_4d} :catch_4f

    move-result-object v0

    .line 239
    :goto_4e
    return-object v0

    .line 233
    :catch_4f
    move-exception v1

    .line 235
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 236
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 412
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 413
    const-string v2, "tag"

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v2, "bduserid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v2, "dkuserid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 423
    :goto_1e
    return-object v0

    .line 418
    :catch_1f
    move-exception v1

    .line 420
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 421
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 795
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 796
    const-string v2, "tag"

    const/16 v3, 0x3a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 797
    const-string v2, "messageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    const-string v2, "dkuserid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-string v2, "type"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 800
    const-string v2, "welfareinfo"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_29

    move-result-object v0

    .line 808
    :goto_28
    return-object v0

    .line 803
    :catch_29
    move-exception v1

    .line 805
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 806
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_28
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 256
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v2

    .line 257
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 259
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_59

    .line 262
    invoke-virtual {v1}, Lcom/baidu/platformsdk/BDPlatformUser;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 263
    const-string v3, "tag"

    const/16 v4, 0x68

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v3, "sessionid"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v3, "statisticsid"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v3, "userid"

    if-nez v1, :cond_40

    const-string v1, ""

    :cond_40
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v1, "product_key"

    const-string v3, "opengame"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v1, "push_title"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v1, "push_content"

    invoke-virtual {v2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    :cond_54
    :goto_54
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_58
    return-object v0

    .line 273
    :cond_59
    const-string v1, "tag"

    const/16 v3, 0x68

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v1, "statisticsid"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v1, "product_key"

    const-string v3, "opengame"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v1, "push_title"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v1, "push_content"

    invoke-virtual {v2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7a} :catch_7b

    goto :goto_54

    .line 283
    :catch_7b
    move-exception v1

    .line 285
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 286
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_58
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    .prologue
    .line 1058
    const/4 v0, 0x0

    .line 1062
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 1063
    const-string v2, "tag"

    const/16 v3, 0x258

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1064
    const-string v2, "userid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1065
    const-string v2, "logintype"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1066
    const-string v2, "accesstoken"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1067
    const-string v2, "screen_orient"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1068
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_2b} :catch_2d

    move-result-object v0

    .line 1075
    :goto_2c
    return-object v0

    .line 1070
    :catch_2d
    move-exception v1

    .line 1072
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1073
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 493
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 494
    const-string v2, "tag"

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string v2, "bduserid"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    const-string v2, "dkuserid"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    const-string v2, "msgcount"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_27} :catch_29

    move-result-object v0

    .line 506
    :goto_28
    return-object v0

    .line 501
    :catch_29
    move-exception v1

    .line 503
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 504
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_28
.end method

.method public b()Ljava/lang/String;
    .registers 5

    .prologue
    .line 591
    const/4 v0, 0x0

    .line 594
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 595
    const-string v2, "tag"

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 596
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    .line 603
    :goto_14
    return-object v0

    .line 598
    :catch_15
    move-exception v1

    .line 600
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 601
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public b(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 390
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 391
    const-string v2, "init_state"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 392
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    .line 398
    :goto_f
    return-object v0

    .line 394
    :catch_10
    move-exception v1

    .line 396
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 437
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 438
    const-string v2, "tag"

    const/16 v3, 0x4c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 447
    :goto_19
    return-object v0

    .line 442
    :catch_1a
    move-exception v1

    .line 444
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 445
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 464
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 465
    const-string v2, "tag"

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    const-string v2, "dkuserid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    const-string v2, "messageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 475
    :goto_1e
    return-object v0

    .line 470
    :catch_1f
    move-exception v1

    .line 472
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 473
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 998
    const/4 v0, 0x0

    .line 1001
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->i()Lorg/json/JSONObject;

    move-result-object v1

    .line 1002
    const-string v2, "gameid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1003
    const-string v2, "gamename"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1004
    const-string v2, "packagename"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1005
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_17} :catch_19

    move-result-object v0

    .line 1012
    :goto_18
    return-object v0

    .line 1007
    :catch_19
    move-exception v1

    .line 1009
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1010
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public c()Ljava/lang/String;
    .registers 5

    .prologue
    .line 818
    const/4 v0, 0x0

    .line 821
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 822
    const-string v2, "tag"

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    .line 830
    :goto_14
    return-object v0

    .line 825
    :catch_15
    move-exception v1

    .line 827
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 828
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 614
    const/4 v0, 0x0

    .line 617
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 618
    const-string v2, "tag"

    const/16 v3, 0x43

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 619
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 620
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 628
    :goto_19
    return-object v0

    .line 622
    :catch_1a
    move-exception v1

    .line 624
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 625
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 538
    const/4 v0, 0x0

    .line 542
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 543
    const-string v2, "tag"

    const/16 v3, 0x41

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 555
    :goto_1e
    return-object v0

    .line 548
    :catch_1f
    move-exception v1

    .line 551
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 552
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public d()Ljava/lang/String;
    .registers 5

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 843
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 844
    const-string v2, "tag"

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 845
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    .line 852
    :goto_14
    return-object v0

    .line 847
    :catch_15
    move-exception v1

    .line 849
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 850
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 717
    const/4 v0, 0x0

    .line 721
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 722
    const-string v2, "tag"

    const/16 v3, 0x45

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 732
    :goto_19
    return-object v0

    .line 726
    :catch_1a
    move-exception v1

    .line 728
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 729
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 569
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 570
    const-string v2, "tag"

    const/16 v3, 0x42

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 580
    :goto_1e
    return-object v0

    .line 575
    :catch_1f
    move-exception v1

    .line 577
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 578
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public e()Ljava/lang/String;
    .registers 5

    .prologue
    .line 862
    const/4 v0, 0x0

    .line 865
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 866
    const-string v2, "tag"

    const/16 v3, 0x259

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    .line 874
    :goto_14
    return-object v0

    .line 869
    :catch_15
    move-exception v1

    .line 871
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 872
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 742
    const/4 v0, 0x0

    .line 746
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 747
    const-string v2, "tag"

    const/16 v3, 0x4a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 748
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 757
    :goto_19
    return-object v0

    .line 751
    :catch_1a
    move-exception v1

    .line 753
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 754
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 638
    const/4 v0, 0x0

    .line 642
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 643
    const-string v2, "tag"

    const/16 v3, 0x47

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 654
    :goto_1e
    return-object v0

    .line 648
    :catch_1f
    move-exception v1

    .line 650
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 651
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public f()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1017
    const/4 v0, 0x0

    .line 1020
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->i()Lorg/json/JSONObject;

    move-result-object v1

    .line 1021
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 1028
    :goto_9
    return-object v0

    .line 1023
    :catch_a
    move-exception v1

    .line 1025
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1026
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 946
    const/4 v0, 0x0

    .line 949
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->i()Lorg/json/JSONObject;

    move-result-object v1

    .line 950
    const-string v2, "gameActivityId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 951
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v0

    .line 958
    :goto_e
    return-object v0

    .line 953
    :catch_f
    move-exception v1

    .line 955
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 956
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 664
    const/4 v0, 0x0

    .line 668
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 669
    const-string v2, "tag"

    const/16 v3, 0x48

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 670
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 681
    :goto_1e
    return-object v0

    .line 674
    :catch_1f
    move-exception v1

    .line 677
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 678
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public g()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1084
    const/4 v0, 0x0

    .line 1087
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 1088
    const-string v2, "dkuserid"

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v3

    const-string v4, "dkuserid"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1089
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 1091
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v2

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    .line 1092
    if-eqz v2, :cond_41

    .line 1094
    const-string v3, "username"

    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1097
    :cond_41
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_44} :catch_46

    move-result-object v0

    .line 1104
    :goto_45
    return-object v0

    .line 1099
    :catch_46
    move-exception v1

    .line 1101
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1102
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_45
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 970
    const/4 v0, 0x0

    .line 973
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->i()Lorg/json/JSONObject;

    move-result-object v1

    .line 974
    const-string v2, "giftbagId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 975
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v0

    .line 982
    :goto_e
    return-object v0

    .line 977
    :catch_f
    move-exception v1

    .line 979
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 980
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 695
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 696
    const-string v2, "tag"

    const/16 v3, 0x49

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 707
    :goto_1e
    return-object v0

    .line 701
    :catch_1f
    move-exception v1

    .line 703
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 704
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 1036
    const/4 v0, 0x0

    .line 1040
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 1041
    const-string v2, "tag"

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1042
    const-string v2, "identifyname"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1043
    const-string v2, "identifynumber"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1044
    const-string v2, "identifytype"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1045
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_23} :catch_25

    move-result-object v0

    .line 1052
    :goto_24
    return-object v0

    .line 1047
    :catch_25
    move-exception v1

    .line 1049
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_24
.end method
