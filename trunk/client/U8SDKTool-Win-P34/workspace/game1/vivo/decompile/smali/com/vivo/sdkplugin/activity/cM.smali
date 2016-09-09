.class final Lcom/vivo/sdkplugin/activity/cM;
.super Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;JJ)V
    .registers 10

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cM;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    const-wide/16 v0, 0x7d0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cM;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->t(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    return-void
.end method

.method public final onTick(JI)V
    .registers 7

    const-string v0, "PLUGIN_LoginActivity"

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
