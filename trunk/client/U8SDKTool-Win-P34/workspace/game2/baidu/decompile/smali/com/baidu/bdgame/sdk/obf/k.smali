.class public final Lcom/baidu/bdgame/sdk/obf/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/k$1;,
        Lcom/baidu/bdgame/sdk/obf/k$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.baidu.platformsdk.intent.login"

.field public static final b:Ljava/lang/String; = "result_code"

.field public static final c:Ljava/lang/String; = "result_desc"

.field public static final d:I = -0x80000000

.field public static final e:I = 0x0

.field public static final f:I = -0x1

.field public static final g:I = -0x2

.field public static final h:I = 0x0

.field public static final i:I = -0x3e9

.field public static final j:I = -0x3ea

.field public static final k:I = -0x3eb

.field public static final l:I = 0x0

.field public static final m:I = -0xbb9

.field public static final n:I = -0xbba

.field public static final o:I = -0xbbb

.field public static final p:Ljava/lang/String; = "com.baidu.platformsdk.intent.guest2fullmember"

.field public static final q:Ljava/lang/String; = "com.baidu.platformsdk.intent.convert2baiduaccount"

.field public static final r:I = 0x0

.field public static final s:I = -0x7d1

.field public static final t:I = 0x0

.field public static final u:I = -0x7d1

.field public static final v:I = 0x0

.field public static final w:I = -0xfa1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/k$1;)V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/k;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/bdgame/sdk/obf/k;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/k$a;->a:Lcom/baidu/bdgame/sdk/obf/k;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 515
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/app/Activity;)V

    .line 516
    return-void
.end method

.method public a(Landroid/app/Application;)V
    .registers 3

    .prologue
    .line 476
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/app/Application;)V

    .line 477
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 464
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;I)V

    .line 465
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 4
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
    .line 123
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 124
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/platformsdk/BDPlatformSetting;)V
    .registers 4

    .prologue
    .line 45
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Lcom/baidu/platformsdk/BDPlatformSetting;)V

    .line 46
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 447
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Z)V

    .line 448
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/p;)V
    .registers 3

    .prologue
    .line 439
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->a(Lcom/baidu/bdgame/sdk/obf/p;)V

    .line 440
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 455
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 55
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/platformsdk/OrderStatus;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 523
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->b(Landroid/app/Activity;)V

    .line 524
    return-void
.end method

.method public b(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 507
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->b(Landroid/content/Context;Z)V

    .line 508
    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 156
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 166
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 4
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
    .line 147
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 148
    return-void
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 176
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 189
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    return v0
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 260
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    return v0
.end method

.method public g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;
    .registers 3

    .prologue
    .line 273
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    return v0
.end method

.method public h(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 322
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->h(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->i(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    return v0
.end method

.method public i(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 4
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
    .line 443
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->j(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 444
    return-void
.end method

.method public i(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 331
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->i(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public j(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 371
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->j(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public k(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 383
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->k(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public l(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 404
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->l(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public m(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 413
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->m(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public n(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 422
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->n(Landroid/content/Context;)V

    .line 423
    return-void
.end method

.method public o(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 430
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->o(Landroid/content/Context;)V

    .line 431
    return-void
.end method

.method public p(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 468
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->p(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public q(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 489
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->q(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public r(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 498
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/l;->a()Lcom/baidu/bdgame/sdk/obf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->r(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
