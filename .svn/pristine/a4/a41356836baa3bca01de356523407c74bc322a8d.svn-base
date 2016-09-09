.class Lmobisocial/omlib/client/LongdanMessageConsumer$6;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;->registerPushReceivers()V
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
    .line 171
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$6;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushReceived(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 4
    .param p1, "request"    # Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .prologue
    .line 175
    const-string v0, "LongdanMessageConsumer"

    const-string v1, "Push received: LDRealtimeMessageDeliveryPush"

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$6;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    # getter for: Lmobisocial/omlib/client/LongdanMessageConsumer;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v0}, Lmobisocial/omlib/client/LongdanMessageConsumer;->access$100(Lmobisocial/omlib/client/LongdanMessageConsumer;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v0

    check-cast p1, Lmobisocial/longdan/LDProtocols$LDRealtimeMessageDeliveryPush;

    .end local p1    # "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    iget-object v1, p1, Lmobisocial/longdan/LDProtocols$LDRealtimeMessageDeliveryPush;->Message:Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanMessageProcessor;->processRealtimeMessage(Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;)V

    .line 177
    return-void
.end method
