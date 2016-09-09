.class Lmobisocial/omlib/client/ClientAuthUtils$8;
.super Ljava/lang/Thread;
.source "ClientAuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils;->acceptAuthDetails(Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientAuthUtils;

.field final synthetic val$latch:[Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$response:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;[Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAuthUtils;

    .prologue
    .line 363
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$8;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$8;->val$response:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientAuthUtils$8;->val$latch:[Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 367
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$8;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientAuthUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v1, Lmobisocial/omlib/client/ClientAuthUtils$8$1;

    invoke-direct {v1, p0}, Lmobisocial/omlib/client/ClientAuthUtils$8$1;-><init>(Lmobisocial/omlib/client/ClientAuthUtils$8;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 383
    return-void
.end method
