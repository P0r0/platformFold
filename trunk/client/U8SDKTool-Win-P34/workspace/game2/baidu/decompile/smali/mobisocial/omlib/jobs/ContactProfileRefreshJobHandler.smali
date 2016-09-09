.class public Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;
.super Ljava/lang/Object;
.source "ContactProfileRefreshJobHandler.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableJobHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;
    }
.end annotation

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
.field static final BATCH_SIZE:I = 0x14

.field public static final TYPE:Ljava/lang/String; = "CONTACT_PROFILE"

.field private static sClientForJob:Lmobisocial/omlib/client/LongdanClient;

.field private static sJobScheduled:Z


# instance fields
.field private volatile mRetry:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->sJobScheduled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static ensureJobScheduled(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 4
    .param p0, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "scheduleJob":Z
    const-class v2, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;

    monitor-enter v2

    .line 153
    :try_start_4
    sget-object v1, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->sClientForJob:Lmobisocial/omlib/client/LongdanClient;

    if-eqz v1, :cond_10

    sget-object v1, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->sClientForJob:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 154
    :cond_10
    const/4 v1, 0x0

    sput-boolean v1, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->sJobScheduled:Z

    .line 156
    :cond_13
    sget-boolean v1, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->sJobScheduled:Z

    if-nez v1, :cond_1c

    .line 157
    sput-object p0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->sClientForJob:Lmobisocial/omlib/client/LongdanClient;

    .line 158
    const/4 v0, 0x1

    sput-boolean v0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->sJobScheduled:Z

    .line 160
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_2c

    .line 161
    if-eqz v0, :cond_2b

    .line 162
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v1

    new-instance v2, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;

    invoke-direct {v2}, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;-><init>()V

    invoke-virtual {v1, v2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 164
    :cond_2b
    return-void

    .line 160
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const-string v0, "CONTACT_PROFILE"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 38
    const-string v0, "CONTACT_PROFILE"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    .registers 15
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 57
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v7

    const-class v8, Lmobisocial/omlib/db/entity/OMAccount;

    const-string v9, "upToDate=0 ORDER BY modifiedTimestamp DESC LIMIT 20"

    invoke-virtual {v7, v8, v9}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 58
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMAccount;>;"
    const/4 v3, 0x0

    .line 59
    .local v3, "lastException":Lmobisocial/longdan/exception/LongdanException;
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 61
    .local v0, "acc":Lmobisocial/omlib/db/entity/OMAccount;
    iget-boolean v8, v0, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-nez v8, :cond_69

    .line 62
    new-instance v5, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;

    invoke-direct {v5}, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;-><init>()V

    .line 63
    .local v5, "req":Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;
    iget-object v8, v0, Lmobisocial/omlib/db/entity/OMAccount;->account:Ljava/lang/String;

    iput-object v8, v5, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;->RequestedAccount:Ljava/lang/String;

    .line 65
    :try_start_34
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v8

    const-class v9, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    invoke-virtual {v8, v5, v9}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v6

    check-cast v6, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    .line 66
    .local v6, "resp":Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;
    new-instance v8, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;

    iget-object v9, v0, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v8, p0, v10, v11, v6}, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;-><init>(Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;JLmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_34 .. :try_end_4e} :catch_4f

    goto :goto_1b

    .line 67
    .end local v6    # "resp":Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;
    :catch_4f
    move-exception v2

    .line 68
    .local v2, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v2}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v8

    if-eqz v8, :cond_65

    .line 69
    new-instance v8, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;

    iget-object v9, v0, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v8, p0, v10, v11}, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;-><init>(Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;J)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 71
    :cond_65
    iput-boolean v12, p0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->mRetry:Z

    .line 72
    move-object v3, v2

    goto :goto_1b

    .line 76
    .end local v2    # "e":Lmobisocial/longdan/exception/LongdanException;
    .end local v5    # "req":Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;
    :cond_69
    new-instance v5, Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsRequest;

    invoke-direct {v5}, Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsRequest;-><init>()V

    .line 78
    .local v5, "req":Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsRequest;
    :try_start_6e
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v8

    const-class v9, Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;

    invoke-virtual {v8, v5, v9}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v6

    check-cast v6, Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;

    .line 79
    .local v6, "resp":Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;
    new-instance v8, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;

    iget-object v9, v0, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v8, p0, v10, v11, v6}, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;-><init>(Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;JLmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_88
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_6e .. :try_end_88} :catch_89

    goto :goto_1b

    .line 80
    .end local v6    # "resp":Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;
    :catch_89
    move-exception v2

    .line 81
    .restart local v2    # "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v2}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 82
    new-instance v8, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;

    iget-object v9, v0, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v8, p0, v10, v11}, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;-><init>(Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;J)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 84
    :cond_a0
    iput-boolean v12, p0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->mRetry:Z

    .line 85
    move-object v3, v2

    goto/16 :goto_1b

    .line 90
    .end local v0    # "acc":Lmobisocial/omlib/db/entity/OMAccount;
    .end local v2    # "e":Lmobisocial/longdan/exception/LongdanException;
    .end local v5    # "req":Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsRequest;
    :cond_a5
    if-eqz v3, :cond_ae

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 91
    throw v3

    .line 93
    :cond_ae
    return-object v4
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 48
    return-void
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 26
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 98
    if-nez p2, :cond_3

    .line 148
    :goto_2
    return-void

    :cond_3
    move-object/from16 v13, p2

    .line 100
    check-cast v13, Ljava/util/List;

    .line 101
    .local v13, "entries":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;>;"
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 102
    .local v19, "refreshedAccounts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_10
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_106

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;

    .line 103
    .local v12, "e":Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;
    const-class v4, Lmobisocial/omlib/db/entity/OMAccount;

    iget-wide v6, v12, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->account:J

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6, v7}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v11

    check-cast v11, Lmobisocial/omlib/db/entity/OMAccount;

    .line 104
    .local v11, "acc":Lmobisocial/omlib/db/entity/OMAccount;
    iget-boolean v4, v11, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-eqz v4, :cond_40

    iget-object v4, v12, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->personalProfile:Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;

    if-eqz v4, :cond_40

    .line 105
    move-object/from16 v0, p1

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    iget-object v5, v12, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->personalProfile:Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;

    iget-object v5, v5, Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;->ProfileDetails:Lmobisocial/longdan/LDProtocols$LDProfileDetails;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1, v5}, Lmobisocial/omlib/client/ClientIdentityUtils;->applyProfileDetails(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDProfileDetails;)V

    goto :goto_10

    .line 107
    :cond_40
    iget-object v4, v12, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->contactProfile:Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    if-eqz v4, :cond_9f

    iget-object v4, v12, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->contactProfile:Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;->ContactProfile:Lmobisocial/longdan/LDProtocols$LDContactProfile;

    if-eqz v4, :cond_9f

    iget-object v4, v12, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->contactProfile:Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;->ContactProfile:Lmobisocial/longdan/LDProtocols$LDContactProfile;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDContactProfile;->Identities:Ljava/util/List;

    if-eqz v4, :cond_9f

    .line 108
    iget-object v4, v12, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->contactProfile:Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;->ContactProfile:Lmobisocial/longdan/LDProtocols$LDContactProfile;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDContactProfile;->Identities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5c
    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 109
    .local v14, "identity":Lmobisocial/longdan/LDProtocols$LDIdentity;
    invoke-static {v14}, Lmobisocial/omlib/model/RawIdentity;->create(Lmobisocial/longdan/LDProtocols$LDIdentity;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v18

    .line 111
    .local v18, "rawIdentity":Lmobisocial/omlib/model/RawIdentity;
    invoke-virtual/range {v18 .. v18}, Lmobisocial/omlib/model/RawIdentity;->asKey()[B

    move-result-object v15

    .line 112
    .local v15, "identityKey":[B
    const-class v5, Lmobisocial/omlib/db/entity/OMIdentity;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v15}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v5

    if-nez v5, :cond_5c

    .line 113
    new-instance v16, Lmobisocial/omlib/db/entity/OMIdentity;

    invoke-direct/range {v16 .. v16}, Lmobisocial/omlib/db/entity/OMIdentity;-><init>()V

    .line 114
    .local v16, "omIdentity":Lmobisocial/omlib/db/entity/OMIdentity;
    move-object/from16 v0, v16

    iput-object v15, v0, Lmobisocial/omlib/db/entity/OMIdentity;->identityHash:[B

    .line 115
    move-object/from16 v0, v18

    iget-object v5, v0, Lmobisocial/omlib/model/RawIdentity;->type:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v5}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    iput-object v5, v0, Lmobisocial/omlib/db/entity/OMIdentity;->type:Ljava/lang/String;

    .line 116
    move-object/from16 v0, v18

    iget-object v5, v0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v5, v0, Lmobisocial/omlib/db/entity/OMIdentity;->value:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_5c

    .line 121
    .end local v14    # "identity":Lmobisocial/longdan/LDProtocols$LDIdentity;
    .end local v15    # "identityKey":[B
    .end local v16    # "omIdentity":Lmobisocial/omlib/db/entity/OMIdentity;
    .end local v18    # "rawIdentity":Lmobisocial/omlib/model/RawIdentity;
    :cond_9f
    iget-object v4, v11, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    const/4 v4, 0x1

    iput-boolean v4, v11, Lmobisocial/omlib/db/entity/OMAccount;->upToDate:Z

    .line 123
    iget-object v4, v12, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->contactProfile:Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    if-eqz v4, :cond_ff

    iget-object v4, v12, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->contactProfile:Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;->ContactProfile:Lmobisocial/longdan/LDProtocols$LDContactProfile;

    if-eqz v4, :cond_ff

    .line 124
    iget-object v4, v12, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->contactProfile:Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    iget-object v0, v4, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;->ContactProfile:Lmobisocial/longdan/LDProtocols$LDContactProfile;

    move-object/from16 v17, v0

    .line 125
    .local v17, "profile":Lmobisocial/longdan/LDProtocols$LDContactProfile;
    move-object/from16 v0, v17

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDContactProfile;->Name:Ljava/lang/String;

    iput-object v4, v11, Lmobisocial/omlib/db/entity/OMAccount;->name:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p1

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v0, v17

    iget-object v5, v0, Lmobisocial/longdan/LDProtocols$LDContactProfile;->ProfilePictureLink:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmobisocial/omlib/client/ClientBlobUtils;->hashFromLongdanUrl(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v11, Lmobisocial/omlib/db/entity/OMAccount;->thumbnailHash:[B

    .line 127
    move-object/from16 v0, v17

    iget-wide v4, v0, Lmobisocial/longdan/LDProtocols$LDContactProfile;->Version:J

    iput-wide v4, v11, Lmobisocial/omlib/db/entity/OMAccount;->profileVersion:J

    .line 128
    move-object/from16 v0, v17

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDContactProfile;->HasAppTime:Ljava/lang/Long;

    iput-object v4, v11, Lmobisocial/omlib/db/entity/OMAccount;->hasAppDate:Ljava/lang/Long;

    .line 129
    iget-object v4, v11, Lmobisocial/omlib/db/entity/OMAccount;->thumbnailHash:[B

    if-eqz v4, :cond_ff

    .line 130
    move-object/from16 v0, p1

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v0, v17

    iget-object v7, v0, Lmobisocial/longdan/LDProtocols$LDContactProfile;->ProfilePictureLink:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Lmobisocial/longdan/LDProtocols$LDContactProfile;->ProfileDecryptedHash:[B

    const-string v9, "image/jpeg"

    const/4 v10, 0x0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v4 .. v10}, Lmobisocial/omlib/client/ClientBlobUtils;->ensurePermanentBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Long;)[B

    .line 131
    move-object/from16 v0, p1

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v5, v11, Lmobisocial/omlib/db/entity/OMAccount;->thumbnailHash:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobForHash([BZLmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;Landroid/os/CancellationSignal;)V

    .line 134
    .end local v17    # "profile":Lmobisocial/longdan/LDProtocols$LDContactProfile;
    :cond_ff
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto/16 :goto_10

    .line 137
    .end local v11    # "acc":Lmobisocial/omlib/db/entity/OMAccount;
    .end local v12    # "e":Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;
    :cond_106
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_119

    .line 138
    move-object/from16 v0, p1

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lmobisocial/omlib/client/ClientFeedUtils;->generateFeedNamesWithMembers(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/util/Set;)V

    .line 140
    :cond_119
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_127

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->mRetry:Z

    if-eqz v4, :cond_13a

    .line 141
    :cond_127
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v4

    new-instance v5, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;

    invoke-direct {v5}, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v6, v0, v1}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;ZLmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    goto/16 :goto_2

    .line 143
    :cond_13a
    const-class v5, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;

    monitor-enter v5

    .line 144
    const/4 v4, 0x0

    :try_start_13e
    sput-boolean v4, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->sJobScheduled:Z

    .line 145
    const/4 v4, 0x0

    sput-object v4, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->sClientForJob:Lmobisocial/omlib/client/LongdanClient;

    .line 146
    monitor-exit v5

    goto/16 :goto_2

    :catchall_146
    move-exception v4

    monitor-exit v5
    :try_end_148
    .catchall {:try_start_13e .. :try_end_148} :catchall_146

    throw v4
.end method
