.class final Lcom/baidu/bdgame/sdk/obf/gk$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/gp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gk;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gk;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gk;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gk$10;->a:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$10;->a:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->d(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->c()Z

    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$10;->a:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->e(Lcom/baidu/bdgame/sdk/obf/gk;)V

    .line 122
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$10;->a:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->f(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->c()Z

    .line 127
    return-void
.end method
