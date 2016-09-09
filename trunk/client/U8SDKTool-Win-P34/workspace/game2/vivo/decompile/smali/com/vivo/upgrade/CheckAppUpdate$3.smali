.class Lcom/vivo/upgrade/CheckAppUpdate$3;
.super Ljava/lang/Object;
.source "CheckAppUpdate.java"

# interfaces
.implements Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/upgrade/CheckAppUpdate;->checkAppUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/upgrade/CheckAppUpdate;


# direct methods
.method constructor <init>(Lcom/vivo/upgrade/CheckAppUpdate;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vivo/upgrade/CheckAppUpdate$3;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ZLjava/lang/String;I)V
    .registers 7
    .param p1, "isCancel"    # Z
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "connStatus"    # I

    .prologue
    const/16 v1, 0xce

    .line 147
    const/16 v0, 0x12c

    if-eq p3, v0, :cond_24

    .line 148
    if-eq p3, v1, :cond_24

    .line 150
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$3;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$22(Lcom/vivo/upgrade/CheckAppUpdate;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$3;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mTaskCallBack:Lcom/vivo/upgrade/TaskCallBack;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$15(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/TaskCallBack;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 151
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$3;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mTaskCallBack:Lcom/vivo/upgrade/TaskCallBack;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$15(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/TaskCallBack;

    move-result-object v0

    .line 152
    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lcom/vivo/upgrade/TaskCallBack;->onPublishProgress(I)V

    .line 177
    :cond_23
    :goto_23
    return-void

    .line 158
    :cond_24
    if-ne p3, v1, :cond_42

    .line 160
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$3;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$22(Lcom/vivo/upgrade/CheckAppUpdate;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$3;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mTaskCallBack:Lcom/vivo/upgrade/TaskCallBack;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$15(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/TaskCallBack;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 161
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$3;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mTaskCallBack:Lcom/vivo/upgrade/TaskCallBack;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$15(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/TaskCallBack;

    move-result-object v0

    .line 162
    const/16 v1, 0x1f4

    invoke-interface {v0, v1}, Lcom/vivo/upgrade/TaskCallBack;->onPublishProgress(I)V

    goto :goto_23

    .line 168
    :cond_42
    const-string v0, "Upgrade.CheckAppUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkAppUpdate: connStatus = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    const-string v2, " in = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 172
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$3;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    new-instance v0, Lcom/vivo/upgrade/AppUpdateJsonParser;

    invoke-direct {v0}, Lcom/vivo/upgrade/AppUpdateJsonParser;-><init>()V

    .line 173
    invoke-virtual {v0, p2}, Lcom/vivo/upgrade/AppUpdateJsonParser;->parseData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/upgrade/AppUpdateInfo;

    .line 172
    invoke-static {v1, v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$23(Lcom/vivo/upgrade/CheckAppUpdate;Lcom/vivo/upgrade/AppUpdateInfo;)V

    goto :goto_23

    .line 175
    :cond_77
    const-string v0, "Upgrade.CheckAppUpdate"

    const-string v1, "the in is null"

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method
