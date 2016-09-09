.class final Lcom/vivo/sdkplugin/activity/eO;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    const-string v2, "subeditcommit_back"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_23

    :cond_1d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    const-string v2, "subeditcommit_commit_btn"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--------mTempNickName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "----------length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNickName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->c(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    if-nez v1, :cond_85

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->d(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5c0f\u53f7\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22

    :cond_85
    const/4 v2, 0x2

    if-lt v1, v2, :cond_8c

    const/16 v2, 0xa

    if-le v1, v2, :cond_9c

    :cond_8c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->d(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u521b\u5efa\u5931\u8d25\uff0c\u4e0d\u652f\u6301\u6b64\u540d\u79f0"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22

    :cond_9c
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->c(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->finish()V

    goto/16 :goto_22

    :cond_af
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eO;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->e(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V

    goto/16 :goto_22
.end method
