.class Lmobisocial/omlib/client/LongdanMessageConsumer$11$1;
.super Ljava/util/TimerTask;
.source "LongdanMessageConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/LongdanMessageConsumer$11;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer$11;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlib/client/LongdanMessageConsumer$11;

    .prologue
    .line 297
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11$1;->this$1:Lmobisocial/omlib/client/LongdanMessageConsumer$11;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11$1;->this$1:Lmobisocial/omlib/client/LongdanMessageConsumer$11;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$11$1;->this$1:Lmobisocial/omlib/client/LongdanMessageConsumer$11;

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanMessageConsumer$11;->val$conn:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanMessageConsumer;->onSessionEstablished(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V

    .line 302
    return-void
.end method
