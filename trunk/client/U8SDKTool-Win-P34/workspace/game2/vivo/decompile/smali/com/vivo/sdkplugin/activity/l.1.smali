.class final Lcom/vivo/sdkplugin/activity/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 11

    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "change_password_layout"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2e

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-class v2, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1, v0, v8}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "security_question_layout"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_76

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuesTion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6b

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1, v7, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;ILandroid/os/Bundle;)V

    goto :goto_2d

    :cond_6b
    const-string v1, "type"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1, v5, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;ILandroid/os/Bundle;)V

    goto :goto_2d

    :cond_76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "phone_num_layout"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_9a

    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1, v5, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    goto :goto_2d

    :cond_9a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "vivo_account_personal_center_gift_layout"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_fa

    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mActivity:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    if-eqz v0, :cond_bf

    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mActivity:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_bf

    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mActivity:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->finish()V

    :cond_bf
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-string v1, "\u6e38\u5ba2\u65e0\u6cd5\u4f7f\u7528\u793c\u5238"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d

    :cond_da
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v2, v2, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-class v3, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tab"

    const-string v3, "\u793c\u5238"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2d

    :cond_fa
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "temp_update_btn"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_12a

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-class v2, Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "visitor"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->finish()V

    goto/16 :goto_2d

    :cond_12a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "vivo_account_personal_center_vcoin_btn"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_16c

    const-string v0, "AccountPersonalCenterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vivo_account_personal_center_vcoin_btn"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getLoginSk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    const-class v2, Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1, v0, v5}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2d

    :cond_16c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "switch_account_btn"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/l;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    goto/16 :goto_2d
.end method
