.class Lmobisocial/omlib/client/ClientAuthUtils$8$1$1;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils$8$1;->run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmobisocial/omlib/client/ClientAuthUtils$8$1;

.field final synthetic val$device:Lmobisocial/omlib/db/entity/OMDevice;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils$8$1;Lmobisocial/omlib/db/entity/OMDevice;)V
    .registers 3
    .param p1, "this$2"    # Lmobisocial/omlib/client/ClientAuthUtils$8$1;

    .prologue
    .line 372
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$8$1$1;->this$2:Lmobisocial/omlib/client/ClientAuthUtils$8$1;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$8$1$1;->val$device:Lmobisocial/omlib/db/entity/OMDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 376
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$8$1$1;->this$2:Lmobisocial/omlib/client/ClientAuthUtils$8$1;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientAuthUtils$8$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$8;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientAuthUtils$8;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$8$1$1;->this$2:Lmobisocial/omlib/client/ClientAuthUtils$8$1;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientAuthUtils$8$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$8;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientAuthUtils$8;->val$response:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;->AccountDetails:Lmobisocial/longdan/LDProtocols$LDAccountDetails;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDAccountDetails;->Account:Ljava/lang/String;

    # invokes: Lmobisocial/omlib/client/ClientAuthUtils;->setAccount(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lmobisocial/omlib/client/ClientAuthUtils;->access$100(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$8$1$1;->this$2:Lmobisocial/omlib/client/ClientAuthUtils$8$1;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientAuthUtils$8$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$8;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientAuthUtils$8;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$8$1$1;->val$device:Lmobisocial/omlib/db/entity/OMDevice;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->updateDeviceInfo(Lmobisocial/omlib/db/entity/OMDevice;)V

    .line 378
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$8$1$1;->this$2:Lmobisocial/omlib/client/ClientAuthUtils$8$1;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientAuthUtils$8$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$8;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientAuthUtils$8;->val$latch:[Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 379
    return-void
.end method
