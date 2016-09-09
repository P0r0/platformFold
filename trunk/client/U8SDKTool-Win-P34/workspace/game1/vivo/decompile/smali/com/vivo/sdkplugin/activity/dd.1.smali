.class final Lcom/vivo/sdkplugin/activity/dd;
.super Landroid/os/CountDownTimer;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;JJ)V
    .registers 10

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dd;->c:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_get_verify_code_wait"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/dd;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 2

    const-string v0, "-----------onFinish----------:"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dd;->c:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->b(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    return-void
.end method

.method public final onTick(J)V
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-----------onTick----------:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    sput-boolean v3, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->isfinished:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dd;->c:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0, p1, p2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;J)V

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dd;->a:Ljava/lang/String;

    const-string v2, "*"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/dd;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dd;->c:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dd;->c:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dd;->c:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->m(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dd;->c:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->n(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dd;->c:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    const-string v2, "vivo_register_other_unclick"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->c(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dd;->c:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->n(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method
