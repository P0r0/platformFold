.class final Lcom/vivo/sdkplugin/activity/fy;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private synthetic d:Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/fy;->d:Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "reason"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/fy;->a:Ljava/lang/String;

    const-string v0, "homekey"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/fy;->b:Ljava/lang/String;

    const-string v0, "recentapps"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/fy;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fy;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fy;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v0, "VivoBaseActvitiy"

    const-string v1, "------\u6309\u4e86home\u952e--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fy;->d:Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onHomeKeyShortPress()V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fy;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "VivoBaseActvitiy"

    const-string v1, "------\u957f\u6309\u4e86home\u952e--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fy;->d:Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onHomeKeyLongPress()V

    goto :goto_2c
.end method
