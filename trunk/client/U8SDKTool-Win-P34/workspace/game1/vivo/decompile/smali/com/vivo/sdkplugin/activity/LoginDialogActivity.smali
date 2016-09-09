.class public Lcom/vivo/sdkplugin/activity/LoginDialogActivity;
.super Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private d:Lcom/vivo/sdkplugin/activity/cP;

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;-><init>()V

    const-class v0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->a:Ljava/lang/String;

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->d:Lcom/vivo/sdkplugin/activity/cP;

    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->e:I

    new-instance v0, Lcom/vivo/sdkplugin/activity/cO;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/cO;-><init>(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->c:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Lcom/vivo/sdkplugin/activity/cP;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->d:Lcom/vivo/sdkplugin/activity/cP;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onBackPressed()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->startServiceCancelLogin(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->a:Ljava/lang/String;

    const-string v1, "**********onCreate*************"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_account_logindialog"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->setContentView(I)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/cP;

    iget v1, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->e:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/sdkplugin/activity/cP;-><init>(Lcom/vivo/sdkplugin/activity/LoginDialogActivity;JJ)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->d:Lcom/vivo/sdkplugin/activity/cP;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->d:Lcom/vivo/sdkplugin/activity/cP;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/cP;->start()Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->c:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "auto_login_info"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "auto_login_switch_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->c:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_9f

    const-string v0, "\u6e38\u5ba2\u5e10\u53f7"

    :goto_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->c:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6b63\u5728\u767b\u5f55\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->c:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getSecretAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6d
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->a:Ljava/lang/String;

    const-string v1, "-------onDestroy() --------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->d:Lcom/vivo/sdkplugin/activity/cP;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/cP;->cancel()V

    return-void
.end method

.method protected onRestart()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onRestart()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->a:Ljava/lang/String;

    const-string v1, "-------onRestart() --------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->d:Lcom/vivo/sdkplugin/activity/cP;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->d:Lcom/vivo/sdkplugin/activity/cP;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/cP;->start()Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    :cond_13
    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onStop()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->a:Ljava/lang/String;

    const-string v1, "-------onStop() --------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;->d:Lcom/vivo/sdkplugin/activity/cP;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/cP;->pause()V

    return-void
.end method
