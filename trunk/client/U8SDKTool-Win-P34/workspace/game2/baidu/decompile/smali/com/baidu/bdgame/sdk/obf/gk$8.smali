.class final Lcom/baidu/bdgame/sdk/obf/gk$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gk;->c(Lcom/baidu/bdgame/sdk/obf/jg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/o",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/jg;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/gk;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/jg;)V
    .registers 3

    .prologue
    .line 423
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gk$8;->b:Lcom/baidu/bdgame/sdk/obf/gk;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/gk$8;->a:Lcom/baidu/bdgame/sdk/obf/jg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 423
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gk$8;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 6

    .prologue
    .line 428
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$8;->b:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->g(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->O()V

    .line 429
    if-nez p1, :cond_1c

    .line 430
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$8;->b:Lcom/baidu/bdgame/sdk/obf/gk;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk$8;->a:Lcom/baidu/bdgame/sdk/obf/jg;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gk;->b(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/jg;)V

    .line 431
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$8;->b:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->g(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->p()V

    .line 435
    :goto_1b
    return-void

    .line 433
    :cond_1c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$8;->b:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->g(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->o()V

    goto :goto_1b
.end method
