.class final Lcom/baidu/bdgame/sdk/obf/dw$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dw;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dw;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dw;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dw$7;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dw$7;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dw$7;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/dw;->c(Lcom/baidu/bdgame/sdk/obf/dw;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dw;->a(Lcom/baidu/bdgame/sdk/obf/dw;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dw$7;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dw;->f(Lcom/baidu/bdgame/sdk/obf/dw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 139
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dw$7;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dw;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dw$7;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dw;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_empty_verifycode"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dw$7;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dw;->c(Lcom/baidu/bdgame/sdk/obf/dw;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 153
    :cond_3d
    :goto_3d
    return-void

    .line 143
    :cond_3e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dw$7;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dw;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dw$7;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/dw;->f(Lcom/baidu/bdgame/sdk/obf/dw;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/dw$7$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/dw$7$1;-><init>(Lcom/baidu/bdgame/sdk/obf/dw$7;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ca;->c(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 150
    if-eqz v0, :cond_3d

    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dw$7;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dw$7;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dw;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_verify"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dw;->c(I)V

    goto :goto_3d
.end method