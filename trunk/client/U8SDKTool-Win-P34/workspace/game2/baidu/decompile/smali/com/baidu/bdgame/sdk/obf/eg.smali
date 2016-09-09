.class public Lcom/baidu/bdgame/sdk/obf/eg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/ef;

.field private b:Lcom/baidu/bdgame/sdk/obf/ef;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ef;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->a:Lcom/baidu/bdgame/sdk/obf/ef;

    return-object v0
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ef;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eg;->a:Lcom/baidu/bdgame/sdk/obf/ef;

    .line 24
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eg;->c:Ljava/util/List;

    .line 40
    return-void
.end method

.method public b()Lcom/baidu/bdgame/sdk/obf/ef;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->b:Lcom/baidu/bdgame/sdk/obf/ef;

    return-object v0
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/ef;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eg;->b:Lcom/baidu/bdgame/sdk/obf/ef;

    .line 32
    return-void
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->c:Ljava/util/List;

    return-object v0
.end method
