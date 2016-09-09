.class public Lcom/baidu/bdgame/sdk/obf/fi;
.super Lcom/baidu/bdgame/sdk/obf/fa;
.source "SourceFile"


# static fields
.field private static final n:Ljava/lang/String; = "Bean91"


# instance fields
.field private k:Lcom/baidu/bdgame/sdk/obf/fn;

.field private l:Lcom/baidu/bdgame/sdk/obf/ic;

.field private m:Lcom/baidu/bdgame/sdk/obf/hz;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    const-string v0, "Bean91"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fa;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/fn;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fi;Lcom/baidu/bdgame/sdk/obf/hz;)Lcom/baidu/bdgame/sdk/obf/hz;
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/hz;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fi;Lcom/baidu/bdgame/sdk/obf/ic;)Lcom/baidu/bdgame/sdk/obf/ic;
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->l:Lcom/baidu/bdgame/sdk/obf/ic;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fi;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fi;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fi;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fi;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fi;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fi;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->j()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fi;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fi;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->A()V

    .line 258
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->N()V

    .line 259
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fi$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fi$6;-><init>(Lcom/baidu/bdgame/sdk/obf/fi;)V

    invoke-static {v0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/cb;->c(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 282
    if-nez v0, :cond_2e

    .line 283
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->O()V

    .line 284
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->x()V

    .line 285
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    .line 288
    :cond_2e
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/jz;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/jz;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/jz;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/jz;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/jz;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/fi;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->m()V

    return-void
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/ic;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->l:Lcom/baidu/bdgame/sdk/obf/ic;

    return-object v0
.end method

.method private i()V
    .registers 5

    .prologue
    .line 55
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fi$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/fi$1;-><init>(Lcom/baidu/bdgame/sdk/obf/fi;)V

    .line 76
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_paycenter_tips_query_balance"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/fn;->f(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cb;->f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 82
    if-nez v0, :cond_30

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->O()V

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    .line 87
    :cond_30
    return-void
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/fi;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->o:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 91
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->l()V

    .line 120
    :cond_b
    :goto_b
    return-void

    .line 93
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_91_bean"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const/4 v0, 0x0

    .line 97
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fi;->b:Lcom/baidu/bdgame/sdk/obf/fb;

    if-eqz v2, :cond_23

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->b:Lcom/baidu/bdgame/sdk/obf/fb;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fb;->a()Lcom/baidu/bdgame/sdk/obf/dd;

    move-result-object v0

    .line 100
    :cond_23
    if-eqz v0, :cond_b

    .line 103
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/fn;->C()Lcom/baidu/bdgame/sdk/obf/dd$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/dd;->a(Lcom/baidu/bdgame/sdk/obf/dd$a;)V

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_paycenter_tip_bean_pay_title"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_paycenter_tip_balance_can_not_pay"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/hz;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/hz;->a()Lcom/baidu/bdgame/sdk/obf/jt;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ju;->b(Lcom/baidu/bdgame/sdk/obf/jt;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/fn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/fi;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->n()V

    return-void
.end method

.method private k()Z
    .registers 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/hz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hz;->a()Lcom/baidu/bdgame/sdk/obf/jt;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jz;->d()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ju;->b(Lcom/baidu/bdgame/sdk/obf/jt;J)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/hz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hz;->a()Lcom/baidu/bdgame/sdk/obf/jt;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ju;->a(Lcom/baidu/bdgame/sdk/obf/jt;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private l()V
    .registers 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fi$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fi$2;-><init>(Lcom/baidu/bdgame/sdk/obf/fi;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fn;->a(Lcom/baidu/bdgame/sdk/obf/fk;)V

    .line 147
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cb;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v0

    .line 149
    if-nez v0, :cond_31

    .line 150
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_tips_unlogin"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    :goto_30
    return-void

    .line 157
    :cond_31
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/fn;->a(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fn;->a(Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 159
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/hz;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/hz;->a()Lcom/baidu/bdgame/sdk/obf/jt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fn;->a(Lcom/baidu/bdgame/sdk/obf/jt;)V

    .line 160
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fn;->b(I)V

    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    goto :goto_30
.end method

.method private m()V
    .registers 3

    .prologue
    .line 167
    const-string v0, "Bean91"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ec;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/hz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hz;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 170
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->o()V

    .line 176
    :cond_19
    :goto_19
    return-void

    .line 173
    :cond_1a
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->n()V

    goto :goto_19
.end method

.method private n()V
    .registers 7

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->N()V

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kb;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fi;->f:Lcom/baidu/bdgame/sdk/obf/ka;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fi;->g:Lcom/baidu/bdgame/sdk/obf/jv;

    new-instance v5, Lcom/baidu/bdgame/sdk/obf/fi$3;

    invoke-direct {v5, p0}, Lcom/baidu/bdgame/sdk/obf/fi$3;-><init>(Lcom/baidu/bdgame/sdk/obf/fi;)V

    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/cb;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 208
    if-nez v0, :cond_35

    .line 209
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->O()V

    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    .line 212
    :cond_35
    return-void
.end method

.method private o()V
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fi$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fi$4;-><init>(Lcom/baidu/bdgame/sdk/obf/fi;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fn;->a(Lcom/baidu/bdgame/sdk/obf/fl;)V

    .line 233
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->x()V

    .line 234
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 235
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->p()V

    .line 237
    :cond_1a
    return-void
.end method

.method private p()V
    .registers 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/fi$5;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/fi$5;-><init>(Lcom/baidu/bdgame/sdk/obf/fi;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cb;->a(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/o;)V

    .line 254
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 48
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fn;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x26

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 51
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->i()V

    .line 52
    return-void
.end method
