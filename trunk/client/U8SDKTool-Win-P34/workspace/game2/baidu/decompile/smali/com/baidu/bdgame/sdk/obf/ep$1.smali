.class final Lcom/baidu/bdgame/sdk/obf/ep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ep;->k()V
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
        "Lcom/baidu/bdgame/sdk/obf/ht;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ep;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ep;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ht;)V
    .registers 7

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Lcom/baidu/bdgame/sdk/obf/ep;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->O()V

    .line 73
    if-nez p1, :cond_18

    if-eqz p3, :cond_18

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Lcom/baidu/bdgame/sdk/obf/ep;Lcom/baidu/bdgame/sdk/obf/ht;)Lcom/baidu/bdgame/sdk/obf/ht;

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ep;->b(Lcom/baidu/bdgame/sdk/obf/ep;)V

    .line 89
    :goto_17
    return-void

    .line 78
    :cond_18
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 79
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ep;->c(Lcom/baidu/bdgame/sdk/obf/ep;)Lcom/baidu/bdgame/sdk/obf/ht;

    move-result-object v0

    if-nez v0, :cond_48

    const-string v0, ""

    :goto_2c
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Lcom/baidu/bdgame/sdk/obf/ep;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_2f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Lcom/baidu/bdgame/sdk/obf/ep;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd2

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_17

    .line 79
    :cond_48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ep;->c(Lcom/baidu/bdgame/sdk/obf/ep;)Lcom/baidu/bdgame/sdk/obf/ht;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ht;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 81
    :cond_53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Lcom/baidu/bdgame/sdk/obf/ep;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    goto :goto_2f
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 67
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ht;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ep$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ht;)V

    return-void
.end method
