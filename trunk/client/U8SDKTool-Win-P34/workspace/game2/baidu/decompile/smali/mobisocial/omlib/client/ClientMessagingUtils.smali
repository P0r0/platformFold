.class public Lmobisocial/omlib/client/ClientMessagingUtils;
.super Ljava/lang/Object;
.source "ClientMessagingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;,
        Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;,
        Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;
    }
.end annotation


# static fields
.field static final EMPTY:[B

.field static final TAG:Ljava/lang/String; = "Omlib-msg"

.field static sRandom:Ljava/security/SecureRandom;


# instance fields
.field private final mClient:Lmobisocial/omlib/client/LongdanClient;

.field public final notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lmobisocial/omlib/client/ClientMessagingUtils;->EMPTY:[B

    return-void
.end method

.method constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 3
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils;)V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    .line 68
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlib/client/ClientMessagingUtils;)Lmobisocial/omlib/client/LongdanClient;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/ClientMessagingUtils;

    .prologue
    .line 56
    iget-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    return-object v0
.end method

.method public static declared-synchronized generateMessageId()[B
    .registers 3

    .prologue
    .line 172
    const-class v2, Lmobisocial/omlib/client/ClientMessagingUtils;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lmobisocial/omlib/client/ClientMessagingUtils;->sRandom:Ljava/security/SecureRandom;

    if-nez v1, :cond_e

    .line 173
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Lmobisocial/omlib/client/ClientMessagingUtils;->sRandom:Ljava/security/SecureRandom;

    .line 175
    :cond_e
    const/16 v1, 0x20

    new-array v0, v1, [B

    .line 176
    .local v0, "id":[B
    sget-object v1, Lmobisocial/omlib/client/ClientMessagingUtils;->sRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 177
    monitor-exit v2

    return-object v0

    .line 172
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public delete(JZ)Z
    .registers 11
    .param p1, "objectId"    # J
    .param p3, "localOnly"    # Z

    .prologue
    .line 89
    const/4 v0, 0x1

    new-array v5, v0, [Z

    .line 90
    .local v5, "result":[Z
    iget-object v6, p0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v0, Lmobisocial/omlib/client/ClientMessagingUtils$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lmobisocial/omlib/client/ClientMessagingUtils$1;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils;JZ[Z)V

    invoke-virtual {v6, v0}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 124
    const/4 v0, 0x0

    aget-boolean v0, v5, v0

    return v0
.end method

.method public encodeMessageBody(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">(TTObject;)[B"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "obj":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTObject;"
    invoke-static {p1}, Lmobisocial/serialization/SerializationUtils;->toJson(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public fetchStoryForUrl(Ljava/net/URI;)Lmobisocial/omlib/interfaces/Sendable;
    .registers 10
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDUrlToStoryRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDUrlToStoryRequest;-><init>()V

    .line 129
    .local v1, "getUrlMetadata":Lmobisocial/longdan/LDProtocols$LDUrlToStoryRequest;
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lmobisocial/longdan/LDProtocols$LDUrlToStoryRequest;->Url:Ljava/lang/String;

    .line 131
    :try_start_b
    iget-object v5, p0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v5}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v5

    const-class v6, Lmobisocial/longdan/LDProtocols$LDUrlToStoryResponse;

    invoke-virtual {v5, v1, v6}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v3

    check-cast v3, Lmobisocial/longdan/LDProtocols$LDUrlToStoryResponse;

    .line 132
    .local v3, "response":Lmobisocial/longdan/LDProtocols$LDUrlToStoryResponse;
    iget-object v5, v3, Lmobisocial/longdan/LDProtocols$LDUrlToStoryResponse;->ResponseType:Ljava/lang/String;

    const-string v6, "obj/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 133
    iget-object v5, v3, Lmobisocial/longdan/LDProtocols$LDUrlToStoryResponse;->ResponseType:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "type":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    iget-object v6, v3, Lmobisocial/longdan/LDProtocols$LDUrlToStoryResponse;->ResponseData:[B

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v4, v2}, Lmobisocial/omlib/client/ClientMessagingUtils;->sendableForTypedDictionary(Ljava/lang/String;Lorg/json/JSONObject;)Lmobisocial/omlib/interfaces/Sendable;
    :try_end_3b
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_b .. :try_end_3b} :catch_3d
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_3b} :catch_44

    move-result-object v5

    return-object v5

    .line 137
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "response":Lmobisocial/longdan/LDProtocols$LDUrlToStoryResponse;
    .end local v4    # "type":Ljava/lang/String;
    :catch_3d
    move-exception v0

    .line 138
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 139
    .end local v0    # "e":Lmobisocial/longdan/exception/LongdanException;
    :catch_44
    move-exception v0

    .line 140
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 142
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "response":Lmobisocial/longdan/LDProtocols$LDUrlToStoryResponse;
    :cond_4b
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Story not found"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method finalizeSendable(Lmobisocial/omlib/interfaces/Sendable;)Lmobisocial/omlib/interfaces/Sendable;
    .registers 5
    .param p1, "obj"    # Lmobisocial/omlib/interfaces/Sendable;

    .prologue
    .line 517
    instance-of v1, p1, Lmobisocial/omlib/sendable/JsonSendable;

    if-eqz v1, :cond_12

    .line 519
    :try_start_4
    invoke-interface {p1}, Lmobisocial/omlib/interfaces/Sendable;->getType()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lmobisocial/omlib/sendable/JsonSendable;

    .end local p1    # "obj":Lmobisocial/omlib/interfaces/Sendable;
    invoke-virtual {p1}, Lmobisocial/omlib/sendable/JsonSendable;->getBodyAsJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lmobisocial/omlib/client/ClientMessagingUtils;->sendableForTypedDictionary(Ljava/lang/String;Lorg/json/JSONObject;)Lmobisocial/omlib/interfaces/Sendable;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_13

    move-result-object p1

    .line 525
    :cond_12
    :goto_12
    return-object p1

    .line 520
    :catch_13
    move-exception v0

    .line 521
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Omlib-msg"

    const-string v2, "Error sending object"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 522
    const/4 p1, 0x0

    goto :goto_12
.end method

.method public generateTypedId(Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDTypedId;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDTypedId;-><init>()V

    .line 166
    .local v0, "id":Lmobisocial/longdan/LDProtocols$LDTypedId;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    .line 167
    invoke-static {}, Lmobisocial/omlib/client/ClientMessagingUtils;->generateMessageId()[B

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDTypedId;->Id:[B

    .line 168
    return-object v0
.end method

.method public getHashForSend(Lmobisocial/longdan/LDProtocols$LDMessage;)J
    .registers 6
    .param p1, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;

    .prologue
    .line 183
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDMessage;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDFeed;->Account:Ljava/lang/String;

    invoke-static {v0}, Lmobisocial/omlib/db/util/OMBase;->safeHashCode(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object v2, p1, Lmobisocial/longdan/LDProtocols$LDMessage;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDFeed;->Key:[B

    invoke-static {v2}, Lmobisocial/omlib/db/util/OMBase;->safeHashCode(Ljava/lang/Object;)J

    move-result-wide v2

    xor-long/2addr v2, v0

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    if-eqz v0, :cond_4e

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDMessage;->Body:[B

    :goto_17
    invoke-static {v0}, Lmobisocial/omlib/db/util/OMBase;->safeHashCode(Ljava/lang/Object;)J

    move-result-wide v0

    xor-long/2addr v2, v0

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDMessage;->Deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_51

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDMessage;->Deleted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmobisocial/omlib/db/util/OMBase;->safeHashCode(Ljava/lang/Object;)J

    move-result-wide v0

    xor-long/2addr v2, v0

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDMessage;->Owner:Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDMessage;->Owner:Ljava/lang/String;

    :goto_35
    invoke-static {v0}, Lmobisocial/omlib/db/util/OMBase;->safeHashCode(Ljava/lang/Object;)J

    move-result-wide v0

    xor-long/2addr v2, v0

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDMessage;->Version:Ljava/lang/Long;

    if-eqz v0, :cond_56

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDMessage;->Version:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_44
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lmobisocial/omlib/db/util/OMBase;->safeHashCode(Ljava/lang/Object;)J

    move-result-wide v0

    xor-long/2addr v0, v2

    return-wide v0

    :cond_4e
    sget-object v0, Lmobisocial/omlib/client/ClientMessagingUtils;->EMPTY:[B

    goto :goto_17

    :cond_51
    const/4 v0, 0x0

    goto :goto_26

    :cond_53
    const-string v0, ""

    goto :goto_35

    :cond_56
    const-wide/16 v0, 0x0

    goto :goto_44
.end method

.method public like(J)V
    .registers 6
    .param p1, "objectId"    # J

    .prologue
    .line 72
    new-instance v0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;

    invoke-direct {v0}, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;-><init>()V

    .line 73
    .local v0, "job":Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;
    iput-wide p1, v0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->referenceObjId:J

    .line 74
    const/4 v1, 0x1

    iput v1, v0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->tally:I

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->aggregateLike:Z

    .line 76
    iget-object v1, p0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 77
    return-void
.end method

.method public resetLikes(J)V
    .registers 6
    .param p1, "objectId"    # J

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;

    invoke-direct {v0}, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;-><init>()V

    .line 81
    .local v0, "job":Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;
    iput-wide p1, v0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->referenceObjId:J

    .line 82
    iput v2, v0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->tally:I

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->ignoreExisting:Z

    .line 84
    iput-boolean v2, v0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->aggregateLike:Z

    .line 85
    iget-object v1, p0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 86
    return-void
.end method

.method public send(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/Sendable;)V
    .registers 4
    .param p1, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;
    .param p2, "obj"    # Lmobisocial/omlib/interfaces/Sendable;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmobisocial/omlib/client/ClientMessagingUtils;->send(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/Sendable;Lmobisocial/omlib/interfaces/MessageDeliveryListener;)V

    .line 147
    return-void
.end method

.method public send(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/Sendable;Lmobisocial/omlib/interfaces/MessageDeliveryListener;)V
    .registers 7
    .param p1, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;
    .param p2, "obj"    # Lmobisocial/omlib/interfaces/Sendable;
    .param p3, "listener"    # Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    .prologue
    .line 150
    if-nez p2, :cond_a

    .line 151
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Attempting to send a null object"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_a
    invoke-virtual {p0, p2}, Lmobisocial/omlib/client/ClientMessagingUtils;->finalizeSendable(Lmobisocial/omlib/interfaces/Sendable;)Lmobisocial/omlib/interfaces/Sendable;

    move-result-object p2

    .line 154
    if-nez p2, :cond_11

    .line 158
    :goto_10
    return-void

    .line 156
    :cond_11
    invoke-static {p1, p2, p3}, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->create(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/Sendable;Lmobisocial/omlib/interfaces/MessageDeliveryListener;)Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;

    move-result-object v0

    .line 157
    .local v0, "cmd":Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
    iget-object v1, p0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    goto :goto_10
.end method

.method sendableForTypedDictionary(Ljava/lang/String;Lorg/json/JSONObject;)Lmobisocial/omlib/interfaces/Sendable;
    .registers 30
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    const-string v24, "picture"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14c

    .line 539
    const-string v24, "_imageUrl"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 540
    .local v15, "pictureUriString":Ljava/lang/String;
    if-nez v15, :cond_20

    .line 541
    new-instance v24, Ljava/io/IOException;

    const-string v25, "no picture specified"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 542
    :cond_20
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 543
    .local v14, "pictureUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x21c

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v14, v1}, Lmobisocial/util/DroidPlatformImage;->getResizedImage(Landroid/content/Context;Landroid/net/Uri;I)Lmobisocial/util/DroidPlatformImage$ImageReference;

    move-result-object v20

    .line 544
    .local v20, "thumbnail":Lmobisocial/util/DroidPlatformImage$ImageReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x780

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v14, v1}, Lmobisocial/util/DroidPlatformImage;->getResizedImage(Landroid/content/Context;Landroid/net/Uri;I)Lmobisocial/util/DroidPlatformImage$ImageReference;

    move-result-object v9

    .line 545
    .local v9, "fullsize":Lmobisocial/util/DroidPlatformImage$ImageReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v24, v0

    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->file:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {v24 .. v25}, Lmobisocial/omlib/client/ClientBlobUtils;->saveAndHashBlob(Ljava/io/InputStream;)Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    move-result-object v21

    .line 546
    .local v21, "thumbnailRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v24, v0

    new-instance v25, Ljava/io/FileInputStream;

    iget-object v0, v9, Lmobisocial/util/DroidPlatformImage$ImageReference;->file:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {v24 .. v25}, Lmobisocial/omlib/client/ClientBlobUtils;->saveAndHashBlob(Ljava/io/InputStream;)Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    move-result-object v10

    .line 547
    .local v10, "fullsizeRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    const-string v24, "image/jpeg"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    iput-object v0, v1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    .line 548
    sget-object v24, Lmobisocial/omlib/client/ClientBlobUtils;->THUMBNAIL_CATEGORY:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    iput-object v0, v1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Category:Ljava/lang/String;

    .line 549
    const-string v24, "image/jpeg"

    move-object/from16 v0, v24

    iput-object v0, v10, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    .line 550
    new-instance v19, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;

    const-string v24, "picture"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 551
    .local v19, "sendable":Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->latitude:Ljava/lang/Double;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->latitude:Ljava/lang/Double;

    .line 552
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->longitude:Ljava/lang/Double;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->longitude:Ljava/lang/Double;

    .line 553
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->width:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->thumbnailWidth:Ljava/lang/Integer;

    .line 554
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->height:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->thumbnailHeight:Ljava/lang/Integer;

    .line 555
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    iget v0, v9, Lmobisocial/util/DroidPlatformImage$ImageReference;->height:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->fullsizeHeight:Ljava/lang/Integer;

    .line 556
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    iget v0, v9, Lmobisocial/util/DroidPlatformImage$ImageReference;->width:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->fullsizeWidth:Ljava/lang/Integer;

    .line 557
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->thumbnailHash:[B

    .line 558
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->addAttachment(Lmobisocial/longdan/LDObjects$BlobReferenceObj;)V

    .line 559
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    iget-object v0, v10, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->fullsizeHash:[B

    .line 560
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->addAttachment(Lmobisocial/longdan/LDObjects$BlobReferenceObj;)V

    .line 686
    .end local v9    # "fullsize":Lmobisocial/util/DroidPlatformImage$ImageReference;
    .end local v10    # "fullsizeRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .end local v14    # "pictureUri":Landroid/net/Uri;
    .end local v15    # "pictureUriString":Ljava/lang/String;
    .end local v19    # "sendable":Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;
    .end local v20    # "thumbnail":Lmobisocial/util/DroidPlatformImage$ImageReference;
    .end local v21    # "thumbnailRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    :cond_14b
    :goto_14b
    return-object v19

    .line 563
    :cond_14c
    const-string v24, "app"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_164

    const-string v24, "rdl"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_40f

    .line 564
    :cond_164
    new-instance v19, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 565
    .restart local v19    # "sendable":Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;
    const-string v24, "imageUrl"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 566
    .local v12, "imageUrl":Ljava/lang/String;
    if-eqz v12, :cond_1a7

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lmobisocial/omlib/client/ClientBlobUtils;->hashFromLongdanUrl(Ljava/lang/String;)[B

    move-result-object v4

    .line 568
    .local v4, "blobHash":[B
    if-eqz v4, :cond_1a7

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    new-instance v25, Lmobisocial/omlib/client/ClientMessagingUtils$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v12}, Lmobisocial/omlib/client/ClientMessagingUtils$2;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils;[BLjava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThread(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 579
    .end local v4    # "blobHash":[B
    :cond_1a7
    const-string v24, "displayThumbnailData"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lmobisocial/omlib/client/ClientBlobUtils;->fromBase64String(Ljava/lang/String;)[B

    move-result-object v11

    .line 580
    .local v11, "imageData":[B
    const-string v24, "displayThumbnailUrl"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_321

    .line 581
    const-string v24, "displayThumbnailUrl"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 582
    .restart local v15    # "pictureUriString":Ljava/lang/String;
    if-nez v15, :cond_1dd

    .line 583
    new-instance v24, Ljava/io/IOException;

    const-string v25, "no picture specified"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 584
    :cond_1dd
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 585
    .restart local v14    # "pictureUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x21c

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v14, v1}, Lmobisocial/util/DroidPlatformImage;->getResizedImage(Landroid/content/Context;Landroid/net/Uri;I)Lmobisocial/util/DroidPlatformImage$ImageReference;

    move-result-object v20

    .line 586
    .restart local v20    # "thumbnail":Lmobisocial/util/DroidPlatformImage$ImageReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v24, v0

    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->file:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {v24 .. v25}, Lmobisocial/omlib/client/ClientBlobUtils;->saveAndHashBlob(Ljava/io/InputStream;)Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    move-result-object v21

    .line 587
    .restart local v21    # "thumbnailRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    const-string v24, "image/jpeg"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    iput-object v0, v1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    .line 588
    sget-object v24, Lmobisocial/omlib/client/ClientBlobUtils;->THUMBNAIL_CATEGORY:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    iput-object v0, v1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Category:Ljava/lang/String;

    .line 589
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->displayThumbnailHash:[B

    .line 590
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->width:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->fullsizeWidth:Ljava/lang/Integer;

    .line 591
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->height:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->fullsizeHeight:Ljava/lang/Integer;

    .line 592
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->addAttachment(Lmobisocial/longdan/LDObjects$BlobReferenceObj;)V

    .line 615
    .end local v14    # "pictureUri":Landroid/net/Uri;
    .end local v15    # "pictureUriString":Ljava/lang/String;
    .end local v20    # "thumbnail":Lmobisocial/util/DroidPlatformImage$ImageReference;
    .end local v21    # "thumbnailRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    :cond_265
    :goto_265
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    const-string v25, "noun"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->noun:Ljava/lang/String;

    .line 616
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    const-string v25, "displayTitle"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->displayTitle:Ljava/lang/String;

    .line 617
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    const-string v25, "displayText"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->displayText:Ljava/lang/String;

    .line 618
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    const-string v25, "displayCaption"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->displayCaption:Ljava/lang/String;

    .line 619
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    const-string v25, "callback"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->callback:Ljava/lang/String;

    .line 620
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    const-string v25, "webCallback"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->webCallback:Ljava/lang/String;

    .line 621
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    const-string v25, "thumbnailHash"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lmobisocial/omlib/client/ClientBlobUtils;->fromBase64String(Ljava/lang/String;)[B

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->thumbnailHash:[B

    goto/16 :goto_14b

    .line 593
    :cond_321
    if-eqz v11, :cond_3bd

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v24, v0

    new-instance v25, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual/range {v24 .. v25}, Lmobisocial/omlib/client/ClientBlobUtils;->saveAndHashBlob(Ljava/io/InputStream;)Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    move-result-object v5

    .line 595
    .local v5, "blobReferenceObj":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    invoke-static {v11}, Lmobisocial/util/DroidPlatformImage;->GetImageReference([B)Lmobisocial/util/DroidPlatformImage$ImageReference;

    move-result-object v18

    .line 596
    .local v18, "reference":Lmobisocial/util/DroidPlatformImage$ImageReference;
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->width:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->thumbnailWidth:Ljava/lang/Integer;

    .line 597
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->height:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->thumbnailHeight:Ljava/lang/Integer;

    .line 598
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    iget-object v0, v5, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->displayThumbnailHash:[B

    .line 599
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->width:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->fullsizeWidth:Ljava/lang/Integer;

    .line 600
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->height:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->fullsizeWidth:Ljava/lang/Integer;

    .line 601
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    iget-object v0, v5, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->fullsizeHash:[B

    .line 602
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->addAttachment(Lmobisocial/longdan/LDObjects$BlobReferenceObj;)V

    goto/16 :goto_265

    .line 603
    .end local v5    # "blobReferenceObj":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .end local v18    # "reference":Lmobisocial/util/DroidPlatformImage$ImageReference;
    :cond_3bd
    const-string v24, "displayThumbnailHash"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_265

    .line 604
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    const-string v25, "displayThumbnailHash"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lmobisocial/omlib/client/ClientBlobUtils;->fromBase64String(Ljava/lang/String;)[B

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->displayThumbnailHash:[B

    .line 605
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->displayThumbnailHash:[B

    move-object/from16 v24, v0

    if-eqz v24, :cond_265

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    new-instance v25, Lmobisocial/omlib/client/ClientMessagingUtils$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lmobisocial/omlib/client/ClientMessagingUtils$3;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils;Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;)V

    invoke-virtual/range {v24 .. v25}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThread(Lmobisocial/omlib/db/DatabaseRunnable;)V

    goto/16 :goto_265

    .line 624
    .end local v11    # "imageData":[B
    .end local v12    # "imageUrl":Ljava/lang/String;
    .end local v19    # "sendable":Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;
    :cond_40f
    const-string v24, "file"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_433

    const-string v24, "video"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_433

    const-string v24, "audio"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4dd

    .line 625
    :cond_433
    new-instance v19, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 626
    .restart local v19    # "sendable":Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    const-string v25, "filename"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->filename:Ljava/lang/String;

    .line 627
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    const-string v25, "mimeType"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->mimeType:Ljava/lang/String;

    .line 628
    const-string v24, "fileUrl"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 629
    .local v8, "fileUrl":Ljava/lang/String;
    if-eqz v8, :cond_14b

    .line 630
    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v23

    .line 631
    .local v23, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lmobisocial/util/PlatformUtils;->openInputStream(Landroid/content/Context;Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v13

    .line 632
    .local v13, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lmobisocial/omlib/client/ClientBlobUtils;->saveAndHashBlob(Ljava/io/InputStream;)Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    move-result-object v7

    .line 633
    .local v7, "fileRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->addAttachment(Lmobisocial/longdan/LDObjects$BlobReferenceObj;)V

    .line 634
    const-string v24, "audio"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4cb

    .line 635
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    iget-object v0, v7, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->audioHash:[B

    goto/16 :goto_14b

    .line 637
    :cond_4cb
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    iget-object v0, v7, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->fileHash:[B

    goto/16 :goto_14b

    .line 642
    .end local v7    # "fileRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .end local v8    # "fileUrl":Ljava/lang/String;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "sendable":Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;
    .end local v23    # "uri":Ljava/net/URI;
    :cond_4dd
    const-string v24, "animated_gif"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_541

    .line 643
    new-instance v19, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 644
    .restart local v19    # "sendable":Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;
    const-string v24, "gifUrl"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 645
    .restart local v8    # "fileUrl":Ljava/lang/String;
    if-eqz v8, :cond_14b

    .line 646
    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v23

    .line 647
    .restart local v23    # "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lmobisocial/util/PlatformUtils;->openInputStream(Landroid/content/Context;Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v13

    .line 648
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lmobisocial/omlib/client/ClientBlobUtils;->saveAndHashBlob(Ljava/io/InputStream;)Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    move-result-object v7

    .line 649
    .restart local v7    # "fileRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    iget-object v0, v7, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->gifHash:[B

    .line 650
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->addAttachment(Lmobisocial/longdan/LDObjects$BlobReferenceObj;)V

    goto/16 :goto_14b

    .line 654
    .end local v7    # "fileRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .end local v8    # "fileUrl":Ljava/lang/String;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "sendable":Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;
    .end local v23    # "uri":Ljava/net/URI;
    :cond_541
    const-string v24, "+"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_64b

    .line 655
    new-instance v19, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 656
    .restart local v19    # "sendable":Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;
    const-string v24, "fileUrl"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 657
    .restart local v8    # "fileUrl":Ljava/lang/String;
    if-eqz v8, :cond_5a7

    .line 658
    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v23

    .line 659
    .restart local v23    # "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lmobisocial/util/PlatformUtils;->openInputStream(Landroid/content/Context;Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v13

    .line 660
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lmobisocial/omlib/client/ClientBlobUtils;->saveAndHashBlob(Ljava/io/InputStream;)Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    move-result-object v7

    .line 661
    .restart local v7    # "fileRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    iget-object v0, v7, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->fileHash:[B

    .line 662
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->addAttachment(Lmobisocial/longdan/LDObjects$BlobReferenceObj;)V

    .line 664
    .end local v7    # "fileRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v23    # "uri":Ljava/net/URI;
    :cond_5a7
    const-string v24, "thumbnailUrl"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 665
    .local v22, "thumbnailUriString":Ljava/lang/String;
    if-eqz v22, :cond_14b

    .line 666
    if-nez v22, :cond_5c1

    .line 667
    new-instance v24, Ljava/io/IOException;

    const-string v25, "no picture specified"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 668
    :cond_5c1
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 669
    .restart local v14    # "pictureUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x21c

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v14, v1}, Lmobisocial/util/DroidPlatformImage;->getResizedImage(Landroid/content/Context;Landroid/net/Uri;I)Lmobisocial/util/DroidPlatformImage$ImageReference;

    move-result-object v20

    .line 670
    .restart local v20    # "thumbnail":Lmobisocial/util/DroidPlatformImage$ImageReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v24, v0

    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->file:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {v24 .. v25}, Lmobisocial/omlib/client/ClientBlobUtils;->saveAndHashBlob(Ljava/io/InputStream;)Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    move-result-object v21

    .line 671
    .restart local v21    # "thumbnailRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    const-string v24, "image/jpeg"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    iput-object v0, v1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    .line 672
    sget-object v24, Lmobisocial/omlib/client/ClientBlobUtils;->THUMBNAIL_CATEGORY:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    iput-object v0, v1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Category:Ljava/lang/String;

    .line 673
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->thumbnailHash:[B

    .line 674
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->width:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->thumbnailWidth:Ljava/lang/Integer;

    .line 675
    move-object/from16 v0, v19

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->height:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->thumbnailHeight:Ljava/lang/Integer;

    .line 676
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->addAttachment(Lmobisocial/longdan/LDObjects$BlobReferenceObj;)V

    goto/16 :goto_14b

    .line 680
    .end local v8    # "fileUrl":Ljava/lang/String;
    .end local v14    # "pictureUri":Landroid/net/Uri;
    .end local v19    # "sendable":Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;
    .end local v20    # "thumbnail":Lmobisocial/util/DroidPlatformImage$ImageReference;
    .end local v21    # "thumbnailRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .end local v22    # "thumbnailUriString":Ljava/lang/String;
    :cond_64b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v24

    const-class v25, Lmobisocial/omlib/db/entity/OMAccount;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v24

    check-cast v24, Lmobisocial/omlib/db/entity/OMAccount;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lmobisocial/omlib/db/entity/OMAccount;->profileVersion:J

    move-wide/from16 v16, v0

    .line 682
    .local v16, "profileVersion":J
    :try_start_673
    const-string v24, "profileVersion"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_67e
    .catch Lorg/json/JSONException; {:try_start_673 .. :try_end_67e} :catch_68b

    .line 686
    :goto_67e
    new-instance v19, Lmobisocial/omlib/sendable/JsonSendable;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lmobisocial/omlib/sendable/JsonSendable;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_14b

    .line 683
    :catch_68b
    move-exception v6

    .line 684
    .local v6, "e":Lorg/json/JSONException;
    const-string v24, "Omlib-msg"

    const-string v25, "error putting profile version"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_67e
.end method
