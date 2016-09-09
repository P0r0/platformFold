.class public Lcom/baidu/bdgame/sdk/obf/er;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/i;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Lcom/baidu/bdgame/sdk/obf/es;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/es",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/es;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/es",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "UnionPayManager"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->a:Ljava/lang/String;

    .line 27
    const-string v0, "00"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->b:Ljava/lang/String;

    .line 29
    const-string v0, "success"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->c:Ljava/lang/String;

    .line 30
    const-string v0, "fail"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->d:Ljava/lang/String;

    .line 31
    const-string v0, "cancel"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->e:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/er;->g:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/er;->f:Lcom/baidu/bdgame/sdk/obf/es;

    .line 64
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/er;->h:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/es;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/es",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    const-class v1, Lcom/baidu/bdgame/sdk/obf/er;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 42
    if-eqz p2, :cond_1e

    .line 43
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bdp_null_orderinfo"

    invoke-static {p0, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_36

    .line 56
    :cond_1e
    :goto_1e
    monitor-exit v1

    return-void

    .line 48
    :cond_20
    :try_start_20
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/er;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/er;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/es;)V

    .line 51
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 52
    const-class v3, Lcom/baidu/platformsdk/AssistActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    invoke-static {v0}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 54
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_36

    goto :goto_1e

    .line 41
    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 115
    const-class v1, Lcom/unionpay/uppay/PayActivity;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/er;->g:Ljava/lang/String;

    const-string v5, "00"

    move-object v0, p1

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/unionpay/UPPayAssistEx;->startPayByJAR(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/er;->b(Landroid/app/Activity;)V

    .line 71
    return-void
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 78
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/er;->f:Lcom/baidu/bdgame/sdk/obf/es;

    if-nez v1, :cond_7

    .line 107
    :goto_6
    return v4

    .line 82
    :cond_7
    if-eqz p4, :cond_f

    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_17

    .line 83
    :cond_f
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/er;->f:Lcom/baidu/bdgame/sdk/obf/es;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V

    goto :goto_6

    .line 91
    :cond_17
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pay_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v1, "UnionPayManager"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    .line 95
    if-eqz v2, :cond_32

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 96
    :cond_32
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    .line 106
    :cond_34
    :goto_34
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/er;->f:Lcom/baidu/bdgame/sdk/obf/es;

    invoke-virtual {v2, v1, v0}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V

    goto :goto_6

    .line 98
    :cond_3a
    const-string v3, "fail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/er;->h:Landroid/content/Context;

    const-string v2, "bdp_passport_pay_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    goto :goto_34

    .line 101
    :cond_57
    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/er;->h:Landroid/content/Context;

    const-string v2, "bdp_passport_pay_cancel"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    goto :goto_34
.end method
