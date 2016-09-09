.class final Lcom/baidu/bdgame/sdk/obf/fd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fd;->a(Lcom/baidu/bdgame/sdk/obf/ec;JLjava/lang/String;Ljava/lang/String;)V
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
        "Lcom/baidu/bdgame/sdk/obf/ji;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fd;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fd;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fd$2;->a:Lcom/baidu/bdgame/sdk/obf/fd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ji;)V
    .registers 7

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fd$2;->a:Lcom/baidu/bdgame/sdk/obf/fd;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fd;->a(Lcom/baidu/bdgame/sdk/obf/fd;)Lcom/baidu/bdgame/sdk/obf/fg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->O()V

    .line 94
    if-nez p1, :cond_28

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fd$2;->a:Lcom/baidu/bdgame/sdk/obf/fd;

    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/fd;->k:Lcom/baidu/bdgame/sdk/obf/ji;

    .line 96
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fd$2;->a:Lcom/baidu/bdgame/sdk/obf/fd;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fd$2;->a:Lcom/baidu/bdgame/sdk/obf/fd;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/fd;->k:Lcom/baidu/bdgame/sdk/obf/ji;

    if-nez v0, :cond_1f

    const-string v0, ""

    :goto_1b
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/fd;->a(Lcom/baidu/bdgame/sdk/obf/fd;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_1e
    return-void

    .line 96
    :cond_1f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fd$2;->a:Lcom/baidu/bdgame/sdk/obf/fd;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/fd;->k:Lcom/baidu/bdgame/sdk/obf/ji;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ji;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 99
    :cond_28
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 100
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fd$2;->a:Lcom/baidu/bdgame/sdk/obf/fd;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fd$2;->a:Lcom/baidu/bdgame/sdk/obf/fd;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/fd;->k:Lcom/baidu/bdgame/sdk/obf/ji;

    if-nez v0, :cond_3e

    const-string v0, ""

    :goto_3a
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/fd;->b(Lcom/baidu/bdgame/sdk/obf/fd;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_3e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fd$2;->a:Lcom/baidu/bdgame/sdk/obf/fd;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/fd;->k:Lcom/baidu/bdgame/sdk/obf/ji;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ji;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 103
    :cond_47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fd$2;->a:Lcom/baidu/bdgame/sdk/obf/fd;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fd;->a(Lcom/baidu/bdgame/sdk/obf/fd;)Lcom/baidu/bdgame/sdk/obf/fg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    goto :goto_1e
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 88
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ji;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fd$2;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ji;)V

    return-void
.end method
