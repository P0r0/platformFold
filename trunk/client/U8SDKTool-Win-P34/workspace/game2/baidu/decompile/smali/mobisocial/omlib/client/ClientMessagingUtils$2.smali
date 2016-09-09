.class Lmobisocial/omlib/client/ClientMessagingUtils$2;
.super Ljava/lang/Object;
.source "ClientMessagingUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientMessagingUtils;->sendableForTypedDictionary(Ljava/lang/String;Lorg/json/JSONObject;)Lmobisocial/omlib/interfaces/Sendable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

.field final synthetic val$blobHash:[B

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils;[BLjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientMessagingUtils;

    .prologue
    .line 569
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$2;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$2;->val$blobHash:[B

    iput-object p3, p0, Lmobisocial/omlib/client/ClientMessagingUtils$2;->val$imageUrl:Ljava/lang/String;

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

    .line 573
    iget-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$2;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    # getter for: Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v0}, Lmobisocial/omlib/client/ClientMessagingUtils;->access$000(Lmobisocial/omlib/client/ClientMessagingUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v1, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v4, p0, Lmobisocial/omlib/client/ClientMessagingUtils$2;->val$blobHash:[B

    iget-object v5, p0, Lmobisocial/omlib/client/ClientMessagingUtils$2;->val$imageUrl:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v9, v8

    move-object v10, v8

    move-object v11, v8

    move-object v12, v8

    invoke-virtual/range {v1 .. v12}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 574
    iget-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$2;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    # getter for: Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v0}, Lmobisocial/omlib/client/ClientMessagingUtils;->access$000(Lmobisocial/omlib/client/ClientMessagingUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$2;->val$blobHash:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v8, v8}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobForHash([BZLmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;Landroid/os/CancellationSignal;)V

    .line 575
    return-void
.end method
