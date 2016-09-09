.class final Lcom/vivo/sdkplugin/activity/S;
.super Landroid/os/CountDownTimer;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;JJ)V
    .registers 10

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/S;->c:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vivo_get_verify_code_wait"

    invoke-static {p1, v1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/S;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 5

    const/4 v3, 0x1

    const-string v0, "BindPhoneActivityLog"

    const-string v1, "VerifyCountDownTimer.onFinish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/S;->c:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/S;->c:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    const-string v2, "vivo_get_verify_code"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/S;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/S;->c:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->d(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/S;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/S;->c:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->d(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/S;->c:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->e(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public final onTick(J)V
    .registers 8

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/S;->a:Ljava/lang/String;

    const-string v3, "*"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/S;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/S;->c:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->d(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/S;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
