.class final Lcom/baidu/bdgame/sdk/obf/gw$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gw;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gw;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gw;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gw$4;->a:Lcom/baidu/bdgame/sdk/obf/gw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gw$4;->a:Lcom/baidu/bdgame/sdk/obf/gw;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/gw;->b(Lcom/baidu/bdgame/sdk/obf/gw;Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gw$4;->a:Lcom/baidu/bdgame/sdk/obf/gw;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gw;->b(Lcom/baidu/bdgame/sdk/obf/gw;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 146
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gw$4;->a:Lcom/baidu/bdgame/sdk/obf/gw;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gw;->c(Lcom/baidu/bdgame/sdk/obf/gw;)Lcom/baidu/bdgame/sdk/obf/gx;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gw$4;->a:Lcom/baidu/bdgame/sdk/obf/gw;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/gw;->c(Lcom/baidu/bdgame/sdk/obf/gw;)Lcom/baidu/bdgame/sdk/obf/gx;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gw$4;->a:Lcom/baidu/bdgame/sdk/obf/gw;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/gw;->a(Lcom/baidu/bdgame/sdk/obf/gw;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/gx;->b(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/gx;->a(J)V

    .line 159
    :cond_3a
    :goto_3a
    return-void

    .line 150
    :cond_3b
    :try_start_3b
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gw$4;->a:Lcom/baidu/bdgame/sdk/obf/gw;

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/gw;->a(Lcom/baidu/bdgame/sdk/obf/gw;F)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 152
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gw$4;->a:Lcom/baidu/bdgame/sdk/obf/gw;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/gw;->c(Lcom/baidu/bdgame/sdk/obf/gw;)Lcom/baidu/bdgame/sdk/obf/gx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/gx;->a(F)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_50} :catch_51

    goto :goto_3a

    .line 154
    :catch_51
    move-exception v0

    .line 155
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gw$4;->a:Lcom/baidu/bdgame/sdk/obf/gw;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gw;->b(Lcom/baidu/bdgame/sdk/obf/gw;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gw$4;->a:Lcom/baidu/bdgame/sdk/obf/gw;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gw;->g(Lcom/baidu/bdgame/sdk/obf/gw;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->g(Landroid/content/Context;)V

    goto :goto_3a
.end method
