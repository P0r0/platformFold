.class public final Lcom/unionpay/mobile/android/pro/views/u;
.super Lcom/unionpay/mobile/android/nocard/views/ao;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/ao;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/u;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/u;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/u;Lcom/unionpay/mobile/android/model/a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/u;->a(Lcom/unionpay/mobile/android/model/a;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/u;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/pro/views/u;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/u;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/u;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/u;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/u;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/pro/views/u;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/u;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/u;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Handler;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/u;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/uppay/PayActivity;

    const-class v1, Lcom/unionpay/mobile/android/hce/f;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    check-cast v0, Lcom/unionpay/mobile/android/hce/f;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/hce/f;->a(Landroid/os/Handler;)V

    :cond_15
    return-void
.end method

.method protected final c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bh:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/u;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/pro/views/u;->a(Ljava/lang/String;Z)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/u;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/uppay/PayActivity;

    const-class v1, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/unionpay/mobile/android/pro/views/v;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/pro/views/v;-><init>(Lcom/unionpay/mobile/android/pro/views/u;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method protected final u()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final v()V
    .registers 4

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/d;

    check-cast v0, Lcom/unionpay/mobile/android/hce/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/hce/c;->h()Landroid/content/ServiceConnection;

    move-result-object v0

    :try_start_18
    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/u;->d:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_6

    :catch_1e
    move-exception v0

    goto :goto_6

    :cond_20
    return-void
.end method
