.class Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;
.super Ljava/lang/Object;
.source "FileUploadIntentService.java"

# interfaces
.implements Lmobisocial/omlib/interfaces/BlobUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoPartUploadListener"
.end annotation


# instance fields
.field failed:Z

.field mMaxProgress:I

.field mMinProgress:I

.field mUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;II)V
    .registers 6
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;
    .param p2, "upload"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    .param p3, "minProgress"    # I
    .param p4, "maxProgress"    # I

    .prologue
    .line 390
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->this$0:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->failed:Z

    .line 391
    iput-object p2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    .line 392
    iput p3, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mMinProgress:I

    .line 393
    iput p4, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mMaxProgress:I

    .line 394
    return-void
.end method


# virtual methods
.method public onPartUploaded(F)V
    .registers 6
    .param p1, "percentage"    # F

    .prologue
    .line 430
    iget v1, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mMaxProgress:I

    iget v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mMinProgress:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 431
    .local v0, "percentage_int":I
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    iget v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mMinProgress:I

    add-int/2addr v2, v0

    iput v2, v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->progress:I

    .line 432
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->this$0:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    # invokes: Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->sendStatusChanged(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    invoke-static {v1, v2}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->access$300(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    .line 433
    return-void
.end method

.method public onPermanentFailure(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 2
    .param p1, "exception"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 426
    return-void
.end method

.method public onRetryableError(Lmobisocial/longdan/exception/LongdanNetworkException;)Z
    .registers 7
    .param p1, "exception"    # Lmobisocial/longdan/exception/LongdanNetworkException;

    .prologue
    const/4 v2, 0x1

    .line 399
    iget-boolean v3, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->failed:Z

    if-nez v3, :cond_f

    .line 400
    const-string v3, "VideoUploader"

    const-string v4, "Failed uploading once, retrying"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->failed:Z

    .line 420
    :goto_e
    return v2

    .line 404
    :cond_f
    const-string v2, "VideoUploader"

    const-string v3, "Failed uploading more than once. Blocking..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->this$0:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    invoke-direct {v1, v2}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;-><init>(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;)V

    .line 406
    .local v1, "rr":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    iput-object v1, v2, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->retryResult:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;

    .line 407
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->RetryableFailure:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    iput-object v3, v2, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    .line 408
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    iput-object p1, v2, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultFailure:Ljava/lang/Throwable;

    .line 409
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->this$0:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    # invokes: Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->sendStatusChanged(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->access$300(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    .line 411
    :try_start_32
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->retryResult:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;->await()V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_39} :catch_52

    .line 415
    :goto_39
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    const/4 v3, 0x0

    iput-object v3, v2, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultFailure:Ljava/lang/Throwable;

    .line 416
    iget-boolean v2, v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;->retry:Z

    if-eqz v2, :cond_4f

    .line 417
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Uploading:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    iput-object v3, v2, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    .line 418
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->this$0:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$VideoPartUploadListener;->mUpload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    # invokes: Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->sendStatusChanged(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->access$300(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    .line 420
    :cond_4f
    iget-boolean v2, v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;->retry:Z

    goto :goto_e

    .line 412
    :catch_52
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "VideoUploader"

    const-string v3, "Interrupted while waiting for retry result"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method
