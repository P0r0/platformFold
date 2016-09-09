.class Lmobisocial/longdan/net/WsRpcConnection$5;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection;->postSocketConnectionAttemptFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 406
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$5;, "Lmobisocial/longdan/net/WsRpcConnection$5;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$5;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 410
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$5;, "Lmobisocial/longdan/net/WsRpcConnection$5;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$5;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Posting socket connection attempt failed"

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$5;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iget-object v0, v0, Lmobisocial/longdan/net/WsRpcConnection;->mConnectivityChangedListener:Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;

    if-eqz v0, :cond_18

    .line 412
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$5;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iget-object v0, v0, Lmobisocial/longdan/net/WsRpcConnection;->mConnectivityChangedListener:Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;

    invoke-interface {v0}, Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;->onSocketConnectionAttemptFailed()V

    .line 414
    :cond_18
    return-void
.end method
