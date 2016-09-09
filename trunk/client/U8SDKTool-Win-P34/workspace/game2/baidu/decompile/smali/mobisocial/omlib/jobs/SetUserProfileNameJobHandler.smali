.class public Lmobisocial/omlib/jobs/SetUserProfileNameJobHandler;
.super Ljava/lang/Object;
.source "SetUserProfileNameJobHandler.java"

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
.field public static final TYPE:Ljava/lang/String; = "USER_PROFILE_NAME"


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lmobisocial/omlib/jobs/SetUserProfileNameJobHandler;->name:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const-string v0, "USER_PROFILE_NAME"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 30
    const-string v0, "USER_PROFILE_NAME"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    .registers 8
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDSetProfileNameRequest;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDSetProfileNameRequest;-><init>()V

    .line 55
    .local v2, "setProfileNameRequest":Lmobisocial/longdan/LDProtocols$LDSetProfileNameRequest;
    iget-object v3, p0, Lmobisocial/omlib/jobs/SetUserProfileNameJobHandler;->name:Ljava/lang/String;

    iput-object v3, v2, Lmobisocial/longdan/LDProtocols$LDSetProfileNameRequest;->Name:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v3

    const-class v4, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    .line 57
    .local v1, "r":Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    iget-object v3, v1, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;->Value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 58
    .local v0, "profileVersion":Ljava/lang/Long;
    return-object v0
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 40
    const-class v1, Lmobisocial/omlib/db/entity/OMAccount;

    iget-object v2, p1, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v2}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 41
    .local v0, "myAccount":Lmobisocial/omlib/db/entity/OMAccount;
    if-eqz v0, :cond_17

    .line 42
    iget-object v1, p0, Lmobisocial/omlib/jobs/SetUserProfileNameJobHandler;->name:Ljava/lang/String;

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMAccount;->name:Ljava/lang/String;

    .line 43
    invoke-virtual {p2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 45
    :cond_17
    return-void
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 11
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 63
    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    .line 64
    .local v1, "profileVersion":Ljava/lang/Long;
    if-nez v1, :cond_6

    .line 72
    :cond_5
    :goto_5
    return-void

    .line 66
    :cond_6
    const-class v2, Lmobisocial/omlib/db/entity/OMAccount;

    iget-object v3, p1, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v3}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 67
    .local v0, "myAccount":Lmobisocial/omlib/db/entity/OMAccount;
    if-eqz v0, :cond_5

    .line 69
    iget-wide v2, v0, Lmobisocial/omlib/db/entity/OMAccount;->profileVersion:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 70
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v2

    new-instance v3, Lmobisocial/omlib/jobs/RefreshPersonalProfileJobHandler;

    invoke-direct {v3}, Lmobisocial/omlib/jobs/RefreshPersonalProfileJobHandler;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p3, p4}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;ZLmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    goto :goto_5
.end method
