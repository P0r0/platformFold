.class final Lcom/vivo/sdkplugin/activity/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bk;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    const/4 v6, 0x4

    const/4 v5, 0x3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "FindPasswordActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "question_num="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/bk;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->r(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bbkAccountManager.getQuestionNum(questions)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/bk;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->g(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/bk;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->f(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuestionNum(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bk;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->r(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)I

    move-result v1

    if-ge v1, v5, :cond_5b

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bk;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->r(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bk;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->g(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/bk;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->f(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuestionNum(Ljava/lang/String;)I

    move-result v2

    if-lt v1, v2, :cond_6e

    :cond_5b
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bk;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->s(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bk;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1, v6, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;ILandroid/os/Bundle;)V

    :goto_6a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_6e
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bk;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->t(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bk;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1, v6, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;ILandroid/os/Bundle;)V

    goto :goto_6a
.end method
