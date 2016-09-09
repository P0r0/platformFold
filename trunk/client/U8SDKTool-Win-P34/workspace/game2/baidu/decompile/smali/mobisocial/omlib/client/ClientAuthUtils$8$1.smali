.class Lmobisocial/omlib/client/ClientAuthUtils$8$1;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/ClientAuthUtils$8;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils$8;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlib/client/ClientAuthUtils$8;

    .prologue
    .line 367
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$8$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 371
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$8$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$8;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientAuthUtils$8;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils$8$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$8;

    iget-object v2, v2, Lmobisocial/omlib/client/ClientAuthUtils$8;->val$response:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    # invokes: Lmobisocial/omlib/client/ClientAuthUtils;->applyAccountDetails(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)Lmobisocial/omlib/db/entity/OMDevice;
    invoke-static {v1, p1, p2, v2}, Lmobisocial/omlib/client/ClientAuthUtils;->access$000(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)Lmobisocial/omlib/db/entity/OMDevice;

    move-result-object v0

    .line 372
    .local v0, "device":Lmobisocial/omlib/db/entity/OMDevice;
    new-instance v1, Lmobisocial/omlib/client/ClientAuthUtils$8$1$1;

    invoke-direct {v1, p0, v0}, Lmobisocial/omlib/client/ClientAuthUtils$8$1$1;-><init>(Lmobisocial/omlib/client/ClientAuthUtils$8$1;Lmobisocial/omlib/db/entity/OMDevice;)V

    invoke-interface {p2, v1}, Lmobisocial/omlib/db/PostCommit;->add(Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method
