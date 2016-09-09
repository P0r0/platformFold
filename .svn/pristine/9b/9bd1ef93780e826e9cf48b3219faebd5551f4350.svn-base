.class Lmobisocial/omlib/client/ClientBlobUtils$1;
.super Ljava/lang/Object;
.source "ClientBlobUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientBlobUtils;->getBlobForLink(Ljava/lang/String;ZLmobisocial/omlib/interfaces/BlobDownloadListener;Landroid/os/CancellationSignal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientBlobUtils;

.field final synthetic val$blobHash:[B

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$frontOfQueue:Z

.field final synthetic val$link:Ljava/lang/String;

.field final synthetic val$listener:Lmobisocial/omlib/interfaces/BlobDownloadListener;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientBlobUtils;[BLjava/lang/String;ZLmobisocial/omlib/interfaces/BlobDownloadListener;Landroid/os/CancellationSignal;)V
    .registers 7
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientBlobUtils;

    .prologue
    .line 77
    iput-object p1, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->this$0:Lmobisocial/omlib/client/ClientBlobUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->val$blobHash:[B

    iput-object p3, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->val$link:Ljava/lang/String;

    iput-boolean p4, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->val$frontOfQueue:Z

    iput-object p5, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->val$listener:Lmobisocial/omlib/interfaces/BlobDownloadListener;

    iput-object p6, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 16
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    const/4 v8, 0x0

    .line 81
    iget-object v0, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->this$0:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v1, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v4, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->val$blobHash:[B

    iget-object v5, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->val$link:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v9, v8

    move-object v10, v8

    move-object v11, v8

    move-object v12, v8

    invoke-virtual/range {v1 .. v12}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 82
    iget-object v0, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->this$0:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->val$blobHash:[B

    iget-boolean v2, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->val$frontOfQueue:Z

    iget-object v3, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->val$listener:Lmobisocial/omlib/interfaces/BlobDownloadListener;

    iget-object v4, p0, Lmobisocial/omlib/client/ClientBlobUtils$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0, v1, v2, v3, v4}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobForHash([BZLmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;Landroid/os/CancellationSignal;)V

    .line 83
    return-void
.end method
