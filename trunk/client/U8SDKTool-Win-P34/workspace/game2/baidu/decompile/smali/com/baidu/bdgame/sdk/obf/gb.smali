.class public Lcom/baidu/bdgame/sdk/obf/gb;
.super Lcom/baidu/bdgame/sdk/obf/fa;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String; = "TencentWap"


# instance fields
.field private k:Lcom/baidu/bdgame/sdk/obf/ev;

.field private l:Lcom/baidu/bdgame/sdk/obf/iv;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    const-string v0, "TencentWap"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fa;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/ev;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->k:Lcom/baidu/bdgame/sdk/obf/ev;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gb;Lcom/baidu/bdgame/sdk/obf/iv;)Lcom/baidu/bdgame/sdk/obf/iv;
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->l:Lcom/baidu/bdgame/sdk/obf/iv;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/jz;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/jz;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/gb;)V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gb;->l()V

    return-void
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/gb;)V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gb;->m()V

    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/iv;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->l:Lcom/baidu/bdgame/sdk/obf/iv;

    return-object v0
.end method

.method private i()V
    .registers 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gb;->e()V

    .line 53
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gb;->l()V

    .line 54
    return-void
.end method

.method private j()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gb;->k()V

    .line 58
    return-void
.end method

.method private k()V
    .registers 7

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->k:Lcom/baidu/bdgame/sdk/obf/ev;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gb$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gb$1;-><init>(Lcom/baidu/bdgame/sdk/obf/gb;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ev;->a(Lcom/baidu/bdgame/sdk/obf/et;)V

    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->k:Lcom/baidu/bdgame/sdk/obf/ev;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ec;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gb;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ec;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/gb;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/ec;->h()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/ev;->a(Ljava/util/List;JJ)V

    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->k:Lcom/baidu/bdgame/sdk/obf/ev;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ev;->a(Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->k:Lcom/baidu/bdgame/sdk/obf/ev;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->e:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ev;->a(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->k:Lcom/baidu/bdgame/sdk/obf/ev;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method private l()V
    .registers 8

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->k:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->N()V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kb;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->k:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gb;->h:Lcom/baidu/bdgame/sdk/obf/jw;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gb;->f:Lcom/baidu/bdgame/sdk/obf/ka;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/gb;->g:Lcom/baidu/bdgame/sdk/obf/jv;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/gb;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    new-instance v6, Lcom/baidu/bdgame/sdk/obf/gb$2;

    invoke-direct {v6, p0}, Lcom/baidu/bdgame/sdk/obf/gb$2;-><init>(Lcom/baidu/bdgame/sdk/obf/gb;)V

    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/cb;->e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 116
    if-nez v0, :cond_37

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->k:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->O()V

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->k:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    .line 120
    :cond_37
    return-void
.end method

.method private m()V
    .registers 3

    .prologue
    .line 123
    const-string v0, "TencentWap"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ec;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 124
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gb;->n()V

    .line 126
    :cond_11
    return-void
.end method

.method private n()V
    .registers 4

    .prologue
    .line 129
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ew;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ew;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 131
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->l:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/iv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ew;->c(Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gb$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gb$3;-><init>(Lcom/baidu/bdgame/sdk/obf/gb;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ew;->a(Lcom/baidu/bdgame/sdk/obf/kf;)V

    .line 140
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 141
    return-void
.end method


# virtual methods
.method protected a(I)Lcom/baidu/bdgame/sdk/obf/kk;
    .registers 3

    .prologue
    .line 145
    sparse-switch p1, :sswitch_data_10

    .line 154
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    :goto_5
    return-object v0

    .line 147
    :sswitch_6
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    goto :goto_5

    .line 149
    :sswitch_9
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    goto :goto_5

    .line 151
    :sswitch_c
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    goto :goto_5

    .line 145
    nop

    :sswitch_data_10
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_9
        0x3e8 -> :sswitch_c
    .end sparse-switch
.end method

.method public a()V
    .registers 3

    .prologue
    .line 41
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ev;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ev;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->k:Lcom/baidu/bdgame/sdk/obf/ev;

    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->k:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jz;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 45
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gb;->i()V

    .line 49
    :goto_23
    return-void

    .line 47
    :cond_24
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gb;->j()V

    goto :goto_23
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/gb;->a(I)Lcom/baidu/bdgame/sdk/obf/kk;

    move-result-object v2

    .line 159
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2c

    .line 160
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gb;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/gb;->e:Lcom/baidu/bdgame/sdk/obf/ef;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/gb;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/ec;->f()I

    move-result v5

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/baidu/bdgame/sdk/obf/kg;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/kk;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/ef;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->j:Lcom/baidu/bdgame/sdk/obf/kg;

    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->j:Lcom/baidu/bdgame/sdk/obf/kg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kg;->b()V

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ec;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/gb;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_2b
    return-void

    .line 166
    :cond_2c
    invoke-super {p0, v2, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fa;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method
