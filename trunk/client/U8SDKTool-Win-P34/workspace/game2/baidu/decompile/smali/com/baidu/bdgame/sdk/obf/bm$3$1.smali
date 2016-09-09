.class final Lcom/baidu/bdgame/sdk/obf/bm$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bm$3;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/s;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/bm$3;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bm$3;Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 3

    .prologue
    .line 480
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->a:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cf;->a(Landroid/content/Context;I)V

    .line 486
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->l()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 488
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/bm$3;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cs;->c(I)V

    .line 489
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->b:Lcom/baidu/bdgame/sdk/obf/bm$3;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$3;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->a:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bm$3$1;->a:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/bm$3$1$1;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/bm$3$1$1;-><init>(Lcom/baidu/bdgame/sdk/obf/bm$3$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ag;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;

    .line 508
    return-void
.end method
