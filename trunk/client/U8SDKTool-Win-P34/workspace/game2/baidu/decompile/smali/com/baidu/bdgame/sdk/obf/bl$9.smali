.class final Lcom/baidu/bdgame/sdk/obf/bl$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bl;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bl;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bl;)V
    .registers 2

    .prologue
    .line 233
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bl;->e(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 242
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bl;->e(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cf;->a(Landroid/content/Context;I)V

    .line 243
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bl;->e(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->l()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 245
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bl;->e(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bl;->e(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cs;->c(I)V

    .line 246
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Lcom/baidu/bdgame/sdk/obf/bl;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bl;->d(Lcom/baidu/bdgame/sdk/obf/bl;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/lm;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 249
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/bl;->j(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v3

    if-eqz v3, :cond_bf

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/bl;->j(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/s;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/bl;->d(Lcom/baidu/bdgame/sdk/obf/bl;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 252
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bl;->e(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/bl;->j(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/bl$9$1;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/bl$9$1;-><init>(Lcom/baidu/bdgame/sdk/obf/bl$9;)V

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ag;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;

    .line 309
    :goto_be
    return-void

    .line 281
    :cond_bf
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bl$9;->a:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/bl;->e(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/bl$9$2;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/bl$9$2;-><init>(Lcom/baidu/bdgame/sdk/obf/bl$9;)V

    invoke-static {v2, v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/ca;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;

    goto :goto_be
.end method
