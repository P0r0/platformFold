.class public Lmobisocial/omlib/jobs/GcmRegistrationJobHandler;
.super Ljava/lang/Object;
.source "GcmRegistrationJobHandler.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableJobHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/client/interfaces/DurableJobHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final GCM_SENDER_ID:Ljava/lang/String; = "36766933564"

.field public static final TYPE:Ljava/lang/String; = "gcm-registration"


# instance fields
.field private transient synchronousCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlib/jobs/GcmRegistrationJobHandler;->synchronousCallback:Ljava/lang/Runnable;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "synchronousCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lmobisocial/omlib/jobs/GcmRegistrationJobHandler;->synchronousCallback:Ljava/lang/Runnable;

    .line 46
    return-void
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    const-string v0, "gcm-registration"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 33
    const-wide v0, 0x492559f64fL

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    .registers 11
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 60
    :try_start_1
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v1

    .line 61
    .local v1, "instanceID":Lcom/google/android/gms/iid/InstanceID;
    const-string v5, "36766933564"

    const-string v6, "GCM"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "token":Ljava/lang/String;
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;-><init>()V

    .line 63
    .local v2, "req":Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;
    new-instance v5, Lmobisocial/longdan/LDProtocols$LDPushKey;

    invoke-direct {v5}, Lmobisocial/longdan/LDProtocols$LDPushKey;-><init>()V

    iput-object v5, v2, Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;->PushKey:Lmobisocial/longdan/LDProtocols$LDPushKey;

    .line 64
    iget-object v5, v2, Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;->PushKey:Lmobisocial/longdan/LDProtocols$LDPushKey;

    const-string v6, "GCM"

    iput-object v6, v5, Lmobisocial/longdan/LDProtocols$LDPushKey;->Type:Ljava/lang/String;

    .line 65
    iget-object v5, v2, Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;->PushKey:Lmobisocial/longdan/LDProtocols$LDPushKey;

    iput-object v4, v5, Lmobisocial/longdan/LDProtocols$LDPushKey;->Key:Ljava/lang/String;

    .line 66
    new-instance v3, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    invoke-direct {v3, v2}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    .line 67
    .local v3, "sendJob":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v5

    invoke-virtual {v5, v3}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_34} :catch_35

    .line 68
    return-object v8

    .line 69
    .end local v1    # "instanceID":Lcom/google/android/gms/iid/InstanceID;
    .end local v2    # "req":Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;
    .end local v3    # "sendJob":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    .end local v4    # "token":Ljava/lang/String;
    :catch_35
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lmobisocial/longdan/exception/LongdanNetworkException;

    invoke-direct {v5, v0}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 50
    return-void
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 76
    iget-object v0, p0, Lmobisocial/omlib/jobs/GcmRegistrationJobHandler;->synchronousCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmobisocial/omlib/jobs/GcmRegistrationJobHandler;->synchronousCallback:Ljava/lang/Runnable;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 77
    iget-object v0, p0, Lmobisocial/omlib/jobs/GcmRegistrationJobHandler;->synchronousCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 79
    :cond_f
    return-void
.end method
