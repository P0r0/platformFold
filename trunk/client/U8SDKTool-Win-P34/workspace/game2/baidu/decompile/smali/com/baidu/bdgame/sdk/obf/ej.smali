.class public Lcom/baidu/bdgame/sdk/obf/ej;
.super Lcom/baidu/bdgame/sdk/obf/ey;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String; = "alipays://platformapi/startapp?appId=20000067&url="


# instance fields
.field private l:Lcom/baidu/bdgame/sdk/obf/ev;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ey;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ej;)Lcom/baidu/bdgame/sdk/obf/ev;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/hm;)V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/hm;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/ho;)V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/ho;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/hp;)V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ej;->b(Lcom/baidu/bdgame/sdk/obf/hp;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/hm;)V
    .registers 5

    .prologue
    .line 259
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mc;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 260
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_paycenter_alifast_confirm_not_installed"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_24

    const-string v0, ""

    :goto_20
    invoke-virtual {p0, v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_23
    return-void

    .line 260
    :cond_24
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/hm;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 265
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    :try_start_2e
    const-string v0, "alipays://platformapi/startapp?appId=20000067&url="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/hm;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2e .. :try_end_40} :catch_62

    .line 275
    :goto_40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    const-string v2, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ev;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ej;->b(Lcom/baidu/bdgame/sdk/obf/hm;)V

    goto :goto_23

    .line 271
    :catch_62
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_40
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/ho;)V
    .registers 5

    .prologue
    .line 302
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "performKuaiPay ."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "AliKuai"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ec;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    if-eqz p1, :cond_37

    .line 306
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "paychannel id .AliKuai"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ho;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ej$2;

    invoke-direct {v2, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ej$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/ho;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ek;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/es;)V

    .line 328
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->h()V

    .line 331
    :cond_37
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ec;
    .registers 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->e:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ef;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ec;

    .line 86
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ec;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 90
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ej;)V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->n()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/baidu/bdgame/sdk/obf/hm;)V
    .registers 5

    .prologue
    .line 283
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    const-string v1, "com.baidu.bdgame.sdk.ali.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ej$11;

    invoke-direct {v2, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ej$11;-><init>(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/hm;)V

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    return-void
.end method

.method private b(Lcom/baidu/bdgame/sdk/obf/hp;)V
    .registers 9

    .prologue
    .line 334
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "performFastPay ."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "AliFast"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ej;->b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ec;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    .line 337
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->N()V

    .line 339
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ej;->h:Lcom/baidu/bdgame/sdk/obf/jw;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ej;->f:Lcom/baidu/bdgame/sdk/obf/ka;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ej;->g:Lcom/baidu/bdgame/sdk/obf/jv;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    new-instance v6, Lcom/baidu/bdgame/sdk/obf/ej$3;

    invoke-direct {v6, p0}, Lcom/baidu/bdgame/sdk/obf/ej$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ej;)V

    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/cb;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 376
    if-nez v0, :cond_3e

    .line 377
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->O()V

    .line 378
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    .line 385
    :goto_3d
    return-void

    .line 382
    :cond_3e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_3d
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ej;)V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->m()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ej;)Lcom/baidu/bdgame/sdk/obf/jz;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ej;)Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ej;)Lcom/baidu/bdgame/sdk/obf/jz;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/ej;)Lcom/baidu/bdgame/sdk/obf/jz;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/ej;)V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->k()V

    return-void
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .registers 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->e()V

    .line 76
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->k()V

    .line 77
    return-void
.end method

.method private j()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->o()V

    .line 81
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    .line 95
    const-string v0, "AliFast"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ej;->b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ec;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mc;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 97
    :cond_16
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->n()V

    .line 101
    :goto_19
    return-void

    .line 99
    :cond_1a
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->l()V

    goto :goto_19
.end method

.method private l()V
    .registers 8

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->N()V

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kb;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ej;->h:Lcom/baidu/bdgame/sdk/obf/jw;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ej;->f:Lcom/baidu/bdgame/sdk/obf/ka;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ej;->g:Lcom/baidu/bdgame/sdk/obf/jv;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    new-instance v6, Lcom/baidu/bdgame/sdk/obf/ej$1;

    invoke-direct {v6, p0}, Lcom/baidu/bdgame/sdk/obf/ej$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ej;)V

    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/cb;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 133
    if-nez v0, :cond_37

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->O()V

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    .line 138
    :cond_37
    return-void
.end method

.method private m()V
    .registers 8

    .prologue
    .line 214
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "performAgreement ."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "AliFast"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ej;->b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ec;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    .line 217
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->N()V

    .line 219
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ej;->h:Lcom/baidu/bdgame/sdk/obf/jw;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ej;->f:Lcom/baidu/bdgame/sdk/obf/ka;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ej;->g:Lcom/baidu/bdgame/sdk/obf/jv;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    new-instance v6, Lcom/baidu/bdgame/sdk/obf/ej$10;

    invoke-direct {v6, p0}, Lcom/baidu/bdgame/sdk/obf/ej$10;-><init>(Lcom/baidu/bdgame/sdk/obf/ej;)V

    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/cb;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 247
    if-nez v0, :cond_3e

    .line 248
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->O()V

    .line 249
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    .line 256
    :goto_3d
    return-void

    .line 253
    :cond_3e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_3d
.end method

.method private n()V
    .registers 8

    .prologue
    .line 389
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->N()V

    .line 391
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kb;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 393
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ej;->h:Lcom/baidu/bdgame/sdk/obf/jw;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ej;->f:Lcom/baidu/bdgame/sdk/obf/ka;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ej;->g:Lcom/baidu/bdgame/sdk/obf/jv;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    new-instance v6, Lcom/baidu/bdgame/sdk/obf/ej$4;

    invoke-direct {v6, p0}, Lcom/baidu/bdgame/sdk/obf/ej$4;-><init>(Lcom/baidu/bdgame/sdk/obf/ej;)V

    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/cb;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 422
    if-nez v0, :cond_38

    .line 423
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->O()V

    .line 424
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    .line 431
    :goto_37
    return-void

    .line 428
    :cond_38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_37
.end method

.method private o()V
    .registers 7

    .prologue
    .line 434
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showPayMoneySelectView ."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ej$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ej$5;-><init>(Lcom/baidu/bdgame/sdk/obf/ej;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ev;->a(Lcom/baidu/bdgame/sdk/obf/et;)V

    .line 450
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ec;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ej;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ec;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ej;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/ec;->h()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/ev;->a(Ljava/util/List;JJ)V

    .line 454
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ev;->a(Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 455
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->e:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ev;->a(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 457
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 61
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ev;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ev;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    .line 63
    const-string v0, "AliKuai"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ej;->b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ec;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jz;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 66
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fix pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->i()V

    .line 72
    :goto_36
    return-void

    .line 69
    :cond_37
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nofix pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->j()V

    goto :goto_36
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/hp;)V
    .registers 8

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/hp;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_bc

    .line 211
    :goto_d
    return-void

    .line 144
    :pswitch_e
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/hp;->c()Lcom/baidu/bdgame/sdk/obf/ho;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/ho;)V

    goto :goto_d

    .line 147
    :pswitch_16
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ms;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ev;->l()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ms;-><init>(Landroid/content/Context;)V

    .line 148
    const-string v2, "bdp_paycenter_alifast_confirm_pay_content"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ms;->a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ms;

    move-result-object v2

    const-string v3, "bdp_no"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/ej$7;

    invoke-direct {v4, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ej$7;-><init>(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/ms;)V

    sget-object v5, Lcom/baidu/bdgame/sdk/obf/ms$a;->b:Lcom/baidu/bdgame/sdk/obf/ms$a;

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/bdgame/sdk/obf/ms;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/baidu/bdgame/sdk/obf/ms$a;)Lcom/baidu/bdgame/sdk/obf/ms;

    move-result-object v2

    const-string v3, "bdp_yes"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ej$6;

    invoke-direct {v3, p0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/ej$6;-><init>(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/ms;Lcom/baidu/bdgame/sdk/obf/hp;)V

    invoke-virtual {v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/ms;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/baidu/bdgame/sdk/obf/ms;

    .line 167
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ms;->show()V

    goto :goto_d

    .line 170
    :pswitch_4e
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 172
    :cond_62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->j()V

    goto :goto_d

    .line 175
    :cond_68
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->c()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mf;->f(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide v4, 0x134fd9000L

    cmp-long v2, v2, v4

    if-gez v2, :cond_83

    .line 178
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->n()V

    goto :goto_d

    .line 181
    :cond_83
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ms;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ej;->l:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ev;->l()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ms;-><init>(Landroid/content/Context;)V

    .line 182
    const-string v3, "bdp_paycenter_alifast_confirm_open_content"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ms;->a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ms;

    move-result-object v3

    const-string v4, "bdp_paycenter_alifast_confirm_open_no"

    invoke-static {v0, v4}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/baidu/bdgame/sdk/obf/ej$9;

    invoke-direct {v5, p0, v2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/ej$9;-><init>(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/ms;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ms$a;->b:Lcom/baidu/bdgame/sdk/obf/ms$a;

    invoke-virtual {v3, v4, v5, v1}, Lcom/baidu/bdgame/sdk/obf/ms;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/baidu/bdgame/sdk/obf/ms$a;)Lcom/baidu/bdgame/sdk/obf/ms;

    move-result-object v1

    const-string v3, "bdp_paycenter_alifast_confirm_open_yes"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ej$8;

    invoke-direct {v3, p0, v2}, Lcom/baidu/bdgame/sdk/obf/ej$8;-><init>(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v1, v0, v3}, Lcom/baidu/bdgame/sdk/obf/ms;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/baidu/bdgame/sdk/obf/ms;

    .line 206
    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ms;->show()V

    goto/16 :goto_d

    .line 142
    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_e
        :pswitch_16
        :pswitch_4e
    .end packed-switch
.end method
