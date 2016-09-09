.class Lmobisocial/omlib/client/ClientOobUtils$2;
.super Ljava/lang/Object;
.source "ClientOobUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientOobUtils;->setSmsAvailability(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientOobUtils;

.field final synthetic val$available:Z


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientOobUtils;Z)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientOobUtils;

    .prologue
    .line 196
    iput-object p1, p0, Lmobisocial/omlib/client/ClientOobUtils$2;->this$0:Lmobisocial/omlib/client/ClientOobUtils;

    iput-boolean p2, p0, Lmobisocial/omlib/client/ClientOobUtils$2;->val$available:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 8
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 200
    iget-object v2, p0, Lmobisocial/omlib/client/ClientOobUtils$2;->this$0:Lmobisocial/omlib/client/ClientOobUtils;

    # getter for: Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/ClientOobUtils;->access$000(Lmobisocial/omlib/client/ClientOobUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Util:Lmobisocial/omlib/client/ClientAppUtils;

    const-string v3, "sms_available"

    iget-boolean v4, p0, Lmobisocial/omlib/client/ClientOobUtils$2;->val$available:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, p1, p2, v3, v4}, Lmobisocial/omlib/client/ClientAppUtils;->setSettingOnDbThread(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDSetSmsParticipationRequest;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDSetSmsParticipationRequest;-><init>()V

    .line 202
    .local v1, "req":Lmobisocial/longdan/LDProtocols$LDSetSmsParticipationRequest;
    iget-boolean v2, p0, Lmobisocial/omlib/client/ClientOobUtils$2;->val$available:Z

    if-nez v2, :cond_32

    const/4 v2, 0x1

    :goto_1d
    iput-boolean v2, v1, Lmobisocial/longdan/LDProtocols$LDSetSmsParticipationRequest;->OptOut:Z

    .line 203
    new-instance v0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    invoke-direct {v0, v1}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    .line 204
    .local v0, "job":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    iget-object v2, p0, Lmobisocial/omlib/client/ClientOobUtils$2;->this$0:Lmobisocial/omlib/client/ClientOobUtils;

    # getter for: Lmobisocial/omlib/client/ClientOobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/ClientOobUtils;->access$000(Lmobisocial/omlib/client/ClientOobUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 205
    return-void

    .line 202
    .end local v0    # "job":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    :cond_32
    const/4 v2, 0x0

    goto :goto_1d
.end method
