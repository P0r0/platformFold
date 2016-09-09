.class public Lmobisocial/omlib/jobs/ControlMessageJobHandler;
.super Ljava/lang/Object;
.source "ControlMessageJobHandler.java"

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
.field public static final TYPE:Ljava/lang/String; = "CONTROL"


# instance fields
.field public request:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

.field public requestClassName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestClassName"
    .end annotation
.end field

.field public requestJson:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestJson"
    .end annotation
.end field

.field public slice:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "slice"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v0}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Lmobisocial/longdan/LDProtocols$LDFeed;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 3
    .param p1, "request"    # Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Lmobisocial/longdan/LDProtocols$LDFeed;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Lmobisocial/longdan/LDProtocols$LDFeed;)V
    .registers 5
    .param p1, "request"    # Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    .param p2, "sliceKey"    # Lmobisocial/longdan/LDProtocols$LDFeed;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .line 41
    if-eqz p2, :cond_12

    .line 42
    invoke-static {p2}, Lmobisocial/omlib/db/util/OMBase;->safeHashCode(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->slice:Ljava/lang/Long;

    .line 46
    :goto_11
    return-void

    .line 44
    :cond_12
    const-string v0, "CONTROL"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->slice:Ljava/lang/Long;

    goto :goto_11
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string v0, "CONTROL"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->slice:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 6

    .prologue
    .line 67
    :try_start_0
    iget-object v2, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->requestClassName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    .local v1, "requestClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->requestJson:Ljava/lang/String;

    invoke-static {v2, v1}, Lmobisocial/serialization/SerializationUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    iput-object v2, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_12

    .line 69
    const/4 v2, 0x1

    .line 72
    .end local v1    # "requestClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_11
    return v2

    .line 70
    :catch_12
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "Omlib-job"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to reconstitute request of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->requestClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    .registers 5
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Z)V

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 5
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 60
    iget-object v0, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->requestClassName:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->request:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    invoke-static {v0}, Lmobisocial/serialization/SerializationUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;->requestJson:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 5
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 84
    return-void
.end method
