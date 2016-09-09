.class public Lmobisocial/omlib/client/ClientAuthUtils;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/client/ClientAuthUtils$PinReceiver;,
        Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;,
        Lmobisocial/omlib/client/ClientAuthUtils$Partner;,
        Lmobisocial/omlib/client/ClientAuthUtils$Flow;
    }
.end annotation


# static fields
.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final SMS_WAIT_TIMEOUT:I = 0x2d

.field static final TAG:Ljava/lang/String; = "Omlib"


# instance fields
.field mAccount:Ljava/lang/String;

.field private mAccountConnectedListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lmobisocial/omlib/interfaces/OnAccountConnectedListener;",
            ">;"
        }
    .end annotation
.end field

.field final mClient:Lmobisocial/omlib/client/LongdanClient;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/String;)V
    .registers 6
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 73
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_22

    .line 74
    const-string v0, "Omlib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing client for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_22
    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_2f

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccountConnectedListeners:Ljava/util/LinkedList;

    .line 79
    :cond_2f
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)Lmobisocial/omlib/db/entity/OMDevice;
    .registers 5
    .param p0, "x0"    # Lmobisocial/omlib/client/ClientAuthUtils;
    .param p1, "x1"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "x2"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "x3"    # Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lmobisocial/omlib/client/ClientAuthUtils;->applyAccountDetails(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)Lmobisocial/omlib/db/entity/OMDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/ClientAuthUtils;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/ClientAuthUtils;->setAccount(Ljava/lang/String;)V

    return-void
.end method

.method private applyAccountDetails(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)Lmobisocial/omlib/db/entity/OMDevice;
    .registers 16
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "details"    # Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    .prologue
    .line 465
    iget-object v6, p3, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;->AccountDetails:Lmobisocial/longdan/LDProtocols$LDAccountDetails;

    .line 466
    .local v6, "response":Lmobisocial/longdan/LDProtocols$LDAccountDetails;
    sget v7, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v10, 0x3

    if-gt v7, v10, :cond_1f

    .line 467
    const-string v7, "Omlib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Applying account details "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1f
    if-eqz v6, :cond_25

    iget-object v7, v6, Lmobisocial/longdan/LDProtocols$LDAccountDetails;->Account:Ljava/lang/String;

    if-nez v7, :cond_27

    .line 469
    :cond_25
    const/4 v1, 0x0

    .line 503
    :cond_26
    :goto_26
    return-object v1

    .line 471
    :cond_27
    iget-object v7, v6, Lmobisocial/longdan/LDProtocols$LDAccountDetails;->Account:Ljava/lang/String;

    iput-object v7, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    .line 472
    iget-object v7, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v7}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v7

    invoke-virtual {v7}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->getLastServerTimestamp()J

    move-result-wide v8

    .line 473
    .local v8, "serverTime":J
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_3f

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 475
    :cond_3f
    const-class v7, Lmobisocial/omlib/db/entity/OMDevice;

    const-wide/16 v10, 0x1

    invoke-virtual {p1, v7, v10, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMDevice;

    .line 476
    .local v1, "device":Lmobisocial/omlib/db/entity/OMDevice;
    if-nez v1, :cond_53

    .line 477
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v10, "Device credentials not found"

    invoke-direct {v7, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 479
    :cond_53
    iget-object v7, p3, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;->AppId:[B

    iput-object v7, v1, Lmobisocial/omlib/db/entity/OMDevice;->appId:[B

    .line 480
    iget-object v7, p3, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;->Scopes:Ljava/util/List;

    if-eqz v7, :cond_65

    .line 481
    iget-object v7, p3, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;->Scopes:Ljava/util/List;

    const-string v10, ","

    invoke-direct {p0, v7, v10}, Lmobisocial/omlib/client/ClientAuthUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lmobisocial/omlib/db/entity/OMDevice;->scopes:Ljava/lang/String;

    .line 482
    :cond_65
    iget-object v7, v6, Lmobisocial/longdan/LDProtocols$LDAccountDetails;->Account:Ljava/lang/String;

    iput-object v7, v1, Lmobisocial/omlib/db/entity/OMDevice;->account:Ljava/lang/String;

    .line 483
    iget-object v7, v6, Lmobisocial/longdan/LDProtocols$LDAccountDetails;->Cluster:Ljava/lang/String;

    iput-object v7, v1, Lmobisocial/omlib/db/entity/OMDevice;->cluster:Ljava/lang/String;

    .line 484
    iput-wide v8, v1, Lmobisocial/omlib/db/entity/OMDevice;->initialInstallTime:J

    .line 485
    invoke-virtual {p1, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 486
    iget-object v7, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v7, v7, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    iget-object v10, v6, Lmobisocial/longdan/LDProtocols$LDAccountDetails;->Account:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v7, v10, p1, p2, v11}, Lmobisocial/omlib/client/ClientIdentityUtils;->ensureAccountInTransaction(Ljava/lang/String;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Z)Lmobisocial/omlib/db/entity/OMAccount;

    move-result-object v0

    .line 487
    .local v0, "account":Lmobisocial/omlib/db/entity/OMAccount;
    iget-boolean v7, v0, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-nez v7, :cond_87

    .line 488
    const/4 v7, 0x1

    iput-boolean v7, v0, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    .line 489
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 491
    :cond_87
    iget-object v7, v6, Lmobisocial/longdan/LDProtocols$LDAccountDetails;->Identities:Ljava/util/List;

    if-eqz v7, :cond_c1

    .line 492
    invoke-direct {p0}, Lmobisocial/omlib/client/ClientAuthUtils;->getLinkedOMIdentities()Ljava/util/List;

    move-result-object v4

    .line 493
    .local v4, "oms":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMIdentity;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_93
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/db/entity/OMIdentity;

    .line 494
    .local v2, "ident":Lmobisocial/omlib/db/entity/OMIdentity;
    invoke-virtual {p1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObject(Lmobisocial/omlib/db/util/OMBase;)Z

    goto :goto_93

    .line 496
    .end local v2    # "ident":Lmobisocial/omlib/db/entity/OMIdentity;
    :cond_a3
    iget-object v7, v6, Lmobisocial/longdan/LDProtocols$LDAccountDetails;->Identities:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 497
    .local v3, "identity":Lmobisocial/longdan/LDProtocols$LDIdentity;
    invoke-static {v3}, Lmobisocial/omlib/model/RawIdentity;->create(Lmobisocial/longdan/LDProtocols$LDIdentity;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v5

    .line 498
    .local v5, "raw":Lmobisocial/omlib/model/RawIdentity;
    iget-object v10, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v10, v10, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    invoke-virtual {v10, p1, p2, v5, v0}, Lmobisocial/omlib/client/ClientIdentityUtils;->ensureIdentity(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/model/RawIdentity;Lmobisocial/omlib/db/entity/OMAccount;)Lmobisocial/omlib/db/entity/OMIdentity;

    goto :goto_a9

    .line 501
    .end local v3    # "identity":Lmobisocial/longdan/LDProtocols$LDIdentity;
    .end local v4    # "oms":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMIdentity;>;"
    .end local v5    # "raw":Lmobisocial/omlib/model/RawIdentity;
    :cond_c1
    const-string v7, "Omlib"

    const-string v10, "Missing identities from account details update"

    invoke-static {v7, v10}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26
.end method

.method private confirmPinForIdentityBlocking(Lmobisocial/longdan/LDProtocols$LDIdentity;Ljava/lang/String;)V
    .registers 9
    .param p1, "identity"    # Lmobisocial/longdan/LDProtocols$LDIdentity;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 317
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDConfirmTokenRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDConfirmTokenRequest;-><init>()V

    .line 318
    .local v1, "req":Lmobisocial/longdan/LDProtocols$LDConfirmTokenRequest;
    iput-object p1, v1, Lmobisocial/longdan/LDProtocols$LDConfirmTokenRequest;->Identity:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 319
    iput-object p2, v1, Lmobisocial/longdan/LDProtocols$LDConfirmTokenRequest;->Token:Ljava/lang/String;

    .line 320
    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    const-class v3, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    new-instance v4, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;

    new-instance v5, Lmobisocial/omlib/client/ClientAuthUtils$7;

    invoke-direct {v5, p0, v0}, Lmobisocial/omlib/client/ClientAuthUtils$7;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v4, p0, v5}, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V

    invoke-virtual {v2, v1, v3, v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    .line 332
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 333
    return-void
.end method

.method private getLinkedOMIdentities()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/db/entity/OMIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v2

    const-class v3, Lmobisocial/omlib/db/entity/OMAccount;

    invoke-virtual {p0}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 120
    .local v0, "account":Lmobisocial/omlib/db/entity/OMAccount;
    if-nez v0, :cond_17

    .line 121
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 124
    :goto_16
    return-object v1

    .line 123
    :cond_17
    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v2

    const-class v3, Lmobisocial/omlib/db/entity/OMIdentity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMIdentity;>;"
    goto :goto_16
.end method

.method private join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p2, "split"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 509
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_1f

    .line 510
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 511
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_1c

    .line 513
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 515
    .end local v3    # "s":Ljava/lang/String;
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static promptLogout(Lmobisocial/omlib/api/OmletApiManager;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "apiManager"    # Lmobisocial/omlib/api/OmletApiManager;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "onLoggedOut"    # Ljava/lang/Runnable;

    .prologue
    .line 559
    new-instance v0, Lmobisocial/omlib/client/ClientAuthUtils$10;

    invoke-direct {v0, p0, p2, p1}, Lmobisocial/omlib/client/ClientAuthUtils$10;-><init>(Lmobisocial/omlib/api/OmletApiManager;Ljava/lang/Runnable;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 602
    return-void
.end method

.method private setAccount(Ljava/lang/String;)V
    .registers 6
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    monitor-enter v2

    .line 445
    :try_start_3
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 447
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccountConnectedListeners:Ljava/util/LinkedList;

    .line 448
    .local v0, "listeners":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/interfaces/OnAccountConnectedListener;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccountConnectedListeners:Ljava/util/LinkedList;

    .line 449
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 450
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lmobisocial/omlib/client/ClientAuthUtils$9;

    invoke-direct {v3, p0, v0, p1}, Lmobisocial/omlib/client/ClientAuthUtils$9;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/util/LinkedList;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 461
    .end local v0    # "listeners":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/interfaces/OnAccountConnectedListener;>;"
    :cond_24
    monitor-exit v2

    .line 462
    return-void

    .line 461
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method


# virtual methods
.method public acceptAuthDetails(Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)V
    .registers 7
    .param p1, "response"    # Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    new-array v1, v4, [Ljava/util/concurrent/CountDownLatch;

    .line 362
    .local v1, "latch":[Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    aput-object v2, v1, v3

    .line 363
    new-instance v2, Lmobisocial/omlib/client/ClientAuthUtils$8;

    invoke-direct {v2, p0, p1, v1}, Lmobisocial/omlib/client/ClientAuthUtils$8;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;[Ljava/util/concurrent/CountDownLatch;)V

    .line 384
    invoke-virtual {v2}, Lmobisocial/omlib/client/ClientAuthUtils$8;->start()V

    .line 386
    const/4 v2, 0x0

    :try_start_14
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 390
    :goto_19
    return-void

    .line 387
    :catch_1a
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Omlib"

    const-string v3, "Interrupted while authenticating"

    invoke-static {v2, v3, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method public declared-synchronized addAccountConnectedListener(Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V
    .registers 4
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccountConnectedListeners:Ljava/util/LinkedList;

    if-eqz v0, :cond_c

    .line 87
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccountConnectedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1b

    .line 97
    :goto_a
    monitor-exit p0

    return-void

    .line 89
    :cond_c
    :try_start_c
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lmobisocial/omlib/client/ClientAuthUtils$1;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlib/client/ClientAuthUtils$1;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1b

    goto :goto_a

    .line 86
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public confirmAuthCodeBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "authCode"    # Ljava/lang/String;
    .param p3, "queryKey"    # Ljava/lang/String;
    .param p4, "ipAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 161
    iget-object v6, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 212
    :cond_5
    :goto_5
    return-void

    .line 164
    :cond_6
    iget-object v6, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 165
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 166
    .local v3, "pushWaiter":Ljava/util/concurrent/CountDownLatch;
    iget-object v6, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v6}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v6

    const-class v7, Lmobisocial/longdan/LDProtocols$LDDeviceRegistrationStateChangedPush;

    new-instance v8, Lmobisocial/omlib/client/ClientAuthUtils$3;

    invoke-direct {v8, p0, v3}, Lmobisocial/omlib/client/ClientAuthUtils$3;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v6, v7, v8}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addPushReceiver(Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;)V

    .line 173
    new-instance v4, Lmobisocial/longdan/LDProtocols$LDCheckIdentityLinkedRequest;

    invoke-direct {v4}, Lmobisocial/longdan/LDProtocols$LDCheckIdentityLinkedRequest;-><init>()V

    .line 175
    .local v4, "req":Lmobisocial/longdan/LDProtocols$LDCheckIdentityLinkedRequest;
    :try_start_24
    iget-object v6, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v6}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v6

    const-class v7, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    invoke-virtual {v6, v4, v7}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v5

    check-cast v5, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    .line 176
    .local v5, "response":Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;
    if-eqz v5, :cond_49

    iget-object v6, v5, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;->AccountDetails:Lmobisocial/longdan/LDProtocols$LDAccountDetails;

    if-eqz v6, :cond_49

    .line 178
    new-instance v6, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V

    invoke-virtual {v6, v5}, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->onResponse(Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)V
    :try_end_41
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_24 .. :try_end_41} :catch_42

    goto :goto_5

    .line 208
    .end local v5    # "response":Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;
    :catch_42
    move-exception v1

    .line 209
    .local v1, "e":Lmobisocial/longdan/exception/LongdanException;
    new-instance v6, Lmobisocial/omlib/exception/AuthenticationException;

    invoke-direct {v6, v1}, Lmobisocial/omlib/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 181
    .end local v1    # "e":Lmobisocial/longdan/exception/LongdanException;
    .restart local v5    # "response":Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;
    :cond_49
    :try_start_49
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDConfirmAuthCodeRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDConfirmAuthCodeRequest;-><init>()V

    .line 182
    .local v0, "confirmAuthCodeRequest":Lmobisocial/longdan/LDProtocols$LDConfirmAuthCodeRequest;
    iput-object p2, v0, Lmobisocial/longdan/LDProtocols$LDConfirmAuthCodeRequest;->AuthCode:Ljava/lang/String;

    .line 183
    iput-object p3, v0, Lmobisocial/longdan/LDProtocols$LDConfirmAuthCodeRequest;->QueryKey:Ljava/lang/String;

    .line 184
    iput-object p4, v0, Lmobisocial/longdan/LDProtocols$LDConfirmAuthCodeRequest;->IpAddress:Ljava/lang/String;

    .line 185
    const/4 v6, 0x1

    new-array v2, v6, [Lmobisocial/longdan/exception/LongdanException;

    .line 186
    .local v2, "exceptions":[Lmobisocial/longdan/exception/LongdanException;
    iget-object v6, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v6}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v6

    const-class v7, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    new-instance v8, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;

    new-instance v9, Lmobisocial/omlib/client/ClientAuthUtils$4;

    invoke-direct {v9, p0, v3, v2}, Lmobisocial/omlib/client/ClientAuthUtils$4;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/util/concurrent/CountDownLatch;[Lmobisocial/longdan/exception/LongdanException;)V

    invoke-direct {v8, p0, v9}, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V

    invoke-virtual {v6, v0, v7, v8}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V
    :try_end_6c
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_49 .. :try_end_6c} :catch_42

    .line 200
    :try_start_6c
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 201
    const/4 v6, 0x0

    aget-object v6, v2, v6

    if-eqz v6, :cond_6

    .line 202
    const/4 v6, 0x0

    aget-object v6, v2, v6

    throw v6
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_6c .. :try_end_78} :catch_78
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_6c .. :try_end_78} :catch_42

    .line 204
    :catch_78
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_79
    new-instance v6, Lmobisocial/longdan/exception/LongdanClientException;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/Exception;Z)V

    throw v6
    :try_end_80
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_79 .. :try_end_80} :catch_42
.end method

.method public confirmAuthentication(Ljava/lang/String;Ljava/lang/String;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V
    .registers 8
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "listener"    # Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;

    .prologue
    .line 343
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDRegisterWithOAuthRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDRegisterWithOAuthRequest;-><init>()V

    .line 344
    .local v0, "req":Lmobisocial/longdan/LDProtocols$LDRegisterWithOAuthRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDRegisterWithOAuthRequest;->ServiceType:Ljava/lang/String;

    .line 345
    iput-object p2, v0, Lmobisocial/longdan/LDProtocols$LDRegisterWithOAuthRequest;->Key:Ljava/lang/String;

    .line 346
    sget v1, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_26

    .line 347
    const-string v1, "Omlib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authenticating with service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_26
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    new-instance v3, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;

    invoke-direct {v3, p0, p3}, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V

    invoke-virtual {v1, v0, v2, v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    .line 349
    return-void
.end method

.method public confirmPinForIdentity(Lmobisocial/longdan/LDProtocols$LDIdentity;Ljava/lang/String;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V
    .registers 8
    .param p1, "identity"    # Lmobisocial/longdan/LDProtocols$LDIdentity;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "listener"    # Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;

    .prologue
    .line 336
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDConfirmTokenRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDConfirmTokenRequest;-><init>()V

    .line 337
    .local v0, "req":Lmobisocial/longdan/LDProtocols$LDConfirmTokenRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDConfirmTokenRequest;->Identity:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 338
    iput-object p2, v0, Lmobisocial/longdan/LDProtocols$LDConfirmTokenRequest;->Token:Ljava/lang/String;

    .line 339
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    new-instance v3, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;

    invoke-direct {v3, p0, p3}, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V

    invoke-virtual {v1, v0, v2, v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    .line 340
    return-void
.end method

.method public connectEmailBlocking(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "emailTxt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v6, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    if-eqz v6, :cond_31

    .line 279
    :cond_4
    :goto_4
    return-void

    .line 261
    .local v2, "pushWaiter":Ljava/util/concurrent/CountDownLatch;
    .local v4, "req":Lmobisocial/longdan/LDProtocols$LDCheckIdentityLinkedRequest;
    .local v5, "response":Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;
    :cond_5
    :try_start_5
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;-><init>()V

    .line 262
    .local v3, "registerWithTokenRequest":Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDIdentity;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDIdentity;-><init>()V

    .line 263
    .local v1, "identity":Lmobisocial/longdan/LDProtocols$LDIdentity;
    const-string v6, "email"

    iput-object v6, v1, Lmobisocial/longdan/LDProtocols$LDIdentity;->Type:Ljava/lang/String;

    .line 264
    iput-object p2, v1, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    .line 265
    iput-object v1, v3, Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;->Identity:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 266
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;->Locale:Ljava/lang/String;

    .line 268
    iget-object v6, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v6}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v6

    invoke-virtual {v6, v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    :try_end_2a
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_5 .. :try_end_2a} :catch_6e

    .line 270
    const-wide/16 v6, 0x2d

    :try_start_2c
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_31} :catch_75
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_2c .. :try_end_31} :catch_6e

    .line 244
    .end local v1    # "identity":Lmobisocial/longdan/LDProtocols$LDIdentity;
    .end local v2    # "pushWaiter":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "registerWithTokenRequest":Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;
    .end local v4    # "req":Lmobisocial/longdan/LDProtocols$LDCheckIdentityLinkedRequest;
    .end local v5    # "response":Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;
    :cond_31
    iget-object v6, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 245
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 246
    .restart local v2    # "pushWaiter":Ljava/util/concurrent/CountDownLatch;
    iget-object v6, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v6}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v6

    const-class v7, Lmobisocial/longdan/LDProtocols$LDDeviceRegistrationStateChangedPush;

    new-instance v8, Lmobisocial/omlib/client/ClientAuthUtils$6;

    invoke-direct {v8, p0, v2}, Lmobisocial/omlib/client/ClientAuthUtils$6;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v6, v7, v8}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addPushReceiver(Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;)V

    .line 253
    new-instance v4, Lmobisocial/longdan/LDProtocols$LDCheckIdentityLinkedRequest;

    invoke-direct {v4}, Lmobisocial/longdan/LDProtocols$LDCheckIdentityLinkedRequest;-><init>()V

    .line 255
    .restart local v4    # "req":Lmobisocial/longdan/LDProtocols$LDCheckIdentityLinkedRequest;
    :try_start_50
    iget-object v6, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v6}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v6

    const-class v7, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    invoke-virtual {v6, v4, v7}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v5

    check-cast v5, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    .line 256
    .restart local v5    # "response":Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;
    if-eqz v5, :cond_5

    iget-object v6, v5, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;->AccountDetails:Lmobisocial/longdan/LDProtocols$LDAccountDetails;

    if-eqz v6, :cond_5

    .line 258
    new-instance v6, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V

    invoke-virtual {v6, v5}, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->onResponse(Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)V
    :try_end_6d
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_50 .. :try_end_6d} :catch_6e

    goto :goto_4

    .line 275
    .end local v5    # "response":Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;
    :catch_6e
    move-exception v0

    .line 276
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    new-instance v6, Lmobisocial/omlib/exception/AuthenticationException;

    invoke-direct {v6, v0}, Lmobisocial/omlib/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 271
    .end local v0    # "e":Lmobisocial/longdan/exception/LongdanException;
    .restart local v1    # "identity":Lmobisocial/longdan/LDProtocols$LDIdentity;
    .restart local v3    # "registerWithTokenRequest":Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;
    .restart local v5    # "response":Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;
    :catch_75
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_76
    new-instance v6, Lmobisocial/omlib/exception/AuthenticationException;

    invoke-direct {v6, v0}, Lmobisocial/omlib/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_7c
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_76 .. :try_end_7c} :catch_6e
.end method

.method public connectIdentity(Lmobisocial/longdan/LDProtocols$LDIdentity;)V
    .registers 6
    .param p1, "identity"    # Lmobisocial/longdan/LDProtocols$LDIdentity;

    .prologue
    .line 215
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;-><init>()V

    .line 216
    .local v0, "req":Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;->Identity:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 217
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    new-instance v3, Lmobisocial/omlib/client/ClientAuthUtils$5;

    invoke-direct {v3, p0}, Lmobisocial/omlib/client/ClientAuthUtils$5;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;)V

    invoke-virtual {v1, v0, v2, v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    .line 229
    return-void
.end method

.method public connectPhoneBlocking(Landroid/content/Context;)V
    .registers 12
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v7, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 313
    :goto_4
    return-void

    .line 285
    :cond_5
    new-instance v5, Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;

    invoke-direct {v5}, Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;-><init>()V

    .line 286
    .local v5, "req":Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 287
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v7

    invoke-virtual {v7}, Lmobisocial/omlib/model/RawIdentity;->asLdIdentity()Lmobisocial/longdan/LDProtocols$LDIdentity;

    move-result-object v1

    .line 289
    .local v1, "identity":Lmobisocial/longdan/LDProtocols$LDIdentity;
    iget-object v7, v1, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    if-eqz v7, :cond_2a

    iget-object v7, v1, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 290
    :cond_2a
    new-instance v7, Lmobisocial/omlib/exception/AuthenticationException;

    const-string v8, "No phone number phone, do you have a valid sim card inserted?"

    invoke-direct {v7, v8}, Lmobisocial/omlib/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 293
    :cond_32
    iput-object v1, v5, Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;->Identity:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 294
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 295
    .local v3, "pinReceiverWaiter":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lmobisocial/omlib/client/ClientAuthUtils$PinReceiver;

    invoke-direct {v4, p0, v3}, Lmobisocial/omlib/client/ClientAuthUtils$PinReceiver;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/util/concurrent/CountDownLatch;)V

    .line 296
    .local v4, "receiver":Lmobisocial/omlib/client/ClientAuthUtils$PinReceiver;
    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    iput-object v1, v5, Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;->Identity:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 298
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lmobisocial/longdan/LDProtocols$LDRegisterWithTokenRequest;->Locale:Ljava/lang/String;

    .line 301
    :try_start_55
    iget-object v7, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v7}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v7

    invoke-virtual {v7, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    :try_end_5e
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_55 .. :try_end_5e} :catch_70

    .line 306
    const-wide/16 v8, 0x2d

    :try_start_60
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 307
    invoke-virtual {v4}, Lmobisocial/omlib/client/ClientAuthUtils$PinReceiver;->getPin()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v7}, Lmobisocial/omlib/client/ClientAuthUtils;->confirmPinForIdentityBlocking(Lmobisocial/longdan/LDProtocols$LDIdentity;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_6c} :catch_77
    .catchall {:try_start_60 .. :try_end_6c} :catchall_80

    .line 311
    invoke-virtual {p1, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_4

    .line 302
    :catch_70
    move-exception v0

    .line 303
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    new-instance v7, Lmobisocial/omlib/exception/AuthenticationException;

    invoke-direct {v7, v0}, Lmobisocial/omlib/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 308
    .end local v0    # "e":Lmobisocial/longdan/exception/LongdanException;
    :catch_77
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_78
    new-instance v7, Lmobisocial/omlib/exception/AuthenticationException;

    const-string v8, "Fragment Paused"

    invoke-direct {v7, v8}, Lmobisocial/omlib/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_80

    .line 311
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_80
    move-exception v7

    invoke-virtual {p1, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v7
.end method

.method public getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthPageBlocking(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;
    .registers 11
    .param p1, "redirectUrl"    # Ljava/lang/String;
    .param p3, "partner"    # Ljava/lang/String;
    .param p4, "ssoType"    # Ljava/lang/String;
    .param p5, "ssoToken"    # Ljava/lang/String;
    .param p6, "flow"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkRequest;-><init>()V

    .line 146
    .local v1, "req":Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkRequest;
    iput-object p1, v1, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkRequest;->RedirectPage:Ljava/lang/String;

    .line 147
    iput-object p5, v1, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkRequest;->LoginKey:Ljava/lang/String;

    .line 148
    iput-object p4, v1, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkRequest;->LoginServiceType:Ljava/lang/String;

    .line 151
    if-nez p6, :cond_f

    const-string p6, "Default"

    .end local p6    # "flow":Ljava/lang/String;
    :cond_f
    iput-object p6, v1, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkRequest;->Flow:Ljava/lang/String;

    .line 152
    iput-object p2, v1, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkRequest;->Scopes:Ljava/util/List;

    .line 153
    iput-object p3, v1, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkRequest;->Partner:Ljava/lang/String;

    .line 154
    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    const-class v3, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;

    invoke-virtual {v2, v1, v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;
    :try_end_23
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v2

    .line 155
    .end local v1    # "req":Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkRequest;
    :catch_24
    move-exception v0

    .line 156
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    new-instance v2, Lmobisocial/omlib/exception/AuthenticationException;

    invoke-direct {v2, v0}, Lmobisocial/omlib/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getLinkedIdentities()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/model/RawIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lmobisocial/omlib/client/ClientAuthUtils;->getLinkedOMIdentities()Ljava/util/List;

    move-result-object v1

    .line 111
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMIdentity;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMIdentity;

    .line 113
    .local v0, "id":Lmobisocial/omlib/db/entity/OMIdentity;
    iget-object v4, v0, Lmobisocial/omlib/db/entity/OMIdentity;->value:Ljava/lang/String;

    iget-object v5, v0, Lmobisocial/omlib/db/entity/OMIdentity;->type:Ljava/lang/String;

    invoke-static {v4, v5}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 115
    .end local v0    # "id":Lmobisocial/omlib/db/entity/OMIdentity;
    :cond_29
    return-object v2
.end method

.method public hexToBytes(Ljava/lang/String;)[B
    .registers 9
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 233
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 234
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_2a

    .line 235
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 234
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 237
    :cond_2a
    return-object v0
.end method

.method refreshAccountDetails()V
    .registers 6

    .prologue
    .line 352
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDCheckIdentityLinkedRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDCheckIdentityLinkedRequest;-><init>()V

    .line 353
    .local v0, "req":Lmobisocial/longdan/LDProtocols$LDCheckIdentityLinkedRequest;
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    new-instance v3, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V

    invoke-virtual {v1, v0, v2, v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    .line 354
    return-void
.end method

.method public declared-synchronized removeAccountConnectedListener(Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V
    .registers 3
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccountConnectedListeners:Ljava/util/LinkedList;

    if-eqz v0, :cond_a

    .line 101
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mAccountConnectedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 103
    :cond_a
    monitor-exit p0

    return-void

    .line 100
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unlinkIdentity(Lmobisocial/omlib/model/RawIdentity;)V
    .registers 6
    .param p1, "identity"    # Lmobisocial/omlib/model/RawIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDUnlinkIdentityRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDUnlinkIdentityRequest;-><init>()V

    .line 129
    .local v0, "req":Lmobisocial/longdan/LDProtocols$LDUnlinkIdentityRequest;
    invoke-virtual {p1}, Lmobisocial/omlib/model/RawIdentity;->asLdIdentity()Lmobisocial/longdan/LDProtocols$LDIdentity;

    move-result-object v2

    iput-object v2, v0, Lmobisocial/longdan/LDProtocols$LDUnlinkIdentityRequest;->Identity:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 130
    invoke-virtual {p0}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmobisocial/longdan/LDProtocols$LDUnlinkIdentityRequest;->Account:Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    const-class v3, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    invoke-virtual {v2, v0, v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    .line 132
    .local v1, "resp":Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;
    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v3, Lmobisocial/omlib/client/ClientAuthUtils$2;

    invoke-direct {v3, p0, p1, v1}, Lmobisocial/omlib/client/ClientAuthUtils$2;-><init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/model/RawIdentity;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)V

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThread(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 141
    return-void
.end method
