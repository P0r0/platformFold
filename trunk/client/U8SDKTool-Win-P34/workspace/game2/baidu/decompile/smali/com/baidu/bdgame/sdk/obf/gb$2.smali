.class final Lcom/baidu/bdgame/sdk/obf/gb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gb;->l()V
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
        "Lcom/baidu/bdgame/sdk/obf/iv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gb;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gb$2;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/iv;)V
    .registers 7

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$2;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->a(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->O()V

    .line 97
    if-nez p1, :cond_16

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$2;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/gb;->a(Lcom/baidu/bdgame/sdk/obf/gb;Lcom/baidu/bdgame/sdk/obf/iv;)Lcom/baidu/bdgame/sdk/obf/iv;

    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$2;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->e(Lcom/baidu/bdgame/sdk/obf/gb;)V

    .line 114
    :goto_15
    return-void

    .line 101
    :cond_16
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 103
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb$2;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$2;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->f(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/iv;

    move-result-object v0

    if-nez v0, :cond_2d

    const-string v0, ""

    :goto_29
    invoke-virtual {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/gb;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$2;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->f(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/iv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iv;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 110
    :cond_38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$2;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->a(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    goto :goto_15
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 91
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gb$2;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/iv;)V

    return-void
.end method
