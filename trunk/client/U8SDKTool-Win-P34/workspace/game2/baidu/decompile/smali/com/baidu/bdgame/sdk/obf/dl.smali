.class public Lcom/baidu/bdgame/sdk/obf/dl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/dd;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/id;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/dd;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->b:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dl;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->b:Ljava/util/List;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dl;Lcom/baidu/bdgame/sdk/obf/jv;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dl;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dl;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dl;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/jv;)V
    .registers 4

    .prologue
    .line 122
    if-nez p1, :cond_3

    .line 129
    :goto_2
    return-void

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->K()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v0

    if-nez v0, :cond_15

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/jv;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/jv;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dd;->b(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 128
    :cond_15
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->K()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/jv;->a(Lcom/baidu/bdgame/sdk/obf/jv;)Lcom/baidu/bdgame/sdk/obf/jv;

    goto :goto_2
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/id;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    :cond_8
    :goto_8
    return-void

    .line 91
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dd;->b(I)V

    goto :goto_8
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/dl;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dl;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/it;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 112
    :cond_8
    :goto_8
    return-void

    .line 108
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dd;->b(I)V

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_8
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/id;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->b:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dl$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dl$1;-><init>(Lcom/baidu/bdgame/sdk/obf/dl;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cb;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dl$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dl$2;-><init>(Lcom/baidu/bdgame/sdk/obf/dl;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cb;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    .line 77
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->b:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->b:Ljava/util/List;

    .line 137
    :cond_c
    return-void
.end method
