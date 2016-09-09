.class Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$1;
.super Ljava/lang/Object;
.source "LongdanBlobDownloadProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->postBlobDownloaded(Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;[BLjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

.field final synthetic val$blobHash:[B

.field final synthetic val$listener:Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;

.field final synthetic val$path:Ljava/io/File;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;[BLjava/io/File;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    .prologue
    .line 199
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$1;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$1;->val$listener:Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;

    iput-object p3, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$1;->val$blobHash:[B

    iput-object p4, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$1;->val$path:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 203
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$1;->val$listener:Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;

    if-eqz v0, :cond_d

    .line 204
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$1;->val$listener:Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$1;->val$blobHash:[B

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$1;->val$path:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;->onBlobDownloaded([BLjava/io/File;)V

    .line 206
    :cond_d
    return-void
.end method
