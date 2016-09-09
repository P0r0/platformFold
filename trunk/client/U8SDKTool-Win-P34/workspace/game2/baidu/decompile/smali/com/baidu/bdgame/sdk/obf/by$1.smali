.class final Lcom/baidu/bdgame/sdk/obf/by$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/by;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/by;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/by;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/by$1;->a:Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/by$1;->a:Lcom/baidu/bdgame/sdk/obf/by;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/by;->a(Lcom/baidu/bdgame/sdk/obf/by;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 68
    :cond_8
    :goto_8
    return-void

    .line 56
    :cond_9
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/la;->g()Z

    move-result v0

    .line 57
    if-eqz v0, :cond_26

    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/by$1;->a:Lcom/baidu/bdgame/sdk/obf/by;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b(Lcom/baidu/bdgame/sdk/obf/by;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/by$1;->a:Lcom/baidu/bdgame/sdk/obf/by;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/by;->c(Lcom/baidu/bdgame/sdk/obf/by;)V

    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/by$1;->a:Lcom/baidu/bdgame/sdk/obf/by;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/by;->d(Lcom/baidu/bdgame/sdk/obf/by;)V

    goto :goto_8

    .line 66
    :cond_26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/by$1;->a:Lcom/baidu/bdgame/sdk/obf/by;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/by;->d(Lcom/baidu/bdgame/sdk/obf/by;)V

    goto :goto_8
.end method
