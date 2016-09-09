.class public Lmobisocial/omlib/client/ClientOobUtils;
.super Ljava/lang/Object;
.source "ClientOobUtils.java"


# static fields
.field public static final SETTING_SMS_AVAILABLE:Ljava/lang/String; = "sms_available"

.field static final TAG:Ljava/lang/String; = "Omlib-oob"


# instance fields
.field private mAvailableFeed:Lmobisocial/omlib/db/entity/OMFeed;

.field private final mClient:Lmobisocial/omlib/client/LongdanClient;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 2
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlib/client/ClientOobUtils;)Lmobisocial/omlib/client/LongdanClient;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/ClientOobUtils;

    .prologue
    .line 33
    iget-object v0, p0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    return-object v0
.end method

.method static synthetic access$102(Lmobisocial/omlib/client/ClientOobUtils;Lmobisocial/omlib/db/entity/OMFeed;)Lmobisocial/omlib/db/entity/OMFeed;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/ClientOobUtils;
    .param p1, "x1"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    .line 33
    iput-object p1, p0, Lmobisocial/omlib/client/ClientOobUtils;->mAvailableFeed:Lmobisocial/omlib/db/entity/OMFeed;

    return-object p1
.end method


# virtual methods
.method public getSmsAvailability()Z
    .registers 4

    .prologue
    .line 210
    iget-object v0, p0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Util:Lmobisocial/omlib/client/ClientAppUtils;

    const-string v1, "sms_available"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobisocial/omlib/client/ClientAppUtils;->getBooleanSetting(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isIdentityAvailableForSending(Lmobisocial/omlib/model/RawIdentity;)Z
    .registers 10
    .param p1, "identity"    # Lmobisocial/omlib/model/RawIdentity;

    .prologue
    const/4 v2, 0x0

    .line 183
    if-nez p1, :cond_4

    .line 192
    :cond_3
    :goto_3
    return v2

    .line 185
    :cond_4
    iget-object v3, p0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v3

    const-class v4, Lmobisocial/omlib/db/entity/OMIdentity;

    invoke-virtual {p1}, Lmobisocial/omlib/model/RawIdentity;->asKey()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMIdentity;

    .line 186
    .local v1, "id":Lmobisocial/omlib/db/entity/OMIdentity;
    if-eqz v1, :cond_3

    .line 188
    iget-object v3, p0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v3

    const-class v4, Lmobisocial/omlib/db/entity/OMAccount;

    iget-object v5, v1, Lmobisocial/omlib/db/entity/OMIdentity;->accountId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 189
    .local v0, "account":Lmobisocial/omlib/db/entity/OMAccount;
    if-eqz v0, :cond_3

    iget-boolean v3, v0, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-eqz v3, :cond_3

    .line 192
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public declared-synchronized isMessagingAvailable(Lmobisocial/omlib/model/RawIdentity;Ljava/util/Collection;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;ZLandroid/os/CancellationSignal;)Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
    .registers 32
    .param p1, "sender"    # Lmobisocial/omlib/model/RawIdentity;
    .param p3, "feedKind"    # Lmobisocial/omlib/api/OmletFeedApi$FeedKind;
    .param p4, "allowNetwork"    # Z
    .param p5, "cancellation"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/model/RawIdentity;",
            "Ljava/util/Collection",
            "<",
            "Lmobisocial/omlib/model/RawIdentity;",
            ">;",
            "Lmobisocial/omlib/api/OmletFeedApi$FeedKind;",
            "Z",
            "Landroid/os/CancellationSignal;",
            ")",
            "Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/omlib/model/RawIdentity;>;"
    monitor-enter p0

    const/16 v22, 0x0

    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lmobisocial/omlib/client/ClientOobUtils;->mAvailableFeed:Lmobisocial/omlib/db/entity/OMFeed;

    .line 86
    if-nez p5, :cond_12

    .line 87
    new-instance v6, Landroid/os/CancellationSignal;

    invoke-direct {v6}, Landroid/os/CancellationSignal;-><init>()V

    .end local p5    # "cancellation":Landroid/os/CancellationSignal;
    .local v6, "cancellation":Landroid/os/CancellationSignal;
    move-object/from16 p5, v6

    .line 88
    .end local v6    # "cancellation":Landroid/os/CancellationSignal;
    .restart local p5    # "cancellation":Landroid/os/CancellationSignal;
    :cond_12
    invoke-virtual/range {p5 .. p5}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 89
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LookupCancelled:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_c1

    .line 179
    :goto_1a
    monitor-exit p0

    return-object v22

    .line 90
    :cond_1c
    :try_start_1c
    invoke-virtual/range {p5 .. p5}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v22

    if-eqz v22, :cond_25

    .line 91
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LookupCancelled:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    goto :goto_1a

    .line 92
    :cond_25
    sget-object v22, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->SMS:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_36

    .line 93
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlib/client/ClientOobUtils;->getSmsAvailability()Z

    move-result v22

    if-nez v22, :cond_36

    .line 94
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LocalUserOptedOut:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    goto :goto_1a

    .line 97
    :cond_36
    invoke-virtual/range {p0 .. p1}, Lmobisocial/omlib/client/ClientOobUtils;->isIdentityAvailableForSending(Lmobisocial/omlib/model/RawIdentity;)Z

    move-result v22

    if-nez v22, :cond_3f

    .line 98
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LocalUserNotAuthenticated:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    goto :goto_1a

    .line 99
    :cond_3f
    invoke-virtual/range {p5 .. p5}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v22

    if-eqz v22, :cond_48

    .line 100
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LookupCancelled:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    goto :goto_1a

    .line 101
    :cond_48
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/model/RawIdentity;->asLdIdentity()Lmobisocial/longdan/LDProtocols$LDIdentity;

    move-result-object v13

    .line 102
    .local v13, "ldSender":Lmobisocial/longdan/LDProtocols$LDIdentity;
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v22

    move/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v12, "ldRecipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDIdentity;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v5, "allAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v16, "missingAccounts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v7

    .line 107
    .local v7, "db":Lmobisocial/omlib/db/OMSQLiteHelper;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_94
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_ea

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmobisocial/omlib/model/RawIdentity;

    .line 108
    .local v9, "id":Lmobisocial/omlib/model/RawIdentity;
    invoke-virtual {v9}, Lmobisocial/omlib/model/RawIdentity;->asLdIdentity()Lmobisocial/longdan/LDProtocols$LDIdentity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-class v23, Lmobisocial/omlib/db/entity/OMIdentity;

    invoke-virtual {v9}, Lmobisocial/omlib/model/RawIdentity;->asKey()[B

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v14

    check-cast v14, Lmobisocial/omlib/db/entity/OMIdentity;

    .line 110
    .local v14, "match":Lmobisocial/omlib/db/entity/OMIdentity;
    if-nez v14, :cond_c4

    .line 111
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c0
    .catchall {:try_start_1c .. :try_end_c0} :catchall_c1

    goto :goto_94

    .line 85
    .end local v5    # "allAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "db":Lmobisocial/omlib/db/OMSQLiteHelper;
    .end local v9    # "id":Lmobisocial/omlib/model/RawIdentity;
    .end local v12    # "ldRecipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDIdentity;>;"
    .end local v13    # "ldSender":Lmobisocial/longdan/LDProtocols$LDIdentity;
    .end local v14    # "match":Lmobisocial/omlib/db/entity/OMIdentity;
    .end local v16    # "missingAccounts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    :catchall_c1
    move-exception v22

    monitor-exit p0

    throw v22

    .line 113
    .restart local v5    # "allAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "db":Lmobisocial/omlib/db/OMSQLiteHelper;
    .restart local v9    # "id":Lmobisocial/omlib/model/RawIdentity;
    .restart local v12    # "ldRecipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDIdentity;>;"
    .restart local v13    # "ldSender":Lmobisocial/longdan/LDProtocols$LDIdentity;
    .restart local v14    # "match":Lmobisocial/omlib/db/entity/OMIdentity;
    .restart local v16    # "missingAccounts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    :cond_c4
    :try_start_c4
    const-class v23, Lmobisocial/omlib/db/entity/OMAccount;

    iget-object v0, v14, Lmobisocial/omlib/db/entity/OMIdentity;->accountId:Ljava/lang/Long;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v7, v0, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v4

    check-cast v4, Lmobisocial/omlib/db/entity/OMAccount;

    .line 114
    .local v4, "account":Lmobisocial/omlib/db/entity/OMAccount;
    if-nez v4, :cond_e0

    .line 115
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 117
    :cond_e0
    iget-object v0, v4, Lmobisocial/omlib/db/entity/OMAccount;->account:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 121
    .end local v4    # "account":Lmobisocial/omlib/db/entity/OMAccount;
    .end local v9    # "id":Lmobisocial/omlib/model/RawIdentity;
    .end local v14    # "match":Lmobisocial/omlib/db/entity/OMIdentity;
    :cond_ea
    invoke-virtual/range {p5 .. p5}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v22

    if-eqz v22, :cond_f4

    .line 122
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LookupCancelled:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
    :try_end_f2
    .catchall {:try_start_c4 .. :try_end_f2} :catchall_c1

    goto/16 :goto_1a

    .line 123
    :cond_f4
    if-eqz p4, :cond_131

    .line 125
    :try_start_f6
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_fa
    :goto_fa
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lmobisocial/omlib/model/RawIdentity;

    .line 126
    .local v19, "r":Lmobisocial/omlib/model/RawIdentity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientIdentityUtils;->lookupProfileForIdentity(Lmobisocial/omlib/model/RawIdentity;)Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;

    move-result-object v18

    .line 127
    .local v18, "p":Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;
    if-eqz v18, :cond_fa

    move-object/from16 v0, v18

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;->Account:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_fa

    .line 128
    move-object/from16 v0, v18

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;->Account:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12f
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_f6 .. :try_end_12f} :catch_130
    .catchall {:try_start_f6 .. :try_end_12f} :catchall_c1

    goto :goto_fa

    .line 165
    .end local v18    # "p":Lmobisocial/longdan/LDProtocols$LDGetContactProfileResponse;
    .end local v19    # "r":Lmobisocial/omlib/model/RawIdentity;
    :catch_130
    move-exception v22

    .line 168
    :cond_131
    :try_start_131
    invoke-virtual/range {p5 .. p5}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v22

    if-eqz v22, :cond_1c6

    .line 169
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LookupCancelled:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
    :try_end_139
    .catchall {:try_start_131 .. :try_end_139} :catchall_c1

    goto/16 :goto_1a

    .line 131
    :cond_13b
    :try_start_13b
    new-instance v20, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;

    invoke-direct/range {v20 .. v20}, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;-><init>()V

    .line 132
    .local v20, "req":Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;
    invoke-virtual/range {p3 .. p3}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;->FeedKind:Ljava/lang/String;

    .line 133
    move-object/from16 v0, v20

    iput-object v13, v0, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;->Sender:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 134
    move-object/from16 v0, v20

    iput-object v12, v0, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;->Recipients:Ljava/util/List;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v22

    const-class v23, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v21

    check-cast v21, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;

    .line 136
    .local v21, "resp":Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;
    move-object/from16 v0, v21

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;->OptOutIdentities:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1a0

    .line 137
    invoke-virtual {v13}, Lmobisocial/longdan/LDProtocols$LDIdentity;->toString()Ljava/lang/String;

    move-result-object v15

    .line 138
    .local v15, "me":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;->OptOutIdentities:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_180
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_19c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 139
    .local v17, "o":Lmobisocial/longdan/LDProtocols$LDIdentity;
    invoke-virtual/range {v17 .. v17}, Lmobisocial/longdan/LDProtocols$LDIdentity;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_180

    .line 140
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LocalUserOptedOut:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    goto/16 :goto_1a

    .line 143
    .end local v17    # "o":Lmobisocial/longdan/LDProtocols$LDIdentity;
    :cond_19c
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->RemoteUserOptedOut:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    goto/16 :goto_1a

    .line 144
    .end local v15    # "me":Ljava/lang/String;
    :cond_1a0
    move-object/from16 v0, v21

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;->UnmappedIdentities:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1ac

    .line 145
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->RemoteUserNotAvailable:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    goto/16 :goto_1a

    .line 147
    :cond_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v22, v0

    new-instance v23, Lmobisocial/omlib/client/ClientOobUtils$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v12, v3}, Lmobisocial/omlib/client/ClientOobUtils$1;-><init>(Lmobisocial/omlib/client/ClientOobUtils;Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;Ljava/util/List;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;)V

    invoke-virtual/range {v22 .. v23}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 163
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->Available:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
    :try_end_1c4
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_13b .. :try_end_1c4} :catch_130
    .catchall {:try_start_13b .. :try_end_1c4} :catchall_c1

    goto/16 :goto_1a

    .line 170
    .end local v20    # "req":Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;
    .end local v21    # "resp":Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;
    :cond_1c6
    :try_start_1c6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v22

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_206

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    move-object/from16 v22, v0

    invoke-virtual/range {p3 .. p3}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Lmobisocial/omlib/client/ClientFeedUtils;->makeCanonicalFeedKey(Ljava/util/List;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v11

    .line 172
    .local v11, "ldKey":Lmobisocial/longdan/LDProtocols$LDFeed;
    invoke-virtual {v11}, Lmobisocial/longdan/LDProtocols$LDFeed;->toString()Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "key":Ljava/lang/String;
    const-class v22, Lmobisocial/omlib/db/entity/OMFeed;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0, v10}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v8

    check-cast v8, Lmobisocial/omlib/db/entity/OMFeed;

    .line 174
    .local v8, "f":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v8, :cond_206

    .line 175
    move-object/from16 v0, p0

    iput-object v8, v0, Lmobisocial/omlib/client/ClientOobUtils;->mAvailableFeed:Lmobisocial/omlib/db/entity/OMFeed;

    .line 176
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->Available:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    goto/16 :goto_1a

    .line 179
    .end local v8    # "f":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "ldKey":Lmobisocial/longdan/LDProtocols$LDFeed;
    :cond_206
    if-eqz p4, :cond_20c

    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->NetworkException:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    goto/16 :goto_1a

    :cond_20c
    sget-object v22, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->RequiresNetworkTest:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
    :try_end_20e
    .catchall {:try_start_1c6 .. :try_end_20e} :catchall_c1

    goto/16 :goto_1a
.end method

.method public send(Lmobisocial/omlib/interfaces/Sendable;Lmobisocial/omlib/model/RawIdentity;Ljava/util/Collection;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;Lmobisocial/omlib/interfaces/MessageDeliveryListener;)Z
    .registers 20
    .param p1, "obj"    # Lmobisocial/omlib/interfaces/Sendable;
    .param p2, "sender"    # Lmobisocial/omlib/model/RawIdentity;
    .param p4, "feedKind"    # Lmobisocial/omlib/api/OmletFeedApi$FeedKind;
    .param p5, "listener"    # Lmobisocial/omlib/interfaces/MessageDeliveryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/interfaces/Sendable;",
            "Lmobisocial/omlib/model/RawIdentity;",
            "Ljava/util/Collection",
            "<",
            "Lmobisocial/omlib/model/RawIdentity;",
            ">;",
            "Lmobisocial/omlib/api/OmletFeedApi$FeedKind;",
            "Lmobisocial/omlib/interfaces/MessageDeliveryListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/omlib/model/RawIdentity;>;"
    invoke-virtual/range {p2 .. p2}, Lmobisocial/omlib/model/RawIdentity;->asLdIdentity()Lmobisocial/longdan/LDProtocols$LDIdentity;

    move-result-object v12

    .line 49
    .local v12, "ldSender":Lmobisocial/longdan/LDProtocols$LDIdentity;
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v11, "ldRecipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDIdentity;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmobisocial/omlib/model/RawIdentity;

    .line 51
    .local v10, "id":Lmobisocial/omlib/model/RawIdentity;
    invoke-virtual {v10}, Lmobisocial/omlib/model/RawIdentity;->asLdIdentity()Lmobisocial/longdan/LDProtocols$LDIdentity;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 54
    .end local v10    # "id":Lmobisocial/omlib/model/RawIdentity;
    :cond_25
    :try_start_25
    instance-of v1, p1, Lmobisocial/omlib/sendable/JsonSendable;

    if-eqz v1, :cond_3d

    .line 55
    iget-object v1, p0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v2, v1, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-interface {p1}, Lmobisocial/omlib/interfaces/Sendable;->getType()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lmobisocial/omlib/sendable/JsonSendable;

    move-object v1, v0

    invoke-virtual {v1}, Lmobisocial/omlib/sendable/JsonSendable;->getBodyAsJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lmobisocial/omlib/client/ClientMessagingUtils;->sendableForTypedDictionary(Ljava/lang/String;Lorg/json/JSONObject;)Lmobisocial/omlib/interfaces/Sendable;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3c} :catch_51

    move-result-object p1

    .line 62
    :cond_3d
    monitor-enter p0

    .line 63
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    :try_start_47
    invoke-virtual/range {v1 .. v6}, Lmobisocial/omlib/client/ClientOobUtils;->isMessagingAvailable(Lmobisocial/omlib/model/RawIdentity;Ljava/util/Collection;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;ZLandroid/os/CancellationSignal;)Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    .line 64
    iget-object v9, p0, Lmobisocial/omlib/client/ClientOobUtils;->mAvailableFeed:Lmobisocial/omlib/db/entity/OMFeed;

    .line 65
    .local v9, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_5b

    .line 66
    if-nez v9, :cond_5e

    .line 67
    const/4 v1, 0x0

    .line 81
    .end local v9    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    :goto_50
    return v1

    .line 57
    :catch_51
    move-exception v8

    .line 58
    .local v8, "e":Ljava/io/IOException;
    const-string v1, "Omlib-oob"

    const-string v2, "Error creating sendable object"

    invoke-static {v1, v2, v8}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    const/4 v1, 0x0

    goto :goto_50

    .line 65
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1

    .line 69
    .restart local v9    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    :cond_5e
    new-instance v13, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;

    invoke-direct {v13}, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;-><init>()V

    .line 70
    .local v13, "req":Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;
    invoke-interface {p1}, Lmobisocial/omlib/interfaces/Sendable;->getBody()[B

    move-result-object v1

    iput-object v1, v13, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Body:[B

    .line 71
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDTypedId;-><init>()V

    iput-object v1, v13, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 72
    iget-object v1, v13, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-interface {p1}, Lmobisocial/omlib/interfaces/Sendable;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    .line 73
    iget-object v1, v13, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-interface {p1}, Lmobisocial/omlib/interfaces/Sendable;->getId()[B

    move-result-object v2

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDTypedId;->Id:[B

    .line 74
    iput-object v12, v13, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Sender:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 75
    iput-object v11, v13, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->Recipients:Ljava/util/List;

    .line 76
    invoke-virtual {v9}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDFeed;->Kind:Ljava/lang/String;

    iput-object v1, v13, Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;->FeedKind:Ljava/lang/String;

    .line 77
    new-instance v7, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-direct {v7, v1, v13}, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;-><init>(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;)V

    .line 78
    .local v7, "cmd":Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;
    invoke-interface {p1}, Lmobisocial/omlib/interfaces/Sendable;->getAttachments()Ljava/util/List;

    move-result-object v1

    iput-object v1, v7, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->attachments:Ljava/util/List;

    .line 79
    move-object/from16 v0, p5

    iput-object v0, v7, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;->deliveryListener:Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    .line 80
    iget-object v1, p0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v1

    invoke-virtual {v1, v7}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 81
    const/4 v1, 0x1

    goto :goto_50
.end method

.method public setSmsAvailability(Z)V
    .registers 4
    .param p1, "available"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v1, Lmobisocial/omlib/client/ClientOobUtils$2;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlib/client/ClientOobUtils$2;-><init>(Lmobisocial/omlib/client/ClientOobUtils;Z)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 207
    return-void
.end method
