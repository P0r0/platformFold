.class final Lcom/vivo/sdkplugin/activity/cP;
.super Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;JJ)V
    .registers 8

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cP;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 4

    const-string v0, "007"

    const-string v1, "1"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cP;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->b(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cP;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->b(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->startServiceSendGameInfo(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cP;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->a(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAutoLogin(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cP;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->b(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->setloginStartTime(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cP;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->c(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Lcom/vivo/sdkplugin/activity/cP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/cP;->cancel()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cP;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->finish()V

    return-void
.end method

.method public final onTick(JI)V
    .registers 7

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cP;->a:Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->d(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------onTick------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
