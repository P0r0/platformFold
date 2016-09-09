.class Lmobisocial/longdan/net/WsRpcConnection$15;
.super Ljava/util/TimerTask;
.source "WsRpcConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection;->incrementInterest(JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 857
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$15;, "Lmobisocial/longdan/net/WsRpcConnection$15;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$15;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnection$15;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 861
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$15;, "Lmobisocial/longdan/net/WsRpcConnection$15;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$15;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection;->decrementInterest()V

    .line 862
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$15;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 863
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$15;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 865
    :cond_e
    return-void
.end method
