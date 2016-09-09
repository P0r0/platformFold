.class final Lcom/vivo/sdkplugin/activity/dJ;
.super Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;JJ)V
    .registers 10

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dJ;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const-wide/16 v0, 0x7530

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;-><init>(JJ)V

    invoke-static {p1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->p(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "30"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dJ;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "---------\u9875\u9762finish\u4e86\uff0c\u5b9a\u65f6\u5668\u4e0d\u80fdonFinish\u4e86-----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---------onFinish()------requestSucess: -: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dJ;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->q(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dJ;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dJ;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->q(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dJ;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->r(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    goto :goto_f
.end method

.method public final onTick(JI)V
    .registers 7

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dJ;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "---------\u9875\u9762finish\u4e86\uff0c\u5b9a\u65f6\u5668\u4e0d\u80fdonTick\u4e86-----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "millisUntilFinished: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dJ;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->p(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method
