.class final Lcom/baidu/bdgame/sdk/obf/y$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/y;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/y;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/y;)V
    .registers 2

    .prologue
    .line 256
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/y$12;->a:Lcom/baidu/bdgame/sdk/obf/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/y$12;->a:Lcom/baidu/bdgame/sdk/obf/y;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/y;->a(Lcom/baidu/bdgame/sdk/obf/y;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/md;->a(Ljava/lang/String;)Z

    move-result v2

    .line 262
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/lw;->c(Ljava/lang/String;)Z

    move-result v0

    .line 263
    if-nez v2, :cond_1e

    if-eqz v0, :cond_7a

    .line 265
    :cond_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/y$12;->a:Lcom/baidu/bdgame/sdk/obf/y;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/y;->k(Lcom/baidu/bdgame/sdk/obf/y;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 266
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/y$12;->a:Lcom/baidu/bdgame/sdk/obf/y;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/y;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/y$12$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/y$12$1;-><init>(Lcom/baidu/bdgame/sdk/obf/y$12;ZLjava/lang/String;)V

    invoke-static {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/ca;->e(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 288
    :goto_39
    if-eqz v0, :cond_5a

    .line 289
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/y$12;->a:Lcom/baidu/bdgame/sdk/obf/y;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/y;->l(Lcom/baidu/bdgame/sdk/obf/y;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/y$12;->a:Lcom/baidu/bdgame/sdk/obf/y;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/y;->l(Lcom/baidu/bdgame/sdk/obf/y;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/y$12;->a:Lcom/baidu/bdgame/sdk/obf/y;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/y;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_verifycode_getting"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 295
    :cond_5a
    :goto_5a
    return-void

    .line 274
    :cond_5b
    const/4 v0, 0x0

    .line 275
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v3

    .line 276
    if-eqz v3, :cond_6a

    .line 277
    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ax;->g()Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_6a
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/y$12;->a:Lcom/baidu/bdgame/sdk/obf/y;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/y;->k()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/y$12$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/y$12$2;-><init>(Lcom/baidu/bdgame/sdk/obf/y$12;ZLjava/lang/String;)V

    invoke-static {v3, v1, v0, v4}, Lcom/baidu/bdgame/sdk/obf/ca;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_39

    .line 293
    :cond_7a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/y$12;->a:Lcom/baidu/bdgame/sdk/obf/y;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/y;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/y$12;->a:Lcom/baidu/bdgame/sdk/obf/y;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/y;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_wrong_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    goto :goto_5a
.end method
