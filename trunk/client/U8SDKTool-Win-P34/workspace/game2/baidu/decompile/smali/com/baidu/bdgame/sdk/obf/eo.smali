.class public Lcom/baidu/bdgame/sdk/obf/eo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/baidu/bdgame/sdk/obf/es;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/es",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/es;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/es",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "BfbPayManager"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eo;->a:Ljava/lang/String;

    .line 34
    const-string v0, "1"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eo;->b:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eo;->c:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/eo;->e:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/eo;->d:Lcom/baidu/bdgame/sdk/obf/es;

    .line 60
    return-void
.end method

.method private a()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    const-string v1, "userType"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/eo;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 66
    const-string v1, "tokenValue"

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/eo;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduOAuthAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_2b
    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eo;->d:Lcom/baidu/bdgame/sdk/obf/es;

    if-nez v0, :cond_5

    .line 134
    :goto_4
    return-void

    .line 118
    :cond_5
    const-string v0, "BfbPayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    packed-switch p1, :pswitch_data_60

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eo;->d:Lcom/baidu/bdgame/sdk/obf/es;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/eo;->c:Landroid/content/Context;

    const-string v3, "bdp_passport_pay_submit"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V

    goto :goto_4

    .line 122
    :pswitch_30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eo;->d:Lcom/baidu/bdgame/sdk/obf/es;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/eo;->c:Landroid/content/Context;

    const-string v3, "bdp_passport_pay"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V

    goto :goto_4

    .line 125
    :pswitch_40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eo;->d:Lcom/baidu/bdgame/sdk/obf/es;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/eo;->c:Landroid/content/Context;

    const-string v3, "bdp_passport_pay_submit"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V

    goto :goto_4

    .line 128
    :pswitch_50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eo;->d:Lcom/baidu/bdgame/sdk/obf/es;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/eo;->c:Landroid/content/Context;

    const-string v3, "bdp_passport_pay_cancel"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V

    goto :goto_4

    .line 120
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_30
        :pswitch_40
        :pswitch_50
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 75
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/eo$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/eo$1;-><init>(Lcom/baidu/bdgame/sdk/obf/eo;Landroid/content/Context;)V

    .line 89
    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bx;)Lcom/baidu/bdgame/sdk/obf/bz;

    .line 90
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/es;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/es",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    const-class v1, Lcom/baidu/bdgame/sdk/obf/eo;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 45
    if-eqz p2, :cond_1e

    .line 46
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bdp_null_orderinfo"

    invoke-static {p0, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_29

    .line 53
    :cond_1e
    :goto_1e
    monitor-exit v1

    return-void

    .line 51
    :cond_20
    :try_start_20
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/eo;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/eo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/es;)V

    .line 52
    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/eo;->a(Landroid/content/Context;)V
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_29

    goto :goto_1e

    .line 44
    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/eo;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/eo;->b()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/eo;ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/eo;->a(ILjava/lang/String;)V

    return-void
.end method

.method private b()V
    .registers 6

    .prologue
    .line 93
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eo;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/eo;->e:Ljava/lang/String;

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/eo$2;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/eo$2;-><init>(Lcom/baidu/bdgame/sdk/obf/eo;)V

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/eo;->a()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/wallet/api/BaiduWallet;->doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    .line 105
    return-void
.end method
