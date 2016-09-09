.class Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$7;
.super Ljava/lang/Object;
.source "LongdanBlobDownloadProcessor.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->downloadBlobFromSources(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/util/Collection;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

.field final synthetic val$src:Lmobisocial/omlib/db/entity/OMBlobSource;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Lmobisocial/omlib/db/entity/OMBlobSource;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    .prologue
    .line 492
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$7;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$7;->val$src:Lmobisocial/omlib/db/entity/OMBlobSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 496
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$7;->val$src:Lmobisocial/omlib/db/entity/OMBlobSource;

    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObject(Lmobisocial/omlib/db/util/OMBase;)Z

    .line 497
    return-void
.end method
