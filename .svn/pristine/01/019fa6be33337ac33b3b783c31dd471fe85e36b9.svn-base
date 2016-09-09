.class public Lmobisocial/omlib/client/ClientIdentityUtils;
.super Ljava/lang/Object;
.source "ClientIdentityUtils.java"


# instance fields
.field private final mClient:Lmobisocial/omlib/client/LongdanClient;

.field private final mScheduleAccountUpdateRunnable:Ljava/lang/Runnable;

.field private mScheduledRefreshThisTransaction:Z


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 3
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lmobisocial/omlib/client/ClientIdentityUtils$1;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/ClientIdentityUtils$1;-><init>(Lmobisocial/omlib/client/ClientIdentityUtils;)V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mScheduleAccountUpdateRunnable:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlib/client/ClientIdentityUtils;)Lmobisocial/omlib/client/LongdanClient;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/ClientIdentityUtils;

    .prologue
    .line 36
    iget-object v0, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    return-object v0
.end method

.method static synthetic access$102(Lmobisocial/omlib/client/ClientIdentityUtils;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/ClientIdentityUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mScheduledRefreshThisTransaction:Z

    return p1
.end method


# virtual methods
.method public accountForLdIdentity(Lmobisocial/longdan/LDProtocols$LDIdentity;)Ljava/lang/String;
    .registers 8
    .param p1, "identity"    # Lmobisocial/longdan/LDProtocols$LDIdentity;

    .prologue
    .line 104
    iget-object v3, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v1

    .line 105
    .local v1, "dbh":Lmobisocial/omlib/db/OMSQLiteHelper;
    const-class v3, Lmobisocial/omlib/db/entity/OMIdentity;

    invoke-static {p1}, Lmobisocial/omlib/model/RawIdentity;->create(Lmobisocial/longdan/LDProtocols$LDIdentity;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/omlib/model/RawIdentity;->asKey()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/db/entity/OMIdentity;

    .line 106
    .local v2, "id":Lmobisocial/omlib/db/entity/OMIdentity;
    if-eqz v2, :cond_2b

    .line 107
    const-class v3, Lmobisocial/omlib/db/entity/OMAccount;

    iget-object v4, v2, Lmobisocial/omlib/db/entity/OMIdentity;->accountId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 108
    .local v0, "account":Lmobisocial/omlib/db/entity/OMAccount;
    if-eqz v0, :cond_2b

    .line 109
    iget-object v3, v0, Lmobisocial/omlib/db/entity/OMAccount;->account:Ljava/lang/String;

    .line 112
    .end local v0    # "account":Lmobisocial/omlib/db/entity/OMAccount;
    :goto_2a
    return-object v3

    :cond_2b
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method public addContactWithPin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDMutualAddContactByTokenRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDMutualAddContactByTokenRequest;-><init>()V

    .line 125
    .local v1, "req":Lmobisocial/longdan/LDProtocols$LDMutualAddContactByTokenRequest;
    iput-object p1, v1, Lmobisocial/longdan/LDProtocols$LDMutualAddContactByTokenRequest;->Account:Ljava/lang/String;

    .line 126
    iput-object p2, v1, Lmobisocial/longdan/LDProtocols$LDMutualAddContactByTokenRequest;->Token:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    :try_end_12
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_12} :catch_13

    .line 131
    return-void

    .line 128
    .end local v1    # "req":Lmobisocial/longdan/LDProtocols$LDMutualAddContactByTokenRequest;
    :catch_13
    move-exception v0

    .line 129
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    new-instance v2, Lmobisocial/omlib/exception/NetworkException;

    invoke-direct {v2, v0}, Lmobisocial/omlib/exception/NetworkException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public applyProfileDetails(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDProfileDetails;)V
    .registers 20
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "profileDetails"    # Lmobisocial/longdan/LDProtocols$LDProfileDetails;

    .prologue
    .line 196
    if-eqz p3, :cond_48

    .line 197
    move-object/from16 v0, p3

    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDProfileDetails;->ProfilePictureLink:Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v0, p3

    iget-object v5, v0, Lmobisocial/longdan/LDProtocols$LDProfileDetails;->ProfilePictureLink:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lmobisocial/longdan/LDProtocols$LDProfileDetails;->ProfileDecryptedHash:[B

    const-string v7, "image/jpeg"

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lmobisocial/omlib/client/ClientBlobUtils;->ensurePermanentBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Long;)[B

    .line 200
    :cond_20
    const-class v2, Lmobisocial/omlib/db/entity/OMAccount;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v3}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v11

    check-cast v11, Lmobisocial/omlib/db/entity/OMAccount;

    .line 201
    .local v11, "myAccount":Lmobisocial/omlib/db/entity/OMAccount;
    if-eqz v11, :cond_49

    const/4 v15, 0x1

    .line 202
    .local v15, "wasInDb":Z
    :goto_37
    if-nez v15, :cond_3e

    .line 203
    new-instance v11, Lmobisocial/omlib/db/entity/OMAccount;

    .end local v11    # "myAccount":Lmobisocial/omlib/db/entity/OMAccount;
    invoke-direct {v11}, Lmobisocial/omlib/db/entity/OMAccount;-><init>()V

    .line 205
    .restart local v11    # "myAccount":Lmobisocial/omlib/db/entity/OMAccount;
    :cond_3e
    iget-wide v2, v11, Lmobisocial/omlib/db/entity/OMAccount;->profileVersion:J

    move-object/from16 v0, p3

    iget-wide v4, v0, Lmobisocial/longdan/LDProtocols$LDProfileDetails;->Version:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4b

    .line 231
    .end local v11    # "myAccount":Lmobisocial/omlib/db/entity/OMAccount;
    .end local v15    # "wasInDb":Z
    :cond_48
    return-void

    .line 201
    .restart local v11    # "myAccount":Lmobisocial/omlib/db/entity/OMAccount;
    :cond_49
    const/4 v15, 0x0

    goto :goto_37

    .line 207
    .restart local v15    # "wasInDb":Z
    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v2}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lmobisocial/omlib/db/entity/OMAccount;->account:Ljava/lang/String;

    .line 208
    const/4 v2, 0x1

    iput-boolean v2, v11, Lmobisocial/omlib/db/entity/OMAccount;->upToDate:Z

    .line 209
    sget-object v2, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->ExplicitShow:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    invoke-virtual {v2}, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->getVal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v11, Lmobisocial/omlib/db/entity/OMAccount;->display:Ljava/lang/Integer;

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v0, p3

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDProfileDetails;->ProfilePictureLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/ClientBlobUtils;->hashFromLongdanUrl(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v11, Lmobisocial/omlib/db/entity/OMAccount;->thumbnailHash:[B

    .line 211
    move-object/from16 v0, p3

    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDProfileDetails;->Name:Ljava/lang/String;

    iput-object v2, v11, Lmobisocial/omlib/db/entity/OMAccount;->name:Ljava/lang/String;

    .line 212
    move-object/from16 v0, p3

    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDProfileDetails;->HasAppTime:Ljava/lang/Long;

    iput-object v2, v11, Lmobisocial/omlib/db/entity/OMAccount;->hasAppDate:Ljava/lang/Long;

    .line 213
    move-object/from16 v0, p3

    iget-wide v2, v0, Lmobisocial/longdan/LDProtocols$LDProfileDetails;->Version:J

    iput-wide v2, v11, Lmobisocial/omlib/db/entity/OMAccount;->profileVersion:J

    .line 214
    const/4 v2, 0x1

    iput-boolean v2, v11, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    .line 215
    if-nez v15, :cond_c0

    .line 216
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 220
    :goto_92
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v2}, Lmobisocial/omlib/client/ClientAuthUtils;->getLinkedIdentities()Ljava/util/List;

    move-result-object v13

    .line 221
    .local v13, "rawIdentities":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmobisocial/omlib/model/RawIdentity;

    .line 222
    .local v14, "rawIdentity":Lmobisocial/omlib/model/RawIdentity;
    const-class v3, Lmobisocial/omlib/db/entity/OMIdentity;

    invoke-virtual {v14}, Lmobisocial/omlib/model/RawIdentity;->asKey()[B

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v12

    check-cast v12, Lmobisocial/omlib/db/entity/OMIdentity;

    .line 223
    .local v12, "omi":Lmobisocial/omlib/db/entity/OMIdentity;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObject(Lmobisocial/omlib/db/util/OMBase;)Z

    goto :goto_a0

    .line 218
    .end local v12    # "omi":Lmobisocial/omlib/db/entity/OMIdentity;
    .end local v13    # "rawIdentities":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    .end local v14    # "rawIdentity":Lmobisocial/omlib/model/RawIdentity;
    :cond_c0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_92

    .line 225
    .restart local v13    # "rawIdentities":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    :cond_c6
    move-object/from16 v0, p3

    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDProfileDetails;->IdentitySettings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ce
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmobisocial/longdan/LDProtocols$LDProfileIdentitySetting;

    .line 226
    .local v10, "identitySetting":Lmobisocial/longdan/LDProtocols$LDProfileIdentitySetting;
    iget-object v9, v10, Lmobisocial/longdan/LDProtocols$LDProfileIdentitySetting;->Identity:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 227
    .local v9, "identity":Lmobisocial/longdan/LDProtocols$LDIdentity;
    invoke-static {v9}, Lmobisocial/omlib/model/RawIdentity;->create(Lmobisocial/longdan/LDProtocols$LDIdentity;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v14

    .line 228
    .restart local v14    # "rawIdentity":Lmobisocial/omlib/model/RawIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1, v14, v11}, Lmobisocial/omlib/client/ClientIdentityUtils;->ensureIdentity(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/model/RawIdentity;Lmobisocial/omlib/db/entity/OMAccount;)Lmobisocial/omlib/db/entity/OMIdentity;

    goto :goto_ce
.end method

.method public ensureAccountInTransaction(Ljava/lang/String;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Z)Lmobisocial/omlib/db/entity/OMAccount;
    .registers 8
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p4, "isContactObj"    # Z

    .prologue
    const/4 v2, 0x1

    .line 56
    const-class v1, Lmobisocial/omlib/db/entity/OMAccount;

    invoke-virtual {p2, v1, p1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 57
    .local v0, "dbAccount":Lmobisocial/omlib/db/entity/OMAccount;
    if-nez v0, :cond_47

    .line 58
    new-instance v0, Lmobisocial/omlib/db/entity/OMAccount;

    .end local v0    # "dbAccount":Lmobisocial/omlib/db/entity/OMAccount;
    invoke-direct {v0}, Lmobisocial/omlib/db/entity/OMAccount;-><init>()V

    .line 59
    .restart local v0    # "dbAccount":Lmobisocial/omlib/db/entity/OMAccount;
    iput-object p1, v0, Lmobisocial/omlib/db/entity/OMAccount;->account:Ljava/lang/String;

    .line 60
    iget-object v1, v0, Lmobisocial/omlib/db/entity/OMAccount;->account:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmobisocial/omlib/client/ClientIdentityUtils;->isInterestingAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    move v1, v2

    :goto_1b
    iput-boolean v1, v0, Lmobisocial/omlib/db/entity/OMAccount;->upToDate:Z

    .line 61
    if-eqz p4, :cond_40

    sget-object v1, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->ExplicitShow:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    invoke-virtual {v1}, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->getVal()I

    move-result v1

    :goto_25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMAccount;->display:Ljava/lang/Integer;

    .line 62
    invoke-virtual {p2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 67
    :cond_2e
    :goto_2e
    iget-boolean v1, v0, Lmobisocial/omlib/db/entity/OMAccount;->upToDate:Z

    if-nez v1, :cond_3d

    iget-boolean v1, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mScheduledRefreshThisTransaction:Z

    if-nez v1, :cond_3d

    .line 68
    iget-object v1, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mScheduleAccountUpdateRunnable:Ljava/lang/Runnable;

    invoke-interface {p3, v1}, Lmobisocial/omlib/db/PostCommit;->add(Ljava/lang/Runnable;)V

    .line 69
    iput-boolean v2, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mScheduledRefreshThisTransaction:Z

    .line 71
    :cond_3d
    return-object v0

    .line 60
    :cond_3e
    const/4 v1, 0x0

    goto :goto_1b

    .line 61
    :cond_40
    sget-object v1, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->ImplicitShow:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    invoke-virtual {v1}, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->getVal()I

    move-result v1

    goto :goto_25

    .line 63
    :cond_47
    if-eqz p4, :cond_2e

    .line 64
    sget-object v1, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->ExplicitShow:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    invoke-virtual {v1}, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->getVal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMAccount;->display:Ljava/lang/Integer;

    .line 65
    invoke-virtual {p2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_2e
.end method

.method public ensureIdentity(Ljava/lang/String;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)Lmobisocial/omlib/db/entity/OMIdentity;
    .registers 5
    .param p1, "givenIdentity"    # Ljava/lang/String;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public ensureIdentity(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/model/RawIdentity;Lmobisocial/omlib/db/entity/OMAccount;)Lmobisocial/omlib/db/entity/OMIdentity;
    .registers 10
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "identity"    # Lmobisocial/omlib/model/RawIdentity;
    .param p4, "account"    # Lmobisocial/omlib/db/entity/OMAccount;

    .prologue
    .line 75
    invoke-virtual {p3}, Lmobisocial/omlib/model/RawIdentity;->asKey()[B

    move-result-object v1

    .line 76
    .local v1, "identityKey":[B
    const-class v2, Lmobisocial/omlib/db/entity/OMIdentity;

    invoke-virtual {p1, v2, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMIdentity;

    .line 77
    .local v0, "dbIdentity":Lmobisocial/omlib/db/entity/OMIdentity;
    if-nez v0, :cond_27

    .line 78
    new-instance v0, Lmobisocial/omlib/db/entity/OMIdentity;

    .end local v0    # "dbIdentity":Lmobisocial/omlib/db/entity/OMIdentity;
    invoke-direct {v0}, Lmobisocial/omlib/db/entity/OMIdentity;-><init>()V

    .line 79
    .restart local v0    # "dbIdentity":Lmobisocial/omlib/db/entity/OMIdentity;
    iget-object v2, p4, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    iput-object v2, v0, Lmobisocial/omlib/db/entity/OMIdentity;->accountId:Ljava/lang/Long;

    .line 80
    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMIdentity;->identityHash:[B

    .line 81
    invoke-virtual {p3}, Lmobisocial/omlib/model/RawIdentity;->getWireType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmobisocial/omlib/db/entity/OMIdentity;->type:Ljava/lang/String;

    .line 82
    iget-object v2, p3, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    iput-object v2, v0, Lmobisocial/omlib/db/entity/OMIdentity;->value:Ljava/lang/String;

    .line 83
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 91
    :cond_26
    :goto_26
    return-object v0

    .line 85
    :cond_27
    iget-object v2, v0, Lmobisocial/omlib/db/entity/OMIdentity;->accountId:Ljava/lang/Long;

    iget-object v3, p4, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    if-eq v2, v3, :cond_26

    .line 86
    const-string v2, "Omlib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving ownership of identity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lmobisocial/omlib/model/RawIdentity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p4, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    iput-object v2, v0, Lmobisocial/omlib/db/entity/OMIdentity;->accountId:Ljava/lang/Long;

    .line 88
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_26
.end method

.method public getInvitationLink()Ljava/net/URI;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDGetAddMeLinkRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDGetAddMeLinkRequest;-><init>()V

    .line 175
    .local v1, "req":Lmobisocial/longdan/LDProtocols$LDGetAddMeLinkRequest;
    iget-object v3, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v3

    const-class v4, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    invoke-virtual {v3, v1, v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    .line 176
    .local v2, "resp":Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    new-instance v3, Ljava/net/URI;

    iget-object v4, v2, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;->Value:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_1e} :catch_1f
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_1e} :catch_26

    return-object v3

    .line 177
    .end local v1    # "req":Lmobisocial/longdan/LDProtocols$LDGetAddMeLinkRequest;
    .end local v2    # "resp":Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    :catch_1f
    move-exception v0

    .line 178
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    new-instance v3, Lmobisocial/omlib/exception/NetworkException;

    invoke-direct {v3, v0}, Lmobisocial/omlib/exception/NetworkException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 179
    .end local v0    # "e":Lmobisocial/longdan/exception/LongdanException;
    :catch_26
    move-exception v0

    .line 180
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v3, Lmobisocial/omlib/exception/NetworkException;

    invoke-direct {v3, v0}, Lmobisocial/omlib/exception/NetworkException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method isInterestingAccount(Ljava/lang/String;)Z
    .registers 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "legacy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public lookupProfileForAccount(Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDContactProfile;
    .registers 4
    .param p1, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 116
    sget-object v1, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Longdan:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-static {p1, v1}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;Lmobisocial/omlib/model/RawIdentity$IdentityType;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobisocial/omlib/client/ClientIdentityUtils;->lookupProfileForIdentity(Lmobisocial/omlib/model/RawIdentity;)Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;

    move-result-object v0

    .line 117
    .local v0, "p":Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;
    if-nez v0, :cond_e

    .line 118
    const/4 v1, 0x0

    .line 119
    :goto_d
    return-object v1

    :cond_e
    iget-object v1, v0, Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;->ContactProfile:Lmobisocial/longdan/LDProtocols$LDContactProfile;

    goto :goto_d
.end method

.method public lookupProfileForIdentity(Lmobisocial/omlib/model/RawIdentity;)Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;
    .registers 8
    .param p1, "identity"    # Lmobisocial/omlib/model/RawIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    iget-object v4, p1, Lmobisocial/omlib/model/RawIdentity;->type:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    sget-object v5, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Longdan:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    if-ne v4, v5, :cond_3a

    .line 137
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;-><init>()V

    .line 138
    .local v3, "request":Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;
    iget-object v4, p1, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;->RequestedAccount:Ljava/lang/String;

    .line 139
    iget-object v4, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v4

    const-class v5, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    invoke-virtual {v4, v3, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    .line 140
    .local v2, "profileResponse":Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;
    if-eqz v2, :cond_23

    iget-object v4, v2, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;->ContactProfile:Lmobisocial/longdan/LDProtocols$LDContactProfile;

    if-nez v4, :cond_25

    .line 141
    :cond_23
    const/4 v1, 0x0

    .line 155
    .end local v2    # "profileResponse":Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;
    .end local v3    # "request":Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;
    .local v1, "profile":Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;
    :goto_24
    return-object v1

    .line 143
    .end local v1    # "profile":Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;
    .restart local v2    # "profileResponse":Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;
    .restart local v3    # "request":Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;
    :cond_25
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;-><init>()V

    .line 144
    .restart local v1    # "profile":Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;
    iget-object v4, v3, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;->RequestedAccount:Ljava/lang/String;

    iput-object v4, v1, Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;->Account:Ljava/lang/String;

    .line 145
    iget-object v4, v2, Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;->ContactProfile:Lmobisocial/longdan/LDProtocols$LDContactProfile;

    iput-object v4, v1, Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;->ContactProfile:Lmobisocial/longdan/LDProtocols$LDContactProfile;
    :try_end_32
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_24

    .line 152
    .end local v1    # "profile":Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;
    .end local v2    # "profileResponse":Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;
    .end local v3    # "request":Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;
    :catch_33
    move-exception v0

    .line 153
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    new-instance v4, Lmobisocial/omlib/exception/NetworkException;

    invoke-direct {v4, v0}, Lmobisocial/omlib/exception/NetworkException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 148
    .end local v0    # "e":Lmobisocial/longdan/exception/LongdanException;
    :cond_3a
    :try_start_3a
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDGetContactProfileRequest;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDGetContactProfileRequest;-><init>()V

    .line 149
    .local v3, "request":Lmobisocial/longdan/LDProtocols$LDGetContactProfileRequest;
    invoke-virtual {p1}, Lmobisocial/omlib/model/RawIdentity;->toHashedIdentity()Lmobisocial/longdan/LDProtocols$LDIdentityHash;

    move-result-object v4

    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDGetContactProfileRequest;->IdentityHash:Lmobisocial/longdan/LDProtocols$LDIdentityHash;

    .line 150
    iget-object v4, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v4

    const-class v5, Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;

    invoke-virtual {v4, v3, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;
    :try_end_53
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_3a .. :try_end_53} :catch_33

    .restart local v1    # "profile":Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;
    goto :goto_24
.end method

.method public setUserNickname(Ljava/lang/String;)V
    .registers 4
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v0, Lmobisocial/omlib/jobs/SetUserProfileNameJobHandler;

    invoke-direct {v0, p1}, Lmobisocial/omlib/jobs/SetUserProfileNameJobHandler;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "job":Lmobisocial/omlib/jobs/SetUserProfileNameJobHandler;
    iget-object v1, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 193
    return-void
.end method

.method public setUserProfileImage(Ljava/io/InputStream;)V
    .registers 6
    .param p1, "accountImage"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 185
    iget-object v1, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v1, p1}, Lmobisocial/omlib/client/ClientBlobUtils;->saveAndHashBlob(Ljava/io/InputStream;)Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    move-result-object v0

    .line 186
    .local v0, "obj":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    const-string v1, "image/jpeg"

    iput-object v1, v0, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    new-instance v2, Lmobisocial/omlib/jobs/UploadUserProfilePictureJob;

    invoke-direct {v2}, Lmobisocial/omlib/jobs/UploadUserProfilePictureJob;-><init>()V

    invoke-virtual {v1, v0, v3, v2, v3}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSentToFeed(Lmobisocial/longdan/LDObjects$BlobReferenceObj;Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/jobs/BaseJobWithBlob;Ljava/lang/Long;)V

    .line 188
    return-void
.end method
