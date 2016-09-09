.class final Lcom/baidu/bdgame/sdk/obf/bm$27;
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
    .line 403
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cf;->a(Landroid/content/Context;I)V

    .line 409
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->l()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 411
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mh;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 412
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->o(Lcom/baidu/bdgame/sdk/obf/bm;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 413
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_fail_send_sms_register"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 437
    :goto_55
    return-void

    .line 415
    :cond_56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_fail_send_sms_fast_play"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    goto :goto_55

    .line 420
    :cond_74
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bm$27$1;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bm$27$1;-><init>(Lcom/baidu/bdgame/sdk/obf/bm$27;Landroid/content/Context;)V

    .line 435
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_dialog_loading_account_create"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/cs;->c(I)V

    .line 436
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bm$27;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bx;)Lcom/baidu/bdgame/sdk/obf/bz;

    goto :goto_55
.end method
