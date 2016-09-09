.class public Lmobisocial/omlib/service/gcm/OmlibGcmInstanceIDListenerService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "OmlibGcmInstanceIDListenerService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .registers 3

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobisocial.omlib.action.REFRESH_GCM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lmobisocial/omlib/service/gcm/OmlibGcmInstanceIDListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, v0}, Lmobisocial/omlib/service/gcm/OmlibGcmInstanceIDListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 21
    return-void
.end method
