.class public Lmobisocial/omlib/client/ClientFeedUtils;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;,
        Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;,
        Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;,
        Lmobisocial/omlib/client/ClientFeedUtils$RealtimeUpdate;,
        Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;,
        Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;
    }
.end annotation


# static fields
.field static final ACCEPTED_STRING:Ljava/lang/String; = "Yes"

.field static final BLOCKED_STRING:Ljava/lang/String; = "Blocked"

.field public static final CONTACTS:[B

.field public static final DEFAULT_REALTIME_DURATION:I = 0xf

.field public static final FEATURES:[B

.field public static final FEED_KIND_:Ljava/lang/String; = "c"

.field public static final FEED_KIND_CHAT:Ljava/lang/String;

.field public static final FEED_KIND_CONTROL:Ljava/lang/String; = "c"

.field public static final FEED_KIND_SMS:Ljava/lang/String; = "s"

.field public static final GAME_ACHIEVEMENTS:[B

.field public static final ME_FEED:[B

.field static final PROVISIONAL_STRING:Ljava/lang/String; = "No"

.field static final PUSH_ENABLED_STRING:Ljava/lang/String; = "Push"

.field static final REMOVED_STRING:Ljava/lang/String; = "Removed"

.field static final RESTRICTED_PUSH_STRING:Ljava/lang/String; = "RestrictedPush"

.field static final RESTRICTED_STRING:Ljava/lang/String; = "Restricted"

.field static final STATUS_INDICATOR_REPEAT_DELAY:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "ClientFeedUtils"


# instance fields
.field final ACCOUNT_LOOKUP_QUERY:Ljava/lang/String;

.field private final mActiveFeeds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Lmobisocial/omlib/client/LongdanClient;

.field private mCurrentRealtimeListener:Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;

.field private mFeedStatusIndicators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmobisocial/omlib/model/RealtimePushObject;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPublicChatSubscriptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealtimeCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmobisocial/omlib/interfaces/RealtimeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRealtimeExpirationTimer:Ljava/util/Timer;

.field private mUserStatusIndicators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmobisocial/omlib/model/RealtimePushObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lmobisocial/omlib/client/ClientFeedUtils;->FEED_KIND_CHAT:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lmobisocial/omlib/client/ClientFeedUtils;->ME_FEED:[B

    .line 88
    const-string v0, "contacts"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmobisocial/omlib/client/ClientFeedUtils;->CONTACTS:[B

    .line 90
    const-string v0, "gachievements"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmobisocial/omlib/client/ClientFeedUtils;->GAME_ACHIEVEMENTS:[B

    .line 92
    const-string v0, "features"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmobisocial/omlib/client/ClientFeedUtils;->FEATURES:[B

    return-void
.end method

.method constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 3
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mActiveFeeds:Ljava/util/Set;

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mPublicChatSubscriptions:Ljava/util/Map;

    .line 487
    const-string v0, "_id IN (SELECT accountId FROM feedMembers WHERE feedId=?)"

    iput-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->ACCOUNT_LOOKUP_QUERY:Ljava/lang/String;

    .line 900
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeExpirationTimer:Ljava/util/Timer;

    .line 904
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mFeedStatusIndicators:Ljava/util/Map;

    .line 906
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mUserStatusIndicators:Ljava/util/Map;

    .line 908
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;

    .line 136
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 137
    return-void
.end method

.method static synthetic access$100(Lmobisocial/omlib/client/ClientFeedUtils;)Lmobisocial/omlib/client/LongdanClient;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 74
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    return-object v0
.end method

.method static synthetic access$200(Lmobisocial/omlib/client/ClientFeedUtils;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 74
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lmobisocial/omlib/client/ClientFeedUtils;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 74
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mFeedStatusIndicators:Ljava/util/Map;

    return-object v0
.end method

.method public static decodeMessageKey([B)Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;
    .registers 2
    .param p0, "encodedFeedIdTypedId"    # [B

    .prologue
    .line 1115
    const-class v0, Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;

    invoke-static {p0, v0}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;

    return-object v0
.end method

.method public static decodeTypedIdFromMessageKey([B)Lmobisocial/longdan/LDProtocols$LDTypedId;
    .registers 2
    .param p0, "encodedFeedIdTypedId"    # [B

    .prologue
    .line 1111
    const-class v0, Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;

    invoke-static {p0, v0}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;->id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    return-object v0
.end method

.method public static getFeedMemberRowKey(JJ)[B
    .registers 6
    .param p0, "accountId"    # J
    .param p2, "feedId"    # J

    .prologue
    .line 481
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 482
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 483
    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 484
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private getFeedsHavingAnyAccount(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/util/Collection;)Ljava/util/List;
    .registers 9
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/db/OMSQLiteHelper;",
            "Lmobisocial/omlib/db/PostCommit;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/db/entity/OMFeedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    .local p3, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 595
    .local v1, "clause":Ljava/lang/StringBuilder;
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 596
    .local v0, "a":Ljava/lang/Long;
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 598
    .end local v0    # "a":Ljava/lang/Long;
    :cond_27
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 599
    const-class v2, Lmobisocial/omlib/db/entity/OMFeedMember;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private nameForAccount(Lmobisocial/omlib/db/entity/OMAccount;)Ljava/lang/String;
    .registers 3
    .param p1, "a"    # Lmobisocial/omlib/db/entity/OMAccount;

    .prologue
    .line 603
    iget-object v0, p1, Lmobisocial/omlib/db/entity/OMAccount;->name:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "Someone"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p1, Lmobisocial/omlib/db/entity/OMAccount;->name:Ljava/lang/String;

    goto :goto_6
.end method

.method private unsubscribeForRealtime(J)V
    .registers 6
    .param p1, "feedId"    # J

    .prologue
    .line 998
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 999
    :try_start_3
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    monitor-exit v1

    .line 1015
    return-void

    .line 1000
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method


# virtual methods
.method public addAccountToFeed(Ljava/lang/String;Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 6
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    .line 388
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDAddMemberRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDAddMemberRequest;-><init>()V

    .line 389
    .local v0, "addMemberRequest":Lmobisocial/longdan/LDProtocols$LDAddMemberRequest;
    invoke-virtual {p2}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v2

    iput-object v2, v0, Lmobisocial/longdan/LDProtocols$LDAddMemberRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 390
    iput-object p1, v0, Lmobisocial/longdan/LDProtocols$LDAddMemberRequest;->Member:Ljava/lang/String;

    .line 391
    new-instance v1, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    invoke-virtual {p2}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Lmobisocial/longdan/LDProtocols$LDFeed;)V

    .line 392
    .local v1, "messageJobHandler":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 393
    return-void
.end method

.method public createFeed(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;Lmobisocial/omlib/db/OMSQLiteHelper;)Lmobisocial/omlib/db/entity/OMFeed;
    .registers 7
    .param p1, "kind"    # Lmobisocial/omlib/api/OmletFeedApi$FeedKind;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 140
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDFeed;-><init>()V

    .line 141
    .local v1, "feed":Lmobisocial/longdan/LDProtocols$LDFeed;
    iget-object v3, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v3}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmobisocial/longdan/LDProtocols$LDFeed;->Account:Ljava/lang/String;

    .line 144
    :cond_f
    invoke-static {}, Lmobisocial/omlib/client/ClientMessagingUtils;->generateMessageId()[B

    move-result-object v2

    .line 145
    .local v2, "feedKeyRandom":[B
    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDFeed;->Key:[B

    .line 146
    invoke-virtual {p1}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmobisocial/longdan/LDProtocols$LDFeed;->Kind:Ljava/lang/String;

    .line 147
    const-class v3, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {p2, v3, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 148
    .local v0, "dbfeed":Lmobisocial/omlib/db/entity/OMFeed;
    if-nez v0, :cond_f

    .line 149
    iget-object v3, v1, Lmobisocial/longdan/LDProtocols$LDFeed;->Key:[B

    invoke-virtual {p0, p1, v3, p2}, Lmobisocial/omlib/client/ClientFeedUtils;->createFeed(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;[BLmobisocial/omlib/db/OMSQLiteHelper;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v3

    return-object v3
.end method

.method public createFeed(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;[BLmobisocial/omlib/db/OMSQLiteHelper;)Lmobisocial/omlib/db/entity/OMFeed;
    .registers 10
    .param p1, "kind"    # Lmobisocial/omlib/api/OmletFeedApi$FeedKind;
    .param p2, "key"    # [B
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 153
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDCreateFeedRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDCreateFeedRequest;-><init>()V

    .line 154
    .local v0, "createFeedRequest":Lmobisocial/longdan/LDProtocols$LDCreateFeedRequest;
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDFeed;-><init>()V

    .line 155
    .local v3, "newFeed":Lmobisocial/longdan/LDProtocols$LDFeed;
    invoke-virtual {p1}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDFeed;->Kind:Ljava/lang/String;

    .line 156
    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v4}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDFeed;->Account:Ljava/lang/String;

    .line 157
    iput-object p2, v3, Lmobisocial/longdan/LDProtocols$LDFeed;->Key:[B

    .line 158
    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5, v3}, Lmobisocial/omlib/client/ClientFeedUtils;->getOrCreateFeed(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDFeed;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v1

    .line 159
    .local v1, "createdFeed":Lmobisocial/omlib/db/entity/OMFeed;
    iput-object v3, v0, Lmobisocial/longdan/LDProtocols$LDCreateFeedRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 160
    new-instance v2, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    invoke-direct {v2, v0, v3}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Lmobisocial/longdan/LDProtocols$LDFeed;)V

    .line 161
    .local v2, "messageJobHandler":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 162
    return-object v1
.end method

.method createFeedWithAccounts(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;[Ljava/lang/String;Lmobisocial/omlib/db/OMSQLiteHelper;)Lmobisocial/omlib/db/entity/OMFeed;
    .registers 8
    .param p1, "kind"    # Lmobisocial/omlib/api/OmletFeedApi$FeedKind;
    .param p2, "accounts"    # [Ljava/lang/String;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 302
    invoke-virtual {p0, p1, p3}, Lmobisocial/omlib/client/ClientFeedUtils;->createFeed(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;Lmobisocial/omlib/db/OMSQLiteHelper;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v1

    .line 303
    .local v1, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    array-length v3, p2

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_10

    aget-object v0, p2, v2

    .line 304
    .local v0, "account":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmobisocial/omlib/client/ClientFeedUtils;->addAccountToFeed(Ljava/lang/String;Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 306
    .end local v0    # "account":Ljava/lang/String;
    :cond_10
    return-object v1
.end method

.method public deleteFeedAndContents(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 8
    .param p1, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    .line 1019
    invoke-virtual {p1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM objects WHERE feedId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p3, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p1, p3}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObject(Lmobisocial/omlib/db/util/OMBase;)Z

    .line 1021
    return-void
.end method

.method public enablePushNotifications(JZ)V
    .registers 7
    .param p1, "feedId"    # J
    .param p3, "enabled"    # Z

    .prologue
    .line 702
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v1, Lmobisocial/omlib/client/ClientFeedUtils$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lmobisocial/omlib/client/ClientFeedUtils$9;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;JZ)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 723
    return-void
.end method

.method public ensureFeedMember(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;)Z
    .registers 11
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p4, "account"    # Lmobisocial/omlib/db/entity/OMAccount;

    .prologue
    .line 359
    iget-object v2, p4, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p3, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v2, v3, v4, v5}, Lmobisocial/omlib/client/ClientFeedUtils;->getFeedMemberRowKey(JJ)[B

    move-result-object v1

    .line 360
    .local v1, "key":[B
    const-class v2, Lmobisocial/omlib/db/entity/OMFeedMember;

    invoke-virtual {p1, v2, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeedMember;

    .line 361
    .local v0, "fm":Lmobisocial/omlib/db/entity/OMFeedMember;
    if-nez v0, :cond_2e

    .line 362
    new-instance v0, Lmobisocial/omlib/db/entity/OMFeedMember;

    .end local v0    # "fm":Lmobisocial/omlib/db/entity/OMFeedMember;
    invoke-direct {v0}, Lmobisocial/omlib/db/entity/OMFeedMember;-><init>()V

    .line 363
    .restart local v0    # "fm":Lmobisocial/omlib/db/entity/OMFeedMember;
    iget-object v2, p4, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    iput-object v2, v0, Lmobisocial/omlib/db/entity/OMFeedMember;->accountId:Ljava/lang/Long;

    .line 364
    iget-wide v2, p3, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lmobisocial/omlib/db/entity/OMFeedMember;->feedId:Ljava/lang/Long;

    .line 365
    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMFeedMember;->AccountFeed:[B

    .line 366
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 367
    const/4 v2, 0x1

    .line 369
    :goto_2d
    return v2

    :cond_2e
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method public feedNeedsDetailGenerated(Lmobisocial/omlib/db/entity/OMFeed;)Z
    .registers 3
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    .line 572
    iget-object v0, p1, Lmobisocial/omlib/db/entity/OMFeed;->specifiedName:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lmobisocial/omlib/db/entity/OMFeed;->specifiedName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lmobisocial/omlib/db/entity/OMFeed;->specifiedThumbnailHash:[B

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public generateDetailsForFeed(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 12
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    const/4 v1, 0x0

    .line 494
    iput-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->name:Ljava/lang/String;

    .line 495
    iput-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->thumbnailHash:[B

    .line 496
    iget-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->specifiedName:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 497
    iget-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->specifiedName:Ljava/lang/String;

    iput-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->name:Ljava/lang/String;

    .line 499
    :cond_d
    iget-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->specifiedThumbnailHash:[B

    if-eqz v1, :cond_15

    .line 500
    iget-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->specifiedThumbnailHash:[B

    iput-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->thumbnailHash:[B

    .line 502
    :cond_15
    iget-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->name:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->thumbnailHash:[B

    if-eqz v1, :cond_1e

    .line 512
    :cond_1d
    :goto_1d
    return-void

    .line 505
    :cond_1e
    const-class v1, Lmobisocial/omlib/db/entity/OMAccount;

    const-string v2, "_id IN (SELECT accountId FROM feedMembers WHERE feedId=?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v6, p3, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 506
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMAccount;>;"
    iget-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->name:Ljava/lang/String;

    if-nez v1, :cond_3c

    .line 507
    invoke-virtual {p0, v0}, Lmobisocial/omlib/client/ClientFeedUtils;->generateFeedNameForMembers(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->name:Ljava/lang/String;

    .line 509
    :cond_3c
    iget-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->thumbnailHash:[B

    if-nez v1, :cond_1d

    .line 510
    invoke-virtual {p0, v0}, Lmobisocial/omlib/client/ClientFeedUtils;->generateFeedThumbnailHashForMembers(Ljava/util/List;)[B

    move-result-object v1

    iput-object v1, p3, Lmobisocial/omlib/db/entity/OMFeed;->thumbnailHash:[B

    goto :goto_1d
.end method

.method generateFeedNameForMembers(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/db/entity/OMAccount;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMAccount;>;"
    const/4 v2, 0x0

    .line 516
    .local v2, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 517
    .local v0, "a":Lmobisocial/omlib/db/entity/OMAccount;
    iget-boolean v5, v0, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-nez v5, :cond_5

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 521
    .end local v0    # "a":Lmobisocial/omlib/db/entity/OMAccount;
    :cond_18
    if-nez v2, :cond_1d

    .line 522
    const-string v4, "You"

    .line 544
    :goto_1c
    return-object v4

    .line 524
    :cond_1d
    const/4 v4, 0x1

    if-ne v2, v4, :cond_39

    .line 525
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 526
    .restart local v0    # "a":Lmobisocial/omlib/db/entity/OMAccount;
    iget-boolean v5, v0, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-nez v5, :cond_24

    .line 527
    invoke-direct {p0, v0}, Lmobisocial/omlib/client/ClientFeedUtils;->nameForAccount(Lmobisocial/omlib/db/entity/OMAccount;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    .line 531
    .end local v0    # "a":Lmobisocial/omlib/db/entity/OMAccount;
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 532
    .local v1, "b":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 533
    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_45
    :goto_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 534
    .restart local v0    # "a":Lmobisocial/omlib/db/entity/OMAccount;
    iget-boolean v5, v0, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-nez v5, :cond_45

    .line 535
    invoke-direct {p0, v0}, Lmobisocial/omlib/client/ClientFeedUtils;->nameForAccount(Lmobisocial/omlib/db/entity/OMAccount;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    add-int/lit8 v3, v3, 0x1

    .line 537
    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_68

    .line 538
    const-string v5, " & "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 539
    :cond_68
    if-ge v3, v2, :cond_45

    .line 540
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 544
    .end local v0    # "a":Lmobisocial/omlib/db/entity/OMAccount;
    :cond_70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1c
.end method

.method public generateFeedNamesWithMembers(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/util/Set;)V
    .registers 12
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/db/OMSQLiteHelper;",
            "Lmobisocial/omlib/db/PostCommit;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 576
    .local p3, "accounts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 577
    .local v1, "feedsToRefresh":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lmobisocial/omlib/db/entity/OMFeed;>;"
    invoke-direct {p0, p1, p2, p3}, Lmobisocial/omlib/client/ClientFeedUtils;->getFeedsHavingAnyAccount(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/db/entity/OMFeedMember;

    .line 578
    .local v2, "fm":Lmobisocial/omlib/db/entity/OMFeedMember;
    iget-object v4, v2, Lmobisocial/omlib/db/entity/OMFeedMember;->feedId:Ljava/lang/Long;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 579
    const-class v4, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v5, v2, Lmobisocial/omlib/db/entity/OMFeedMember;->feedId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v4, v6, v7}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 580
    .local v0, "f":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v0, :cond_d

    .line 581
    iget-wide v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 585
    .end local v0    # "f":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v2    # "fm":Lmobisocial/omlib/db/entity/OMFeedMember;
    :cond_3b
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_43
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 586
    .restart local v0    # "f":Lmobisocial/omlib/db/entity/OMFeed;
    invoke-virtual {p0, v0}, Lmobisocial/omlib/client/ClientFeedUtils;->feedNeedsDetailGenerated(Lmobisocial/omlib/db/entity/OMFeed;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 587
    invoke-virtual {p0, p1, p2, v0}, Lmobisocial/omlib/client/ClientFeedUtils;->generateDetailsForFeed(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 588
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_43

    .line 591
    .end local v0    # "f":Lmobisocial/omlib/db/entity/OMFeed;
    :cond_5c
    return-void
.end method

.method generateFeedThumbnailHashForMembers(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/db/entity/OMAccount;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMAccount;>;"
    const/4 v1, 0x0

    .line 549
    .local v1, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 550
    .local v0, "a":Lmobisocial/omlib/db/entity/OMAccount;
    iget-boolean v4, v0, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-nez v4, :cond_5

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 554
    .end local v0    # "a":Lmobisocial/omlib/db/entity/OMAccount;
    :cond_18
    if-nez v1, :cond_2e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 555
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/db/entity/OMAccount;

    .line 556
    .local v2, "me":Lmobisocial/omlib/db/entity/OMAccount;
    iget-object v3, v2, Lmobisocial/omlib/db/entity/OMAccount;->thumbnailHash:[B

    if-eqz v3, :cond_2e

    .line 557
    iget-object v3, v2, Lmobisocial/omlib/db/entity/OMAccount;->thumbnailHash:[B

    .line 568
    .end local v2    # "me":Lmobisocial/omlib/db/entity/OMAccount;
    :goto_2d
    return-object v3

    .line 560
    :cond_2e
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4c

    .line 561
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 562
    .restart local v0    # "a":Lmobisocial/omlib/db/entity/OMAccount;
    iget-boolean v4, v0, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-nez v4, :cond_35

    iget-object v4, v0, Lmobisocial/omlib/db/entity/OMAccount;->thumbnailHash:[B

    if-eqz v4, :cond_35

    .line 563
    iget-object v3, v0, Lmobisocial/omlib/db/entity/OMAccount;->thumbnailHash:[B

    goto :goto_2d

    .line 568
    .end local v0    # "a":Lmobisocial/omlib/db/entity/OMAccount;
    :cond_4c
    const/4 v3, 0x0

    goto :goto_2d
.end method

.method public getAcceptanceFromString(Ljava/lang/String;)Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;
    .registers 3
    .param p1, "acceptance"    # Ljava/lang/String;

    .prologue
    .line 1025
    if-nez p1, :cond_5

    .line 1026
    sget-object v0, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->PushEnabled:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    .line 1042
    :goto_4
    return-object v0

    .line 1027
    :cond_5
    const-string v0, "No"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1028
    sget-object v0, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->Provisional:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    goto :goto_4

    .line 1029
    :cond_10
    const-string v0, "Yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1030
    sget-object v0, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->Accepted:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    goto :goto_4

    .line 1031
    :cond_1b
    const-string v0, "Push"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1032
    sget-object v0, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->PushEnabled:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    goto :goto_4

    .line 1033
    :cond_26
    const-string v0, "Removed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1034
    sget-object v0, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->Removed:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    goto :goto_4

    .line 1035
    :cond_31
    const-string v0, "Restricted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1036
    sget-object v0, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->Restricted:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    goto :goto_4

    .line 1037
    :cond_3c
    const-string v0, "RestrictedPush"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1038
    sget-object v0, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->RestrictedPush:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    goto :goto_4

    .line 1039
    :cond_47
    const-string v0, "Blocked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1040
    sget-object v0, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->Blocked:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    goto :goto_4

    .line 1042
    :cond_52
    sget-object v0, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->PushEnabled:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    goto :goto_4
.end method

.method public getFeedSharingLink(Lmobisocial/omlib/db/entity/OMFeed;)Ljava/net/URI;
    .registers 7
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 616
    :try_start_0
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDGetJoinFeedLinkRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDGetJoinFeedLinkRequest;-><init>()V

    .line 617
    .local v1, "req":Lmobisocial/longdan/LDProtocols$LDGetJoinFeedLinkRequest;
    invoke-virtual {p1}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v3

    iput-object v3, v1, Lmobisocial/longdan/LDProtocols$LDGetJoinFeedLinkRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 618
    iget-object v3, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v3

    const-class v4, Lmobisocial/longdan/LDProtocols$LDGetJoinFeedLinkResponse;

    invoke-virtual {v3, v1, v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDGetJoinFeedLinkResponse;

    .line 619
    .local v2, "resp":Lmobisocial/longdan/LDProtocols$LDGetJoinFeedLinkResponse;
    new-instance v3, Ljava/net/URI;

    iget-object v4, v2, Lmobisocial/longdan/LDProtocols$LDGetJoinFeedLinkResponse;->JoinLink:Lmobisocial/longdan/LDProtocols$LDJoinFeedLink;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDJoinFeedLink;->Url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_22} :catch_23
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_22} :catch_2a

    return-object v3

    .line 620
    .end local v1    # "req":Lmobisocial/longdan/LDProtocols$LDGetJoinFeedLinkRequest;
    .end local v2    # "resp":Lmobisocial/longdan/LDProtocols$LDGetJoinFeedLinkResponse;
    :catch_23
    move-exception v0

    .line 621
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    new-instance v3, Lmobisocial/omlib/exception/NetworkException;

    invoke-direct {v3, v0}, Lmobisocial/omlib/exception/NetworkException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 622
    .end local v0    # "e":Lmobisocial/longdan/exception/LongdanException;
    :catch_2a
    move-exception v0

    .line 623
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v3, Lmobisocial/omlib/exception/NetworkException;

    invoke-direct {v3, v0}, Lmobisocial/omlib/exception/NetworkException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public getFixedMembershipFeed(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;Ljava/util/List;)Lmobisocial/omlib/db/entity/OMFeed;
    .registers 15
    .param p1, "feedKind"    # Lmobisocial/omlib/api/OmletFeedApi$FeedKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/api/OmletFeedApi$FeedKind;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lmobisocial/omlib/db/entity/OMFeed;"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "givenAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->SMS:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    if-ne p1, v0, :cond_c

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use oob apis for sms feeds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_c
    sget-object v0, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->Direct:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    if-eq p1, v0, :cond_18

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fixed membership feeds must have kind \'Direct\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_18
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v0}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "myAccount":Ljava/lang/String;
    if-nez v5, :cond_2a

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User not authenticated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2a
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v8, "allAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .local v2, "ldRecipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDIdentity;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 179
    .local v7, "a":Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v10, Lmobisocial/longdan/LDProtocols$LDIdentity;

    invoke-direct {v10}, Lmobisocial/longdan/LDProtocols$LDIdentity;-><init>()V

    .line 181
    .local v10, "ld":Lmobisocial/longdan/LDProtocols$LDIdentity;
    const-string v1, "account"

    iput-object v1, v10, Lmobisocial/longdan/LDProtocols$LDIdentity;->Type:Ljava/lang/String;

    .line 182
    iput-object v7, v10, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    .line 183
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 185
    .end local v7    # "a":Ljava/lang/String;
    .end local v10    # "ld":Lmobisocial/longdan/LDProtocols$LDIdentity;
    :cond_62
    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 186
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_6b
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {p1}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lmobisocial/omlib/client/ClientFeedUtils;->makeCanonicalFeedKey(Ljava/util/List;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v4

    .line 188
    .local v4, "canonical":Lmobisocial/longdan/LDProtocols$LDFeed;
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v0

    const-class v1, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {v0, v1, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v9

    check-cast v9, Lmobisocial/omlib/db/entity/OMFeed;

    .line 189
    .local v9, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v9, :cond_88

    .line 211
    .end local v9    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    :goto_87
    return-object v9

    .line 191
    .restart local v9    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    :cond_88
    const/4 v0, 0x1

    new-array v3, v0, [Lmobisocial/omlib/db/entity/OMFeed;

    .line 192
    .local v3, "res":[Lmobisocial/omlib/db/entity/OMFeed;
    iget-object v11, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v0, Lmobisocial/omlib/client/ClientFeedUtils$1;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lmobisocial/omlib/client/ClientFeedUtils$1;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;Ljava/util/List;[Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDFeed;Ljava/lang/String;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;)V

    invoke-virtual {v11, v0}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 211
    const/4 v0, 0x0

    aget-object v9, v3, v0

    goto :goto_87
.end method

.method public getOrCreateFeed(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDFeed;)Lmobisocial/omlib/db/entity/OMFeed;
    .registers 12
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "feedKey"    # Lmobisocial/longdan/LDProtocols$LDFeed;

    .prologue
    .line 374
    const-class v1, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {p1, v1, p3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 375
    .local v0, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-nez v0, :cond_37

    .line 376
    new-instance v0, Lmobisocial/omlib/db/entity/OMFeed;

    .end local v0    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    invoke-direct {v0}, Lmobisocial/omlib/db/entity/OMFeed;-><init>()V

    .line 377
    .restart local v0    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    invoke-virtual {p3}, Lmobisocial/longdan/LDProtocols$LDFeed;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    .line 378
    iget-object v1, p3, Lmobisocial/longdan/LDProtocols$LDFeed;->Kind:Ljava/lang/String;

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    .line 379
    const/16 v1, 0x1f

    iput v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->syncMask:I

    .line 380
    const-wide/16 v2, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x48190800

    sub-long/2addr v4, v6

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->newestFromService:J

    .line 381
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 382
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getMessageConsumer()Lmobisocial/omlib/client/LongdanMessageConsumer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmobisocial/omlib/client/LongdanMessageConsumer;->enqueueFeedForFetch(Lmobisocial/omlib/db/entity/OMFeed;Z)V

    .line 384
    :cond_37
    return-object v0
.end method

.method public getOrCreateFeedWithAccounts(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;Ljava/util/List;)Lmobisocial/omlib/db/entity/OMFeed;
    .registers 5
    .param p1, "feedKind"    # Lmobisocial/omlib/api/OmletFeedApi$FeedKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/api/OmletFeedApi$FeedKind;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lmobisocial/omlib/db/entity/OMFeed;"
        }
    .end annotation

    .prologue
    .line 215
    .local p2, "givenAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 216
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t provide no accounts to this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_10
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v1, Lmobisocial/omlib/client/ClientFeedUtils$2;

    invoke-direct {v1, p0, p2, p1}, Lmobisocial/omlib/client/ClientFeedUtils$2;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;Ljava/util/List;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->callOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    return-object v0
.end method

.method public getPublicChat(Ljava/lang/String;)Lmobisocial/omlib/db/entity/OMFeed;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 406
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDGetPublicChatRequest;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDGetPublicChatRequest;-><init>()V

    .line 407
    .local v2, "req":Lmobisocial/longdan/LDProtocols$LDGetPublicChatRequest;
    iput-object p1, v2, Lmobisocial/longdan/LDProtocols$LDGetPublicChatRequest;->LobbyName:Ljava/lang/String;

    .line 408
    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v4

    const-class v5, Lmobisocial/longdan/LDProtocols$LDGetPublicChatResponse;

    invoke-virtual {v4, v2, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v3

    check-cast v3, Lmobisocial/longdan/LDProtocols$LDGetPublicChatResponse;

    .line 409
    .local v3, "resp":Lmobisocial/longdan/LDProtocols$LDGetPublicChatResponse;
    iget-object v1, v3, Lmobisocial/longdan/LDProtocols$LDGetPublicChatResponse;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 410
    .local v1, "feedKey":Lmobisocial/longdan/LDProtocols$LDFeed;
    const/4 v4, 0x1

    new-array v0, v4, [Lmobisocial/omlib/db/entity/OMFeed;

    .line 411
    .local v0, "feed":[Lmobisocial/omlib/db/entity/OMFeed;
    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v5, Lmobisocial/omlib/client/ClientFeedUtils$6;

    invoke-direct {v5, p0, v0, v1}, Lmobisocial/omlib/client/ClientFeedUtils$6;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;[Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDFeed;)V

    invoke-virtual {v4, v5}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 425
    const/4 v4, 0x0

    aget-object v4, v0, v4

    return-object v4
.end method

.method public getStringFromAcceptance(Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;)Ljava/lang/String;
    .registers 4
    .param p1, "acceptance"    # Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    .prologue
    .line 1046
    sget-object v0, Lmobisocial/omlib/client/ClientFeedUtils$13;->$SwitchMap$mobisocial$omlib$client$ClientFeedUtils$Acceptance:[I

    invoke-virtual {p1}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 1062
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing enum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :pswitch_13
    const-string v0, "No"

    .line 1060
    :goto_15
    return-object v0

    .line 1050
    :pswitch_16
    const-string v0, "Yes"

    goto :goto_15

    .line 1052
    :pswitch_19
    const-string v0, "Push"

    goto :goto_15

    .line 1054
    :pswitch_1c
    const-string v0, "Removed"

    goto :goto_15

    .line 1056
    :pswitch_1f
    const-string v0, "Restricted"

    goto :goto_15

    .line 1058
    :pswitch_22
    const-string v0, "RestrictedPush"

    goto :goto_15

    .line 1060
    :pswitch_25
    const-string v0, "Blocked"

    goto :goto_15

    .line 1046
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public isFeaturesFeed(Lmobisocial/longdan/LDProtocols$LDFeed;)Z
    .registers 4
    .param p1, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;

    .prologue
    .line 611
    const-string v0, "c"

    iget-object v1, p1, Lmobisocial/longdan/LDProtocols$LDFeed;->Kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDFeed;->Key:[B

    sget-object v1, Lmobisocial/omlib/client/ClientFeedUtils;->FEATURES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isFeedActive(J)Z
    .registers 6
    .param p1, "feedId"    # J

    .prologue
    .line 698
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mActiveFeeds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMeFeed(Lmobisocial/longdan/LDProtocols$LDFeed;)Z
    .registers 4
    .param p1, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;

    .prologue
    .line 607
    const-string v0, "c"

    iget-object v1, p1, Lmobisocial/longdan/LDProtocols$LDFeed;->Kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDFeed;->Key:[B

    sget-object v1, Lmobisocial/omlib/client/ClientFeedUtils;->ME_FEED:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public joinPublicChat(Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 8
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    .line 431
    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mPublicChatSubscriptions:Ljava/util/Map;

    monitor-enter v2

    .line 432
    :try_start_3
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mPublicChatSubscriptions:Ljava/util/Map;

    iget-wide v4, p1, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 433
    new-instance v0, Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;

    invoke-virtual {p1}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;Lmobisocial/longdan/LDProtocols$LDFeed;)V

    .line 434
    .local v0, "p":Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mPublicChatSubscriptions:Ljava/util/Map;

    iget-wide v4, p1, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->incrementInterest()V

    .line 436
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addSessionListener(Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;)V

    .line 438
    .end local v0    # "p":Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;
    :cond_37
    monitor-exit v2

    .line 439
    return-void

    .line 438
    :catchall_39
    move-exception v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public leavePublicChat(Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 8
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    .line 442
    iget-object v3, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mPublicChatSubscriptions:Ljava/util/Map;

    monitor-enter v3

    .line 443
    :try_start_3
    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mPublicChatSubscriptions:Ljava/util/Map;

    iget-wide v4, p1, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;

    .line 444
    .local v0, "p":Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;
    if-eqz v0, :cond_25

    .line 445
    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->removeSessionListener(Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;)V

    .line 446
    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->decrementInterest()V

    .line 448
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_3e

    .line 451
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDLeavePublicChatRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDLeavePublicChatRequest;-><init>()V

    .line 452
    .local v1, "req":Lmobisocial/longdan/LDProtocols$LDLeavePublicChatRequest;
    invoke-virtual {p1}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v2

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDLeavePublicChatRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 453
    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    const-class v3, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    .line 454
    return-void

    .line 448
    .end local v0    # "p":Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;
    .end local v1    # "req":Lmobisocial/longdan/LDProtocols$LDLeavePublicChatRequest;
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2
.end method

.method public makeCanonicalFeedKey(Ljava/util/List;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDFeed;
    .registers 13
    .param p2, "feedKind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lmobisocial/longdan/LDProtocols$LDFeed;"
        }
    .end annotation

    .prologue
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 1082
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1086
    :try_start_4
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_9} :catch_37

    move-result-object v5

    .line 1090
    .local v5, "md5":Ljava/security/MessageDigest;
    const/4 v6, 0x0

    .line 1091
    .local v6, "prefix":[B
    sget-object v7, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->SMS:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    invoke-virtual {v7, p2}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 1092
    const-string v7, "sms"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1096
    :cond_19
    :goto_19
    if-eqz v6, :cond_1e

    .line 1097
    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 1098
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_22
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1099
    .local v1, "account":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1100
    .local v0, "acc":[B
    array-length v8, v0

    invoke-virtual {v5, v0, v9, v8}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_22

    .line 1087
    .end local v0    # "acc":[B
    .end local v1    # "account":Ljava/lang/String;
    .end local v5    # "md5":Ljava/security/MessageDigest;
    .end local v6    # "prefix":[B
    :catch_37
    move-exception v2

    .line 1088
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1093
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v5    # "md5":Ljava/security/MessageDigest;
    .restart local v6    # "prefix":[B
    :cond_3e
    iget-object v7, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    const-string v8, "OmletChat"

    invoke-virtual {v7, v8}, Lmobisocial/omlib/client/LongdanClient;->hasScope(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 1094
    iget-object v7, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v7}, Lmobisocial/omlib/client/LongdanClient;->getAppId()[B

    move-result-object v6

    goto :goto_19

    .line 1102
    :cond_4f
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 1103
    .local v4, "key":[B
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDFeed;-><init>()V

    .line 1104
    .local v3, "feed":Lmobisocial/longdan/LDProtocols$LDFeed;
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v3, Lmobisocial/longdan/LDProtocols$LDFeed;->Account:Ljava/lang/String;

    .line 1105
    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDFeed;->Key:[B

    .line 1106
    iput-object p2, v3, Lmobisocial/longdan/LDProtocols$LDFeed;->Kind:Ljava/lang/String;

    .line 1107
    return-object v3
.end method

.method public makeCanonicalFeedKey(Lmobisocial/longdan/LDProtocols$LDIdentity;Ljava/util/List;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDFeed;
    .registers 11
    .param p1, "sender"    # Lmobisocial/longdan/LDProtocols$LDIdentity;
    .param p3, "feedKind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/longdan/LDProtocols$LDIdentity;",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDIdentity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lmobisocial/longdan/LDProtocols$LDFeed;"
        }
    .end annotation

    .prologue
    .local p2, "recipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDIdentity;>;"
    const/4 v4, 0x0

    .line 1067
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1068
    .local v1, "combined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    invoke-virtual {v5, p1}, Lmobisocial/omlib/client/ClientIdentityUtils;->accountForLdIdentity(Lmobisocial/longdan/LDProtocols$LDIdentity;)Ljava/lang/String;

    move-result-object v2

    .line 1069
    .local v2, "me":Ljava/lang/String;
    if-nez v2, :cond_17

    .line 1078
    :cond_16
    :goto_16
    return-object v4

    .line 1071
    :cond_17
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 1073
    .local v3, "r":Lmobisocial/longdan/LDProtocols$LDIdentity;
    iget-object v6, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v6, v6, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    invoke-virtual {v6, v3}, Lmobisocial/omlib/client/ClientIdentityUtils;->accountForLdIdentity(Lmobisocial/longdan/LDProtocols$LDIdentity;)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "a":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 1076
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1078
    .end local v0    # "a":Ljava/lang/String;
    .end local v3    # "r":Lmobisocial/longdan/LDProtocols$LDIdentity;
    :cond_38
    invoke-virtual {p0, v1, p3}, Lmobisocial/omlib/client/ClientFeedUtils;->makeCanonicalFeedKey(Ljava/util/List;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v4

    goto :goto_16
.end method

.method public makeFeedIdTypedId(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/longdan/LDProtocols$LDTypedId;)[B
    .registers 5
    .param p1, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;
    .param p2, "id"    # Lmobisocial/longdan/LDProtocols$LDTypedId;

    .prologue
    .line 1119
    new-instance v0, Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;

    invoke-direct {v0}, Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;-><init>()V

    .line 1120
    .local v0, "fid":Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;
    iput-object p1, v0, Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 1121
    iput-object p2, v0, Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;->id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 1122
    invoke-static {v0}, Lmobisocial/serialization/SerializationUtils;->toJson(Ljava/lang/Object;)[B

    move-result-object v1

    return-object v1
.end method

.method public markFeedActive(J)V
    .registers 6
    .param p1, "feedId"    # J

    .prologue
    .line 675
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mActiveFeeds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-virtual {p0, p1, p2}, Lmobisocial/omlib/client/ClientFeedUtils;->markFeedRead(J)V

    .line 677
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v1

    const-class v2, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {v1, v2, p1, p2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 678
    .local v0, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v0, :cond_29

    .line 679
    sget-object v1, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->Public:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    iget-object v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 680
    invoke-virtual {p0, v0}, Lmobisocial/omlib/client/ClientFeedUtils;->joinPublicChat(Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 683
    :cond_29
    return-void
.end method

.method public markFeedInactive(J)V
    .registers 6
    .param p1, "feedId"    # J

    .prologue
    .line 686
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mActiveFeeds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 687
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/client/ClientFeedUtils;->unsubscribeForRealtime(J)V

    .line 688
    sget-object v1, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->NOTHING:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    invoke-virtual {p0, p1, p2, v1}, Lmobisocial/omlib/client/ClientFeedUtils;->sendActiveStatusIndicator(JLmobisocial/omlib/api/OmletFeedApi$StatusIndicator;)V

    .line 689
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v1

    const-class v2, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {v1, v2, p1, p2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 690
    .local v0, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v0, :cond_2e

    .line 691
    sget-object v1, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->Public:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    iget-object v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 692
    invoke-virtual {p0, v0}, Lmobisocial/omlib/client/ClientFeedUtils;->leavePublicChat(Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 695
    :cond_2e
    return-void
.end method

.method public markFeedRead(J)V
    .registers 6
    .param p1, "feedId"    # J

    .prologue
    .line 633
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v1, Lmobisocial/omlib/client/ClientFeedUtils$7;

    invoke-direct {v1, p0, p1, p2}, Lmobisocial/omlib/client/ClientFeedUtils$7;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;J)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 643
    return-void
.end method

.method public markFeedReadFromProcessorThread(Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 10
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    const-wide/16 v4, 0x0

    .line 646
    if-eqz p1, :cond_21

    iget-wide v2, p1, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_21

    .line 647
    iget-wide v0, p1, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    .line 648
    .local v0, "timestamp":J
    iget-wide v2, p1, Lmobisocial/omlib/db/entity/OMFeed;->lastReadTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_21

    .line 649
    iput-wide v0, p1, Lmobisocial/omlib/db/entity/OMFeed;->lastReadTime:J

    .line 650
    iput-wide v4, p1, Lmobisocial/omlib/db/entity/OMFeed;->numUnread:J

    .line 651
    invoke-virtual {p2, p1}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 652
    new-instance v2, Lmobisocial/omlib/client/ClientFeedUtils$8;

    invoke-direct {v2, p0, v0, v1, p1}, Lmobisocial/omlib/client/ClientFeedUtils$8;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;JLmobisocial/omlib/db/entity/OMFeed;)V

    invoke-interface {p3, v2}, Lmobisocial/omlib/db/PostCommit;->add(Ljava/lang/Runnable;)V

    .line 668
    .end local v0    # "timestamp":J
    :cond_21
    return-void
.end method

.method public notifyFeedStatus(JLmobisocial/omlib/model/RealtimePushObject;)V
    .registers 19
    .param p1, "accountId"    # J
    .param p3, "pushObject"    # Lmobisocial/omlib/model/RealtimePushObject;

    .prologue
    .line 774
    iget-object v8, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mFeedStatusIndicators:Ljava/util/Map;

    monitor-enter v8

    .line 775
    :try_start_3
    iget-object v7, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mFeedStatusIndicators:Ljava/util/Map;

    move-object/from16 v0, p3

    iget-wide v10, v0, Lmobisocial/omlib/model/RealtimePushObject;->feedId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 776
    .local v6, "usersToStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    if-nez v6, :cond_27

    .line 777
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "usersToStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 778
    .restart local v6    # "usersToStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    iget-object v7, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mFeedStatusIndicators:Ljava/util/Map;

    move-object/from16 v0, p3

    iget-wide v10, v0, Lmobisocial/omlib/model/RealtimePushObject;->feedId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    :cond_27
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    move-object/from16 v0, p3

    iget-wide v4, v0, Lmobisocial/omlib/model/RealtimePushObject;->feedId:J

    .line 783
    .local v4, "feedId":J
    iget-object v9, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;

    monitor-enter v9
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_73

    .line 784
    :try_start_37
    iget-object v7, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/interfaces/RealtimeCallback;

    .line 785
    .local v2, "cb":Lmobisocial/omlib/interfaces/RealtimeCallback;
    monitor-exit v9
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_70

    .line 786
    if-eqz v2, :cond_57

    .line 787
    :try_start_46
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 788
    .local v3, "realtimePushObjects":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RealtimePushObject;>;"
    new-instance v7, Lmobisocial/omlib/client/ClientFeedUtils$10;

    invoke-direct {v7, p0, v4, v5, v3}, Lmobisocial/omlib/client/ClientFeedUtils$10;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;JLjava/util/List;)V

    invoke-static {v7}, Lmobisocial/util/PlatformUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 802
    .end local v3    # "realtimePushObjects":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RealtimePushObject;>;"
    :cond_57
    monitor-exit v8
    :try_end_58
    .catchall {:try_start_46 .. :try_end_58} :catchall_73

    .line 803
    iget-object v7, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeExpirationTimer:Ljava/util/Timer;

    new-instance v8, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;

    move-object/from16 v0, p3

    iget-wide v10, v0, Lmobisocial/omlib/model/RealtimePushObject;->feedId:J

    invoke-direct {v8, p0, v10, v11}, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;J)V

    move-object/from16 v0, p3

    iget-wide v10, v0, Lmobisocial/omlib/model/RealtimePushObject;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {v7, v8, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 804
    return-void

    .line 785
    .end local v2    # "cb":Lmobisocial/omlib/interfaces/RealtimeCallback;
    :catchall_70
    move-exception v7

    :try_start_71
    monitor-exit v9
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    throw v7

    .line 802
    .end local v4    # "feedId":J
    .end local v6    # "usersToStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    :catchall_73
    move-exception v7

    monitor-exit v8
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_73

    throw v7
.end method

.method public removeFeedMemberLocal(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;)Z
    .registers 11
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p4, "account"    # Lmobisocial/omlib/db/entity/OMAccount;

    .prologue
    .line 396
    iget-object v2, p4, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p3, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v2, v3, v4, v5}, Lmobisocial/omlib/client/ClientFeedUtils;->getFeedMemberRowKey(JJ)[B

    move-result-object v1

    .line 397
    .local v1, "key":[B
    const-class v2, Lmobisocial/omlib/db/entity/OMFeedMember;

    invoke-virtual {p1, v2, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeedMember;

    .line 398
    .local v0, "fm":Lmobisocial/omlib/db/entity/OMFeedMember;
    if-eqz v0, :cond_1b

    .line 399
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObject(Lmobisocial/omlib/db/util/OMBase;)Z

    move-result v2

    .line 401
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public removeMemberFromFeed(JLjava/lang/String;)V
    .registers 11
    .param p1, "feedId"    # J
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v5, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v5}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v5

    const-class v6, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {v5, v6, p1, p2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMFeed;

    .line 311
    .local v1, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    iget-object v5, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v5}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v5

    const-class v6, Lmobisocial/omlib/db/entity/OMAccount;

    invoke-virtual {v5, v6, p3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v3

    check-cast v3, Lmobisocial/omlib/db/entity/OMAccount;

    .line 312
    .local v3, "omAccount":Lmobisocial/omlib/db/entity/OMAccount;
    iget-object v5, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v5}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "meAccount":Ljava/lang/String;
    if-eqz v1, :cond_28

    if-nez v3, :cond_29

    .line 353
    :cond_28
    :goto_28
    return-void

    .line 316
    :cond_29
    invoke-virtual {v1}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v0

    .line 317
    .local v0, "decodedFeed":Lmobisocial/longdan/LDProtocols$LDFeed;
    iget-object v5, v0, Lmobisocial/longdan/LDProtocols$LDFeed;->Account:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 318
    new-instance v5, Lmobisocial/omlib/client/ClientFeedUtils$3;

    invoke-direct {v5, p0}, Lmobisocial/omlib/client/ClientFeedUtils$3;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;)V

    invoke-static {v5}, Lmobisocial/util/PlatformUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_28

    .line 328
    :cond_44
    new-instance v4, Lmobisocial/longdan/LDProtocols$LDRemoveMemberRequest;

    invoke-direct {v4}, Lmobisocial/longdan/LDProtocols$LDRemoveMemberRequest;-><init>()V

    .line 329
    .local v4, "removeSelfRequest":Lmobisocial/longdan/LDProtocols$LDRemoveMemberRequest;
    iput-object v0, v4, Lmobisocial/longdan/LDProtocols$LDRemoveMemberRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 330
    iput-object p3, v4, Lmobisocial/longdan/LDProtocols$LDRemoveMemberRequest;->Member:Ljava/lang/String;

    .line 331
    iget-object v5, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v5}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v5

    new-instance v6, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    invoke-direct {v6, v4, v0}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Lmobisocial/longdan/LDProtocols$LDFeed;)V

    invoke-virtual {v5, v6}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 332
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 333
    iget-object v5, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v6, Lmobisocial/omlib/client/ClientFeedUtils$4;

    invoke-direct {v6, p0, v1}, Lmobisocial/omlib/client/ClientFeedUtils$4;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;Lmobisocial/omlib/db/entity/OMFeed;)V

    invoke-virtual {v5, v6}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    goto :goto_28

    .line 345
    :cond_6c
    iget-object v5, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v6, Lmobisocial/omlib/client/ClientFeedUtils$5;

    invoke-direct {v6, p0, v1, p3}, Lmobisocial/omlib/client/ClientFeedUtils$5;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;Lmobisocial/omlib/db/entity/OMFeed;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    goto :goto_28
.end method

.method public sendActiveStatusIndicator(JLmobisocial/omlib/api/OmletFeedApi$StatusIndicator;)V
    .registers 15
    .param p1, "feedId"    # J
    .param p3, "action"    # Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    .prologue
    const/4 v6, 0x0

    .line 807
    iget-object v7, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v7}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v7

    const-class v8, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {v7, v8, p1, p2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 808
    .local v0, "feedToSendTo":Lmobisocial/omlib/db/entity/OMFeed;
    if-nez v0, :cond_19

    .line 809
    const-string v6, "ClientFeedUtils"

    const-string v7, "Trying to update mFeed activity on a mFeed that hasn\'t been sycned yet"

    invoke-static {v6, v7}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :goto_18
    return-void

    .line 812
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 813
    .local v2, "now":J
    iget-object v7, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mUserStatusIndicators:Ljava/util/Map;

    monitor-enter v7

    .line 814
    :try_start_20
    iget-object v8, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mUserStatusIndicators:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobisocial/omlib/model/RealtimePushObject;

    .line 815
    .local v4, "rpo":Lmobisocial/omlib/model/RealtimePushObject;
    if-eqz v4, :cond_4b

    iget-wide v8, v4, Lmobisocial/omlib/model/RealtimePushObject;->expiration:J

    cmp-long v8, v2, v8

    if-gez v8, :cond_4b

    iget-object v8, v4, Lmobisocial/omlib/model/RealtimePushObject;->action:Ljava/lang/String;

    invoke-virtual {p3}, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 816
    iget-wide v8, v4, Lmobisocial/omlib/model/RealtimePushObject;->expiration:J

    cmp-long v8, v2, v8

    if-gez v8, :cond_4b

    .line 817
    monitor-exit v7

    goto :goto_18

    .line 828
    .end local v4    # "rpo":Lmobisocial/omlib/model/RealtimePushObject;
    :catchall_48
    move-exception v6

    monitor-exit v7
    :try_end_4a
    .catchall {:try_start_20 .. :try_end_4a} :catchall_48

    throw v6

    .line 820
    .restart local v4    # "rpo":Lmobisocial/omlib/model/RealtimePushObject;
    :cond_4b
    :try_start_4b
    sget-object v8, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->NOTHING:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    if-ne p3, v8, :cond_90

    .line 821
    iget-object v8, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mUserStatusIndicators:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :goto_58
    monitor-exit v7
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_48

    .line 829
    new-instance v5, Lmobisocial/longdan/LDProtocols$LDSendRealtimeRequest;

    invoke-direct {v5}, Lmobisocial/longdan/LDProtocols$LDSendRealtimeRequest;-><init>()V

    .line 830
    .local v5, "sendRealtimeRequest":Lmobisocial/longdan/LDProtocols$LDSendRealtimeRequest;
    new-instance v1, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeUpdate;

    invoke-direct {v1, p0, v6}, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeUpdate;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;Lmobisocial/omlib/client/ClientFeedUtils$1;)V

    .line 831
    .local v1, "realtimeUpdate":Lmobisocial/omlib/client/ClientFeedUtils$RealtimeUpdate;
    if-eqz p3, :cond_69

    invoke-virtual {p3}, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_69
    iput-object v6, v1, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeUpdate;->activity:Ljava/lang/String;

    .line 832
    const-wide/16 v6, 0xf

    iput-wide v6, v1, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeUpdate;->duration:J

    .line 833
    invoke-static {v1}, Lmobisocial/serialization/SerializationUtils;->toJson(Ljava/lang/Object;)[B

    move-result-object v6

    iput-object v6, v5, Lmobisocial/longdan/LDProtocols$LDSendRealtimeRequest;->Body:[B

    .line 834
    invoke-virtual {v0}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v6

    iput-object v6, v5, Lmobisocial/longdan/LDProtocols$LDSendRealtimeRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 835
    const-string v6, "feedActivity"

    iput-object v6, v5, Lmobisocial/longdan/LDProtocols$LDSendRealtimeRequest;->Type:Ljava/lang/String;

    .line 836
    iget-object v6, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v6}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v6

    const-class v7, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    new-instance v8, Lmobisocial/omlib/client/ClientFeedUtils$11;

    invoke-direct {v8, p0}, Lmobisocial/omlib/client/ClientFeedUtils$11;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;)V

    invoke-virtual {v6, v5, v7, v8}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    goto :goto_18

    .line 823
    .end local v1    # "realtimeUpdate":Lmobisocial/omlib/client/ClientFeedUtils$RealtimeUpdate;
    .end local v5    # "sendRealtimeRequest":Lmobisocial/longdan/LDProtocols$LDSendRealtimeRequest;
    :cond_90
    :try_start_90
    new-instance v4, Lmobisocial/omlib/model/RealtimePushObject;

    .end local v4    # "rpo":Lmobisocial/omlib/model/RealtimePushObject;
    invoke-direct {v4}, Lmobisocial/omlib/model/RealtimePushObject;-><init>()V

    .line 824
    .restart local v4    # "rpo":Lmobisocial/omlib/model/RealtimePushObject;
    const-wide/16 v8, 0x1388

    add-long/2addr v8, v2

    iput-wide v8, v4, Lmobisocial/omlib/model/RealtimePushObject;->expiration:J

    .line 825
    invoke-virtual {p3}, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lmobisocial/omlib/model/RealtimePushObject;->action:Ljava/lang/String;

    .line 826
    iget-object v8, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mUserStatusIndicators:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a9
    .catchall {:try_start_90 .. :try_end_a9} :catchall_48

    goto :goto_58
.end method

.method public setFeedImage(JLjava/io/InputStream;)[B
    .registers 11
    .param p1, "feedId"    # J
    .param p3, "imageStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    iget-object v3, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v3

    const-class v4, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {v3, v4, p1, p2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 743
    .local v0, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-nez v0, :cond_18

    .line 744
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid feed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 746
    :cond_18
    sget-object v3, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->Direct:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    iget-object v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    sget-object v3, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->SMS:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    iget-object v4, v0, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 747
    :cond_2c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot set picture for direct feeds"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 749
    :cond_34
    iget-object v3, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v3, p3}, Lmobisocial/omlib/client/ClientBlobUtils;->saveAndHashBlob(Ljava/io/InputStream;)Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    move-result-object v2

    .line 750
    .local v2, "obj":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    new-instance v1, Lmobisocial/omlib/jobs/UploadFeedProfilePictureJob;

    invoke-direct {v1}, Lmobisocial/omlib/jobs/UploadFeedProfilePictureJob;-><init>()V

    .line 751
    .local v1, "feedJob":Lmobisocial/omlib/jobs/UploadFeedProfilePictureJob;
    invoke-virtual {v0}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v3

    iput-object v3, v1, Lmobisocial/omlib/jobs/UploadFeedProfilePictureJob;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 752
    iget-object v3, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v0}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v1, v5}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSentToFeed(Lmobisocial/longdan/LDObjects$BlobReferenceObj;Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/jobs/BaseJobWithBlob;Ljava/lang/Long;)V

    .line 753
    iget-object v3, v2, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    return-object v3
.end method

.method public setFeedName(JLjava/lang/String;)V
    .registers 11
    .param p1, "feedId"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 757
    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v4

    const-class v5, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {v4, v5, p1, p2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMFeed;

    .line 758
    .local v1, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-nez v1, :cond_18

    .line 759
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid feed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 761
    :cond_18
    sget-object v4, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->Direct:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    iget-object v5, v1, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    sget-object v4, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->SMS:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    iget-object v5, v1, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 762
    :cond_2c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot set name for direct feeds"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 764
    :cond_34
    invoke-virtual {v1}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v2

    .line 765
    .local v2, "ldFeed":Lmobisocial/longdan/LDProtocols$LDFeed;
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDSetFeedNameRequest;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDSetFeedNameRequest;-><init>()V

    .line 766
    .local v3, "req":Lmobisocial/longdan/LDProtocols$LDSetFeedNameRequest;
    iput-object v2, v3, Lmobisocial/longdan/LDProtocols$LDSetFeedNameRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 767
    iput-object p3, v3, Lmobisocial/longdan/LDProtocols$LDSetFeedNameRequest;->Name:Ljava/lang/String;

    .line 768
    new-instance v0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    invoke-direct {v0, v3, v2}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Lmobisocial/longdan/LDProtocols$LDFeed;)V

    .line 769
    .local v0, "ctrl":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v4

    invoke-virtual {v4, v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 770
    return-void
.end method

.method shouldFullSync(Lmobisocial/omlib/db/entity/OMFeed;)Z
    .registers 7
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 726
    invoke-virtual {p1}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v0

    .line 727
    .local v0, "ldfeed":Lmobisocial/longdan/LDProtocols$LDFeed;
    if-nez v0, :cond_9

    .line 738
    :cond_8
    :goto_8
    return v1

    .line 730
    :cond_9
    const-string v3, "c"

    iget-object v4, p1, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 732
    iget-object v1, v0, Lmobisocial/longdan/LDProtocols$LDFeed;->Key:[B

    sget-object v3, Lmobisocial/omlib/client/ClientFeedUtils;->ME_FEED:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v2

    .line 733
    goto :goto_8

    .line 734
    :cond_1f
    iget-object v1, v0, Lmobisocial/longdan/LDProtocols$LDFeed;->Key:[B

    sget-object v3, Lmobisocial/omlib/client/ClientFeedUtils;->CONTACTS:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v2

    .line 735
    goto :goto_8

    .line 736
    :cond_2b
    iget-object v1, v0, Lmobisocial/longdan/LDProtocols$LDFeed;->Key:[B

    sget-object v3, Lmobisocial/omlib/client/ClientFeedUtils;->GAME_ACHIEVEMENTS:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_37

    move v1, v2

    .line 737
    goto :goto_8

    .line 738
    :cond_37
    iget-object v1, v0, Lmobisocial/longdan/LDProtocols$LDFeed;->Key:[B

    sget-object v2, Lmobisocial/omlib/client/ClientFeedUtils;->FEATURES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_8
.end method

.method public subscribeForRealtime(JLmobisocial/omlib/interfaces/RealtimeCallback;)V
    .registers 19
    .param p1, "feedId"    # J
    .param p3, "realtimeCallback"    # Lmobisocial/omlib/interfaces/RealtimeCallback;

    .prologue
    .line 952
    iget-object v9, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v9}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v9

    const-class v10, Lmobisocial/omlib/db/entity/OMFeed;

    move-wide/from16 v0, p1

    invoke-virtual {v9, v10, v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v5

    check-cast v5, Lmobisocial/omlib/db/entity/OMFeed;

    .line 953
    .local v5, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-nez v5, :cond_1a

    .line 954
    const-string v9, "ClientFeedUtils"

    const-string v10, "Trying to subscribe to a mFeed that has been deleted"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :goto_19
    return-void

    .line 957
    :cond_1a
    new-instance v9, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;

    invoke-direct {v9, p0, v5}, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;Lmobisocial/omlib/db/entity/OMFeed;)V

    iput-object v9, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mCurrentRealtimeListener:Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;

    .line 958
    if-eqz p3, :cond_96

    .line 959
    iget-object v10, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;

    monitor-enter v10

    .line 960
    :try_start_26
    iget-object v9, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeCallbacks:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v9, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    monitor-exit v10
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_78

    .line 962
    iget-object v10, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mFeedStatusIndicators:Ljava/util/Map;

    monitor-enter v10

    .line 963
    :try_start_35
    iget-object v9, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mFeedStatusIndicators:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 964
    .local v7, "pushObjectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    if-eqz v7, :cond_95

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_95

    .line 965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 966
    .local v2, "currTime":J
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 967
    .local v4, "entrySetIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;>;"
    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 968
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 969
    .local v8, "realtimePushObjectEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobisocial/omlib/model/RealtimePushObject;

    .line 970
    .local v6, "obj":Lmobisocial/omlib/model/RealtimePushObject;
    iget-wide v12, v6, Lmobisocial/omlib/model/RealtimePushObject;->expiration:J

    cmp-long v9, v12, v2

    if-gtz v9, :cond_7b

    .line 972
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_55

    .line 992
    .end local v2    # "currTime":J
    .end local v4    # "entrySetIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;>;"
    .end local v6    # "obj":Lmobisocial/omlib/model/RealtimePushObject;
    .end local v7    # "pushObjectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    .end local v8    # "realtimePushObjectEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    :catchall_75
    move-exception v9

    monitor-exit v10
    :try_end_77
    .catchall {:try_start_35 .. :try_end_77} :catchall_75

    throw v9

    .line 961
    :catchall_78
    move-exception v9

    :try_start_79
    monitor-exit v10
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v9

    .line 975
    .restart local v2    # "currTime":J
    .restart local v4    # "entrySetIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;>;"
    .restart local v6    # "obj":Lmobisocial/omlib/model/RealtimePushObject;
    .restart local v7    # "pushObjectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    .restart local v8    # "realtimePushObjectEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    :cond_7b
    :try_start_7b
    iget-object v9, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mRealtimeExpirationTimer:Ljava/util/Timer;

    new-instance v11, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;

    move-wide/from16 v0, p1

    invoke-direct {v11, p0, v0, v1}, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;J)V

    iget-wide v12, v6, Lmobisocial/omlib/model/RealtimePushObject;->expiration:J

    sub-long/2addr v12, v2

    invoke-virtual {v9, v11, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_55

    .line 978
    .end local v6    # "obj":Lmobisocial/omlib/model/RealtimePushObject;
    .end local v8    # "realtimePushObjectEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    :cond_8b
    new-instance v9, Lmobisocial/omlib/client/ClientFeedUtils$12;

    move-wide/from16 v0, p1

    invoke-direct {v9, p0, v0, v1, v7}, Lmobisocial/omlib/client/ClientFeedUtils$12;-><init>(Lmobisocial/omlib/client/ClientFeedUtils;JLjava/util/Map;)V

    invoke-static {v9}, Lmobisocial/util/PlatformUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 992
    .end local v2    # "currTime":J
    .end local v4    # "entrySetIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;>;"
    :cond_95
    monitor-exit v10
    :try_end_96
    .catchall {:try_start_7b .. :try_end_96} :catchall_75

    .line 994
    .end local v7    # "pushObjectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lmobisocial/omlib/model/RealtimePushObject;>;"
    :cond_96
    iget-object v9, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v9}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v9

    iget-object v10, p0, Lmobisocial/omlib/client/ClientFeedUtils;->mCurrentRealtimeListener:Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;

    invoke-virtual {v9, v10}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addSessionListener(Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;)V

    goto/16 :goto_19
.end method
