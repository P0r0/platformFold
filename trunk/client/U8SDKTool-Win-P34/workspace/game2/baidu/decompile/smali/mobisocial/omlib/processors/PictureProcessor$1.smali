.class Lmobisocial/omlib/processors/PictureProcessor$1;
.super Ljava/lang/Object;
.source "PictureProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/processors/PictureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/processors/PictureProcessor;


# direct methods
.method constructor <init>(Lmobisocial/omlib/processors/PictureProcessor;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/processors/PictureProcessor;

    .prologue
    .line 28
    iput-object p1, p0, Lmobisocial/omlib/processors/PictureProcessor$1;->this$0:Lmobisocial/omlib/processors/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlobDownloaded([BLjava/io/File;)V
    .registers 6
    .param p1, "blobHash"    # [B
    .param p2, "image"    # Ljava/io/File;

    .prologue
    .line 32
    const-string v0, "Omlib-processor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloaded thumbnail to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onBlobFailed([BLmobisocial/longdan/exception/LongdanException;)V
    .registers 6
    .param p1, "blobHash"    # [B
    .param p2, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 37
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1d

    .line 38
    const-string v0, "Omlib-processor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blob download failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_1d
    return-void
.end method
