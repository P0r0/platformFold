.class public Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;
.super Landroid/app/Activity;


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoBaseActvitiy"


# instance fields
.field public hideKeyboradListener:Landroid/view/View$OnTouchListener;

.field private mHomeKeyEventReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/fy;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/fy;-><init>(Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->mHomeKeyEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/vivo/sdkplugin/activity/fz;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/fz;-><init>(Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->hideKeyboradListener:Landroid/view/View$OnTouchListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->mHomeKeyEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->mHomeKeyEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onHomeKeyLongPress()V
    .registers 3

    const-string v0, "VivoBaseActvitiy"

    const-string v1, "-----------onHomeKeyLongPress ()-------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHomeKeyShortPress()V
    .registers 3

    const-string v0, "VivoBaseActvitiy"

    const-string v1, "-----------onHomeKeyShortPress ()-------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->finish()V

    return-void
.end method
