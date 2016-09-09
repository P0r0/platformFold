.class final Lcom/baidu/bdgame/sdk/obf/bm$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bm;->c()V
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
    .line 441
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bm$28;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$28;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->q(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/bm$a;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 447
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$28;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->l()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 449
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$28;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->q(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/bm$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/bm$a;->a()V

    .line 451
    :cond_23
    return-void
.end method
