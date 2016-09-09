.class Lmobisocial/omlib/client/ClientFeedUtils$8;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientFeedUtils;->markFeedReadFromProcessorThread(Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;

.field final synthetic val$feed:Lmobisocial/omlib/db/entity/OMFeed;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;JLmobisocial/omlib/db/entity/OMFeed;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 652
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$8;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    iput-wide p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$8;->val$timestamp:J

    iput-object p4, p0, Lmobisocial/omlib/client/ClientFeedUtils$8;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 656
    new-instance v1, Lmobisocial/omlib/sendable/JsonSendable;

    const-string v2, "lastRead"

    invoke-direct {v1, v2}, Lmobisocial/omlib/sendable/JsonSendable;-><init>(Ljava/lang/String;)V

    .line 657
    .local v1, "sendable":Lmobisocial/omlib/sendable/JsonSendable;
    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils$8;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/ClientFeedUtils;->access$100(Lmobisocial/omlib/client/ClientFeedUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v2}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobisocial/omlib/sendable/JsonSendable;->setId([B)V

    .line 659
    :try_start_1a
    invoke-virtual {v1}, Lmobisocial/omlib/sendable/JsonSendable;->getBodyAsJson()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "lastReadTime"

    iget-wide v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$8;->val$timestamp:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_25} :catch_37

    .line 663
    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils$8;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/ClientFeedUtils;->access$100(Lmobisocial/omlib/client/ClientFeedUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v3, p0, Lmobisocial/omlib/client/ClientFeedUtils$8;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    invoke-virtual {v3}, Lmobisocial/omlib/db/entity/OMFeed;->getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lmobisocial/omlib/client/ClientMessagingUtils;->send(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/Sendable;)V

    .line 664
    return-void

    .line 660
    :catch_37
    move-exception v0

    .line 661
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Json exception"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
