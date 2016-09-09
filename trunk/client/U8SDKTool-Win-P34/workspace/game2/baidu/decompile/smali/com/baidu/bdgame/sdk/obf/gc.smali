.class public Lcom/baidu/bdgame/sdk/obf/gc;
.super Lcom/baidu/bdgame/sdk/obf/fa;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String; = "10001"


# instance fields
.field private l:Lcom/baidu/bdgame/sdk/obf/dd;

.field private m:Lcom/baidu/bdgame/sdk/obf/ja;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/dd;)V
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fa;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->l:Lcom/baidu/bdgame/sdk/obf/dd;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gc;)Lcom/baidu/bdgame/sdk/obf/dd;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->l:Lcom/baidu/bdgame/sdk/obf/dd;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gc;Lcom/baidu/bdgame/sdk/obf/ja;)Lcom/baidu/bdgame/sdk/obf/ja;
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->m:Lcom/baidu/bdgame/sdk/obf/ja;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gc;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/gc;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gc;)Lcom/baidu/bdgame/sdk/obf/ja;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->m:Lcom/baidu/bdgame/sdk/obf/ja;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gc;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/gc;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->l:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->N()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kb;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->l:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->f:Lcom/baidu/bdgame/sdk/obf/ka;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gc;->g:Lcom/baidu/bdgame/sdk/obf/jv;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gc;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/gc$1;

    invoke-direct {v4, p0}, Lcom/baidu/bdgame/sdk/obf/gc$1;-><init>(Lcom/baidu/bdgame/sdk/obf/gc;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/cb;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 62
    if-nez v0, :cond_33

    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->l:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->O()V

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->l:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    .line 66
    :cond_33
    return-void
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method
