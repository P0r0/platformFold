.class public Lcom/baidu/bdgame/sdk/obf/nl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/ct;

.field private b:Lcom/baidu/bdgame/sdk/obf/nm;

.field private c:Lcom/baidu/bdgame/sdk/obf/ax;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/ax;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    .line 40
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/nl;->c:Lcom/baidu/bdgame/sdk/obf/ax;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/nl;)Lcom/baidu/bdgame/sdk/obf/nm;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->b:Lcom/baidu/bdgame/sdk/obf/nm;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/nl;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/nl;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 112
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_1d

    .line 114
    invoke-virtual {v0, v4}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Ljava/lang/String;)V

    .line 116
    :cond_1d
    if-eqz p1, :cond_65

    instance-of v0, p1, Lcom/baidu/bdgame/sdk/obf/av;

    if-eqz v0, :cond_65

    .line 117
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/av;

    .line 118
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/av;->d()Lcom/baidu/bdgame/sdk/obf/aw;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 119
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/v;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/av;->d()Lcom/baidu/bdgame/sdk/obf/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/aw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/av;->d()Lcom/baidu/bdgame/sdk/obf/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/aw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/v;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_tip_ok_not_baidu"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/v;->a(Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nl$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nl$4;-><init>(Lcom/baidu/bdgame/sdk/obf/nl;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/v;->a(Lcom/baidu/bdgame/sdk/obf/v$a;)V

    .line 148
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1, v0, v4}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 155
    :goto_5e
    return-void

    .line 150
    :cond_5f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->e()V

    goto :goto_5e

    .line 153
    :cond_65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->e()V

    goto :goto_5e
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/nl;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/nl;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/nl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/nl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 69
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/md;->a(Ljava/lang/String;)Z

    move-result v0

    .line 70
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/lw;->c(Ljava/lang/String;)Z

    move-result v1

    .line 71
    if-nez v0, :cond_c

    if-eqz v1, :cond_22

    .line 72
    :cond_c
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nl;->c:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ax;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/nl$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/nl$2;-><init>(Lcom/baidu/bdgame/sdk/obf/nl;ZLjava/lang/String;)V

    invoke-static {v1, p1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ca;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 84
    :goto_21
    return v0

    .line 82
    :cond_22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_wrong_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 84
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->b:Lcom/baidu/bdgame/sdk/obf/nm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nm;->b(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nl;->c:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->g()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/baidu/bdgame/sdk/obf/nl$3;

    invoke-direct {v5, p0}, Lcom/baidu/bdgame/sdk/obf/nl$3;-><init>(Lcom/baidu/bdgame/sdk/obf/nl;)V

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/ca;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/nl;)Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 158
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bw;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nl$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nl$5;-><init>(Lcom/baidu/bdgame/sdk/obf/nl;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bw;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 166
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bw;->a()V

    .line 167
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/nl;)Lcom/baidu/bdgame/sdk/obf/ax;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->c:Lcom/baidu/bdgame/sdk/obf/ax;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ks;->e()Z

    move-result v0

    if-nez v0, :cond_30

    .line 46
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/nl;->b()V

    .line 47
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nl;->c:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/la;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;)V

    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "bdp_passport_login"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/baidu/bdgame/sdk/obf/ct;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    :goto_2f
    return-void

    .line 52
    :cond_30
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nm;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nm;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->b:Lcom/baidu/bdgame/sdk/obf/nm;

    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->b:Lcom/baidu/bdgame/sdk/obf/nm;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nl$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nl$1;-><init>(Lcom/baidu/bdgame/sdk/obf/nl;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nm;->a(Lcom/baidu/bdgame/sdk/obf/nm$a;)V

    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nl;->b:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-virtual {v0, v1, v4}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    goto :goto_2f
.end method
