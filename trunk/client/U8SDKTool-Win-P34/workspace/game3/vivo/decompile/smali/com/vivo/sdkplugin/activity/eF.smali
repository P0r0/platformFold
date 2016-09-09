.class final Lcom/vivo/sdkplugin/activity/eF;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eF;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eF;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    const-string v2, "subaddcommit_back"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eF;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_23

    :cond_1d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eF;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eF;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    const-string v2, "subaddcommit_commit_btn"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eF;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eF;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eF;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->c(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------mNickName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eF;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->c(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----------length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eF;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->d(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5c0f\u53f7\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22

    :cond_86
    const/4 v1, 0x2

    if-lt v0, v1, :cond_8d

    const/16 v1, 0xa

    if-le v0, v1, :cond_9d

    :cond_8d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eF;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->d(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u521b\u5efa\u5931\u8d25\uff0c\u4e0d\u652f\u6301\u6b64\u540d\u79f0"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22

    :cond_9d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eF;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->e(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)V

    goto :goto_22
.end method
