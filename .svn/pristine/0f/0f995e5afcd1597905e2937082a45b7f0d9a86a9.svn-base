.class Lmobisocial/omlib/client/LongdanClient$2;
.super Ljava/lang/Object;
.source "LongdanClient.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanClient;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 324
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanClient$2;->this$0:Lmobisocial/omlib/client/LongdanClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionDisconnected(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V
    .registers 2
    .param p1, "conn"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 335
    return-void
.end method

.method public onSessionEstablished(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V
    .registers 3
    .param p1, "conn"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 328
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient$2;->this$0:Lmobisocial/omlib/client/LongdanClient;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v0}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 329
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient$2;->this$0:Lmobisocial/omlib/client/LongdanClient;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v0}, Lmobisocial/omlib/client/ClientAuthUtils;->refreshAccountDetails()V

    .line 331
    :cond_11
    return-void
.end method
