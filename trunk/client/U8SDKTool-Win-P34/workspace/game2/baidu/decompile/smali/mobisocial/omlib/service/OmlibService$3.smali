.class Lmobisocial/omlib/service/OmlibService$3;
.super Ljava/lang/Object;
.source "OmlibService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/service/OmlibService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/service/OmlibService;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 167
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$3;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$3;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$3;->this$0:Lmobisocial/omlib/service/OmlibService;

    # getter for: Lmobisocial/omlib/service/OmlibService;->mEnablePushRegistrationListener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;
    invoke-static {v1}, Lmobisocial/omlib/service/OmlibService;->access$300(Lmobisocial/omlib/service/OmlibService;)Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientAuthUtils;->addAccountConnectedListener(Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V

    .line 172
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$3;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$3;->this$0:Lmobisocial/omlib/service/OmlibService;

    # getter for: Lmobisocial/omlib/service/OmlibService;->mClosestClusterListener:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;
    invoke-static {v1}, Lmobisocial/omlib/service/OmlibService;->access$400(Lmobisocial/omlib/service/OmlibService;)Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addClosestClusterListener(Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;)V

    .line 173
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$3;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->startDataSync()V

    .line 174
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$3;->this$0:Lmobisocial/omlib/service/OmlibService;

    # getter for: Lmobisocial/omlib/service/OmlibService;->mClientInitialized:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lmobisocial/omlib/service/OmlibService;->access$500(Lmobisocial/omlib/service/OmlibService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 175
    return-void
.end method
