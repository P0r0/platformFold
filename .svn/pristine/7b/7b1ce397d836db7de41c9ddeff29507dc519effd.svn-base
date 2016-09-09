.class final Lcom/vivo/sdkplugin/activity/fx;
.super Landroid/os/CountDownTimer;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;JJ)V
    .registers 10

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/fx;->c:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_get_verify_code_wait"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/fx;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fx;->c:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fx;->c:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_get_verify_code"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/fx;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fx;->c:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->d(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fx;->c:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->d(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final onTick(J)V
    .registers 8

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fx;->c:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fx;->c:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_get_verify_code_one_sec"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/fx;->b:Ljava/lang/String;

    :goto_22
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fx;->c:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->d(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2e
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fx;->a:Ljava/lang/String;

    const-string v2, "*"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/fx;->b:Ljava/lang/String;

    goto :goto_22
.end method
