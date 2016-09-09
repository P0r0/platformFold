.class final Lcom/baidu/bdgame/sdk/obf/fj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fj;->i()V
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
        "Lcom/baidu/bdgame/sdk/obf/jt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fj;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fj;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fj$1;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/jt;)V
    .registers 5

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$1;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Lcom/baidu/bdgame/sdk/obf/fj;)Lcom/baidu/bdgame/sdk/obf/fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->O()V

    .line 60
    if-nez p1, :cond_18

    if-eqz p3, :cond_18

    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$1;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Lcom/baidu/bdgame/sdk/obf/fj;Lcom/baidu/bdgame/sdk/obf/jt;)Lcom/baidu/bdgame/sdk/obf/jt;

    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$1;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fj;->b(Lcom/baidu/bdgame/sdk/obf/fj;)V

    .line 73
    :goto_17
    return-void

    .line 65
    :cond_18
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$1;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Lcom/baidu/bdgame/sdk/obf/fj;)Lcom/baidu/bdgame/sdk/obf/fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/kb;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_17

    .line 69
    :cond_2c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$1;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Lcom/baidu/bdgame/sdk/obf/fj;)Lcom/baidu/bdgame/sdk/obf/fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    goto :goto_17
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 54
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/jt;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fj$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/jt;)V

    return-void
.end method
