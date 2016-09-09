.class public Lmobisocial/longdan/net/WsRpcConnectionHandler;
.super Ljava/lang/Object;
.source "WsRpcConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;,
        Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;,
        Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;,
        Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequestContainer:",
        "Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;",
        "TResponseContainer:",
        "Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WsRpcConnectionHandler"

.field private static final sConnectionCallbackExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandlerCallbackExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field mClosestClusterListener:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

.field private final mClosestClusterListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;",
            ">;"
        }
    .end annotation
.end field

.field mConnectivityChangedListener:Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;

.field private mDisposed:Z

.field private mHoldingInterestForRequests:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingRequests:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lmobisocial/longdan/net/WsRpcConnectionHandler",
            "<TTRequestContainer;TTResponseContainer;>.PendingRpcRequest<TTRequestContainer;TTResponseContainer;>;>;"
        }
    .end annotation
.end field

.field private final mPushListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener",
            "<+",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mPushReceivedListener:Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;

.field private mSessionDisconnectedRunner:Ljava/lang/Runnable;

.field private mSessionEstablishedRunner:Ljava/lang/Runnable;

.field private final mSessionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionListenersToAdd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSocketConnected:Z

.field private mSocketConnectionCount:J

.field private mSocketFailed:Z

.field private final mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->sHandlerCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->sConnectionCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lmobisocial/longdan/net/ClientVersionInfo;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .param p1, "clientInfo"    # Lmobisocial/longdan/net/ClientVersionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/longdan/net/ClientVersionInfo;",
            "Ljava/lang/Class",
            "<TTRequestContainer;>;",
            "Ljava/lang/Class",
            "<TTResponseContainer;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    .local p2, "requestClass":Ljava/lang/Class;, "Ljava/lang/Class<TTRequestContainer;>;"
    .local p3, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResponseContainer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mLock:Ljava/lang/Object;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnectionCount:J

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mClosestClusterListeners:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListeners:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListenersToAdd:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPushListeners:Ljava/util/Map;

    .line 268
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$4;

    invoke-direct {v0, p0}, Lmobisocial/longdan/net/WsRpcConnectionHandler$4;-><init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionEstablishedRunner:Ljava/lang/Runnable;

    .line 281
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$5;

    invoke-direct {v0, p0}, Lmobisocial/longdan/net/WsRpcConnectionHandler$5;-><init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionDisconnectedRunner:Ljava/lang/Runnable;

    .line 316
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;

    invoke-direct {v0, p0}, Lmobisocial/longdan/net/WsRpcConnectionHandler$6;-><init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mConnectivityChangedListener:Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;

    .line 400
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$7;

    invoke-direct {v0, p0}, Lmobisocial/longdan/net/WsRpcConnectionHandler$7;-><init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPushReceivedListener:Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;

    .line 416
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$8;

    invoke-direct {v0, p0}, Lmobisocial/longdan/net/WsRpcConnectionHandler$8;-><init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mClosestClusterListener:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    .line 78
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnection;

    sget-object v1, Lmobisocial/longdan/net/WsRpcConnectionHandler;->sConnectionCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1, p2, p3}, Lmobisocial/longdan/net/WsRpcConnection;-><init>(Ljava/util/concurrent/Executor;Lmobisocial/longdan/net/ClientVersionInfo;Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    .line 79
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mConnectivityChangedListener:Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;

    invoke-virtual {v0, v1}, Lmobisocial/longdan/net/WsRpcConnection;->setConnectivityChangedListener(Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;)V

    .line 80
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPushReceivedListener:Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;

    invoke-virtual {v0, v1}, Lmobisocial/longdan/net/WsRpcConnection;->setPushReceivedListener(Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;)V

    .line 81
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mClosestClusterListener:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    invoke-virtual {v0, v1}, Lmobisocial/longdan/net/WsRpcConnection;->setClosestClusterListener(Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;)V

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPendingRequests:Ljava/util/Queue;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-boolean v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnected:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/util/concurrent/Executor;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->sHandlerCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$102(Lmobisocial/longdan/net/WsRpcConnectionHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionDisconnectedRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPushListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mClosestClusterListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lmobisocial/longdan/net/WsRpcConnectionHandler;)J
    .registers 3
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-wide v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnectionCount:J

    return-wide v0
.end method

.method static synthetic access$208(Lmobisocial/longdan/net/WsRpcConnectionHandler;)J
    .registers 5
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-wide v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnectionCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnectionCount:J

    return-wide v0
.end method

.method static synthetic access$300(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListenersToAdd:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-boolean v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketFailed:Z

    return v0
.end method

.method static synthetic access$502(Lmobisocial/longdan/net/WsRpcConnectionHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketFailed:Z

    return p1
.end method

.method static synthetic access$600(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Lmobisocial/longdan/net/WsRpcConnection;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    return-object v0
.end method

.method static synthetic access$700(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-boolean v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mHoldingInterestForRequests:Z

    return v0
.end method

.method static synthetic access$702(Lmobisocial/longdan/net/WsRpcConnectionHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mHoldingInterestForRequests:Z

    return p1
.end method

.method static synthetic access$800(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Queue;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPendingRequests:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$802(Lmobisocial/longdan/net/WsRpcConnectionHandler;Ljava/util/Queue;)Ljava/util/Queue;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;
    .param p1, "x1"    # Ljava/util/Queue;

    .prologue
    .line 20
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPendingRequests:Ljava/util/Queue;

    return-object p1
.end method

.method static synthetic access$900(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionEstablishedRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method private enqueueOrExecuteRequest(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;Z)V
    .registers 11
    .param p1, "request"    # Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    .param p4, "waitForSocket"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            "Ljava/lang/Class",
            "<+",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">;",
            "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse",
            "<+",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    .local p2, "responseType":Ljava/lang/Class;, "Ljava/lang/Class<+Lmobisocial/longdan/LDProtocols$LDJSONLoggable;>;"
    .local p3, "callback":Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;, "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse<+Lmobisocial/longdan/LDProtocols$LDJSONLoggable;>;"
    const/4 v1, 0x1

    .line 127
    iget-boolean v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mDisposed:Z

    if-eqz v3, :cond_d

    .line 128
    const-string v3, "WsRpcConnectionHandler"

    const-string v4, "Connection has been disposed"

    invoke-static {v3, v4}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_c
    :goto_c
    return-void

    .line 132
    :cond_d
    const/4 v0, 0x0

    .line 134
    .local v0, "firstInterest":Z
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 135
    :try_start_11
    iget-boolean v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnected:Z

    .line 136
    .local v2, "isSocketConnected":Z
    iget-boolean v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketFailed:Z

    if-eqz v3, :cond_46

    if-nez p4, :cond_46

    .line 137
    .local v1, "immediateFail":Z
    :goto_19
    if-nez v2, :cond_3d

    if-nez v1, :cond_3d

    .line 138
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    .line 139
    if-eqz v0, :cond_33

    .line 140
    iget-boolean v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mHoldingInterestForRequests:Z

    if-eqz v3, :cond_30

    .line 141
    const-string v3, "WsRpcConnectionHandler"

    const-string v5, "First interest claimed, but was already holding interest for requests"

    invoke-static {v3, v5}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_30
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mHoldingInterestForRequests:Z

    .line 145
    :cond_33
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPendingRequests:Ljava/util/Queue;

    new-instance v5, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;

    invoke-direct {v5, p0, p1, p2, p3}, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;-><init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    invoke-interface {v3, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_48

    .line 148
    if-eqz v2, :cond_4b

    .line 149
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v3, p1, p2, p3}, Lmobisocial/longdan/net/WsRpcConnection;->call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    goto :goto_c

    .line 136
    .end local v1    # "immediateFail":Z
    :cond_46
    const/4 v1, 0x0

    goto :goto_19

    .line 147
    .end local v2    # "isSocketConnected":Z
    :catchall_48
    move-exception v3

    :try_start_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v3

    .line 150
    .restart local v1    # "immediateFail":Z
    .restart local v2    # "isSocketConnected":Z
    :cond_4b
    if-eqz v1, :cond_58

    .line 151
    sget-object v3, Lmobisocial/longdan/net/WsRpcConnectionHandler;->sHandlerCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lmobisocial/longdan/net/WsRpcConnectionHandler$1;

    invoke-direct {v4, p0, p3}, Lmobisocial/longdan/net/WsRpcConnectionHandler$1;-><init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_c

    .line 158
    :cond_58
    if-eqz v0, :cond_c

    .line 159
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v3}, Lmobisocial/longdan/net/WsRpcConnection;->incrementInterest()V

    goto :goto_c
.end method


# virtual methods
.method public addClosestClusterListener(Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;)V
    .registers 4
    .param p1, "listener"    # Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    .prologue
    .line 305
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mClosestClusterListeners:Ljava/util/Set;

    monitor-enter v1

    .line 306
    :try_start_3
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mClosestClusterListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    monitor-exit v1

    .line 308
    return-void

    .line 307
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public addPushReceiver(Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "listener":Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener<TT;>;"
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPushListeners:Ljava/util/Map;

    monitor-enter v2

    .line 295
    :try_start_3
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPushListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 296
    .local v0, "receivers":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener<+Lmobisocial/longdan/LDProtocols$LDJSONLoggable;>;>;"
    if-nez v0, :cond_17

    .line 297
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "receivers":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener<+Lmobisocial/longdan/LDProtocols$LDJSONLoggable;>;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 298
    .restart local v0    # "receivers":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener<+Lmobisocial/longdan/LDProtocols$LDJSONLoggable;>;>;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPushListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_17
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    monitor-exit v2

    .line 302
    return-void

    .line 301
    .end local v0    # "receivers":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener<+Lmobisocial/longdan/LDProtocols$LDJSONLoggable;>;>;"
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public addSessionListener(Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;)V
    .registers 6
    .param p1, "listener"    # Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;

    .prologue
    .line 229
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 230
    :try_start_3
    iget-wide v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnectionCount:J

    .line 231
    .local v0, "connectionCount":J
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    .line 232
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListeners:Ljava/util/Set;

    monitor-enter v3

    .line 233
    :try_start_9
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListenersToAdd:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1d

    .line 235
    sget-object v2, Lmobisocial/longdan/net/WsRpcConnectionHandler;->sHandlerCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;

    invoke-direct {v3, p0, v0, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;-><init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 254
    return-void

    .line 231
    .end local v0    # "connectionCount":J
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2

    .line 234
    .restart local v0    # "connectionCount":J
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method public call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRpcRequest:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            "TRpcResponse:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">(TTRpcRequest;",
            "Ljava/lang/Class",
            "<TTRpcResponse;>;",
            "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse",
            "<TTRpcResponse;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    .local p1, "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcRequest;"
    .local p2, "responseType":Ljava/lang/Class;, "Ljava/lang/Class<TTRpcResponse;>;"
    .local p3, "responseCallback":Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;, "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse<TTRpcResponse;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->enqueueOrExecuteRequest(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;Z)V

    .line 124
    return-void
.end method

.method public callForSubscribe(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRpcRequest:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">(TTRpcRequest;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    .local p1, "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcRequest;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0, p1}, Lmobisocial/longdan/net/WsRpcConnection;->callForSubscribe(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    .line 209
    return-void
.end method

.method public callImmediate(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRpcRequest:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            "TRpcResponse:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">(TTRpcRequest;",
            "Ljava/lang/Class",
            "<TTRpcResponse;>;",
            "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse",
            "<TTRpcResponse;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    .local p1, "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcRequest;"
    .local p2, "responseType":Ljava/lang/Class;, "Ljava/lang/Class<TTRpcResponse;>;"
    .local p3, "responseCallback":Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;, "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse<TTRpcResponse;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0, p1, p2, p3}, Lmobisocial/longdan/net/WsRpcConnection;->call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    .line 120
    return-void
.end method

.method public callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRpcRequest:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            "TRpcResponse:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">(TTRpcRequest;",
            "Ljava/lang/Class",
            "<TTRpcResponse;>;)TTRpcResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    .local p1, "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcRequest;"
    .local p2, "responseType":Ljava/lang/Class;, "Ljava/lang/Class<TTRpcResponse;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v0

    return-object v0
.end method

.method public callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    .registers 10
    .param p3, "waitForSocket"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRpcRequest:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            "TRpcResponse:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">(TTRpcRequest;",
            "Ljava/lang/Class",
            "<TTRpcResponse;>;Z)TTRpcResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    .local p1, "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcRequest;"
    .local p2, "responseType":Ljava/lang/Class;, "Ljava/lang/Class<TTRpcResponse;>;"
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 177
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;

    invoke-direct {v3, p0}, Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;-><init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V

    .line 178
    .local v3, "result":Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>.ResponseContainer<Lmobisocial/longdan/LDProtocols$LDJSONLoggable;>;"
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$2;

    invoke-direct {v0, p0, v3, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler$2;-><init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;Ljava/util/concurrent/CountDownLatch;)V

    .line 192
    .local v0, "countdownCallback":Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;, "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse<TTRpcResponse;>;"
    invoke-direct {p0, p1, p2, v0, p3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->enqueueOrExecuteRequest(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;Z)V

    .line 194
    :try_start_13
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_1d

    .line 198
    :goto_16
    iget-object v4, v3, Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;->exception:Lmobisocial/longdan/exception/LongdanException;

    if-eqz v4, :cond_27

    .line 199
    iget-object v4, v3, Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;->exception:Lmobisocial/longdan/exception/LongdanException;

    throw v4

    .line 195
    :catch_1d
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v4, Lmobisocial/longdan/exception/LongdanClientException;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/Exception;Z)V

    iput-object v4, v3, Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;->exception:Lmobisocial/longdan/exception/LongdanException;

    goto :goto_16

    .line 201
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_27
    iget-object v4, v3, Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;->response:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    if-nez v4, :cond_35

    if-eqz p2, :cond_35

    .line 202
    new-instance v4, Lmobisocial/longdan/exception/LongdanNetworkException;

    const-string v5, "Missing response"

    invoke-direct {v4, v5}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    :cond_35
    iget-object v4, v3, Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;->response:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    return-object v4
.end method

.method public callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRpcRequest:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">(TTRpcRequest;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    .local p1, "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcRequest;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .line 165
    return-void
.end method

.method public callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Z)V
    .registers 4
    .param p2, "waitForSocket"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRpcRequest:",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">(TTRpcRequest;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    .local p1, "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcRequest;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .line 169
    return-void
.end method

.method public decrementInterest()V
    .registers 2

    .prologue
    .line 98
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection;->decrementInterest()V

    .line 99
    return-void
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 106
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mDisposed:Z

    .line 107
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection;->dispose()V

    .line 108
    return-void
.end method

.method public getLastServerTimestamp()J
    .registers 3

    .prologue
    .line 58
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection;->getLastServerTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getServerTimeDelta()J
    .registers 3

    .prologue
    .line 54
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection;->getServerTimeDelta()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasNetworkInterest()Z
    .registers 2

    .prologue
    .line 115
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    invoke-virtual {p0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->hasPendingRequests()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->hasRegisteredSessionListeners()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasPendingRequests()Z
    .registers 2

    .prologue
    .line 102
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRegisteredSessionListeners()Z
    .registers 2

    .prologue
    .line 111
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public incrementInterest()V
    .registers 2

    .prologue
    .line 90
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection;->incrementInterest()V

    .line 91
    return-void
.end method

.method public incrementInterest(JLjava/lang/Runnable;)V
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 94
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0, p1, p2, p3}, Lmobisocial/longdan/net/WsRpcConnection;->incrementInterest(JLjava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public reconnect(Z)V
    .registers 3
    .param p1, "force"    # Z

    .prologue
    .line 62
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0, p1}, Lmobisocial/longdan/net/WsRpcConnection;->reconnect(Z)V

    .line 63
    return-void
.end method

.method public removeClosestClusterListener(Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;)V
    .registers 4
    .param p1, "listener"    # Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    .prologue
    .line 311
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mClosestClusterListeners:Ljava/util/Set;

    monitor-enter v1

    .line 312
    :try_start_3
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mClosestClusterListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 313
    monitor-exit v1

    .line 314
    return-void

    .line 313
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeSessionListener(Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;)V
    .registers 4
    .param p1, "listener"    # Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;

    .prologue
    .line 261
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListeners:Ljava/util/Set;

    monitor-enter v1

    .line 262
    :try_start_3
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListenersToAdd:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 264
    monitor-exit v1

    .line 265
    return-void

    .line 264
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setup(Ljava/lang/String;[B[B[B[B)V
    .registers 12
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "serverPublicKey"    # [B
    .param p3, "deviceKey"    # [B
    .param p4, "appKey"    # [B
    .param p5, "appSecret"    # [B

    .prologue
    .line 86
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler;->mWsRpcConnection:Lmobisocial/longdan/net/WsRpcConnection;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lmobisocial/longdan/net/WsRpcConnection;->setup(Ljava/lang/String;[B[B[B[B)V

    .line 87
    return-void
.end method
