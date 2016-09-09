.class Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->updateDownloadProgress(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

.field private final synthetic val$currentSize:J

.field private final synthetic val$progress:J

.field private final synthetic val$totalSize:J


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;JJJ)V
    .registers 8

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

    iput-wide p2, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->val$currentSize:J

    iput-wide p4, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->val$totalSize:J

    iput-wide p6, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->val$progress:J

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/32 v6, 0x100000

    const/4 v4, 0x2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->val$currentSize:J

    invoke-static {v2, v3, v6, v7, v4}, Lcom/nearme/platform/opensdk/pay/download/util/FloatDivUtil;->div(JJI)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->val$totalSize:J

    invoke-static {v2, v3, v6, v7, v4}, Lcom/nearme/platform/opensdk/pay/download/util/FloatDivUtil;->div(JJI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;
    invoke-static {v2}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    move-result-object v2

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;
    invoke-static {v2}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$3(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setPercent(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    move-result-object v0

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$3(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    move-result-object v0

    iget-wide v2, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->val$progress:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setProgress(I)V

    .line 141
    return-void
.end method
