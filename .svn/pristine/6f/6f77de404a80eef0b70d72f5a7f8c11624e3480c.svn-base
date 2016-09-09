.class Lmobisocial/omlib/client/ClientAuthUtils$2;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils;->unlinkIdentity(Lmobisocial/omlib/model/RawIdentity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientAuthUtils;

.field final synthetic val$identity:Lmobisocial/omlib/model/RawIdentity;

.field final synthetic val$resp:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/model/RawIdentity;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAuthUtils;

    .prologue
    .line 132
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$2;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$2;->val$identity:Lmobisocial/omlib/model/RawIdentity;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientAuthUtils$2;->val$resp:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 136
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2b

    .line 137
    const-string v0, "Omlib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlinking identity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils$2;->val$identity:Lmobisocial/omlib/model/RawIdentity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", account details "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils$2;->val$resp:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_2b
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$2;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$2;->val$resp:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    # invokes: Lmobisocial/omlib/client/ClientAuthUtils;->applyAccountDetails(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)Lmobisocial/omlib/db/entity/OMDevice;
    invoke-static {v0, p1, p2, v1}, Lmobisocial/omlib/client/ClientAuthUtils;->access$000(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)Lmobisocial/omlib/db/entity/OMDevice;

    .line 139
    return-void
.end method
