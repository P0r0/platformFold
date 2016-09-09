.class public Lmobisocial/longdan/net/WsRpcConnection;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;,
        Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;,
        Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;,
        Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;,
        Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;,
        Lmobisocial/longdan/net/WsRpcConnection$Encoder;,
        Lmobisocial/longdan/net/WsRpcConnection$FieldPair;,
        Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;,
        Lmobisocial/longdan/net/WsRpcConnection$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;",
        "TResponse:",
        "Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CLIENT_SIDE_RESPONSE_TO_CHALLENGE:B = 0x2t

.field private static final MAX_BACKOFF_SECONDS:I = 0x384

.field private static final MIN_BACKOFF_SECONDS:I = 0x1

.field private static final PING_BACKOFF_MILLIS:I = 0x6d60

.field private static final PING_TIMEOUT_MILLIS:I = 0x7d00

.field private static final SERVER_SIDE_RESPONSE_TO_CHALLENGE:B = 0x1t

.field private static final SOCKET_EXPIRATION_MS:I = 0x3a98


# instance fields
.field private TAG:Ljava/lang/String;

.field private lastRtt:J

.field private mAppKeyId:[B

.field private mAppKeySecret:[B

.field private mBackoffRetryTask:Ljava/util/TimerTask;

.field private mBackoffTime:J

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mClientVersionInfo:Lmobisocial/longdan/net/ClientVersionInfo;

.field private mCloseSocketTask:Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobisocial/longdan/net/WsRpcConnection",
            "<TTRequest;TTResponse;>.CloseSocketTask;"
        }
    .end annotation
.end field

.field mClosestClusterListener:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

.field mConnectivityChangedListener:Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;

.field private final mContainerType:Ljava/lang/reflect/Type;

.field private mCurrentRequestId:J

.field private mDeviceKey:[B

.field private mDisposed:Z

.field private mEncoder:Lmobisocial/longdan/net/WsRpcConnection$Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobisocial/longdan/net/WsRpcConnection",
            "<TTRequest;TTResponse;>.Encoder;"
        }
    .end annotation
.end field

.field private mEndpoint:Ljava/lang/String;

.field private final mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

.field private mInterest:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastServerTimestamp:J

.field private mPingTask:Ljava/util/TimerTask;

.field private final mPingTaskTimer:Ljava/util/Timer;

.field mPushReceivedListener:Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;

.field private mReconnectImmediate:Z

.field private final mResponseHandlerLock:Ljava/lang/Object;

.field private mResponseHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecureRandom:Ljava/security/SecureRandom;

.field private mServerPublicKey:[B

.field private mSocket:Lcom/squareup/okhttp/ws/WebSocket;

.field private mState:Lmobisocial/longdan/net/WsRpcConnection$State;

.field private final mStateLock:Ljava/lang/Object;

.field private final mTimer:Ljava/util/Timer;

.field mWebSocketListener:Lcom/squareup/okhttp/ws/WebSocketListener;

.field private requestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTRequest;>;"
        }
    .end annotation
.end field

.field private serverTimeDelta:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lmobisocial/longdan/net/ClientVersionInfo;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 13
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "clientInfo"    # Lmobisocial/longdan/net/ClientVersionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lmobisocial/longdan/net/ClientVersionInfo;",
            "Ljava/lang/Class",
            "<TTRequest;>;",
            "Ljava/lang/Class",
            "<TTResponse;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    .local p3, "requestClass":Ljava/lang/Class;, "Ljava/lang/Class<TTRequest;>;"
    .local p4, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResponse;>;"
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v4, p0, Lmobisocial/longdan/net/WsRpcConnection;->mReconnectImmediate:Z

    .line 52
    iput-boolean v4, p0, Lmobisocial/longdan/net/WsRpcConnection;->mDisposed:Z

    .line 75
    const-string v0, "WsRpcConnection"

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerLock:Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    .line 123
    iput-wide v6, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffTime:J

    .line 211
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnection$1;

    invoke-direct {v0, p0}, Lmobisocial/longdan/net/WsRpcConnection$1;-><init>(Lmobisocial/longdan/net/WsRpcConnection;)V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mWebSocketListener:Lcom/squareup/okhttp/ws/WebSocketListener;

    .line 146
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 147
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 148
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    const-wide/16 v2, 0x7d00

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 149
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mInterest:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 150
    sget-object v0, Lmobisocial/longdan/net/WsRpcConnection$State;->DISCONNECTED:Lmobisocial/longdan/net/WsRpcConnection$State;

    invoke-direct {p0, v0}, Lmobisocial/longdan/net/WsRpcConnection;->setConnectionState(Lmobisocial/longdan/net/WsRpcConnection$State;)V

    .line 151
    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mClientVersionInfo:Lmobisocial/longdan/net/ClientVersionInfo;

    .line 152
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mSecureRandom:Ljava/security/SecureRandom;

    .line 153
    iput-wide v6, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCurrentRequestId:J

    .line 154
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mTimer:Ljava/util/Timer;

    .line 155
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPingTaskTimer:Ljava/util/Timer;

    .line 156
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;

    invoke-direct {v0, p0, p3, p4}, Lmobisocial/longdan/net/WsRpcConnection$Encoder;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEncoder:Lmobisocial/longdan/net/WsRpcConnection$Encoder;

    .line 157
    iput-object p3, p0, Lmobisocial/longdan/net/WsRpcConnection;->requestClass:Ljava/lang/Class;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerMap:Ljava/util/Map;

    .line 159
    invoke-direct {p0, p3, p4}, Lmobisocial/longdan/net/WsRpcConnection;->getParametrizedRpcWrapper(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mContainerType:Ljava/lang/reflect/Type;

    .line 160
    return-void
.end method

.method static synthetic access$100(Lmobisocial/longdan/net/WsRpcConnection;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-boolean v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mDisposed:Z

    return v0
.end method

.method static synthetic access$1000(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPingTaskTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1100(Lmobisocial/longdan/net/WsRpcConnection;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    invoke-direct {p0}, Lmobisocial/longdan/net/WsRpcConnection;->doHelloChallenge()V

    return-void
.end method

.method static synthetic access$1200(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/exception/LongdanException;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;
    .param p1, "x1"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lmobisocial/longdan/net/WsRpcConnection;->cleanupConnection(Lmobisocial/longdan/exception/LongdanException;)V

    return-void
.end method

.method static synthetic access$1300(Lmobisocial/longdan/net/WsRpcConnection;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    invoke-direct {p0}, Lmobisocial/longdan/net/WsRpcConnection;->scheduleReconnect()V

    return-void
.end method

.method static synthetic access$1400(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/reflect/Type;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mContainerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static synthetic access$1500(Lmobisocial/longdan/net/WsRpcConnection;)[B
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mAppKeyId:[B

    return-object v0
.end method

.method static synthetic access$1600(Lmobisocial/longdan/net/WsRpcConnection;)[B
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mAppKeySecret:[B

    return-object v0
.end method

.method static synthetic access$1700(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/util/concurrent/Executor;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1800(Lmobisocial/longdan/net/WsRpcConnection;Z)Z
    .registers 3
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lmobisocial/longdan/net/WsRpcConnection;->isValidSendState(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lmobisocial/longdan/net/WsRpcConnection;)Lmobisocial/longdan/net/WsRpcConnection$State;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    return-object v0
.end method

.method static synthetic access$2100(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V
    .registers 3
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;
    .param p1, "x1"    # Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;
    .param p2, "x2"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lmobisocial/longdan/net/WsRpcConnection;->postException(Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V

    return-void
.end method

.method static synthetic access$2200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2400(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/Class;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->requestClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lmobisocial/longdan/net/WsRpcConnection;J)J
    .registers 4
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCurrentRequestId:J

    return-wide p1
.end method

.method static synthetic access$408(Lmobisocial/longdan/net/WsRpcConnection;)J
    .registers 5
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-wide v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCurrentRequestId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCurrentRequestId:J

    return-wide v0
.end method

.method static synthetic access$500(Lmobisocial/longdan/net/WsRpcConnection;)Lcom/squareup/okhttp/ws/WebSocket;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;

    return-object v0
.end method

.method static synthetic access$502(Lmobisocial/longdan/net/WsRpcConnection;Lcom/squareup/okhttp/ws/WebSocket;)Lcom/squareup/okhttp/ws/WebSocket;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;
    .param p1, "x1"    # Lcom/squareup/okhttp/ws/WebSocket;

    .prologue
    .line 42
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;

    return-object p1
.end method

.method static synthetic access$602(Lmobisocial/longdan/net/WsRpcConnection;J)J
    .registers 4
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$State;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;
    .param p1, "x1"    # Lmobisocial/longdan/net/WsRpcConnection$State;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lmobisocial/longdan/net/WsRpcConnection;->setConnectionState(Lmobisocial/longdan/net/WsRpcConnection$State;)V

    return-void
.end method

.method static synthetic access$800(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/util/TimerTask;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPingTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$802(Lmobisocial/longdan/net/WsRpcConnection;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .registers 2
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;
    .param p1, "x1"    # Ljava/util/TimerTask;

    .prologue
    .line 42
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPingTask:Ljava/util/TimerTask;

    return-object p1
.end method

.method static synthetic access$900(Lmobisocial/longdan/net/WsRpcConnection;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 42
    invoke-direct {p0}, Lmobisocial/longdan/net/WsRpcConnection;->doPing()V

    return-void
.end method

.method private callInternal(Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Z)V
    .registers 6
    .param p2, "responseCallback"    # Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;
    .param p3, "core"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 894
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    .local p1, "request":Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;, "TTRequest;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lmobisocial/longdan/net/WsRpcConnection$16;

    invoke-direct {v1, p0, p2, p3, p1}, Lmobisocial/longdan/net/WsRpcConnection$16;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;ZLmobisocial/longdan/LDProtocols$LDRequestContainerBase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 935
    return-void
.end method

.method private cleanupConnection(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 7
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 292
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 293
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    .local v0, "handlers":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;>;"
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 295
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_42

    .line 296
    invoke-direct {p0, p1, v0}, Lmobisocial/longdan/net/WsRpcConnection;->postExceptions(Lmobisocial/longdan/exception/LongdanException;Ljava/util/Collection;)V

    .line 298
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 299
    const/4 v2, 0x0

    :try_start_1b
    iput-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;

    .line 300
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPingTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_29

    .line 301
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPingTask:Ljava/util/TimerTask;

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    .line 302
    const/4 v2, 0x0

    iput-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPingTask:Ljava/util/TimerTask;

    .line 304
    :cond_29
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v4, Lmobisocial/longdan/net/WsRpcConnection$State;->AUTHENTICATED:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-ne v2, v4, :cond_45

    const/4 v1, 0x1

    .line 305
    .local v1, "wasSocketAuthenticated":Z
    :goto_30
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v4, Lmobisocial/longdan/net/WsRpcConnection$State;->INVALID_KEYS:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-eq v2, v4, :cond_3b

    .line 306
    sget-object v2, Lmobisocial/longdan/net/WsRpcConnection$State;->DISCONNECTED:Lmobisocial/longdan/net/WsRpcConnection$State;

    invoke-direct {p0, v2}, Lmobisocial/longdan/net/WsRpcConnection;->setConnectionState(Lmobisocial/longdan/net/WsRpcConnection$State;)V

    .line 308
    :cond_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_47

    .line 309
    if-eqz v1, :cond_4a

    .line 310
    invoke-direct {p0}, Lmobisocial/longdan/net/WsRpcConnection;->postSocketDisconnected()V

    .line 314
    :goto_41
    return-void

    .line 295
    .end local v0    # "handlers":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;>;"
    .end local v1    # "wasSocketAuthenticated":Z
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v2

    .line 304
    .restart local v0    # "handlers":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;>;"
    :cond_45
    const/4 v1, 0x0

    goto :goto_30

    .line 308
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2

    .line 312
    .restart local v1    # "wasSocketAuthenticated":Z
    :cond_4a
    invoke-direct {p0}, Lmobisocial/longdan/net/WsRpcConnection;->postSocketConnectionAttemptFailed()V

    goto :goto_41
.end method

.method private doHelloChallenge()V
    .registers 8

    .prologue
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    const/16 v6, 0x20

    .line 579
    new-array v3, v6, [B

    .line 580
    .local v3, "sharedSecret":[B
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection;->mDeviceKey:[B

    iget-object v5, p0, Lmobisocial/longdan/net/WsRpcConnection;->mServerPublicKey:[B

    invoke-static {v3, v4, v5}, Lmobisocial/crypto/Curve25519;->curve([B[B[B)V

    .line 581
    new-array v2, v6, [B

    .line 582
    .local v2, "publicKey":[B
    const/4 v4, 0x0

    iget-object v5, p0, Lmobisocial/longdan/net/WsRpcConnection;->mDeviceKey:[B

    invoke-static {v2, v4, v5}, Lmobisocial/crypto/Curve25519;->keygen([B[B[B)V

    .line 583
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDHelloChallengeRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDHelloChallengeRequest;-><init>()V

    .line 584
    .local v1, "helloChallengeRequest":Lmobisocial/longdan/LDProtocols$LDHelloChallengeRequest;
    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDHelloChallengeRequest;->SourceKey:[B

    .line 585
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection;->mAppKeyId:[B

    iput-object v4, v1, Lmobisocial/longdan/LDProtocols$LDHelloChallengeRequest;->ApiKey:[B

    .line 586
    new-array v0, v6, [B

    .line 587
    .local v0, "challengeBytes":[B
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 588
    iput-object v0, v1, Lmobisocial/longdan/LDProtocols$LDHelloChallengeRequest;->DestinationChallenge:[B

    .line 589
    const-class v4, Lmobisocial/longdan/LDProtocols$LDHelloChallengeResponse;

    new-instance v5, Lmobisocial/longdan/net/WsRpcConnection$11;

    invoke-direct {v5, p0, v0, v3}, Lmobisocial/longdan/net/WsRpcConnection$11;-><init>(Lmobisocial/longdan/net/WsRpcConnection;[B[B)V

    invoke-virtual {p0, v1, v4, v5}, Lmobisocial/longdan/net/WsRpcConnection;->callCore(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    .line 683
    return-void
.end method

.method private doPing()V
    .registers 15

    .prologue
    .line 539
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v9, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v10, Lmobisocial/longdan/net/WsRpcConnection$State;->DISCONNECTED:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-eq v9, v10, :cond_66

    iget-object v9, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v10, Lmobisocial/longdan/net/WsRpcConnection$State;->CONNECTING:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-eq v9, v10, :cond_66

    .line 541
    :try_start_c
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDPingRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDPingRequest;-><init>()V

    .line 542
    .local v1, "request":Lmobisocial/longdan/LDProtocols$LDPingRequest;
    const-wide/16 v10, 0x6d60

    iput-wide v10, v1, Lmobisocial/longdan/LDProtocols$LDPingRequest;->NextPingDelayMs:J

    .line 543
    iget-wide v10, p0, Lmobisocial/longdan/net/WsRpcConnection;->lastRtt:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v1, Lmobisocial/longdan/LDProtocols$LDPingRequest;->LastRtt:Ljava/lang/Long;

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 545
    .local v6, "start":J
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 546
    .local v8, "timeoutLatch":Ljava/util/concurrent/CountDownLatch;
    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/Object;

    .line 547
    .local v5, "serverResponse":[Ljava/lang/Object;
    const-class v9, Lmobisocial/longdan/LDProtocols$LDPingResponse;

    new-instance v10, Lmobisocial/longdan/net/WsRpcConnection$10;

    invoke-direct {v10, p0, v5, v8}, Lmobisocial/longdan/net/WsRpcConnection$10;-><init>(Lmobisocial/longdan/net/WsRpcConnection;[Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1, v9, v10}, Lmobisocial/longdan/net/WsRpcConnection;->callCore(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    .line 561
    const-wide/16 v10, 0x7d00

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v10, v11, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 562
    const/4 v9, 0x0

    aget-object v9, v5, v9

    instance-of v9, v9, Lmobisocial/longdan/exception/LongdanException;

    if-eqz v9, :cond_67

    .line 563
    const/4 v9, 0x0

    aget-object v9, v5, v9

    check-cast v9, Lmobisocial/longdan/exception/LongdanException;

    throw v9
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_48} :catch_48

    .line 571
    .end local v1    # "request":Lmobisocial/longdan/LDProtocols$LDPingRequest;
    .end local v5    # "serverResponse":[Ljava/lang/Object;
    .end local v6    # "start":J
    .end local v8    # "timeoutLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_48
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lmobisocial/longdan/net/WsRpcConnection;->disconnect()V

    .line 573
    iget-object v9, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "keepalive failed: rtt: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lmobisocial/longdan/net/WsRpcConnection;->lastRtt:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_66
    :goto_66
    return-void

    .line 565
    .restart local v1    # "request":Lmobisocial/longdan/LDProtocols$LDPingRequest;
    .restart local v5    # "serverResponse":[Ljava/lang/Object;
    .restart local v6    # "start":J
    .restart local v8    # "timeoutLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_67
    const/4 v9, 0x0

    :try_start_68
    aget-object v4, v5, v9

    check-cast v4, Lmobisocial/longdan/LDProtocols$LDPingResponse;

    .line 566
    .local v4, "response":Lmobisocial/longdan/LDProtocols$LDPingResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 567
    .local v2, "end":J
    sub-long v10, v2, v6

    iput-wide v10, p0, Lmobisocial/longdan/net/WsRpcConnection;->lastRtt:J

    .line 568
    iget-wide v10, v4, Lmobisocial/longdan/LDProtocols$LDPingResponse;->UtcMillis:J

    iput-wide v10, p0, Lmobisocial/longdan/net/WsRpcConnection;->mLastServerTimestamp:J

    .line 569
    iget-wide v10, p0, Lmobisocial/longdan/net/WsRpcConnection;->mLastServerTimestamp:J

    sub-long/2addr v10, v2

    iget-wide v12, p0, Lmobisocial/longdan/net/WsRpcConnection;->lastRtt:J

    add-long/2addr v10, v12

    iput-wide v10, p0, Lmobisocial/longdan/net/WsRpcConnection;->serverTimeDelta:J
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_80} :catch_48

    goto :goto_66
.end method

.method private getParametrizedRpcWrapper(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/ParameterizedType;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TTRequest;>;",
            "Ljava/lang/Class",
            "<TTResponse;>;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .line 988
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    .local p1, "requestClass":Ljava/lang/Class;, "Ljava/lang/Class<TTRequest;>;"
    .local p2, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TTResponse;>;"
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnection$17;

    invoke-direct {v0, p0, p1, p2}, Lmobisocial/longdan/net/WsRpcConnection$17;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method private isValidSendState(Z)Z
    .registers 4
    .param p1, "core"    # Z

    .prologue
    .line 943
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v1, Lmobisocial/longdan/net/WsRpcConnection$State;->AUTHENTICATED:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-eq v0, v1, :cond_e

    if-eqz p1, :cond_10

    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v1, Lmobisocial/longdan/net/WsRpcConnection$State;->UNAUTHENTICATED:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private postException(Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V
    .registers 5
    .param p1, "callback"    # Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;
    .param p2, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 432
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    if-nez p1, :cond_3

    .line 442
    :goto_2
    return-void

    .line 434
    :cond_3
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lmobisocial/longdan/net/WsRpcConnection$7;

    invoke-direct {v1, p0, p1, p2}, Lmobisocial/longdan/net/WsRpcConnection$7;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private postException(Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V
    .registers 5
    .param p1, "callback"    # Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;
    .param p2, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 445
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    if-nez p1, :cond_3

    .line 455
    :goto_2
    return-void

    .line 447
    :cond_3
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lmobisocial/longdan/net/WsRpcConnection$8;

    invoke-direct {v1, p0, p1, p2}, Lmobisocial/longdan/net/WsRpcConnection$8;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private postExceptions(Lmobisocial/longdan/exception/LongdanException;Ljava/util/Collection;)V
    .registers 5
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/longdan/exception/LongdanException;",
            "Ljava/util/Collection",
            "<",
            "Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    .local p2, "responseHandlers":Ljava/util/Collection;, "Ljava/util/Collection<Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lmobisocial/longdan/net/WsRpcConnection$9;

    invoke-direct {v1, p0, p2, p1}, Lmobisocial/longdan/net/WsRpcConnection$9;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/util/Collection;Lmobisocial/longdan/exception/LongdanException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method

.method private postResponse(Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 5
    .param p1, "callback"    # Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;
    .param p2, "decoded"    # Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .prologue
    .line 419
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    if-nez p1, :cond_3

    .line 429
    :goto_2
    return-void

    .line 421
    :cond_3
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lmobisocial/longdan/net/WsRpcConnection$6;

    invoke-direct {v1, p0, p1, p2}, Lmobisocial/longdan/net/WsRpcConnection$6;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private postSocketConnected()V
    .registers 3

    .prologue
    .line 380
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lmobisocial/longdan/net/WsRpcConnection$3;

    invoke-direct {v1, p0}, Lmobisocial/longdan/net/WsRpcConnection$3;-><init>(Lmobisocial/longdan/net/WsRpcConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method private postSocketConnectionAttemptFailed()V
    .registers 3

    .prologue
    .line 406
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lmobisocial/longdan/net/WsRpcConnection$5;

    invoke-direct {v1, p0}, Lmobisocial/longdan/net/WsRpcConnection$5;-><init>(Lmobisocial/longdan/net/WsRpcConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method

.method private postSocketDisconnected()V
    .registers 3

    .prologue
    .line 393
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lmobisocial/longdan/net/WsRpcConnection$4;

    invoke-direct {v1, p0}, Lmobisocial/longdan/net/WsRpcConnection$4;-><init>(Lmobisocial/longdan/net/WsRpcConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method private scheduleReconnect()V
    .registers 9

    .prologue
    .line 317
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-boolean v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mDisposed:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v1, Lmobisocial/longdan/net/WsRpcConnection$State;->INVALID_KEYS:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-ne v0, v1, :cond_12

    .line 318
    :cond_a
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    const-string v1, "Socket no longer valid, aborting."

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_11
    return-void

    .line 321
    :cond_12
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_15
    iget-boolean v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mReconnectImmediate:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mInterest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_7e

    .line 324
    :cond_21
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffRetryTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2a

    .line 325
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffRetryTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 327
    :cond_2a
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnection$2;

    invoke-direct {v0, p0}, Lmobisocial/longdan/net/WsRpcConnection$2;-><init>(Lmobisocial/longdan/net/WsRpcConnection;)V

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffRetryTask:Ljava/util/TimerTask;

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mReconnectImmediate:Z

    .line 335
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffRetryTask:Ljava/util/TimerTask;

    iget-wide v4, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 336
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_71

    .line 337
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "socked died - interest is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection;->mInterest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reconnecting in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_71
    iget-wide v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffTime:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x384

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffTime:J

    .line 340
    :cond_7e
    monitor-exit v1

    goto :goto_11

    :catchall_80
    move-exception v0

    monitor-exit v1
    :try_end_82
    .catchall {:try_start_15 .. :try_end_82} :catchall_80

    throw v0
.end method

.method private setConnectionState(Lmobisocial/longdan/net/WsRpcConnection$State;)V
    .registers 6
    .param p1, "state"    # Lmobisocial/longdan/net/WsRpcConnection$State;

    .prologue
    .line 471
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_3
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_20

    .line 473
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting connection state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_20
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    .line 475
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 476
    monitor-exit v1

    .line 477
    return-void

    .line 476
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v0
.end method


# virtual methods
.method public call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V
    .registers 9
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
    .line 772
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    .local p1, "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcRequest;"
    .local p2, "responseType":Ljava/lang/Class;, "Ljava/lang/Class<TTRpcResponse;>;"
    .local p3, "responseCallback":Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;, "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse<TTRpcResponse;>;"
    :try_start_0
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEncoder:Lmobisocial/longdan/net/WsRpcConnection$Encoder;

    invoke-virtual {v2, p1}, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->encodeRequest(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_34

    move-result-object v1

    .line 777
    .local v1, "instance":Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;, "TTRequest;"
    sget v2, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_27

    .line 778
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending normal request of class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :cond_27
    invoke-virtual {p0}, Lmobisocial/longdan/net/WsRpcConnection;->incrementInterest()V

    .line 780
    new-instance v2, Lmobisocial/longdan/net/WsRpcConnection$14;

    invoke-direct {v2, p0, p2, p3}, Lmobisocial/longdan/net/WsRpcConnection$14;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lmobisocial/longdan/net/WsRpcConnection;->callInternal(Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Z)V

    .line 801
    .end local v1    # "instance":Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;, "TTRequest;"
    :goto_33
    return-void

    .line 773
    :catch_34
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lmobisocial/longdan/exception/LongdanClientException;

    const-string v3, "Error encoding request"

    invoke-direct {v2, v3, v0}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {p0, p3, v2}, Lmobisocial/longdan/net/WsRpcConnection;->postException(Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V

    goto :goto_33
.end method

.method public callCore(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V
    .registers 8
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
    .line 710
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    .local p1, "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcRequest;"
    .local p2, "responseType":Ljava/lang/Class;, "Ljava/lang/Class<TTRpcResponse;>;"
    .local p3, "responseCallback":Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;, "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse<TTRpcResponse;>;"
    :try_start_0
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEncoder:Lmobisocial/longdan/net/WsRpcConnection$Encoder;

    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection;->requestClass:Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->encodeCoreRequest(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    .line 711
    .local v1, "instance":Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;, "TTRequest;"
    new-instance v2, Lmobisocial/longdan/net/WsRpcConnection$12;

    invoke-direct {v2, p0, p2, p3}, Lmobisocial/longdan/net/WsRpcConnection$12;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lmobisocial/longdan/net/WsRpcConnection;->callInternal(Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Z)V
    :try_end_13
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_13} :catch_14

    .line 731
    .end local v1    # "instance":Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;, "TTRequest;"
    :goto_13
    return-void

    .line 728
    :catch_14
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_13
.end method

.method public callForSubscribe(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 7
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
    .line 736
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    .local p1, "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcRequest;"
    :try_start_0
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEncoder:Lmobisocial/longdan/net/WsRpcConnection$Encoder;

    invoke-virtual {v2, p1}, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->encodeRequest(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_2e

    move-result-object v1

    .line 741
    .local v1, "instance":Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;, "TTRequest;"
    sget v2, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_23

    .line 742
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "posting subscribe raw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_23
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lmobisocial/longdan/net/WsRpcConnection$13;

    invoke-direct {v3, p0, v1, p1}, Lmobisocial/longdan/net/WsRpcConnection$13;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 767
    .end local v1    # "instance":Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;, "TTRequest;"
    :goto_2d
    return-void

    .line 737
    :catch_2e
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    const-string v3, "Error encoding subscribe"

    invoke-static {v2, v3, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method connect()V
    .registers 6

    .prologue
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    const/4 v4, 0x3

    .line 181
    iget-boolean v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mDisposed:Z

    if-eqz v1, :cond_26

    .line 182
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This connection was disposed. Stack trace:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_25
    :goto_25
    return-void

    .line 185
    :cond_26
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v2, Lmobisocial/longdan/net/WsRpcConnection$State;->AUTHENTICATED:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-eq v1, v2, :cond_25

    .line 187
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v2, Lmobisocial/longdan/net/WsRpcConnection$State;->INVALID_KEYS:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-ne v1, v2, :cond_36

    .line 188
    invoke-direct {p0}, Lmobisocial/longdan/net/WsRpcConnection;->postSocketConnectionAttemptFailed()V

    goto :goto_25

    .line 191
    :cond_36
    sget v1, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    if-gt v1, v4, :cond_54

    .line 192
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializing connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEndpoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_54
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 194
    :try_start_57
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v3, Lmobisocial/longdan/net/WsRpcConnection$State;->DISCONNECTED:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-ne v1, v3, :cond_61

    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEndpoint:Ljava/lang/String;

    if-nez v1, :cond_90

    .line 196
    :cond_61
    sget v1, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    if-gt v1, v4, :cond_8b

    .line 197
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initconnection called but state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and endpoint is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEndpoint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_8b
    monitor-exit v2

    goto :goto_25

    .line 205
    :catchall_8d
    move-exception v1

    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_57 .. :try_end_8f} :catchall_8d

    throw v1

    .line 200
    :cond_90
    :try_start_90
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffRetryTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_9c

    .line 201
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffRetryTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffRetryTask:Ljava/util/TimerTask;

    .line 204
    :cond_9c
    sget-object v1, Lmobisocial/longdan/net/WsRpcConnection$State;->CONNECTING:Lmobisocial/longdan/net/WsRpcConnection$State;

    invoke-direct {p0, v1}, Lmobisocial/longdan/net/WsRpcConnection;->setConnectionState(Lmobisocial/longdan/net/WsRpcConnection$State;)V

    .line 205
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_90 .. :try_end_a2} :catchall_8d

    .line 206
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initiating connection from state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v2, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->get()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEndpoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/squareup/okhttp/ws/WebSocketCall;->create(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/ws/WebSocketCall;

    move-result-object v0

    .line 208
    .local v0, "call":Lcom/squareup/okhttp/ws/WebSocketCall;
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mWebSocketListener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ws/WebSocketCall;->enqueue(Lcom/squareup/okhttp/ws/WebSocketListener;)V

    goto/16 :goto_25
.end method

.method public decrementInterest()V
    .registers 8

    .prologue
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    const/4 v6, 0x3

    .line 872
    monitor-enter p0

    .line 873
    :try_start_2
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mInterest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 874
    .local v0, "interest":I
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1a

    .line 875
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCloseSocketTask:Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;

    if-eqz v1, :cond_4c

    .line 876
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    const-string v2, "Connection timeout already pending..."

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_1a
    :goto_1a
    sget v1, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    if-gt v1, v6, :cond_36

    .line 885
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decremented interest to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_36
    if-gez v0, :cond_4a

    .line 887
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    const-string v2, "Critical error, interest dropped below 0! Resetting to 0."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 888
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mInterest:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 890
    :cond_4a
    monitor-exit p0

    .line 891
    return-void

    .line 878
    :cond_4c
    sget v1, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    if-gt v1, v6, :cond_68

    .line 879
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling socket close because interest is less than 1, interest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_68
    new-instance v1, Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$1;)V

    iput-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCloseSocketTask:Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;

    .line 881
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCloseSocketTask:Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1a

    .line 890
    .end local v0    # "interest":I
    :catchall_7a
    move-exception v1

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_2 .. :try_end_7c} :catchall_7a

    throw v1
.end method

.method public disconnect()V
    .registers 6

    .prologue
    .line 358
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    :try_start_0
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_15

    .line 359
    :try_start_3
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;

    if-eqz v1, :cond_10

    .line 360
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;

    const/16 v3, 0x3e9

    const-string v4, "goodbye"

    invoke-interface {v1, v3, v4}, Lcom/squareup/okhttp/ws/WebSocket;->close(ILjava/lang/String;)V

    .line 362
    :cond_10
    monitor-exit v2

    .line 366
    :goto_11
    return-void

    .line 362
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    :try_start_14
    throw v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_15} :catch_15

    .line 363
    :catch_15
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    const-string v2, "Error closing socket"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public dispose()V
    .registers 3

    .prologue
    .line 369
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mDisposed:Z

    .line 370
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_6
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPingTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_12

    .line 372
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPingTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPingTask:Ljava/util/TimerTask;

    .line 375
    :cond_12
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPingTaskTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 376
    monitor-exit v1

    .line 377
    return-void

    .line 376
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method doAuthenticationComplete()V
    .registers 4

    .prologue
    .line 344
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-boolean v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mDisposed:Z

    if-eqz v0, :cond_25

    .line 345
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This connection was disposed. Stack trace:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :goto_24
    return-void

    .line 348
    :cond_25
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_44

    .line 349
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authentication complete for endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEndpoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_44
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_47
    sget-object v0, Lmobisocial/longdan/net/WsRpcConnection$State;->AUTHENTICATED:Lmobisocial/longdan/net/WsRpcConnection$State;

    invoke-direct {p0, v0}, Lmobisocial/longdan/net/WsRpcConnection;->setConnectionState(Lmobisocial/longdan/net/WsRpcConnection$State;)V

    .line 352
    invoke-direct {p0}, Lmobisocial/longdan/net/WsRpcConnection;->postSocketConnected()V

    .line 353
    monitor-exit v1

    goto :goto_24

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public getLastServerTimestamp()J
    .registers 3

    .prologue
    .line 527
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-wide v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mLastServerTimestamp:J

    return-wide v0
.end method

.method public getServerTimeDelta()J
    .registers 3

    .prologue
    .line 523
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-wide v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->serverTimeDelta:J

    return-wide v0
.end method

.method public getSocket()Lcom/squareup/okhttp/ws/WebSocket;
    .registers 2

    .prologue
    .line 832
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;

    return-object v0
.end method

.method public incrementInterest()V
    .registers 5

    .prologue
    .line 836
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    const/4 v0, 0x0

    .line 837
    .local v0, "needsConnect":Z
    monitor-enter p0

    .line 838
    :try_start_2
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mInterest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-lez v1, :cond_17

    .line 840
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCloseSocketTask:Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;

    if-eqz v1, :cond_16

    .line 841
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCloseSocketTask:Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;

    invoke-virtual {v1}, Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;->cancel()Z

    .line 842
    const/4 v1, 0x0

    iput-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mCloseSocketTask:Lmobisocial/longdan/net/WsRpcConnection$CloseSocketTask;

    .line 844
    :cond_16
    const/4 v0, 0x1

    .line 846
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_3d

    .line 847
    if-eqz v0, :cond_40

    .line 848
    invoke-virtual {p0}, Lmobisocial/longdan/net/WsRpcConnection;->connect()V

    .line 852
    :goto_1d
    sget v1, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_3c

    .line 853
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incremented interest to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection;->mInterest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :cond_3c
    return-void

    .line 846
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1

    .line 850
    :cond_40
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    const-string v2, "synchronization error, interest somehow became negative"

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public incrementInterest(JLjava/lang/Runnable;)V
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 857
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    new-instance v0, Lmobisocial/longdan/net/WsRpcConnection$15;

    invoke-direct {v0, p0, p3}, Lmobisocial/longdan/net/WsRpcConnection$15;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/lang/Runnable;)V

    .line 867
    .local v0, "decrement":Ljava/util/TimerTask;
    invoke-virtual {p0}, Lmobisocial/longdan/net/WsRpcConnection;->incrementInterest()V

    .line 868
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 869
    return-void
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 698
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method onResponseReceived(Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;)V
    .registers 10
    .param p1, "responseContainer"    # Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;

    .prologue
    .line 948
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 949
    :try_start_3
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection;->mResponseHandlerMap:Ljava/util/Map;

    iget-wide v6, p1, Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;->SequenceNumber:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;

    .line 950
    .local v0, "callback":Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 951
    if-nez v0, :cond_1f

    .line 952
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    const-string v4, "Received unsolicited rpc response"

    invoke-static {v3, v4}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :goto_1b
    return-void

    .line 950
    .end local v0    # "callback":Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v3

    .line 955
    .restart local v0    # "callback":Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;
    :cond_1f
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;->ErrorCode:Ljava/lang/String;

    if-nez v3, :cond_27

    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;->ErrorDetail:Ljava/lang/String;

    if-eqz v3, :cond_34

    .line 956
    :cond_27
    new-instance v3, Lmobisocial/longdan/exception/LongdanApiException;

    iget-object v4, p1, Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;->ErrorCode:Ljava/lang/String;

    iget-object v5, p1, Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;->ErrorDetail:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lmobisocial/longdan/exception/LongdanApiException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lmobisocial/longdan/net/WsRpcConnection;->postException(Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V

    goto :goto_1b

    .line 958
    :cond_34
    invoke-interface {v0}, Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;->getResponseType()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 959
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lmobisocial/longdan/net/WsRpcConnection;->postResponse(Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    goto :goto_1b

    .line 963
    :cond_3f
    :try_start_3f
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEncoder:Lmobisocial/longdan/net/WsRpcConnection$Encoder;

    invoke-interface {v0}, Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;->getResponseType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->decodeResponse(Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    .line 964
    .local v1, "decoded":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    sget v3, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_6a

    .line 965
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got rpc response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobisocial/util/OMLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_6a} :catch_6e

    .line 970
    :cond_6a
    invoke-direct {p0, v0, v1}, Lmobisocial/longdan/net/WsRpcConnection;->postResponse(Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    goto :goto_1b

    .line 966
    .end local v1    # "decoded":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    :catch_6e
    move-exception v2

    .line 967
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lmobisocial/longdan/exception/LongdanClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decode response into class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;->getResponseType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {p0, v0, v3}, Lmobisocial/longdan/net/WsRpcConnection;->postException(Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V

    goto :goto_1b
.end method

.method onServerPushReceived(Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;)V
    .registers 6
    .param p1, "requestContainer"    # Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    .prologue
    .line 976
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPushReceivedListener:Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;

    .line 977
    .local v0, "l":Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;
    if-eqz v0, :cond_13

    .line 978
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEncoder:Lmobisocial/longdan/net/WsRpcConnection$Encoder;

    invoke-virtual {v2, p1}, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->extractServerRequest(Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    .line 979
    .local v1, "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    if-nez v1, :cond_14

    .line 980
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    const-string v3, "received empty server push!"

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    .end local v1    # "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    :cond_13
    :goto_13
    return-void

    .line 982
    .restart local v1    # "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    :cond_14
    invoke-interface {v0, v1}, Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;->onPushReceived(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    goto :goto_13
.end method

.method populateDeviceProperties(Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;)V
    .registers 3
    .param p1, "req"    # Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;

    .prologue
    .line 686
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    const-string v0, "Android-Omlib"

    iput-object v0, p1, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;->Type:Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mClientVersionInfo:Lmobisocial/longdan/net/ClientVersionInfo;

    iget-object v0, v0, Lmobisocial/longdan/net/ClientVersionInfo;->PackageVersion:Ljava/lang/String;

    iput-object v0, p1, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;->PackageVersion:Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mClientVersionInfo:Lmobisocial/longdan/net/ClientVersionInfo;

    iget-object v0, v0, Lmobisocial/longdan/net/ClientVersionInfo;->OmlibVersion:Ljava/lang/Integer;

    iput-object v0, p1, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;->OmlibVersion:Ljava/lang/Integer;

    .line 689
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mClientVersionInfo:Lmobisocial/longdan/net/ClientVersionInfo;

    iget-object v0, v0, Lmobisocial/longdan/net/ClientVersionInfo;->Model:Ljava/lang/String;

    iput-object v0, p1, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;->Model:Ljava/lang/String;

    .line 690
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mClientVersionInfo:Lmobisocial/longdan/net/ClientVersionInfo;

    iget-object v0, v0, Lmobisocial/longdan/net/ClientVersionInfo;->OsVersion:Ljava/lang/String;

    iput-object v0, p1, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;->OsVersion:Ljava/lang/String;

    .line 691
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mClientVersionInfo:Lmobisocial/longdan/net/ClientVersionInfo;

    iget-object v0, v0, Lmobisocial/longdan/net/ClientVersionInfo;->Manufacturer:Ljava/lang/String;

    iput-object v0, p1, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;->Manufacturer:Ljava/lang/String;

    .line 692
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mClientVersionInfo:Lmobisocial/longdan/net/ClientVersionInfo;

    iget-object v0, v0, Lmobisocial/longdan/net/ClientVersionInfo;->Locale:Ljava/lang/String;

    iput-object v0, p1, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;->Locale:Ljava/lang/String;

    .line 693
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mClientVersionInfo:Lmobisocial/longdan/net/ClientVersionInfo;

    iget-object v0, v0, Lmobisocial/longdan/net/ClientVersionInfo;->PackageId:Ljava/lang/String;

    iput-object v0, p1, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;->PackageId:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public reconnect(Z)V
    .registers 5
    .param p1, "force"    # Z

    .prologue
    .line 804
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-boolean v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mDisposed:Z

    if-eqz v0, :cond_25

    .line 805
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This connection was disposed. Stack trace:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :cond_24
    :goto_24
    return-void

    .line 808
    :cond_25
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_5a

    .line 809
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issuing reconnect from state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mInterest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :cond_5a
    if-eqz p1, :cond_72

    .line 811
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 812
    const/4 v0, 0x1

    :try_start_60
    iput-boolean v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mReconnectImmediate:Z

    .line 813
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mSocket:Lcom/squareup/okhttp/ws/WebSocket;

    if-eqz v0, :cond_6e

    .line 814
    invoke-virtual {p0}, Lmobisocial/longdan/net/WsRpcConnection;->disconnect()V

    .line 818
    :goto_69
    monitor-exit v1

    goto :goto_24

    :catchall_6b
    move-exception v0

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_6b

    throw v0

    .line 816
    :cond_6e
    :try_start_6e
    invoke-direct {p0}, Lmobisocial/longdan/net/WsRpcConnection;->scheduleReconnect()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_6b

    goto :goto_69

    .line 819
    :cond_72
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mInterest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    if-lez v0, :cond_24

    .line 820
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 821
    :try_start_7d
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffRetryTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_89

    .line 822
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffRetryTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mBackoffRetryTask:Ljava/util/TimerTask;

    .line 825
    :cond_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_8e

    .line 826
    invoke-virtual {p0}, Lmobisocial/longdan/net/WsRpcConnection;->connect()V

    goto :goto_24

    .line 825
    :catchall_8e
    move-exception v0

    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v0
.end method

.method public setClosestClusterListener(Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;)V
    .registers 4
    .param p1, "listener"    # Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    .prologue
    .line 517
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_3
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mClosestClusterListener:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    .line 519
    monitor-exit v1

    .line 520
    return-void

    .line 519
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setConnectivityChangedListener(Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;

    .prologue
    .line 505
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_3
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mConnectivityChangedListener:Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;

    .line 507
    monitor-exit v1

    .line 508
    return-void

    .line 507
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setPushReceivedListener(Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;)V
    .registers 4
    .param p1, "listener"    # Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;

    .prologue
    .line 511
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_3
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mPushReceivedListener:Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;

    .line 513
    monitor-exit v1

    .line 514
    return-void

    .line 513
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setup(Ljava/lang/String;[B[B[B[B)V
    .registers 11
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "serverPublicKey"    # [B
    .param p3, "deviceKey"    # [B
    .param p4, "appKeyId"    # [B
    .param p5, "appKeySecret"    # [B

    .prologue
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 163
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v1, "idp."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, ":4001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8d

    :cond_2d
    const-string v1, "idp"

    :goto_2f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    .line 166
    :cond_39
    if-eqz p1, :cond_90

    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEndpoint:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    move v0, v2

    .line 167
    .local v0, "changesMade":Z
    :goto_44
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mDeviceKey:[B

    invoke-static {p3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4d

    move v3, v2

    :cond_4d
    or-int/2addr v0, v3

    .line 168
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEndpoint:Ljava/lang/String;

    .line 169
    iput-object p3, p0, Lmobisocial/longdan/net/WsRpcConnection;->mDeviceKey:[B

    .line 170
    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnection;->mServerPublicKey:[B

    .line 171
    iput-object p4, p0, Lmobisocial/longdan/net/WsRpcConnection;->mAppKeyId:[B

    .line 172
    iput-object p5, p0, Lmobisocial/longdan/net/WsRpcConnection;->mAppKeySecret:[B

    .line 173
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setup connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection;->mEndpoint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    if-eqz v0, :cond_8c

    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v3, Lmobisocial/longdan/net/WsRpcConnection$State;->DISCONNECTED:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-ne v1, v3, :cond_82

    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mInterest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    if-lez v1, :cond_8c

    .line 175
    :cond_82
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;

    const-string v3, "forcing reconnect..."

    invoke-static {v1, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v2}, Lmobisocial/longdan/net/WsRpcConnection;->reconnect(Z)V

    .line 178
    :cond_8c
    return-void

    .line 164
    .end local v0    # "changesMade":Z
    :cond_8d
    const-string v1, "message"

    goto :goto_2f

    :cond_90
    move v0, v3

    .line 166
    goto :goto_44
.end method

.method public waitForConnection()Lmobisocial/longdan/net/WsRpcConnection;
    .registers 4

    .prologue
    .line 480
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    :goto_3
    :try_start_3
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v2, Lmobisocial/longdan/net/WsRpcConnection$State;->AUTHENTICATED:Lmobisocial/longdan/net/WsRpcConnection$State;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_13

    if-eq v0, v2, :cond_11

    .line 483
    :try_start_9
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    goto :goto_3

    .line 484
    :catch_f
    move-exception v0

    goto :goto_3

    .line 487
    :cond_11
    :try_start_11
    monitor-exit v1

    .line 488
    return-object p0

    .line 487
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public waitForConnectionWithoutAuthentication()Lmobisocial/longdan/net/WsRpcConnection;
    .registers 4

    .prologue
    .line 493
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 494
    :goto_3
    :try_start_3
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v2, Lmobisocial/longdan/net/WsRpcConnection$State;->DISCONNECTED:Lmobisocial/longdan/net/WsRpcConnection$State;

    if-eq v0, v2, :cond_f

    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mState:Lmobisocial/longdan/net/WsRpcConnection$State;

    sget-object v2, Lmobisocial/longdan/net/WsRpcConnection$State;->CONNECTING:Lmobisocial/longdan/net/WsRpcConnection$State;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19

    if-ne v0, v2, :cond_17

    .line 496
    :cond_f
    :try_start_f
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection;->mStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    goto :goto_3

    .line 497
    :catch_15
    move-exception v0

    goto :goto_3

    .line 500
    :cond_17
    :try_start_17
    monitor-exit v1

    .line 501
    return-object p0

    .line 500
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v0
.end method
