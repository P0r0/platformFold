.class final Lcom/vivo/sdkplugin/activity/cY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cY;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cY;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cY;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    const-string v1, "\u9a8c\u8bc1\u7801\u4e3a\u7a7a"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cY;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->t(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cY;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    const-string v1, "\u5bc6\u7801\u4e3a\u7a7a"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22

    :cond_45
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cY;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cY;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->checkVerifyNum(Landroid/content/Context;Landroid/widget/EditText;)Z

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cY;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cY;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->t(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->checkPwd(Landroid/content/Context;Landroid/widget/EditText;)Z

    move-result v1

    const-string v2, "PhoneRegisterCommitActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--------isPwd---------"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cY;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    const-string v1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22

    :cond_85
    if-nez v1, :cond_95

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cY;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    const-string v1, "\u5bc6\u7801\u683c\u5f0f\u9519\u8bef"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22

    :cond_95
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cY;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->c(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;I)V

    goto :goto_22
.end method
