.class public Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;
.super Landroid/app/IntentService;
.source "FileUploadIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;,
        Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;,
        Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;,
        Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;
    }
.end annotation


# static fields
.field private static final ACTION_UPLOAD:Ljava/lang/String; = "omlet.glrecorder.UPLOAD_VIDEO"

.field private static final EXTRA_DESCRIPTION:Ljava/lang/String; = "Description"

.field private static final EXTRA_PATH:Ljava/lang/String; = "Path"

.field private static final EXTRA_PRIMARY_TAG:Ljava/lang/String; = "PrimaryTag"

.field private static final EXTRA_SECONDARY_TAGS:Ljava/lang/String; = "SecondaryTags"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "Title"

.field private static final EXTRA_UPLOAD_TYPE:Ljava/lang/String; = "Type"

.field private static final TAG:Ljava/lang/String; = "VideoUploader"

.field private static final UPLOAD_NOTIFICATION_ID:I = 0x10032421

.field public static final UPLOAD_STATUS_CHANGED:Ljava/lang/String; = "omlet.glrecorder.UPLOAD_STATUS_CHANGED"

.field static final UPLOAD_TYPE_GAME_CLIP:Ljava/lang/String; = "game_clip"

.field static final UPLOAD_TYPE_GAME_SCREENSHOT:Ljava/lang/String; = "game_shot"

.field private static pending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCurrentUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

.field mNotificationBuilder:Landroid/app/Notification$Builder;

.field mNotificationProgress:I

.field mNotifiedStatus:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

.field mNotifyManager:Landroid/app/NotificationManager;

.field private omletHelper:Lmobisocial/omlib/api/OmletApiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 138
    const-string v0, "VideoUploader"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlib/api/OmletApi;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;
    .param p1, "x1"    # Lmobisocial/omlib/api/OmletApi;
    .param p2, "x2"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/ypresto/qtfaststart/QtFastStart$MalformedFileException;,
            Lnet/ypresto/qtfaststart/QtFastStart$UnsupportedFileException;,
            Ljava/io/IOException;,
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->doVideoUpload(Lmobisocial/omlib/api/OmletApi;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    return-void
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlib/api/OmletApi;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;
    .param p1, "x1"    # Lmobisocial/omlib/api/OmletApi;
    .param p2, "x2"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->doScreenshotUpload(Lmobisocial/omlib/api/OmletApi;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    return-void
.end method

.method static synthetic access$300(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;
    .param p1, "x1"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->sendStatusChanged(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    return-void
.end method

.method public static cancel(Ljava/lang/String;)V
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 466
    sget-object v2, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    monitor-enter v2

    .line 467
    :try_start_3
    sget-object v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    .line 468
    .local v0, "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    if-nez v0, :cond_f

    .line 469
    monitor-exit v2

    .line 473
    :goto_e
    return-void

    .line 470
    :cond_f
    iget-object v1, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Queued:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-eq v1, v3, :cond_1b

    iget-object v1, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Uploading:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-ne v1, v3, :cond_20

    .line 471
    :cond_1b
    iget-object v1, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->cancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 472
    :cond_20
    monitor-exit v2

    goto :goto_e

    .end local v0    # "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public static clearStatus(Ljava/lang/String;)V
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 452
    sget-object v2, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    monitor-enter v2

    .line 453
    :try_start_3
    sget-object v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    .line 454
    .local v0, "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    if-nez v0, :cond_f

    .line 455
    monitor-exit v2

    .line 463
    :goto_e
    return-void

    .line 456
    :cond_f
    iget-object v1, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->RetryableFailure:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-ne v1, v3, :cond_25

    .line 457
    iget-object v1, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->retryResult:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;->trySetResult(Z)Z

    .line 458
    sget-object v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_20
    :goto_20
    monitor-exit v2

    goto :goto_e

    .end local v0    # "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1

    .line 459
    .restart local v0    # "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    :cond_25
    :try_start_25
    iget-object v1, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Cancelled:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-eq v1, v3, :cond_37

    iget-object v1, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Completed:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-eq v1, v3, :cond_37

    iget-object v1, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Failed:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-ne v1, v3, :cond_20

    .line 460
    :cond_37
    sget-object v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_22

    goto :goto_20
.end method

.method private doScreenshotUpload(Lmobisocial/omlib/api/OmletApi;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    .registers 30
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;
    .param p2, "upload"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 293
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p2

    iget-object v4, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->path:Ljava/lang/String;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v14, "f":Ljava/io/File;
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const/16 v5, 0x21c

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lmobisocial/util/DroidPlatformImage;->getResizedImage(Landroid/content/Context;Landroid/net/Uri;I)Lmobisocial/util/DroidPlatformImage$ImageReference;

    move-result-object v25

    .line 295
    .local v25, "thumbnail":Lmobisocial/util/DroidPlatformImage$ImageReference;
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 296
    .local v16, "fullLength":J
    move-object/from16 v0, v25

    iget-object v4, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 297
    .local v22, "thumbLength":J
    const/high16 v4, 0x42c80000    # 100.0f

    move-wide/from16 v0, v16

    long-to-float v5, v0

    mul-float/2addr v4, v5

    move-wide/from16 v0, v16

    long-to-float v5, v0

    move-wide/from16 v0, v22

    long-to-float v6, v0

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v15, v4

    .line 298
    .local v15, "fullPercent":I
    new-instance v18, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v15}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;-><init>(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;II)V

    .line 299
    .local v18, "handler":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;
    new-instance v26, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;

    const/16 v4, 0x63

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v4}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;-><init>(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;II)V

    .line 300
    .local v26, "thumbnailHandler":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;
    move-object/from16 v0, p2

    iget-object v4, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->path:Ljava/lang/String;

    invoke-static {v4}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->getImageSize(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    move-result-object v21

    .line 301
    .local v21, "size":Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    invoke-interface/range {p1 .. p1}, Lmobisocial/omlib/api/OmletApi;->blobs()Lmobisocial/omlib/api/OmletBlobApi;

    move-result-object v4

    const-string v5, "image/png"

    move-object/from16 v0, p2

    iget-object v6, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->cancellation:Landroid/os/CancellationSignal;

    move-object/from16 v0, v18

    invoke-interface {v4, v14, v0, v5, v6}, Lmobisocial/omlib/api/OmletBlobApi;->uploadBlobWithProgress(Ljava/io/File;Lmobisocial/omlib/interfaces/BlobUploadListener;Ljava/lang/String;Landroid/os/CancellationSignal;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    move-result-object v20

    .line 302
    .local v20, "record":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    invoke-interface/range {p1 .. p1}, Lmobisocial/omlib/api/OmletApi;->blobs()Lmobisocial/omlib/api/OmletBlobApi;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lmobisocial/util/DroidPlatformImage$ImageReference;->file:Ljava/io/File;

    const-string v6, "image/png"

    move-object/from16 v0, p2

    iget-object v7, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->cancellation:Landroid/os/CancellationSignal;

    move-object/from16 v0, v26

    invoke-interface {v4, v5, v0, v6, v7}, Lmobisocial/omlib/api/OmletBlobApi;->uploadBlobWithProgress(Ljava/io/File;Lmobisocial/omlib/interfaces/BlobUploadListener;Ljava/lang/String;Landroid/os/CancellationSignal;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    move-result-object v24

    .line 303
    .local v24, "thumbRecord":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    move-object/from16 v0, p2

    iget-object v4, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->cancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 306
    const-wide/16 v4, 0x3e8

    :try_start_83
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_86
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_86} :catch_126

    .line 309
    :goto_86
    move-object/from16 v0, p2

    iget-object v4, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->cancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 310
    const/4 v13, 0x0

    .line 311
    .local v13, "reportMeta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "omp_config_flavor"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "baidu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 312
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getReportMetaMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v13

    :cond_ae
    move-object/from16 v4, p1

    .line 314
    check-cast v4, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v4}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    move-object/from16 v0, p2

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->title:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->description:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->primaryTag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    move-object/from16 v0, p2

    iget-object v10, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->secondaryTags:Ljava/util/List;

    move-object/from16 v0, v21

    iget v11, v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->width:I

    move-object/from16 v0, v21

    iget v12, v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->height:I

    invoke-virtual/range {v4 .. v13}, Lmobisocial/omlib/client/ClientGameUtils;->postScreenshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDPostTag;Ljava/util/List;IILjava/util/HashMap;)Lmobisocial/longdan/LDProtocols$LDAddPostResponse;

    move-result-object v19

    .line 315
    .local v19, "postScreenshotResponse":Lmobisocial/longdan/LDProtocols$LDAddPostResponse;
    move-object/from16 v0, v19

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDAddPostResponse;->ExternalShareLink:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v4, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultShareLink:Ljava/lang/String;

    .line 316
    move-object/from16 v0, p2

    iget-object v4, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultShareLink:Ljava/lang/String;

    if-eqz v4, :cond_f6

    move-object/from16 v0, p2

    iget-object v4, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultShareLink:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 317
    :cond_f6
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    move-object/from16 v0, v19

    iget-object v5, v0, Lmobisocial/longdan/LDProtocols$LDAddPostResponse;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    invoke-virtual {v4, v5}, Lmobisocial/omlib/client/ClientGameUtils;->getPost(Lmobisocial/longdan/LDProtocols$LDPostId;)Lmobisocial/longdan/LDProtocols$LDGetPostResponse;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDGetPostResponse;->Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDPostContainer;->ScreenShotPost:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->LinkUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v4, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultShareLink:Ljava/lang/String;

    .line 319
    :cond_110
    move-object/from16 v0, v19

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDAddPostResponse;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    move-object/from16 v0, p2

    iput-object v4, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultPostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    .line 320
    const/16 v4, 0x64

    move-object/from16 v0, p2

    iput v4, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->progress:I

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->sendStatusChanged(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    .line 322
    return-void

    .line 307
    .end local v13    # "reportMeta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "postScreenshotResponse":Lmobisocial/longdan/LDProtocols$LDAddPostResponse;
    .restart local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :catch_126
    move-exception v4

    goto/16 :goto_86
.end method

.method private doVideoUpload(Lmobisocial/omlib/api/OmletApi;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    .registers 40
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;
    .param p2, "upload"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/ypresto/qtfaststart/QtFastStart$MalformedFileException;,
            Lnet/ypresto/qtfaststart/QtFastStart$UnsupportedFileException;,
            Ljava/io/IOException;,
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 325
    move-object/from16 v0, p2

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->path:Ljava/lang/String;

    invoke-static {v5}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->getVideoSize(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    move-result-object v36

    .line 326
    .local v36, "videoSize":Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    move-object/from16 v0, p2

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->path:Ljava/lang/String;

    invoke-static {v5}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->getVideoDurationMs(Ljava/lang/String;)J

    move-result-wide v32

    .line 327
    .local v32, "videoDurationMs":J
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p2

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->path:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v19, "normal":Ljava/io/File;
    move-object/from16 v0, p2

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->streamableFileTime:Ljava/lang/Long;

    if-eqz v5, :cond_aa

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    move-object/from16 v0, p2

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->streamableFileTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_aa

    .line 329
    new-instance v22, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v6, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".streamable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v22, "streamable":Ljava/io/File;
    new-instance v23, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v6, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v23, "temp":Ljava/io/File;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lnet/ypresto/qtfaststart/QtFastStart;->fastStart(Ljava/io/File;Ljava/io/File;)Z

    move-result v18

    .line 332
    .local v18, "newStreamable":Z
    if-eqz v18, :cond_9e

    .line 333
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_89

    .line 334
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unable to move non-streamable file"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 335
    :cond_89
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_9b

    .line 336
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unable to move streamable file"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 337
    :cond_9b
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 339
    :cond_9e
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->streamableFileTime:Ljava/lang/Long;

    .line 341
    .end local v18    # "newStreamable":Z
    .end local v22    # "streamable":Ljava/io/File;
    .end local v23    # "temp":Ljava/io/File;
    :cond_aa
    new-instance v31, Ljava/io/File;

    move-object/from16 v0, p2

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->path:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v31, "video":Ljava/io/File;
    move-object/from16 v0, p2

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->path:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 344
    .local v24, "thumbnail":Landroid/graphics/Bitmap;
    const-string v5, "thumbnail"

    const-string v6, "jpg"

    invoke-static {v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v25

    .line 345
    .local v25, "thumbnailFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 346
    .local v4, "fout":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x55

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 347
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 348
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->length()J

    move-result-wide v34

    .line 350
    .local v34, "videoLength":J
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v28

    .line 351
    .local v28, "thumbnailLength":J
    const/high16 v5, 0x42c80000    # 100.0f

    move-wide/from16 v0, v28

    long-to-float v6, v0

    mul-float/2addr v5, v6

    add-long v6, v34, v28

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v27, v0

    .line 352
    .local v27, "thumbnailPercentage":I
    new-instance v26, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v5, v3}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;-><init>(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;II)V

    .line 353
    .local v26, "thumbnailHandler":Lmobisocial/omlib/interfaces/BlobUploadListener;
    new-instance v17, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;

    const/16 v5, 0x63

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v5}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;-><init>(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;II)V

    .line 355
    .local v17, "handler":Lmobisocial/omlib/interfaces/BlobUploadListener;
    invoke-interface/range {p1 .. p1}, Lmobisocial/omlib/api/OmletApi;->blobs()Lmobisocial/omlib/api/OmletBlobApi;

    move-result-object v5

    const-string v6, "image/png"

    move-object/from16 v0, p2

    iget-object v7, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->cancellation:Landroid/os/CancellationSignal;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v5, v0, v1, v6, v7}, Lmobisocial/omlib/api/OmletBlobApi;->uploadBlobWithProgress(Ljava/io/File;Lmobisocial/omlib/interfaces/BlobUploadListener;Ljava/lang/String;Landroid/os/CancellationSignal;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    move-result-object v30

    .line 356
    .local v30, "thumbnailRecord":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    invoke-interface/range {p1 .. p1}, Lmobisocial/omlib/api/OmletApi;->blobs()Lmobisocial/omlib/api/OmletBlobApi;

    move-result-object v5

    const-string v6, "video/mp4"

    move-object/from16 v0, p2

    iget-object v7, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->cancellation:Landroid/os/CancellationSignal;

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-interface {v5, v0, v1, v6, v7}, Lmobisocial/omlib/api/OmletBlobApi;->uploadBlobWithProgress(Ljava/io/File;Lmobisocial/omlib/interfaces/BlobUploadListener;Ljava/lang/String;Landroid/os/CancellationSignal;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    move-result-object v21

    .line 357
    .local v21, "record":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    move-object/from16 v0, p2

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->cancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v5}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 360
    const-wide/16 v6, 0x3e8

    :try_start_140
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_143
    .catch Ljava/lang/InterruptedException; {:try_start_140 .. :try_end_143} :catch_1ea

    .line 363
    :goto_143
    move-object/from16 v0, p2

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->cancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v5}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 365
    const/16 v16, 0x0

    .line 366
    .local v16, "reportMeta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "omp_config_flavor"

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "baidu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 367
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getReportMetaMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v16

    :cond_16c
    move-object/from16 v5, p1

    .line 369
    check-cast v5, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v5}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v5

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    move-object/from16 v0, p2

    iget-object v6, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->title:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->description:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v8, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v9, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v10, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->primaryTag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    move-object/from16 v0, p2

    iget-object v11, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->secondaryTags:Ljava/util/List;

    move-object/from16 v0, v36

    iget v12, v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->width:I

    move-object/from16 v0, v36

    iget v13, v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->height:I

    move-wide/from16 v0, v32

    long-to-double v14, v0

    invoke-virtual/range {v5 .. v16}, Lmobisocial/omlib/client/ClientGameUtils;->postVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDPostTag;Ljava/util/List;IIDLjava/util/HashMap;)Lmobisocial/longdan/LDProtocols$LDAddPostResponse;

    move-result-object v20

    .line 370
    .local v20, "postVideoResponse":Lmobisocial/longdan/LDProtocols$LDAddPostResponse;
    invoke-static/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->resetVideoRecovery(Landroid/content/Context;)V

    .line 371
    move-object/from16 v0, v20

    iget-object v5, v0, Lmobisocial/longdan/LDProtocols$LDAddPostResponse;->ExternalShareLink:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultShareLink:Ljava/lang/String;

    .line 372
    move-object/from16 v0, p2

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultShareLink:Ljava/lang/String;

    if-eqz v5, :cond_1ba

    move-object/from16 v0, p2

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultShareLink:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d4

    .line 373
    :cond_1ba
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual/range {p1 .. p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v5

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    move-object/from16 v0, v20

    iget-object v6, v0, Lmobisocial/longdan/LDProtocols$LDAddPostResponse;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    invoke-virtual {v5, v6}, Lmobisocial/omlib/client/ClientGameUtils;->getPost(Lmobisocial/longdan/LDProtocols$LDPostId;)Lmobisocial/longdan/LDProtocols$LDGetPostResponse;

    move-result-object v5

    iget-object v5, v5, Lmobisocial/longdan/LDProtocols$LDGetPostResponse;->Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;

    iget-object v5, v5, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v5, v5, Lmobisocial/longdan/LDProtocols$LDVideoPost;->LinkUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultShareLink:Ljava/lang/String;

    .line 375
    :cond_1d4
    move-object/from16 v0, v20

    iget-object v5, v0, Lmobisocial/longdan/LDProtocols$LDAddPostResponse;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    move-object/from16 v0, p2

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultPostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    .line 376
    const/16 v5, 0x64

    move-object/from16 v0, p2

    iput v5, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->progress:I

    .line 377
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->sendStatusChanged(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    .line 378
    return-void

    .line 361
    .end local v16    # "reportMeta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "postVideoResponse":Lmobisocial/longdan/LDProtocols$LDAddPostResponse;
    .restart local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :catch_1ea
    move-exception v5

    goto/16 :goto_143
.end method

.method public static getStatus(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 443
    sget-object v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    monitor-enter v1

    .line 444
    :try_start_3
    sget-object v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    monitor-exit v1

    return-object v0

    .line 445
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private getUploadNotification(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)Landroid/app/Notification;
    .registers 8
    .param p1, "upload"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    .prologue
    .line 215
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v2, :cond_3c

    .line 216
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "omp_upload_msg"

    invoke-static {p0, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x1080088

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 218
    :try_start_25
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 219
    .local v1, "icon":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_3c} :catch_4d

    .line 224
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_3c
    :goto_3c
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v3, 0x64

    iget v4, p1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->progress:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 225
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 220
    :catch_4d
    move-exception v0

    .line 221
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "VideoUploader"

    const-string v3, "Couldnt find own package..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method private sendStatusChanged(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    .registers 8
    .param p1, "upload"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    .prologue
    .line 229
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    .line 230
    .local v2, "status":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;
    iget v1, p1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->progress:I

    .line 231
    .local v1, "progress":I
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mCurrentUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    if-ne v3, p1, :cond_11

    .line 232
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mNotifiedStatus:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-ne v2, v3, :cond_11

    iget v3, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mNotificationProgress:I

    if-ne v1, v3, :cond_11

    .line 244
    :goto_10
    return-void

    .line 237
    :cond_11
    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Uploading:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-ne v2, v3, :cond_3a

    move-object v3, p1

    :goto_16
    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mCurrentUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    .line 238
    iput-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mNotifiedStatus:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    .line 239
    iput v1, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mNotificationProgress:I

    .line 240
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mNotifyManager:Landroid/app/NotificationManager;

    const v4, 0x10032421

    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getUploadNotification(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v3, "omlet.glrecorder.UPLOAD_STATUS_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_10

    .line 237
    .end local v0    # "i":Landroid/content/Intent;
    :cond_3a
    const/4 v3, 0x0

    goto :goto_16
.end method

.method private startGameVideoUpload(Landroid/content/Intent;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    const-string v10, "Type"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "type":Ljava/lang/String;
    const-string v10, "Path"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "path":Ljava/lang/String;
    const-string v10, "Title"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "title":Ljava/lang/String;
    const-string v10, "Description"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "description":Ljava/lang/String;
    const-string v10, "PrimaryTag"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "primaryTag":Ljava/lang/String;
    const-string v10, "SecondaryTags"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "secondaryTags":[Ljava/lang/String;
    sget-object v11, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    monitor-enter v11

    .line 171
    :try_start_27
    sget-object v10, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    .line 172
    .local v9, "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    if-nez v9, :cond_3b

    .line 173
    new-instance v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    .end local v9    # "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    invoke-direct {v9}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;-><init>()V

    .line 174
    .restart local v9    # "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    sget-object v10, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_3b
    iget-object v10, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-eqz v10, :cond_4b

    iget-object v10, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v12, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Cancelled:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-eq v10, v12, :cond_4b

    iget-object v10, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v12, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Failed:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-ne v10, v12, :cond_8b

    .line 179
    :cond_4b
    sget-object v10, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Queued:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    iput-object v10, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    .line 184
    iput-object v8, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->type:Ljava/lang/String;

    .line 185
    iput-object v1, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->path:Ljava/lang/String;

    .line 186
    iput-object v7, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->title:Ljava/lang/String;

    .line 187
    iput-object v0, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->description:Ljava/lang/String;

    .line 188
    new-instance v10, Lmobisocial/longdan/LDProtocols$LDPostTag;

    invoke-direct {v10}, Lmobisocial/longdan/LDProtocols$LDPostTag;-><init>()V

    iput-object v10, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->primaryTag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    .line 189
    iget-object v10, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->primaryTag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    const-string v12, "Game"

    iput-object v12, v10, Lmobisocial/longdan/LDProtocols$LDPostTag;->TagType:Ljava/lang/String;

    .line 190
    iget-object v10, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->primaryTag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    iput-object v2, v10, Lmobisocial/longdan/LDProtocols$LDPostTag;->Tag:Ljava/lang/String;

    .line 191
    if-eqz v4, :cond_a7

    .line 192
    new-instance v10, Ljava/util/ArrayList;

    array-length v12, v4

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->secondaryTags:Ljava/util/List;

    .line 193
    array-length v12, v4

    const/4 v10, 0x0

    :goto_74
    if-ge v10, v12, :cond_a7

    aget-object v3, v4, v10

    .line 194
    .local v3, "s":Ljava/lang/String;
    new-instance v6, Lmobisocial/longdan/LDProtocols$LDPostTag;

    invoke-direct {v6}, Lmobisocial/longdan/LDProtocols$LDPostTag;-><init>()V

    .line 195
    .local v6, "tag":Lmobisocial/longdan/LDProtocols$LDPostTag;
    const-string v13, "String"

    iput-object v13, v6, Lmobisocial/longdan/LDProtocols$LDPostTag;->TagType:Ljava/lang/String;

    .line 196
    iput-object v3, v6, Lmobisocial/longdan/LDProtocols$LDPostTag;->Tag:Ljava/lang/String;

    .line 197
    iget-object v13, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->secondaryTags:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v10, v10, 0x1

    goto :goto_74

    .line 181
    .end local v3    # "s":Ljava/lang/String;
    .end local v6    # "tag":Lmobisocial/longdan/LDProtocols$LDPostTag;
    :cond_8b
    const-string v10, "VideoUploader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "duplicate or concurrent upload request for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->path:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    monitor-exit v11

    .line 212
    :goto_a6
    return-void

    .line 200
    :cond_a7
    const/4 v10, 0x0

    iput-object v10, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultFailure:Ljava/lang/Throwable;

    .line 201
    const/4 v10, 0x0

    iput-object v10, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultPostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    .line 202
    const/4 v10, 0x0

    iput-object v10, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultShareLink:Ljava/lang/String;

    .line 203
    new-instance v10, Landroid/os/CancellationSignal;

    invoke-direct {v10}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v10, v9, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->cancellation:Landroid/os/CancellationSignal;

    .line 204
    monitor-exit v11
    :try_end_b8
    .catchall {:try_start_27 .. :try_end_b8} :catchall_cf

    .line 205
    invoke-direct {p0, v9}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->sendStatusChanged(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    .line 208
    const v10, 0x10032421

    :try_start_be
    invoke-direct {p0, v9}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getUploadNotification(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->startForeground(ILandroid/app/Notification;)V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_c5} :catch_c6

    goto :goto_a6

    .line 209
    :catch_c6
    move-exception v5

    .line 210
    .local v5, "t":Ljava/lang/Throwable;
    const-string v10, "VideoUploader"

    const-string v11, "unable to go high priority"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a6

    .line 204
    .end local v5    # "t":Ljava/lang/Throwable;
    .end local v9    # "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    :catchall_cf
    move-exception v10

    :try_start_d0
    monitor-exit v11
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw v10
.end method

.method public static uploadScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "primaryTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p5, "secondaryTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_a

    .line 496
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing upload path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_a
    if-nez p2, :cond_14

    .line 498
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing upload title"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :cond_14
    if-nez p4, :cond_1e

    .line 500
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing upload primary tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "Type"

    const-string v2, "game_shot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v1, "Path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string v1, "Title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    if-eqz p3, :cond_3d

    .line 506
    const-string v1, "Description"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    :cond_3d
    const-string v1, "PrimaryTag"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    if-eqz p5, :cond_55

    .line 509
    const-string v2, "SecondaryTags"

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    :cond_55
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 511
    return-void
.end method

.method public static uploadVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "primaryTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p5, "secondaryTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_a

    .line 477
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing upload path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 478
    :cond_a
    if-nez p2, :cond_14

    .line 479
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing upload title"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_14
    if-nez p4, :cond_1e

    .line 481
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing upload primary tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "Type"

    const-string v2, "game_clip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v1, "Path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string v1, "Title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    if-eqz p3, :cond_3d

    .line 487
    const-string v1, "Description"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    :cond_3d
    const-string v1, "PrimaryTag"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    if-eqz p5, :cond_55

    .line 490
    const-string v2, "SecondaryTags"

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    :cond_55
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 492
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 144
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->mNotifyManager:Landroid/app/NotificationManager;

    .line 145
    new-instance v0, Lmobisocial/omlib/api/OmletApiManager;

    invoke-direct {v0}, Lmobisocial/omlib/api/OmletApiManager;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->omletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 146
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->omletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v0, p0}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->omletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v0, p0}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 249
    sget-object v5, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    monitor-enter v5

    .line 250
    :try_start_3
    const-string v4, "Path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "path":Ljava/lang/String;
    sget-object v4, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->pending:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    .line 253
    .local v3, "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    if-eqz v3, :cond_19

    iget-object v4, v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v6, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Queued:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-eq v4, v6, :cond_1b

    .line 254
    :cond_19
    monitor-exit v5

    .line 290
    :goto_1a
    return-void

    .line 255
    :cond_1b
    sget-object v4, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Uploading:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    .line 256
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_45

    .line 257
    invoke-direct {p0, v3}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->sendStatusChanged(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    .line 259
    move-object v0, v3

    .line 260
    .local v0, "final_upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    :try_start_24
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->omletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v5, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$1;

    invoke-direct {v5, p0, v0}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$1;-><init>(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    invoke-virtual {v4, v5}, Lmobisocial/omlib/api/OmletApiManager;->runAndWait(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 278
    sget-object v4, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Completed:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    .line 279
    invoke-direct {p0, v3}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->sendStatusChanged(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_35} :catch_36

    goto :goto_1a

    .line 280
    :catch_36
    move-exception v2

    .line 281
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lmobisocial/util/PlatformUtils;->includesCancelledException(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 282
    sget-object v4, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Cancelled:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    .line 288
    :goto_41
    invoke-direct {p0, v3}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->sendStatusChanged(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    goto :goto_1a

    .line 256
    .end local v0    # "final_upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    :catchall_45
    move-exception v4

    :try_start_46
    monitor-exit v5
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v4

    .line 284
    .restart local v0    # "final_upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "t":Ljava/lang/Throwable;
    .restart local v3    # "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    :cond_48
    const-string v4, "VideoUploader"

    const-string v5, "Video upload failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    sget-object v4, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Failed:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    .line 286
    iput-object v2, v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultFailure:Ljava/lang/Throwable;

    goto :goto_41
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->startGameVideoUpload(Landroid/content/Intent;)V

    .line 158
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 159
    return-void
.end method
