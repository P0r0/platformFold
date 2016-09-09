.class public Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;
.super Landroid/media/MediaScannerConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyMediaScannerConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoku/platform/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/download/DownloadService;Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V
    .registers 4

    .prologue
    .line 165
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    .line 166
    invoke-direct {p0, p2, p3}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 167
    return-void
.end method


# virtual methods
.method public disconnectMediaScanner()V
    .registers 6

    .prologue
    .line 227
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    monitor-enter v1

    .line 229
    :try_start_3
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/duoku/platform/download/DownloadService;->access$1(Lcom/duoku/platform/download/DownloadService;Z)V

    .line 230
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    # getter for: Lcom/duoku/platform/download/DownloadService;->mMediaScannerService:Ljava/lang/Object;
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadService;->access$3(Lcom/duoku/platform/download/DownloadService;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 232
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/duoku/platform/download/DownloadService;->access$2(Lcom/duoku/platform/download/DownloadService;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_3c

    .line 240
    :try_start_17
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1a} :catch_21
    .catchall {:try_start_17 .. :try_end_1a} :catchall_3f

    .line 250
    :try_start_1a
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 227
    :cond_1f
    :goto_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_3c

    .line 254
    return-void

    .line 242
    :catch_21
    move-exception v0

    .line 244
    :try_start_22
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unbindService failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_3f

    .line 250
    :try_start_36
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1f

    .line 227
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3c

    throw v0

    .line 247
    :catchall_3f
    move-exception v0

    .line 250
    :try_start_40
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 251
    throw v0
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_3c
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Landroid/media/MediaScannerConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 178
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    monitor-enter v1

    .line 182
    :try_start_6
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/duoku/platform/download/DownloadService;->access$1(Lcom/duoku/platform/download/DownloadService;Z)V

    .line 183
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    invoke-static {v0, p0}, Lcom/duoku/platform/download/DownloadService;->access$2(Lcom/duoku/platform/download/DownloadService;Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    # getter for: Lcom/duoku/platform/download/DownloadService;->mMediaScannerService:Ljava/lang/Object;
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadService;->access$3(Lcom/duoku/platform/download/DownloadService;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 186
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    # invokes: Lcom/duoku/platform/download/DownloadService;->updateFromProvider()V
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadService;->access$0(Lcom/duoku/platform/download/DownloadService;)V
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_25

    .line 193
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 178
    monitor-exit v1

    .line 196
    return-void

    .line 190
    :catchall_25
    move-exception v0

    .line 193
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 194
    throw v0

    .line 178
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/media/MediaScannerConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 212
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    monitor-enter v1

    .line 214
    :try_start_6
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/duoku/platform/download/DownloadService;->access$2(Lcom/duoku/platform/download/DownloadService;Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/duoku/platform/download/DownloadService;->access$1(Lcom/duoku/platform/download/DownloadService;Z)V

    .line 217
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->this$0:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 212
    monitor-exit v1

    .line 220
    return-void

    .line 212
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v0
.end method
