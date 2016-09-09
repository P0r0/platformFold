.class Lmobisocial/omlib/processors/BlobRefProcessor$1;
.super Ljava/lang/Object;
.source "BlobRefProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/processors/BlobRefProcessor;->endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/processors/BlobRefProcessor;

.field final synthetic val$batch:Ljava/util/List;

.field final synthetic val$client:Lmobisocial/omlib/client/LongdanClient;


# direct methods
.method constructor <init>(Lmobisocial/omlib/processors/BlobRefProcessor;Lmobisocial/omlib/client/LongdanClient;Ljava/util/List;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/processors/BlobRefProcessor;

    .prologue
    .line 57
    iput-object p1, p0, Lmobisocial/omlib/processors/BlobRefProcessor$1;->this$0:Lmobisocial/omlib/processors/BlobRefProcessor;

    iput-object p2, p0, Lmobisocial/omlib/processors/BlobRefProcessor$1;->val$client:Lmobisocial/omlib/client/LongdanClient;

    iput-object p3, p0, Lmobisocial/omlib/processors/BlobRefProcessor$1;->val$batch:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lmobisocial/omlib/processors/BlobRefProcessor$1;->val$client:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getBlobDownloader()Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/processors/BlobRefProcessor$1;->val$batch:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->sourcesBecameAvailable(Ljava/util/Collection;)V

    .line 62
    return-void
.end method
