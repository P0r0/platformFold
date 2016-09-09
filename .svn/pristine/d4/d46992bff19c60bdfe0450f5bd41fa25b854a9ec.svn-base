.class Lmobisocial/longdan/net/WsRpcConnectionHandler$3;
.super Ljava/lang/Object;
.source "WsRpcConnectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnectionHandler;->addSessionListener(Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

.field final synthetic val$connectionCount:J


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;J)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 235
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$3;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$3;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    iput-wide p2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;->val$connectionCount:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 240
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$3;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$3;"
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$000(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 241
    :try_start_7
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnected:Z
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$100(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-wide v4, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;->val$connectionCount:J

    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSocketConnectionCount:J
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$200(Lmobisocial/longdan/net/WsRpcConnectionHandler;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_3b

    const/4 v0, 0x1

    .line 242
    .local v0, "heldConnection":Z
    :goto_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_3d

    .line 243
    if-eqz v0, :cond_40

    .line 244
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListenersToAdd:Ljava/util/Set;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$300(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;

    .line 245
    .local v1, "l":Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    invoke-interface {v1, v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;->onSessionEstablished(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V

    goto :goto_29

    .line 241
    .end local v0    # "heldConnection":Z
    .end local v1    # "l":Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;
    :cond_3b
    const/4 v0, 0x0

    goto :goto_1c

    .line 242
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2

    .line 248
    .restart local v0    # "heldConnection":Z
    :cond_40
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListeners:Ljava/util/Set;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$400(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 249
    :try_start_47
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListeners:Ljava/util/Set;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$400(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListenersToAdd:Ljava/util/Set;
    invoke-static {v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$300(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 250
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$3;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListenersToAdd:Ljava/util/Set;
    invoke-static {v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$300(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 251
    monitor-exit v3

    .line 252
    return-void

    .line 251
    :catchall_61
    move-exception v2

    monitor-exit v3
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_61

    throw v2
.end method
