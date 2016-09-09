.class Lmobisocial/omlib/client/LongdanMessageConsumer$2;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Lmobisocial/omlib/interfaces/OnAccountConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 135
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$2;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountConnected(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v0, "LongdanMessageConsumer"

    const-string v1, "got account async"

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$2;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # invokes: Lmobisocial/omlib/client/LongdanMessageConsumer;->registerPushReceivers()V
    invoke-static {v0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$000(Lmobisocial/omlib/client/LongdanMessageConsumer;)V

    .line 141
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$2;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$2;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    invoke-virtual {v0, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addSessionListener(Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;)V

    .line 142
    return-void
.end method
