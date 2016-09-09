.class public final Lcom/baidu/bdgame/sdk/obf/eh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 25
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/eh;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)V
    .registers 3

    .prologue
    .line 145
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    :goto_6
    return-void

    .line 149
    :cond_7
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ef;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/mf;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6
.end method

.method static synthetic a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/eg;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 4

    .prologue
    .line 25
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/eh;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/eg;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/o;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/eg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ed;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ed;-><init>()V

    .line 36
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/eh$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/eh$1;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    invoke-virtual {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ed;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 70
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->j(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;J)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ef;->d()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 226
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 227
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ec;

    .line 228
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ec;->h()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-ltz v4, :cond_24

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ec;->g()J

    move-result-wide v4

    cmp-long v0, v4, p2

    if-gtz v0, :cond_24

    .line 230
    const/4 v2, 0x1

    .line 233
    :cond_23
    return v2

    .line 226
    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ef;)Z
    .registers 5

    .prologue
    .line 167
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ef;->b()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 169
    const/4 v0, 0x0

    .line 171
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_b
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 77
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ef;

    .line 78
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ef;->c()I

    move-result v4

    if-eqz v4, :cond_25

    .line 79
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :goto_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 81
    :cond_25
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 85
    :cond_29
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    return-object v2
.end method

.method private static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/eg;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/eg;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/eg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Ljava/util/List;)V

    .line 96
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/bdgame/sdk/obf/q;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->k(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z
    .registers 3

    .prologue
    .line 153
    const-string v0, "FreeBaiduBean"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;J)Z
    .registers 14

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->i(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 243
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ef;->d()Ljava/util/List;

    move-result-object v4

    move v2, v3

    .line 244
    :goto_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_36

    .line 245
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ec;

    .line 246
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ec;->h()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ec;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bdgame/sdk/obf/fc;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fc;->b()D

    move-result-wide v8

    mul-double/2addr v6, v8

    long-to-double v8, p2

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_37

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ec;->g()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_37

    .line 248
    const/4 v3, 0x1

    .line 252
    :cond_36
    return v3

    .line 244
    :cond_37
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c
.end method

.method static synthetic c(Landroid/content/Context;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->l(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z
    .registers 3

    .prologue
    .line 163
    const-string v0, "Bean91Pay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;J)Z
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ef;->d()Ljava/util/List;

    move-result-object v4

    .line 267
    const-string v0, "Mo9Pay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v1, v2

    .line 268
    :goto_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 269
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ec;

    .line 270
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ec;->h()J

    move-result-wide v6

    cmp-long v0, v6, p2

    if-ltz v0, :cond_25

    move v2, v3

    .line 277
    :cond_24
    :goto_24
    return v2

    .line 268
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_29
    move v2, v3

    .line 277
    goto :goto_24
.end method

.method static synthetic d(Landroid/content/Context;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->m(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z
    .registers 3

    .prologue
    .line 182
    const-string v0, "KubiPay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Landroid/content/Context;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->n(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z
    .registers 3

    .prologue
    .line 193
    const-string v0, "QuickPay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/ef;
    .registers 3

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->h(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/ef;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z
    .registers 3

    .prologue
    .line 204
    const-string v0, "YiBaoCashCardPay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    return v0
.end method

.method static synthetic g(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/ef;
    .registers 3

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->i(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/ef;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z
    .registers 3

    .prologue
    .line 214
    const-string v0, "WeixinWallet"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    return v0
.end method

.method private static h(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/ef;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/ef;"
        }
    .end annotation

    .prologue
    .line 290
    const/4 v2, 0x0

    .line 291
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 292
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eh;->j(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 293
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ef;

    .line 294
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 298
    :goto_1e
    return-object v0

    .line 291
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_23
    move-object v0, v2

    goto :goto_1e
.end method

.method public static h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z
    .registers 3

    .prologue
    .line 282
    const-string v0, "BaiduPay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    return v0
.end method

.method private static i(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/ef;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/ef;"
        }
    .end annotation

    .prologue
    .line 302
    const/4 v2, 0x0

    .line 303
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 304
    const-string v3, "BaiduBeanPay"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {p0, v3, v0}, Lcom/baidu/bdgame/sdk/obf/eh;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 305
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ef;

    .line 306
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 310
    :goto_20
    return-object v0

    .line 303
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_25
    move-object v0, v2

    goto :goto_20
.end method

.method public static i(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z
    .registers 3

    .prologue
    .line 286
    const-string v0, "GameCardPay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    return v0
.end method

.method private static j(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 316
    if-nez v0, :cond_b

    .line 328
    :cond_a
    return-void

    .line 319
    :cond_b
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v0

    .line 320
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1d
    if-ltz v1, :cond_a

    .line 323
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eh;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 324
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 322
    :cond_2e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1d
.end method

.method private static j(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z
    .registers 4

    .prologue
    .line 393
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/mf;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 395
    const/4 v0, 0x0

    .line 397
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ef;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_b
.end method

.method private static k(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 332
    if-nez v0, :cond_b

    .line 344
    :cond_a
    return-void

    .line 335
    :cond_b
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v0

    .line 336
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 338
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1d
    if-ltz v1, :cond_a

    .line 339
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eh;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 340
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 338
    :cond_2e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1d
.end method

.method private static l(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lv;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 354
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_11
    if-ltz v1, :cond_32

    .line 355
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eh;->e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eh;->f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 357
    :cond_2b
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 354
    :cond_2e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_11

    .line 361
    :cond_32
    return-void
.end method

.method private static m(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {p0}, Lcom/baidu/platformsdk/wxpay/BDPWXPaySDK;->getBDPWXPayVersion(Landroid/content/Context;)Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;->getWeiXinVersion()I

    move-result v0

    .line 365
    if-nez v0, :cond_26

    .line 366
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_11
    if-ltz v1, :cond_26

    .line 367
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eh;->g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 368
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 366
    :cond_22
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_11

    .line 372
    :cond_26
    return-void
.end method

.method private static n(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 376
    if-nez v0, :cond_b

    .line 390
    :cond_a
    :goto_a
    return-void

    .line 379
    :cond_b
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v0

    .line 380
    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 382
    :cond_19
    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 383
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eh;->h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 384
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ef;

    .line 385
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 382
    :cond_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b
.end method
