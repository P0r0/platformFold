.class Lcom/vivo/upgrade/CheckSystemUpdate$1;
.super Ljava/lang/Object;
.source "CheckSystemUpdate.java"

# interfaces
.implements Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/upgrade/CheckSystemUpdate;->checkSystemUpdate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/upgrade/CheckSystemUpdate;


# direct methods
.method constructor <init>(Lcom/vivo/upgrade/CheckSystemUpdate;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vivo/upgrade/CheckSystemUpdate$1;->this$0:Lcom/vivo/upgrade/CheckSystemUpdate;

    .line 51
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

    .line 56
    const/16 v0, 0x12c

    if-eq p3, v0, :cond_9

    .line 57
    if-eq p3, v1, :cond_9

    .line 71
    :cond_8
    :goto_8
    return-void

    .line 61
    :cond_9
    if-eq p3, v1, :cond_8

    .line 65
    const-string v0, "Upgrade.CheckSystemUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkSystemUpdate: connStatus = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz p2, :cond_33

    const-string v0, "no_record"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 70
    :cond_33
    iget-object v0, p0, Lcom/vivo/upgrade/CheckSystemUpdate$1;->this$0:Lcom/vivo/upgrade/CheckSystemUpdate;

    new-instance v1, Lcom/vivo/upgrade/SystemUpdateInfo;

    invoke-direct {v1, p2}, Lcom/vivo/upgrade/SystemUpdateInfo;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/vivo/upgrade/CheckSystemUpdate;->access$0(Lcom/vivo/upgrade/CheckSystemUpdate;Lcom/vivo/upgrade/SystemUpdateInfo;)V

    goto :goto_8
.end method
