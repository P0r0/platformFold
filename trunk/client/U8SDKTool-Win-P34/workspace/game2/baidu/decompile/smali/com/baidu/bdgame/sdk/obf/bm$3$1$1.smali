.class final Lcom/baidu/bdgame/sdk/obf/bm$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bm$3$1;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bm$3$1;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bm$3$1;)V
    .registers 2

    .prologue
    .line 489
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 493
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$3$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->m()V

    .line 494
    if-nez p1, :cond_37

    .line 495
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$3$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$3$1;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/bm$3;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "bdp_passport_login"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v4}, Lcom/baidu/bdgame/sdk/obf/cs;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 506
    :goto_36
    return-void

    .line 498
    :cond_37
    const v0, 0x8ca5

    if-ne p1, v0, :cond_57

    .line 499
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$3$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->r(Lcom/baidu/bdgame/sdk/obf/bm;)V

    .line 504
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$3$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_36

    .line 500
    :cond_57
    const/4 v0, -0x1

    if-eq p1, v0, :cond_45

    .line 501
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$3$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$3$1;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/bm$3;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cs;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/nn;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {v0, v1, v4}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    goto :goto_45
.end method
