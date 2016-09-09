.class Lmobisocial/omlib/client/ClientMessagingUtils$3;
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

.field final synthetic val$sendable:Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils;Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientMessagingUtils;

    .prologue
    .line 606
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$3;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$3;->val$sendable:Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    const/4 v3, 0x0

    .line 610
    iget-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$3;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    # getter for: Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v0}, Lmobisocial/omlib/client/ClientMessagingUtils;->access$000(Lmobisocial/omlib/client/ClientMessagingUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$3;->val$sendable:Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->displayThumbnailHash:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobForHash([BZLmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;Landroid/os/CancellationSignal;)V

    .line 611
    return-void
.end method
