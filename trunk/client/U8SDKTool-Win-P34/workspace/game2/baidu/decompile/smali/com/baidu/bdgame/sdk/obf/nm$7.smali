.class final Lcom/baidu/bdgame/sdk/obf/nm$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/nm;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/nm;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/nm;)V
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nm$7;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$7;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->g(Lcom/baidu/bdgame/sdk/obf/nm;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 178
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$7;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->e(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 179
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$7;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nm;->a(Lcom/baidu/bdgame/sdk/obf/nm;Z)Z

    .line 180
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$7;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->h(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nm$7;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_pwd_hidden"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    :goto_2e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$7;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->e(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 187
    return-void

    .line 182
    :cond_3a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$7;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->e(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 183
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$7;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nm;->a(Lcom/baidu/bdgame/sdk/obf/nm;Z)Z

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$7;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->h(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nm$7;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_pwd_shown"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2e
.end method
