.class final Lcom/baidu/bdgame/sdk/obf/fj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fj;->m()V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fj;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fj;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fj$3;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ic;)V
    .registers 7

    .prologue
    .line 180
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$3;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Lcom/baidu/bdgame/sdk/obf/fj;)Lcom/baidu/bdgame/sdk/obf/fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->O()V

    .line 181
    if-nez p1, :cond_2d

    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$3;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Lcom/baidu/bdgame/sdk/obf/fj;Lcom/baidu/bdgame/sdk/obf/ic;)Lcom/baidu/bdgame/sdk/obf/ic;

    .line 183
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fj$3;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$3;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fj;->i(Lcom/baidu/bdgame/sdk/obf/fj;)Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    if-nez v0, :cond_22

    const-string v0, ""

    :goto_1e
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Lcom/baidu/bdgame/sdk/obf/fj;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_21
    return-void

    .line 183
    :cond_22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$3;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fj;->i(Lcom/baidu/bdgame/sdk/obf/fj;)Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 186
    :cond_2d
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 187
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fj$3;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$3;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fj;->i(Lcom/baidu/bdgame/sdk/obf/fj;)Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    if-nez v0, :cond_45

    const-string v0, ""

    :goto_41
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/fj;->b(Lcom/baidu/bdgame/sdk/obf/fj;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$3;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fj;->i(Lcom/baidu/bdgame/sdk/obf/fj;)Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 190
    :cond_50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$3;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Lcom/baidu/bdgame/sdk/obf/fj;)Lcom/baidu/bdgame/sdk/obf/fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    .line 194
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fj$3;->a:Lcom/baidu/bdgame/sdk/obf/fj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Lcom/baidu/bdgame/sdk/obf/fj;)Lcom/baidu/bdgame/sdk/obf/fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe0

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_21
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 175
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ic;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fj$3;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ic;)V

    return-void
.end method
