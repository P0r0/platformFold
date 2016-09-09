.class Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/platform/opensdk/pay/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    return-object v0
.end method


# virtual methods
.method public downloadFail()V
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$2(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$3;

    invoke-direct {v1, p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$3;-><init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$2(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$2;

    invoke-direct {v1, p0, p1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$2;-><init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method

.method public updateDownloadProgress(JJJ)V
    .registers 16

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mLastProgress:J
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)J

    move-result-wide v0

    cmp-long v0, v0, p5

    if-nez v0, :cond_b

    .line 144
    :goto_a
    return-void

    .line 132
    :cond_b
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-static {v0, p5, p6}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$1(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;J)V

    .line 133
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$2(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;-><init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;JJJ)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method
