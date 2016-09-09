.class final Lcom/vivo/sdkplugin/activity/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iput p2, p0, Lcom/vivo/sdkplugin/activity/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    const/4 v5, 0x3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "AccountPersonalCenterActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "question_num="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->r(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bbkAccountManager.getQuestionNum()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuesTion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuestionNum(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->r(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)I

    move-result v1

    if-ge v1, v5, :cond_62

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->r(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuesTion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuestionNum(Ljava/lang/String;)I

    move-result v2

    if-lt v1, v2, :cond_7d

    :cond_62
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget v2, p0, Lcom/vivo/sdkplugin/activity/r;->b:I

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1, v5, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;ILandroid/os/Bundle;)V

    :goto_7c
    return-void

    :cond_7d
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->r(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget v2, p0, Lcom/vivo/sdkplugin/activity/r;->b:I

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/r;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1, v5, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;ILandroid/os/Bundle;)V

    goto :goto_7c
.end method
