.class Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$1;
.super Ljava/lang/Object;
.source "FeedActivityRealtimeProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor;->processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor;

.field final synthetic val$account:Lmobisocial/omlib/db/entity/OMAccount;

.field final synthetic val$client:Lmobisocial/omlib/client/LongdanClient;

.field final synthetic val$pushObject:Lmobisocial/omlib/model/RealtimePushObject;


# direct methods
.method constructor <init>(Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor;Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/omlib/model/RealtimePushObject;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor;

    .prologue
    .line 49
    iput-object p1, p0, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$1;->this$0:Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor;

    iput-object p2, p0, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$1;->val$client:Lmobisocial/omlib/client/LongdanClient;

    iput-object p3, p0, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$1;->val$account:Lmobisocial/omlib/db/entity/OMAccount;

    iput-object p4, p0, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$1;->val$pushObject:Lmobisocial/omlib/model/RealtimePushObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 53
    iget-object v0, p0, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$1;->val$client:Lmobisocial/omlib/client/LongdanClient;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v1, p0, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$1;->val$account:Lmobisocial/omlib/db/entity/OMAccount;

    iget-object v1, v1, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$1;->val$pushObject:Lmobisocial/omlib/model/RealtimePushObject;

    invoke-virtual {v0, v2, v3, v1}, Lmobisocial/omlib/client/ClientFeedUtils;->notifyFeedStatus(JLmobisocial/omlib/model/RealtimePushObject;)V

    .line 54
    return-void
.end method
