.class Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientFeedUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublicChatSubscriber"
.end annotation


# instance fields
.field final mFeed:Lmobisocial/longdan/LDProtocols$LDFeed;

.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;Lmobisocial/longdan/LDProtocols$LDFeed;)V
    .registers 3
    .param p2, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;

    .prologue
    .line 460
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;->mFeed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 462
    return-void
.end method


# virtual methods
.method public onSessionDisconnected(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V
    .registers 2
    .param p1, "conn"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 477
    return-void
.end method

.method public onSessionEstablished(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V
    .registers 6
    .param p1, "conn"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 467
    :try_start_0
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDJoinPublicChatRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDJoinPublicChatRequest;-><init>()V

    .line 468
    .local v1, "req":Lmobisocial/longdan/LDProtocols$LDJoinPublicChatRequest;
    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils$PublicChatSubscriber;->mFeed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDJoinPublicChatRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 469
    invoke-virtual {p1, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callForSubscribe(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    :try_end_c
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_c} :catch_d

    .line 473
    .end local v1    # "req":Lmobisocial/longdan/LDProtocols$LDJoinPublicChatRequest;
    :goto_c
    return-void

    .line 470
    :catch_d
    move-exception v0

    .line 471
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    const-string v2, "ClientFeedUtils"

    const-string v3, "Public chat subscription failed"

    invoke-static {v2, v3, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method
