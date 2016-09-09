.class public Lmobisocial/omlib/service/gcm/OmlibGcmListenerService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "OmlibGcmListenerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WsRpcConnection-gcm"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method

.method public static isGcmAvailable(Landroid/content/Context;)Z
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 24
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_8} :catch_d

    move-result v1

    .line 25
    .local v1, "gcmAvailable":I
    if-nez v1, :cond_c

    const/4 v2, 0x1

    .line 27
    .end local v1    # "gcmAvailable":I
    :cond_c
    :goto_c
    return v2

    .line 26
    :catch_d
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_c
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 33
    const-string v4, "WsRpcConnection-gcm"

    const-string v5, "Received GCM push"

    invoke-static {v4, v5}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v4, "o"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "objString":Ljava/lang/String;
    sget-object v5, Lmobisocial/omlib/client/LongdanClient;->sharedLock:Ljava/lang/Object;

    monitor-enter v5

    .line 37
    :try_start_10
    invoke-static {p0}, Lmobisocial/omlib/service/LongdanClientHelper;->getInstance(Landroid/content/Context;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    .line 38
    .local v0, "client":Lmobisocial/omlib/client/LongdanClient;
    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 39
    monitor-exit v5

    .line 54
    :goto_1b
    return-void

    .line 41
    :cond_1c
    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->startDataSync()V

    .line 42
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_59

    .line 43
    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5c

    .line 44
    const-class v4, Lmobisocial/longdan/LDProtocols$LDMessage;

    invoke-static {v3, v4}, Lmobisocial/serialization/SerializationUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDMessage;

    .line 45
    .local v2, "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    sget v4, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_51

    .line 46
    const-string v4, "WsRpcConnection-gcm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GCM pushed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v6, v6, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_51
    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDurableMessageFromPush(Lmobisocial/longdan/LDProtocols$LDMessage;)V

    goto :goto_1b

    .line 42
    .end local v0    # "client":Lmobisocial/omlib/client/LongdanClient;
    .end local v2    # "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    :catchall_59
    move-exception v4

    :try_start_5a
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v4

    .line 49
    .restart local v0    # "client":Lmobisocial/omlib/client/LongdanClient;
    :cond_5c
    new-instance v1, Landroid/content/Intent;

    const-string v4, "mobisocial.omlib.action.ACCEPT_PUSH_MSG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "mobisocial.omlib.extra.WAKE_LOCK_ID"

    invoke-static {p0}, Lmobisocial/util/PlatformUtils;->obtainWakeLock(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-class v4, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v1}, Lmobisocial/omlib/service/gcm/OmlibGcmListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1b
.end method
