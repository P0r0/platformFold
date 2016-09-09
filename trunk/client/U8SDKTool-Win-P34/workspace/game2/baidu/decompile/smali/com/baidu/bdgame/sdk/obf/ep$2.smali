.class final Lcom/baidu/bdgame/sdk/obf/ep$2;
.super Lcom/baidu/bdgame/sdk/obf/es;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ep;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/es",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ep;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ep;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ep$2;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/es;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 106
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ep$2;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 110
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep$2;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$2;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ep;->c(Lcom/baidu/bdgame/sdk/obf/ep;)Lcom/baidu/bdgame/sdk/obf/ht;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_c
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ep;->b(Lcom/baidu/bdgame/sdk/obf/ep;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 110
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$2;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ep;->c(Lcom/baidu/bdgame/sdk/obf/ep;)Lcom/baidu/bdgame/sdk/obf/ht;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ht;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
