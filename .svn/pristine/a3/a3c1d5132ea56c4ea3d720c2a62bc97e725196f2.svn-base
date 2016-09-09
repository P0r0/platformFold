.class final Lcom/vivo/sdkplugin/activity/dp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->b(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;I)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->g(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->a(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->b(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->g(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->checkEmail(Landroid/content/Context;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->h(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)Lcom/vivo/sdkplugin/accounts/RegisterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->b(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/RegisterManager;->getTimeByUser(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->a(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)V

    goto :goto_12

    :cond_60
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->b(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "account"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->b(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/vivo/sdkplugin/GetVerifyCodeManager;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    iget-object v2, v2, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->i(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vivo/sdkplugin/GetVerifyCodeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->getVerifyCode(Ljava/util/HashMap;)V

    goto :goto_12

    :cond_8f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    const-string v1, "\u8bf7\u8f93\u5165\u60a8\u771f\u5b9e\u90ae\u7bb1"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    :cond_9c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dp;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    const-string v1, "\u90ae\u7bb1\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12
.end method
