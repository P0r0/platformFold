.class public Lmobisocial/omlib/service/OmlibService;
.super Lmobisocial/omlib/service/BaseOmletApiService;
.source "OmlibService.java"


# static fields
.field public static final ACTION_ACCEPT_PUSH_MESSAGE:Ljava/lang/String; = "mobisocial.omlib.action.ACCEPT_PUSH_MSG"

.field public static final ACTION_REFRESH_GCM:Ljava/lang/String; = "mobisocial.omlib.action.REFRESH_GCM"

.field public static final ACTION_SUBMIT_PUSH_KEY:Ljava/lang/String; = "mobisocial.omlib.action.SUBMIT_PUSH_KEY"

.field public static final EXTRA_MESSAGE_TEXT:Ljava/lang/String; = "mobisocial.omlib.extra.MSG_TEXT"

.field public static final EXTRA_PUSH_KEY:Ljava/lang/String; = "mobisocial.omlib.extra.PUSH_KEY"

.field public static final EXTRA_PUSH_TYPE:Ljava/lang/String; = "mobisocial.omlib.extra.PUSH_TYPE"

.field public static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "mobisocial.omlib.extra.WAKE_LOCK_ID"

.field public static final TAG:Ljava/lang/String; = "OmlibService"


# instance fields
.field final mAuth:Lmobisocial/omlib/api/OmletAuthApi;

.field final mBlobs:Lmobisocial/omlib/api/OmletBlobApi;

.field private mClientInitialized:Ljava/util/concurrent/CountDownLatch;

.field private mClosestCluster:Ljava/lang/String;

.field private final mClosestClusterListener:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

.field private mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mEnablePushRegistrationListener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

.field final mFeeds:Lmobisocial/omlib/api/OmletFeedApi;

.field final mIdentity:Lmobisocial/omlib/api/OmletIdentityApi;

.field final mMessaging:Lmobisocial/omlib/api/OmletMessagingApi;

.field final mOob:Lmobisocial/omlib/api/OmletOobApi;

.field private mPushEnabled:Z

.field private mSocketInterest:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Lmobisocial/omlib/service/BaseOmletApiService;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lmobisocial/omlib/service/OmlibService;->mSocketInterest:I

    .line 99
    new-instance v0, Lmobisocial/omlib/service/OmlibService$1;

    invoke-direct {v0, p0}, Lmobisocial/omlib/service/OmlibService$1;-><init>(Lmobisocial/omlib/service/OmlibService;)V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mEnablePushRegistrationListener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    .line 147
    new-instance v0, Lmobisocial/omlib/service/OmlibService$2;

    invoke-direct {v0, p0}, Lmobisocial/omlib/service/OmlibService$2;-><init>(Lmobisocial/omlib/service/OmlibService;)V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mClosestClusterListener:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    .line 267
    new-instance v0, Lmobisocial/omlib/service/OmlibService$8;

    invoke-direct {v0, p0}, Lmobisocial/omlib/service/OmlibService$8;-><init>(Lmobisocial/omlib/service/OmlibService;)V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    new-instance v0, Lmobisocial/omlib/service/OmlibService$9;

    invoke-direct {v0, p0}, Lmobisocial/omlib/service/OmlibService$9;-><init>(Lmobisocial/omlib/service/OmlibService;)V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mAuth:Lmobisocial/omlib/api/OmletAuthApi;

    .line 377
    new-instance v0, Lmobisocial/omlib/service/OmlibService$10;

    invoke-direct {v0, p0}, Lmobisocial/omlib/service/OmlibService$10;-><init>(Lmobisocial/omlib/service/OmlibService;)V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mIdentity:Lmobisocial/omlib/api/OmletIdentityApi;

    .line 417
    new-instance v0, Lmobisocial/omlib/service/OmlibService$11;

    invoke-direct {v0, p0}, Lmobisocial/omlib/service/OmlibService$11;-><init>(Lmobisocial/omlib/service/OmlibService;)V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mFeeds:Lmobisocial/omlib/api/OmletFeedApi;

    .line 555
    new-instance v0, Lmobisocial/omlib/service/OmlibService$12;

    invoke-direct {v0, p0}, Lmobisocial/omlib/service/OmlibService$12;-><init>(Lmobisocial/omlib/service/OmlibService;)V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mMessaging:Lmobisocial/omlib/api/OmletMessagingApi;

    .line 632
    new-instance v0, Lmobisocial/omlib/service/OmlibService$13;

    invoke-direct {v0, p0}, Lmobisocial/omlib/service/OmlibService$13;-><init>(Lmobisocial/omlib/service/OmlibService;)V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mOob:Lmobisocial/omlib/api/OmletOobApi;

    .line 712
    new-instance v0, Lmobisocial/omlib/service/OmlibService$14;

    invoke-direct {v0, p0}, Lmobisocial/omlib/service/OmlibService$14;-><init>(Lmobisocial/omlib/service/OmlibService;)V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mBlobs:Lmobisocial/omlib/api/OmletBlobApi;

    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlib/service/OmlibService;Z)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/service/OmlibService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lmobisocial/omlib/service/OmlibService;->enablePushNotifications(Z)V

    return-void
.end method

.method static synthetic access$100(Lmobisocial/omlib/service/OmlibService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 73
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mClosestCluster:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lmobisocial/omlib/service/OmlibService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/service/OmlibService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService;->mClosestCluster:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lmobisocial/omlib/service/OmlibService;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lmobisocial/omlib/service/OmlibService;->mPushEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lmobisocial/omlib/service/OmlibService;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/service/OmlibService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lmobisocial/omlib/service/OmlibService;->mPushEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lmobisocial/omlib/service/OmlibService;)Lmobisocial/omlib/interfaces/OnAccountConnectedListener;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 73
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mEnablePushRegistrationListener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    return-object v0
.end method

.method static synthetic access$400(Lmobisocial/omlib/service/OmlibService;)Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 73
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mClosestClusterListener:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    return-object v0
.end method

.method static synthetic access$500(Lmobisocial/omlib/service/OmlibService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 73
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mClientInitialized:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$600(Lmobisocial/omlib/service/OmlibService;)I
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 73
    iget v0, p0, Lmobisocial/omlib/service/OmlibService;->mSocketInterest:I

    return v0
.end method

.method static synthetic access$608(Lmobisocial/omlib/service/OmlibService;)I
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 73
    iget v0, p0, Lmobisocial/omlib/service/OmlibService;->mSocketInterest:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmobisocial/omlib/service/OmlibService;->mSocketInterest:I

    return v0
.end method

.method static synthetic access$610(Lmobisocial/omlib/service/OmlibService;)I
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 73
    iget v0, p0, Lmobisocial/omlib/service/OmlibService;->mSocketInterest:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lmobisocial/omlib/service/OmlibService;->mSocketInterest:I

    return v0
.end method

.method private declared-synchronized enablePushNotifications(Z)V
    .registers 10
    .param p1, "forceRestart"    # Z

    .prologue
    const/4 v3, 0x1

    .line 108
    monitor-enter p0

    const/4 v1, 0x0

    .line 109
    .local v1, "ignore_push":Z
    :try_start_3
    invoke-static {p0}, Lmobisocial/omlib/service/util/ConfigHelper;->getProvider(Landroid/content/Context;)Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    move-result-object v5

    .line 110
    .local v5, "provider":Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    const-string v6, "omlet.nopush"

    invoke-interface {v5, v6}, Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 111
    .local v4, "noPush":Ljava/lang/Boolean;
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_56

    move-result v6

    if-eqz v6, :cond_17

    .line 129
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    .line 113
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, "c":Landroid/content/Context;
    iget-boolean v6, p0, Lmobisocial/omlib/service/OmlibService;->mPushEnabled:Z

    if-eqz v6, :cond_21

    if-eqz p1, :cond_15

    .line 116
    :cond_21
    const-string v6, "THREE"

    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v7

    invoke-virtual {v7}, Lmobisocial/omlib/client/LongdanClient;->getClusterId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    const-string v6, "THREE"

    iget-object v7, p0, Lmobisocial/omlib/service/OmlibService;->mClosestCluster:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 117
    .local v3, "isChina":Z
    :cond_3b
    :goto_3b
    if-nez v3, :cond_5b

    invoke-virtual {p0, v0}, Lmobisocial/omlib/service/OmlibService;->isGcmAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 118
    new-instance v2, Landroid/content/Intent;

    const-string v6, "mobisocial.omlib.action.REFRESH_GCM"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "intent":Landroid/content/Intent;
    const-class v6, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v2}, Lmobisocial/omlib/service/OmlibService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 127
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_52
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmobisocial/omlib/service/OmlibService;->mPushEnabled:Z
    :try_end_55
    .catchall {:try_start_17 .. :try_end_55} :catchall_56

    goto :goto_15

    .line 108
    .end local v0    # "c":Landroid/content/Context;
    .end local v3    # "isChina":Z
    .end local v4    # "noPush":Ljava/lang/Boolean;
    .end local v5    # "provider":Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    :catchall_56
    move-exception v6

    monitor-exit p0

    throw v6

    .line 116
    .restart local v0    # "c":Landroid/content/Context;
    .restart local v4    # "noPush":Ljava/lang/Boolean;
    .restart local v5    # "provider":Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    :cond_59
    const/4 v3, 0x0

    goto :goto_3b

    .line 121
    .restart local v3    # "isChina":Z
    :cond_5b
    :try_start_5b
    invoke-virtual {p0, v0}, Lmobisocial/omlib/service/OmlibService;->isBaiduPushAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 123
    invoke-static {v0}, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->startBaiduPush(Landroid/content/Context;)V

    goto :goto_52

    .line 125
    :cond_65
    const-string v6, "OmlibService"

    const-string v7, "No push service available"

    invoke-static {v6, v7}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_5b .. :try_end_6c} :catchall_56

    goto :goto_52
.end method

.method private handlePushMessage(ILandroid/content/Intent;)V
    .registers 14
    .param p1, "startId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 233
    const-string v6, "mobisocial.omlib.extra.WAKE_LOCK_ID"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 234
    .local v5, "wl":I
    const-string v6, "mobisocial.omlib.extra.MSG_TEXT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 237
    .local v4, "obj":Lmobisocial/longdan/LDProtocols$LDMessage;
    :try_start_e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 238
    const-class v6, Lmobisocial/longdan/LDProtocols$LDMessage;

    invoke-static {v3, v6}, Lmobisocial/serialization/SerializationUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lmobisocial/longdan/LDProtocols$LDMessage;

    move-object v4, v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_35

    .line 243
    :cond_1e
    :goto_1e
    if-eqz v4, :cond_24

    iget-object v6, v4, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    if-nez v6, :cond_3e

    .line 244
    :cond_24
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v6

    sget-object v7, Lmobisocial/omlib/client/LongdanClient$ConnectionType;->Msg:Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    const-wide/16 v8, 0x2710

    new-instance v10, Lmobisocial/omlib/service/OmlibService$6;

    invoke-direct {v10, p0, v5, p1}, Lmobisocial/omlib/service/OmlibService$6;-><init>(Lmobisocial/omlib/service/OmlibService;II)V

    invoke-virtual {v6, v7, v8, v9, v10}, Lmobisocial/omlib/client/LongdanClient;->incrementInterestForConnection(Lmobisocial/omlib/client/LongdanClient$ConnectionType;JLjava/lang/Runnable;)V

    .line 265
    :goto_34
    return-void

    .line 240
    :catch_35
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "OmlibService"

    const-string v7, "Failed to parse baidu push"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 255
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v6

    invoke-virtual {v6}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v6

    new-instance v7, Lmobisocial/omlib/service/OmlibService$7;

    invoke-direct {v7, p0, v5}, Lmobisocial/omlib/service/OmlibService$7;-><init>(Lmobisocial/omlib/service/OmlibService;I)V

    invoke-virtual {v6, v4, v7}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDurableMessageFromPush(Lmobisocial/longdan/LDProtocols$LDMessage;Ljava/lang/Runnable;)V

    goto :goto_34
.end method


# virtual methods
.method public auth()Lmobisocial/omlib/api/OmletAuthApi;
    .registers 2

    .prologue
    .line 757
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mAuth:Lmobisocial/omlib/api/OmletAuthApi;

    return-object v0
.end method

.method public blobs()Lmobisocial/omlib/api/OmletBlobApi;
    .registers 2

    .prologue
    .line 777
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mBlobs:Lmobisocial/omlib/api/OmletBlobApi;

    return-object v0
.end method

.method public blockUntilClientIsInitialized()Z
    .registers 4

    .prologue
    .line 786
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService;->mClientInitialized:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_7

    .line 787
    const/4 v1, 0x1

    .line 790
    :goto_6
    return v1

    .line 788
    :catch_7
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "OmlibService"

    const-string v2, "Client initialization interrupted"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public feeds()Lmobisocial/omlib/api/OmletFeedApi;
    .registers 2

    .prologue
    .line 762
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mFeeds:Lmobisocial/omlib/api/OmletFeedApi;

    return-object v0
.end method

.method public getLdClient()Lmobisocial/omlib/client/LongdanClient;
    .registers 2

    .prologue
    .line 283
    invoke-static {p0}, Lmobisocial/omlib/service/LongdanClientHelper;->getInstance(Landroid/content/Context;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    return-object v0
.end method

.method public identity()Lmobisocial/omlib/api/OmletIdentityApi;
    .registers 2

    .prologue
    .line 772
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mIdentity:Lmobisocial/omlib/api/OmletIdentityApi;

    return-object v0
.end method

.method isBaiduPushAvailable(Landroid/content/Context;)Z
    .registers 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 141
    :try_start_0
    invoke-static {p1}, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->isBaiduPushAvailable(Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 143
    :goto_4
    return v1

    .line 142
    :catch_5
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method isGcmAvailable(Landroid/content/Context;)Z
    .registers 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 133
    :try_start_0
    invoke-static {p1}, Lmobisocial/omlib/service/gcm/OmlibGcmListenerService;->isGcmAvailable(Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 135
    :goto_4
    return v1

    .line 134
    :catch_5
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public messaging()Lmobisocial/omlib/api/OmletMessagingApi;
    .registers 2

    .prologue
    .line 767
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mMessaging:Lmobisocial/omlib/api/OmletMessagingApi;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 165
    invoke-super {p0}, Lmobisocial/omlib/service/BaseOmletApiService;->onCreate()V

    .line 166
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lmobisocial/omlib/service/OmlibService;->mClientInitialized:Ljava/util/concurrent/CountDownLatch;

    .line 167
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmobisocial/omlib/service/OmlibService$3;

    invoke-direct {v2, p0}, Lmobisocial/omlib/service/OmlibService$3;-><init>(Lmobisocial/omlib/service/OmlibService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v0, "connectionChanged":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService;->mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lmobisocial/omlib/service/OmlibService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 184
    invoke-super {p0}, Lmobisocial/omlib/service/BaseOmletApiService;->onDestroy()V

    .line 185
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lmobisocial/omlib/service/OmlibService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService;->mEnablePushRegistrationListener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientAuthUtils;->removeAccountConnectedListener(Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V

    .line 187
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    .line 196
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    .line 197
    :cond_9
    const-string v2, "OmlibService"

    const-string v3, "Omlib service started with invalid intent!"

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_10
    :goto_10
    return v4

    .line 200
    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "action":Ljava/lang/String;
    const-string v2, "mobisocial.omlib.action.REFRESH_GCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 202
    new-instance v1, Lmobisocial/omlib/jobs/GcmRegistrationJobHandler;

    new-instance v2, Lmobisocial/omlib/service/OmlibService$4;

    invoke-direct {v2, p0, p3}, Lmobisocial/omlib/service/OmlibService$4;-><init>(Lmobisocial/omlib/service/OmlibService;I)V

    invoke-direct {v1, v2}, Lmobisocial/omlib/jobs/GcmRegistrationJobHandler;-><init>(Ljava/lang/Runnable;)V

    .line 209
    .local v1, "job":Lmobisocial/omlib/jobs/GcmRegistrationJobHandler;
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    goto :goto_10

    .line 212
    .end local v1    # "job":Lmobisocial/omlib/jobs/GcmRegistrationJobHandler;
    :cond_33
    const-string v2, "mobisocial.omlib.action.SUBMIT_PUSH_KEY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 213
    new-instance v1, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;

    new-instance v2, Lmobisocial/omlib/service/OmlibService$5;

    invoke-direct {v2, p0, p3}, Lmobisocial/omlib/service/OmlibService$5;-><init>(Lmobisocial/omlib/service/OmlibService;I)V

    invoke-direct {v1, v2}, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;-><init>(Ljava/lang/Runnable;)V

    .line 220
    .local v1, "job":Lmobisocial/omlib/jobs/PushRegistrationJobHandler;
    const-string v2, "mobisocial.omlib.extra.PUSH_TYPE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;->pushType:Ljava/lang/String;

    .line 221
    const-string v2, "mobisocial.omlib.extra.PUSH_KEY"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;->pushKey:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    goto :goto_10

    .line 225
    .end local v1    # "job":Lmobisocial/omlib/jobs/PushRegistrationJobHandler;
    :cond_61
    const-string v2, "mobisocial.omlib.action.ACCEPT_PUSH_MSG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 226
    invoke-direct {p0, p3, p1}, Lmobisocial/omlib/service/OmlibService;->handlePushMessage(ILandroid/content/Intent;)V

    goto :goto_10
.end method

.method public oob()Lmobisocial/omlib/api/OmletOobApi;
    .registers 2

    .prologue
    .line 781
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService;->mOob:Lmobisocial/omlib/api/OmletOobApi;

    return-object v0
.end method
