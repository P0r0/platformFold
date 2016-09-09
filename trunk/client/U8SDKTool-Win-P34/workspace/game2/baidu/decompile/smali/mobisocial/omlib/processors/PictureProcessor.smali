.class public Lmobisocial/omlib/processors/PictureProcessor;
.super Lmobisocial/omlib/processors/ChatObjectProcessor;
.source "PictureProcessor.java"


# instance fields
.field final THREE_DAYS:J

.field final mBlobDownloadListener:Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Lmobisocial/omlib/processors/ChatObjectProcessor;-><init>()V

    .line 17
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lmobisocial/omlib/processors/PictureProcessor;->THREE_DAYS:J

    .line 28
    new-instance v0, Lmobisocial/omlib/processors/PictureProcessor$1;

    invoke-direct {v0, p0}, Lmobisocial/omlib/processors/PictureProcessor$1;-><init>(Lmobisocial/omlib/processors/PictureProcessor;)V

    iput-object v0, p0, Lmobisocial/omlib/processors/PictureProcessor;->mBlobDownloadListener:Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;

    return-void
.end method


# virtual methods
.method protected processObject(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/entity/OMObject;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;)Z
    .registers 12
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "obj"    # Lmobisocial/omlib/db/entity/OMObject;
    .param p4, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;
    .param p5, "sender"    # Lmobisocial/omlib/db/entity/OMAccount;
    .param p6, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;

    .prologue
    .line 21
    iget-object v0, p3, Lmobisocial/omlib/db/entity/OMObject;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    .line 22
    const-string v0, "Omlib-processor"

    const-string v1, "Downloading thumbnail..."

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p1, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v1, p3, Lmobisocial/omlib/db/entity/OMObject;->thumbnailHash:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lmobisocial/omlib/processors/PictureProcessor;->mBlobDownloadListener:Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobForHash([BZLmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;Landroid/os/CancellationSignal;)V

    .line 25
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method
