.class final Lcom/baidu/bdgame/sdk/obf/gz$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gz;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gz;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gz;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->a(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 159
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_empty_phone_no"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 160
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->a(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 198
    :goto_33
    return-void

    .line 163
    :cond_34
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/gz$11$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/gz$11$1;-><init>(Lcom/baidu/bdgame/sdk/obf/gz$11;)V

    .line 179
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/gz;->g(Lcom/baidu/bdgame/sdk/obf/gz;)I

    move-result v3

    packed-switch v3, :pswitch_data_a8

    move v0, v1

    .line 192
    :goto_43
    if-eqz v0, :cond_91

    .line 193
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->f(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->f(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_verifycode_getting"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_33

    .line 181
    :pswitch_64
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/baidu/bdgame/sdk/obf/ca;->b(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_43

    .line 184
    :pswitch_6f
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v4}, Lcom/baidu/bdgame/sdk/obf/gz;->h(Lcom/baidu/bdgame/sdk/obf/gz;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4, v2}, Lcom/baidu/bdgame/sdk/obf/ca;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_43

    .line 187
    :pswitch_80
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v4}, Lcom/baidu/bdgame/sdk/obf/gz;->i(Lcom/baidu/bdgame/sdk/obf/gz;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4, v2}, Lcom/baidu/bdgame/sdk/obf/ca;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_43

    .line 196
    :cond_91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gz$11;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_token_invalid"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    goto :goto_33

    .line 179
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_64
        :pswitch_6f
        :pswitch_80
    .end packed-switch
.end method
