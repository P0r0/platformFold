.class Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientFeedUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RealtimeSessionListener"
.end annotation


# instance fields
.field private mConnected:Z

.field private final mFeed:Lmobisocial/longdan/LDProtocols$LDFeed;

.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;
    .param p2, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    .line 865
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    invoke-virtual {p2}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;->mFeed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 867
    return-void
.end method


# virtual methods
.method public getFeed()Lmobisocial/longdan/LDProtocols$LDFeed;
    .registers 2

    .prologue
    .line 896
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;->mFeed:Lmobisocial/longdan/LDProtocols$LDFeed;

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 892
    iget-boolean v0, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;->mConnected:Z

    return v0
.end method

.method public onSessionDisconnected(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V
    .registers 3
    .param p1, "conn"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;->mConnected:Z

    .line 889
    return-void
.end method

.method public onSessionEstablished(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V
    .registers 7
    .param p1, "conn"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    const/4 v4, 0x1

    .line 871
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDSubscribeFeedRealtimeRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDSubscribeFeedRealtimeRequest;-><init>()V

    .line 872
    .local v1, "subscribeFeedRealtimeRequest":Lmobisocial/longdan/LDProtocols$LDSubscribeFeedRealtimeRequest;
    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;->mFeed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDSubscribeFeedRealtimeRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 874
    :try_start_a
    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/ClientFeedUtils;->access$100(Lmobisocial/omlib/client/ClientFeedUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    .line 875
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;->mConnected:Z
    :try_end_1a
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_a .. :try_end_1a} :catch_1b

    .line 884
    :goto_1a
    return-void

    .line 876
    :catch_1b
    move-exception v0

    .line 877
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlreadySubscribed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 878
    iput-boolean v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;->mConnected:Z

    goto :goto_1a

    .line 880
    :cond_2b
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeSessionListener;->mConnected:Z

    .line 881
    const-string v2, "ClientFeedUtils"

    const-string v3, "Session established but connection not available"

    invoke-static {v2, v3, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method
