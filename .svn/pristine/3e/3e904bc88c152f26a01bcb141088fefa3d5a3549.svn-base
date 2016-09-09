.class Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler$1;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->onResponse(Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;

.field final synthetic val$response:Lmobisocial/longdan/LDProtocols$LDAccountDetails;

.field final synthetic val$responseContainer:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;Lmobisocial/longdan/LDProtocols$LDAccountDetails;)V
    .registers 4
    .param p1, "this$1"    # Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;

    .prologue
    .line 412
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler$1;->val$responseContainer:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler$1;->val$response:Lmobisocial/longdan/LDProtocols$LDAccountDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 416
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler$1;->val$responseContainer:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    # invokes: Lmobisocial/omlib/client/ClientAuthUtils;->applyAccountDetails(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)Lmobisocial/omlib/db/entity/OMDevice;
    invoke-static {v1, p1, p2, v2}, Lmobisocial/omlib/client/ClientAuthUtils;->access$000(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)Lmobisocial/omlib/db/entity/OMDevice;

    move-result-object v0

    .line 417
    .local v0, "device":Lmobisocial/omlib/db/entity/OMDevice;
    new-instance v1, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler$1$1;

    invoke-direct {v1, p0, v0}, Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler$1$1;-><init>(Lmobisocial/omlib/client/ClientAuthUtils$AuthenticationCompletionHandler$1;Lmobisocial/omlib/db/entity/OMDevice;)V

    invoke-interface {p2, v1}, Lmobisocial/omlib/db/PostCommit;->add(Ljava/lang/Runnable;)V

    .line 427
    return-void
.end method
