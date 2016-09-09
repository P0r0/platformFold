.class public Lcom/vivo/assist/command/StartGiftActivityCommand;
.super Lcom/vivo/assist/command/BaseCommand;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/assist/command/BaseCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public excute(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/assist/AssistWindowManager;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/vivo/assist/command/BaseCommand;->excute(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/assist/AssistWindowManager;)V

    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mActivity:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mActivity:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mActivity:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->finish()V

    :cond_14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    const-string v2, "\u793c\u5305"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
