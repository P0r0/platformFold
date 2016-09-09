.class public Lmobisocial/omlib/client/LongdanClient;
.super Ljava/lang/Object;
.source "LongdanClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/client/LongdanClient$StubNotificationProvider;,
        Lmobisocial/omlib/client/LongdanClient$ConnectionType;
    }
.end annotation


# static fields
.field public static ALLOW_READ_ONLY:Z = false

.field private static final IDP_DEVICE_ENDPOINT:Ljava/lang/String; = "/device"

.field private static final MSG_DEVICE_ENDPOINT:Ljava/lang/String; = "/device"

.field private static final MSG_READONLY_DEVICE_ENDPOINT:Ljava/lang/String; = "/readonlydevice"

.field public static final TAG:Ljava/lang/String; = "Omlib"

.field public static final sharedLock:Ljava/lang/Object;


# instance fields
.field public final Auth:Lmobisocial/omlib/client/ClientAuthUtils;

.field public final Blob:Lmobisocial/omlib/client/ClientBlobUtils;

.field public final Feed:Lmobisocial/omlib/client/ClientFeedUtils;

.field public final Games:Lmobisocial/omlib/client/ClientGameUtils;

.field public final Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

.field public final Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

.field public final Oob:Lmobisocial/omlib/client/ClientOobUtils;

.field public final Util:Lmobisocial/omlib/client/ClientAppUtils;

.field private final mAppContext:Landroid/content/Context;

.field private mAppId:[B

.field private final mBlobDownloadProcessor:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

.field private final mBlobUploadProcessor:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;

.field private final mDevicePrivateKey:[B

.field private final mDeviceRegistrationChangedPushReceiver:Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDDeviceRegistrationStateChangedPush;",
            ">;"
        }
    .end annotation
.end field

.field private mDisposed:Z

.field private final mDurableJobProcessor:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

.field private final mIdpAccountDiscoverySessionListener:Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;

.field private final mIdpConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;

.field private mInitialInstallTime:J

.field private final mMessageConsumer:Lmobisocial/omlib/client/LongdanMessageConsumer;

.field private final mMessageProcessor:Lmobisocial/omlib/client/LongdanMessageProcessor;

.field private mMsgCluster:Ljava/lang/String;

.field private final mMsgConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;

.field private mNotificationProvider:Lmobisocial/omlib/client/interfaces/NotificationProvider;

.field private final mPlatformConfig:Lmobisocial/omlib/client/PlatformConfiguration;

.field private mScopes:[Ljava/lang/String;

.field private mStarted:Z

.field private final mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lmobisocial/omlib/client/LongdanClient;->ALLOW_READ_ONLY:Z

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmobisocial/omlib/client/LongdanClient;->sharedLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobisocial/omlib/client/PlatformConfiguration;Lmobisocial/longdan/net/ClientVersionInfo;Lmobisocial/longdan/net/ClientDeviceInfo;Lmobisocial/omlib/client/interfaces/NotificationProvider;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lmobisocial/omlib/client/PlatformConfiguration;
    .param p3, "versionInfo"    # Lmobisocial/longdan/net/ClientVersionInfo;
    .param p4, "deviceInfo"    # Lmobisocial/longdan/net/ClientDeviceInfo;
    .param p5, "notificationProvider"    # Lmobisocial/omlib/client/interfaces/NotificationProvider;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Lmobisocial/omlib/client/LongdanClient$2;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/LongdanClient$2;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mIdpAccountDiscoverySessionListener:Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;

    .line 338
    new-instance v0, Lmobisocial/omlib/client/LongdanClient$3;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/LongdanClient$3;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mDeviceRegistrationChangedPushReceiver:Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;

    .line 145
    iget-object v0, p4, Lmobisocial/longdan/net/ClientDeviceInfo;->devicePrivateKey:[B

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mDevicePrivateKey:[B

    .line 146
    iput-object p2, p0, Lmobisocial/omlib/client/LongdanClient;->mPlatformConfig:Lmobisocial/omlib/client/PlatformConfiguration;

    .line 147
    iget-object v0, p4, Lmobisocial/longdan/net/ClientDeviceInfo;->cluster:Ljava/lang/String;

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMsgCluster:Ljava/lang/String;

    .line 148
    iget-object v0, p4, Lmobisocial/longdan/net/ClientDeviceInfo;->initialInstallTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/omlib/client/LongdanClient;->mInitialInstallTime:J

    .line 149
    iget-object v0, p4, Lmobisocial/longdan/net/ClientDeviceInfo;->appId:[B

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mAppId:[B

    .line 150
    iget-object v0, p4, Lmobisocial/longdan/net/ClientDeviceInfo;->scopes:[Ljava/lang/String;

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mScopes:[Ljava/lang/String;

    .line 151
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 152
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mTimer:Ljava/util/Timer;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mAppContext:Landroid/content/Context;

    .line 154
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getInstance(Landroid/content/Context;)Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;

    .line 155
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnectionHandler;

    const-class v1, Lmobisocial/longdan/LDProtocols$LDDeviceToIdpRequestContainer;

    const-class v2, Lmobisocial/longdan/LDProtocols$LDDeviceToIdpResponseContainer;

    invoke-direct {v0, p3, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;-><init>(Lmobisocial/longdan/net/ClientVersionInfo;Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mIdpConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .line 156
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnectionHandler;

    const-class v1, Lmobisocial/longdan/LDProtocols$LDDeviceToClusterRequestContainer;

    const-class v2, Lmobisocial/longdan/LDProtocols$LDDeviceToClusterResponseContainer;

    invoke-direct {v0, p3, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;-><init>(Lmobisocial/longdan/net/ClientVersionInfo;Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMsgConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .line 157
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mIdpConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanClient;->mIdpAccountDiscoverySessionListener:Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;

    invoke-virtual {v0, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addSessionListener(Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;)V

    .line 158
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mIdpConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    const-class v1, Lmobisocial/longdan/LDProtocols$LDDeviceRegistrationStateChangedPush;

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanClient;->mDeviceRegistrationChangedPushReceiver:Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;

    invoke-virtual {v0, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addPushReceiver(Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;)V

    .line 159
    new-instance v0, Lmobisocial/omlib/client/LongdanMessageProcessor;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/LongdanMessageProcessor;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageProcessor:Lmobisocial/omlib/client/LongdanMessageProcessor;

    .line 160
    new-instance v0, Lmobisocial/omlib/client/LongdanMessageConsumer;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/LongdanMessageConsumer;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageConsumer:Lmobisocial/omlib/client/LongdanMessageConsumer;

    .line 161
    new-instance v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mBlobDownloadProcessor:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    .line 162
    new-instance v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mBlobUploadProcessor:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    .line 163
    new-instance v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mDurableJobProcessor:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    .line 164
    iput-object p5, p0, Lmobisocial/omlib/client/LongdanClient;->mNotificationProvider:Lmobisocial/omlib/client/interfaces/NotificationProvider;

    .line 165
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;

    invoke-virtual {v0, p5}, Lmobisocial/omlib/db/OMSQLiteHelper;->setNotificationProvider(Lmobisocial/omlib/client/interfaces/NotificationProvider;)V

    .line 166
    new-instance v0, Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v1, p4, Lmobisocial/longdan/net/ClientDeviceInfo;->account:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lmobisocial/omlib/client/ClientAuthUtils;-><init>(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/String;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    .line 167
    new-instance v0, Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/ClientBlobUtils;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    .line 168
    new-instance v0, Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/ClientFeedUtils;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    .line 169
    new-instance v0, Lmobisocial/omlib/client/ClientIdentityUtils;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/ClientIdentityUtils;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    .line 170
    new-instance v0, Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/ClientMessagingUtils;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    .line 171
    new-instance v0, Lmobisocial/omlib/client/ClientGameUtils;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/ClientGameUtils;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    .line 172
    new-instance v0, Lmobisocial/omlib/client/ClientOobUtils;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/ClientOobUtils;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->Oob:Lmobisocial/omlib/client/ClientOobUtils;

    .line 173
    new-instance v0, Lmobisocial/omlib/client/ClientAppUtils;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/ClientAppUtils;-><init>(Lmobisocial/omlib/client/LongdanClient;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->Util:Lmobisocial/omlib/client/ClientAppUtils;

    .line 174
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanClient;->configureIdpConnection()V

    .line 175
    iget-object v0, p4, Lmobisocial/longdan/net/ClientDeviceInfo;->cluster:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmobisocial/omlib/client/LongdanClient;->configureMessageConnection(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mBlobDownloadProcessor:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->start()V

    .line 178
    return-void
.end method

.method private getConnectionHandler(Lmobisocial/omlib/client/LongdanClient$ConnectionType;)Lmobisocial/longdan/net/WsRpcConnectionHandler;
    .registers 5
    .param p1, "connType"    # Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    .prologue
    .line 280
    sget-object v0, Lmobisocial/omlib/client/LongdanClient$6;->$SwitchMap$mobisocial$omlib$client$LongdanClient$ConnectionType:[I

    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient$ConnectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid connection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :pswitch_24
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mIdpConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .line 284
    :goto_26
    return-object v0

    :pswitch_27
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMsgConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    goto :goto_26

    .line 280
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public addSyncListener(Lmobisocial/omlib/interfaces/SyncStateListener;)V
    .registers 3
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/SyncStateListener;

    .prologue
    .line 181
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageConsumer:Lmobisocial/omlib/client/LongdanMessageConsumer;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/client/LongdanMessageConsumer;->addSyncStateListener(Lmobisocial/omlib/interfaces/SyncStateListener;)V

    .line 182
    return-void
.end method

.method public callOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseCallable;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lmobisocial/omlib/db/DatabaseCallable",
            "<TTResult;>;)TTResult;"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "action":Lmobisocial/omlib/db/DatabaseCallable;, "Lmobisocial/omlib/db/DatabaseCallable<TTResult;>;"
    :try_start_0
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanMessageProcessor;->isProcessorThread()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 439
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v1

    invoke-interface {p1, v1}, Lmobisocial/omlib/db/DatabaseCallable;->call(Lmobisocial/omlib/db/OMSQLiteHelper;)Ljava/lang/Object;

    move-result-object v1

    .line 447
    :goto_12
    return-object v1

    .line 441
    :cond_13
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageProcessor:Lmobisocial/omlib/client/LongdanMessageProcessor;

    new-instance v2, Lmobisocial/omlib/client/LongdanClient$5;

    invoke-direct {v2, p0, p1}, Lmobisocial/omlib/client/LongdanClient$5;-><init>(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/DatabaseCallable;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDatabaseActionAsync(Lmobisocial/omlib/db/DatabaseCallable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 447
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    move-result-object v1

    goto :goto_12

    .line 449
    :catch_23
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearUserData()V
    .registers 3

    .prologue
    .line 223
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanClient;->mStarted:Z

    if-eqz v0, :cond_c

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant clear data while client is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_c
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "omlib.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 228
    const-string v0, "Omlib"

    const-string v1, "Error deleting database"

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_1f
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanClient;->getBlobDownloader()Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->purgeBlobs()V

    .line 231
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getInstance(Landroid/content/Context;)Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->close()V

    .line 232
    return-void
.end method

.method configureIdpConnection()V
    .registers 12

    .prologue
    .line 347
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lmobisocial/longdan/ClusterIdentities;->getConfiguration(Landroid/content/Context;)Lmobisocial/longdan/ClusterIdentities;

    move-result-object v6

    .line 348
    .local v6, "ci":Lmobisocial/longdan/ClusterIdentities;
    iget-object v0, v6, Lmobisocial/longdan/ClusterIdentities;->idpEndpoints:Ljava/util/List;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, v6, Lmobisocial/longdan/ClusterIdentities;->idpEndpoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 349
    .local v7, "idpEndpoint":Ljava/lang/String;
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lmobisocial/omlib/service/util/ConfigHelper;->getProvider(Landroid/content/Context;)Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    move-result-object v9

    .line 350
    .local v9, "provider":Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    const-string v0, "omlet.apikey"

    invoke-interface {v9, v0}, Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 351
    .local v8, "keyString":Ljava/lang/String;
    const-string v0, "omlet.secret"

    invoke-interface {v9, v0}, Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 352
    .local v10, "secretString":Ljava/lang/String;
    if-eqz v8, :cond_33

    if-nez v10, :cond_3b

    .line 353
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify omlet.apikey and omlet.secret in application metadata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_3b
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v0, v8}, Lmobisocial/omlib/client/ClientAuthUtils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 356
    .local v4, "apiKey":[B
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v0, v10}, Lmobisocial/omlib/client/ClientAuthUtils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 357
    .local v5, "apiSecret":[B
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mIdpConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lmobisocial/longdan/ClusterIdentities;->idpKey:[B

    iget-object v3, p0, Lmobisocial/omlib/client/LongdanClient;->mDevicePrivateKey:[B

    invoke-virtual/range {v0 .. v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->setup(Ljava/lang/String;[B[B[B[B)V

    .line 358
    return-void
.end method

.method configureMessageConnection(Ljava/lang/String;)V
    .registers 13
    .param p1, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 369
    const/4 v2, 0x0

    .line 370
    .local v2, "clusterKey":[B
    const/4 v1, 0x0

    .line 371
    .local v1, "clusterEndpoint":Ljava/lang/String;
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lmobisocial/longdan/ClusterIdentities;->getConfiguration(Landroid/content/Context;)Lmobisocial/longdan/ClusterIdentities;

    move-result-object v6

    .line 372
    .local v6, "ci":Lmobisocial/longdan/ClusterIdentities;
    if-nez p1, :cond_49

    .line 373
    sget-boolean v0, Lmobisocial/omlib/client/LongdanClient;->ALLOW_READ_ONLY:Z

    if-eqz v0, :cond_46

    iget-object v0, v6, Lmobisocial/longdan/ClusterIdentities;->readOnlyEndpoints:Ljava/util/List;

    if-eqz v0, :cond_46

    iget-object v0, v6, Lmobisocial/longdan/ClusterIdentities;->readOnlyEndpoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Lmobisocial/longdan/ClusterIdentities;->readOnlyEndpoints:Ljava/util/List;

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    iget-object v10, v6, Lmobisocial/longdan/ClusterIdentities;->readOnlyEndpoints:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/readonlydevice"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    iget-object v2, v6, Lmobisocial/longdan/ClusterIdentities;->readOnlyKey:[B

    .line 383
    :cond_46
    :goto_46
    if-nez v1, :cond_82

    .line 390
    :goto_48
    return-void

    .line 378
    :cond_49
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanClient;->mMsgCluster:Ljava/lang/String;

    .line 379
    iget-object v0, v6, Lmobisocial/longdan/ClusterIdentities;->clusterEndpoints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 380
    .local v7, "clusterEndpoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/device"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    iget-object v0, v6, Lmobisocial/longdan/ClusterIdentities;->clusterKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "clusterKey":[B
    check-cast v2, [B

    .restart local v2    # "clusterKey":[B
    goto :goto_46

    .line 386
    .end local v7    # "clusterEndpoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_82
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lmobisocial/omlib/service/util/ConfigHelper;->getProvider(Landroid/content/Context;)Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    move-result-object v8

    .line 387
    .local v8, "provider":Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    const-string v3, "omlet.apikey"

    invoke-interface {v8, v3}, Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmobisocial/omlib/client/ClientAuthUtils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 388
    .local v4, "apiKey":[B
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    const-string v3, "omlet.secret"

    invoke-interface {v8, v3}, Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmobisocial/omlib/client/ClientAuthUtils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 389
    .local v5, "apiSecret":[B
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMsgConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    iget-object v3, p0, Lmobisocial/omlib/client/LongdanClient;->mDevicePrivateKey:[B

    invoke-virtual/range {v0 .. v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->setup(Ljava/lang/String;[B[B[B[B)V

    goto :goto_48
.end method

.method public decrementInterestForConnection(Lmobisocial/omlib/client/LongdanClient$ConnectionType;)V
    .registers 3
    .param p1, "conn"    # Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/LongdanClient;->getConnectionHandler(Lmobisocial/omlib/client/LongdanClient$ConnectionType;)Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->decrementInterest()V

    .line 303
    return-void
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanClient;->mDisposed:Z

    if-nez v0, :cond_11

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/omlib/client/LongdanClient;->mDisposed:Z

    .line 237
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mIdpConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->dispose()V

    .line 238
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMsgConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->dispose()V

    .line 240
    :cond_11
    return-void
.end method

.method public getAppId()[B
    .registers 2

    .prologue
    .line 485
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mAppId:[B

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getBlobDownloader()Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mBlobDownloadProcessor:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    return-object v0
.end method

.method public getBlobUploader()Lmobisocial/omlib/client/LongdanBlobUploadProcessor;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mBlobUploadProcessor:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    return-object v0
.end method

.method protected getCallbackExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getClusterId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMsgCluster:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSyncState()Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageConsumer:Lmobisocial/omlib/client/LongdanMessageConsumer;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->getSyncState()Lmobisocial/omlib/interfaces/SyncStateListener$SyncState;

    move-result-object v0

    return-object v0
.end method

.method public getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;
    .registers 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getInstance(Landroid/content/Context;)Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePublicKey()[B
    .registers 4

    .prologue
    .line 479
    const/16 v1, 0x20

    new-array v0, v1, [B

    .line 480
    .local v0, "publicKey":[B
    const/4 v1, 0x0

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanClient;->mDevicePrivateKey:[B

    invoke-static {v0, v1, v2}, Lmobisocial/crypto/Curve25519;->keygen([B[B[B)V

    .line 481
    return-object v0
.end method

.method public getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mDurableJobProcessor:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    return-object v0
.end method

.method public getInitialInstallTime()J
    .registers 3

    .prologue
    .line 276
    iget-wide v0, p0, Lmobisocial/omlib/client/LongdanClient;->mInitialInstallTime:J

    return-wide v0
.end method

.method public getMessageConsumer()Lmobisocial/omlib/client/LongdanMessageConsumer;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageConsumer:Lmobisocial/omlib/client/LongdanMessageConsumer;

    return-object v0
.end method

.method public getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageProcessor:Lmobisocial/omlib/client/LongdanMessageProcessor;

    return-object v0
.end method

.method public getNotificationProvider()Lmobisocial/omlib/client/interfaces/NotificationProvider;
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mNotificationProvider:Lmobisocial/omlib/client/interfaces/NotificationProvider;

    if-nez v0, :cond_c

    .line 311
    new-instance v0, Lmobisocial/omlib/client/LongdanClient$StubNotificationProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmobisocial/omlib/client/LongdanClient$StubNotificationProvider;-><init>(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/client/LongdanClient$1;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mNotificationProvider:Lmobisocial/omlib/client/interfaces/NotificationProvider;

    .line 313
    :cond_c
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mNotificationProvider:Lmobisocial/omlib/client/interfaces/NotificationProvider;

    return-object v0
.end method

.method public getPlatformConfiguration()Lmobisocial/omlib/client/PlatformConfiguration;
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mPlatformConfig:Lmobisocial/omlib/client/PlatformConfiguration;

    return-object v0
.end method

.method protected getTimer()Ljava/util/Timer;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method public hasScope(Ljava/lang/String;)Z
    .registers 8
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 489
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanClient;->mScopes:[Ljava/lang/String;

    if-nez v2, :cond_6

    .line 495
    :cond_5
    :goto_5
    return v1

    .line 491
    :cond_6
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanClient;->mScopes:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_a
    if-ge v2, v4, :cond_5

    aget-object v0, v3, v2

    .line 492
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 493
    const/4 v1, 0x1

    goto :goto_5

    .line 491
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public declared-synchronized idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;
    .registers 2

    .prologue
    .line 397
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mIdpConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public incrementInterestForConnection(Lmobisocial/omlib/client/LongdanClient$ConnectionType;)V
    .registers 3
    .param p1, "conn"    # Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/LongdanClient;->getConnectionHandler(Lmobisocial/omlib/client/LongdanClient$ConnectionType;)Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->incrementInterest()V

    .line 292
    return-void
.end method

.method public incrementInterestForConnection(Lmobisocial/omlib/client/LongdanClient$ConnectionType;JLjava/lang/Runnable;)V
    .registers 7
    .param p1, "conn"    # Lmobisocial/omlib/client/LongdanClient$ConnectionType;
    .param p2, "timeout"    # J
    .param p4, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/LongdanClient;->getConnectionHandler(Lmobisocial/omlib/client/LongdanClient$ConnectionType;)Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->incrementInterest(JLjava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public isDataSyncRunning()Z
    .registers 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanClient;->mStarted:Z

    return v0
.end method

.method public isDisposed()Z
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanClient;->mDisposed:Z

    return v0
.end method

.method public declared-synchronized msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;
    .registers 2

    .prologue
    .line 401
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMsgConnectionHandler:Lmobisocial/longdan/net/WsRpcConnectionHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postNetworkConnectivityChange(Z)V
    .registers 4
    .param p1, "connected"    # Z

    .prologue
    .line 247
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lmobisocial/omlib/client/LongdanClient$1;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlib/client/LongdanClient$1;-><init>(Lmobisocial/omlib/client/LongdanClient;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method public removeSyncListener(Lmobisocial/omlib/interfaces/SyncStateListener;)V
    .registers 3
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/SyncStateListener;

    .prologue
    .line 185
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageConsumer:Lmobisocial/omlib/client/LongdanMessageConsumer;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/client/LongdanMessageConsumer;->removeSyncStateListener(Lmobisocial/omlib/interfaces/SyncStateListener;)V

    .line 186
    return-void
.end method

.method public runOnDbThread(Lmobisocial/omlib/db/DatabaseRunnable;)V
    .registers 3
    .param p1, "action"    # Lmobisocial/omlib/db/DatabaseRunnable;

    .prologue
    .line 405
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageProcessor:Lmobisocial/omlib/client/LongdanMessageProcessor;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDatabaseAction(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 406
    return-void
.end method

.method public runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V
    .registers 7
    .param p1, "action"    # Lmobisocial/omlib/db/DatabaseRunnable;

    .prologue
    .line 409
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanMessageProcessor;->isProcessorThread()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 410
    const-string v2, "Omlib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runOnDbThreadAndWait called from the db thread!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageProcessor:Lmobisocial/omlib/client/LongdanMessageProcessor;

    invoke-virtual {v2, p1}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDatabaseAction(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 434
    :goto_2f
    return-void

    .line 413
    :cond_30
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 414
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageProcessor:Lmobisocial/omlib/client/LongdanMessageProcessor;

    new-instance v3, Lmobisocial/omlib/client/LongdanClient$4;

    invoke-direct {v3, p0, v1, p1}, Lmobisocial/omlib/client/LongdanClient$4;-><init>(Lmobisocial/omlib/client/LongdanClient;Ljava/util/concurrent/CountDownLatch;Lmobisocial/omlib/db/DatabaseRunnable;)V

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processDatabaseAction(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 429
    :try_start_40
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_2f

    .line 430
    :catch_44
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Omlib"

    const-string v3, "run on db thread interrupted"

    invoke-static {v2, v3, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f
.end method

.method public startDataSync()V
    .registers 3

    .prologue
    .line 193
    sget-object v1, Lmobisocial/omlib/client/LongdanClient;->sharedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_3
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanClient;->mStarted:Z

    if-nez v0, :cond_1e

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/omlib/client/LongdanClient;->mStarted:Z

    .line 196
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mBlobUploadProcessor:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->start()V

    .line 197
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageProcessor:Lmobisocial/omlib/client/LongdanMessageProcessor;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanMessageProcessor;->start()V

    .line 198
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mDurableJobProcessor:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->start()V

    .line 199
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageConsumer:Lmobisocial/omlib/client/LongdanMessageConsumer;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->start()V

    .line 201
    :cond_1e
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public stopDataSync()V
    .registers 3

    .prologue
    .line 205
    const-string v0, "Omlib"

    const-string v1, "Halting client data sync."

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v1, Lmobisocial/omlib/client/LongdanClient;->sharedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_a
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanClient;->mStarted:Z

    if-eqz v0, :cond_2a

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobisocial/omlib/client/LongdanClient;->mStarted:Z

    .line 209
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mDurableJobProcessor:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->stop()V

    .line 210
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageConsumer:Lmobisocial/omlib/client/LongdanMessageConsumer;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->stop()V

    .line 211
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mMessageProcessor:Lmobisocial/omlib/client/LongdanMessageProcessor;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanMessageProcessor;->stop()V

    .line 212
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mBlobDownloadProcessor:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->stop()V

    .line 213
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mBlobUploadProcessor:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->stop()V

    .line 215
    :cond_2a
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method updateDeviceInfo(Lmobisocial/omlib/db/entity/OMDevice;)V
    .registers 4
    .param p1, "device"    # Lmobisocial/omlib/db/entity/OMDevice;

    .prologue
    .line 361
    iget-wide v0, p1, Lmobisocial/omlib/db/entity/OMDevice;->initialInstallTime:J

    iput-wide v0, p0, Lmobisocial/omlib/client/LongdanClient;->mInitialInstallTime:J

    .line 362
    iget-object v0, p1, Lmobisocial/omlib/db/entity/OMDevice;->appId:[B

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mAppId:[B

    .line 363
    iget-object v0, p1, Lmobisocial/omlib/db/entity/OMDevice;->scopes:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 364
    iget-object v0, p1, Lmobisocial/omlib/db/entity/OMDevice;->scopes:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanClient;->mScopes:[Ljava/lang/String;

    .line 365
    :cond_16
    iget-object v0, p1, Lmobisocial/omlib/db/entity/OMDevice;->cluster:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmobisocial/omlib/client/LongdanClient;->configureMessageConnection(Ljava/lang/String;)V

    .line 366
    return-void
.end method
