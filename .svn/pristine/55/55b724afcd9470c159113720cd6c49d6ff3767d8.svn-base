.class public Lmobisocial/omlib/jobs/PushRegistrationJobHandler;
.super Ljava/lang/Object;
.source "PushRegistrationJobHandler.java"

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
.field public static final TYPE:Ljava/lang/String; = "push-registration"


# instance fields
.field public pushKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pushKey"
    .end annotation
.end field

.field public pushType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pushType"
    .end annotation
.end field

.field private transient synchronousCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;->synchronousCallback:Ljava/lang/Runnable;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "synchronousCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;->synchronousCallback:Ljava/lang/Runnable;

    .line 47
    return-void
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    const-string v0, "push-registration"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 32
    const-wide v0, 0x492559f64fL

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    .registers 6
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;-><init>()V

    .line 61
    .local v0, "req":Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDPushKey;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDPushKey;-><init>()V

    iput-object v2, v0, Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;->PushKey:Lmobisocial/longdan/LDProtocols$LDPushKey;

    .line 62
    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;->PushKey:Lmobisocial/longdan/LDProtocols$LDPushKey;

    iget-object v3, p0, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;->pushType:Ljava/lang/String;

    iput-object v3, v2, Lmobisocial/longdan/LDProtocols$LDPushKey;->Type:Ljava/lang/String;

    .line 63
    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;->PushKey:Lmobisocial/longdan/LDProtocols$LDPushKey;

    iget-object v3, p0, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;->pushKey:Ljava/lang/String;

    iput-object v3, v2, Lmobisocial/longdan/LDProtocols$LDPushKey;->Key:Ljava/lang/String;

    .line 64
    new-instance v1, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    invoke-direct {v1, v0}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    .line 65
    .local v1, "sendJob":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 66
    const/4 v2, 0x0

    return-object v2
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 51
    return-void
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 71
    iget-object v0, p0, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;->synchronousCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;->synchronousCallback:Ljava/lang/Runnable;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 72
    iget-object v0, p0, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;->synchronousCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 74
    :cond_f
    return-void
.end method
