.class final Lcom/baidu/bdgame/sdk/obf/ft$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ft;->a(Lcom/baidu/bdgame/sdk/obf/ec;Ljava/lang/String;Ljava/lang/String;J)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ft;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ft;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ft$2;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ji;)V
    .registers 7

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft$2;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ft;->a(Lcom/baidu/bdgame/sdk/obf/ft;)Lcom/baidu/bdgame/sdk/obf/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fv;->O()V

    .line 93
    if-nez p1, :cond_2d

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft$2;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ft;->a(Lcom/baidu/bdgame/sdk/obf/ft;Lcom/baidu/bdgame/sdk/obf/ji;)Lcom/baidu/bdgame/sdk/obf/ji;

    .line 95
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft$2;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft$2;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ft;->b(Lcom/baidu/bdgame/sdk/obf/ft;)Lcom/baidu/bdgame/sdk/obf/ji;

    move-result-object v0

    if-nez v0, :cond_22

    const-string v0, ""

    :goto_1e
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ft;->a(Lcom/baidu/bdgame/sdk/obf/ft;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_21
    return-void

    .line 95
    :cond_22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft$2;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ft;->b(Lcom/baidu/bdgame/sdk/obf/ft;)Lcom/baidu/bdgame/sdk/obf/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ji;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 97
    :cond_2d
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 98
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft$2;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft$2;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ft;->b(Lcom/baidu/bdgame/sdk/obf/ft;)Lcom/baidu/bdgame/sdk/obf/ji;

    move-result-object v0

    if-nez v0, :cond_45

    const-string v0, ""

    :goto_41
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ft;->b(Lcom/baidu/bdgame/sdk/obf/ft;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft$2;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ft;->b(Lcom/baidu/bdgame/sdk/obf/ft;)Lcom/baidu/bdgame/sdk/obf/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ji;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 100
    :cond_50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft$2;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ft;->a(Lcom/baidu/bdgame/sdk/obf/ft;)Lcom/baidu/bdgame/sdk/obf/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fv;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    goto :goto_21
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 87
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ji;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ft$2;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ji;)V

    return-void
.end method
