.class final Lcom/baidu/bdgame/sdk/obf/nn$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/nn;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/nn;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/nn;)V
    .registers 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nn$11;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$11;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->f(Lcom/baidu/bdgame/sdk/obf/nn;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 214
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$11;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->d(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 215
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$11;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nn;->a(Lcom/baidu/bdgame/sdk/obf/nn;Z)Z

    .line 216
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$11;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->g(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nn$11;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/nn;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_pwd_hidden"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    :goto_2e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$11;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->d(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 223
    return-void

    .line 218
    :cond_3a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$11;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->d(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 219
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$11;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nn;->a(Lcom/baidu/bdgame/sdk/obf/nn;Z)Z

    .line 220
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$11;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->g(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nn$11;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/nn;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_pwd_shown"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2e
.end method