.class final Lcom/baidu/bdgame/sdk/obf/ge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ge;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/o",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/gf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ge;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ge;Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;)V
    .registers 3

    .prologue
    .line 83
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->a:Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/gf;)V
    .registers 12

    .prologue
    const/16 v7, 0xd6

    const/4 v6, 0x0

    .line 87
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestOrder .. onCallback resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->O()V

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;Lcom/baidu/bdgame/sdk/obf/gf;)Lcom/baidu/bdgame/sdk/obf/gf;

    .line 90
    if-nez p1, :cond_35

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->i()V

    .line 148
    :goto_34
    return-void

    .line 92
    :cond_35
    const v0, 0x5e435

    if-ne p1, v0, :cond_aa

    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v2

    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->a:Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;->getWeiXinPlugInVersion()I

    move-result v0

    if-lez v0, :cond_9d

    .line 98
    const-string v0, "bdp_paycenter_weixin_app_need_update"

    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v0, "bdp_paycenter_weixin_app_update"

    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_58
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ms;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v4}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/ev;->l()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/baidu/bdgame/sdk/obf/ms;-><init>(Landroid/content/Context;)V

    .line 105
    const-string v4, "bdp_paycenter_weixin_pay_by_others"

    invoke-static {v2, v4}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/ge$1$2;

    invoke-direct {v4, p0, v3}, Lcom/baidu/bdgame/sdk/obf/ge$1$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ge$1;Lcom/baidu/bdgame/sdk/obf/ms;)V

    sget-object v5, Lcom/baidu/bdgame/sdk/obf/ms$a;->b:Lcom/baidu/bdgame/sdk/obf/ms$a;

    invoke-virtual {v3, v2, v4, v5}, Lcom/baidu/bdgame/sdk/obf/ms;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/baidu/bdgame/sdk/obf/ms$a;)Lcom/baidu/bdgame/sdk/obf/ms;

    move-result-object v2

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/ge$1$1;

    invoke-direct {v4, p0, v3}, Lcom/baidu/bdgame/sdk/obf/ge$1$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ge$1;Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v2, v0, v4}, Lcom/baidu/bdgame/sdk/obf/ms;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/baidu/bdgame/sdk/obf/ms;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ms;->a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ms;

    .line 125
    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ms;->show()V

    .line 127
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v7}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_34

    .line 101
    :cond_9d
    const-string v0, "bdp_paycenter_weixin_app_not_installed"

    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v0, "bdp_paycenter_weixin_app_install"

    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    .line 129
    :cond_aa
    const v0, 0x5e436

    if-ne p1, v0, :cond_e9

    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->d(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jz;->a()Z

    move-result v0

    if-nez v0, :cond_d2

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ev;->b(Landroid/os/Bundle;)Z

    .line 135
    :cond_d2
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v7}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto/16 :goto_34

    .line 138
    :cond_e9
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 139
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->e(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/gf;

    move-result-object v0

    if-nez v0, :cond_102

    const-string v0, ""

    :goto_fd
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_34

    :cond_102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->e(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gf;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_fd

    .line 142
    :cond_10d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v7}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto/16 :goto_34
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 83
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/gf;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ge$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/gf;)V

    return-void
.end method
