.class final Lcom/baidu/bdgame/sdk/obf/en$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/en;->a()V
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
        "Lcom/baidu/bdgame/sdk/obf/ic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/en;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/en;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/en$1;->a:Lcom/baidu/bdgame/sdk/obf/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ic;)V
    .registers 7

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$1;->a:Lcom/baidu/bdgame/sdk/obf/en;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/en;->a(Lcom/baidu/bdgame/sdk/obf/en;)Lcom/baidu/bdgame/sdk/obf/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->O()V

    .line 47
    if-nez p1, :cond_2d

    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$1;->a:Lcom/baidu/bdgame/sdk/obf/en;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/en;->a(Lcom/baidu/bdgame/sdk/obf/en;Lcom/baidu/bdgame/sdk/obf/ic;)Lcom/baidu/bdgame/sdk/obf/ic;

    .line 49
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/en$1;->a:Lcom/baidu/bdgame/sdk/obf/en;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$1;->a:Lcom/baidu/bdgame/sdk/obf/en;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/en;->b(Lcom/baidu/bdgame/sdk/obf/en;)Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    if-nez v0, :cond_22

    const-string v0, ""

    :goto_1e
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/en;->a(Lcom/baidu/bdgame/sdk/obf/en;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_21
    return-void

    .line 49
    :cond_22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$1;->a:Lcom/baidu/bdgame/sdk/obf/en;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/en;->b(Lcom/baidu/bdgame/sdk/obf/en;)Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 52
    :cond_2d
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 53
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/en$1;->a:Lcom/baidu/bdgame/sdk/obf/en;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$1;->a:Lcom/baidu/bdgame/sdk/obf/en;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/en;->b(Lcom/baidu/bdgame/sdk/obf/en;)Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    if-nez v0, :cond_45

    const-string v0, ""

    :goto_41
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/en;->b(Lcom/baidu/bdgame/sdk/obf/en;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$1;->a:Lcom/baidu/bdgame/sdk/obf/en;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/en;->b(Lcom/baidu/bdgame/sdk/obf/en;)Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 56
    :cond_50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$1;->a:Lcom/baidu/bdgame/sdk/obf/en;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/en;->a(Lcom/baidu/bdgame/sdk/obf/en;)Lcom/baidu/bdgame/sdk/obf/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    goto :goto_21
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 41
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ic;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/en$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ic;)V

    return-void
.end method
