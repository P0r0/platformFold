.class final Lcom/baidu/bdgame/sdk/obf/bm$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bm;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bm;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bm;)V
    .registers 2

    .prologue
    .line 618
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bm$6;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$6;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->l()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 625
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$6;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bm$6;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cs;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/nn;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 627
    return-void
.end method
