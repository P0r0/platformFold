.class Lmobisocial/omlib/service/OmlibService$14;
.super Ljava/lang/Object;
.source "OmlibService.java"

# interfaces
.implements Lmobisocial/omlib/api/OmletBlobApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/OmlibService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/service/OmlibService;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 712
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$14;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlobForHash([BZLandroid/os/CancellationSignal;)Ljava/io/File;
    .registers 13
    .param p1, "blobHash"    # [B
    .param p2, "frontOfQueue"    # Z
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 733
    :try_start_0
    iget-object v7, p0, Lmobisocial/omlib/service/OmlibService$14;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-static {v7}, Lmobisocial/omlib/service/LongdanClientHelper;->getInstance(Landroid/content/Context;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    .line 734
    .local v0, "client":Lmobisocial/omlib/client/LongdanClient;
    iget-object v7, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v7, p1}, Lmobisocial/omlib/client/ClientBlobUtils;->getStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v3

    .line 735
    .local v3, "localBlob":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 745
    .end local v3    # "localBlob":Ljava/io/File;
    :goto_12
    return-object v3

    .line 738
    .restart local v3    # "localBlob":Ljava/io/File;
    :cond_13
    iget-object v7, p0, Lmobisocial/omlib/service/OmlibService$14;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-static {v7, p1}, Lmobisocial/omlib/model/OmletModel$Blobs;->uriForBlob(Landroid/content/Context;[B)Landroid/net/Uri;

    move-result-object v6

    .line 739
    .local v6, "uri":Landroid/net/Uri;
    const-string v7, "true"

    const-string v8, "localOnly"

    invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 740
    new-instance v7, Ljava/io/FileNotFoundException;

    const-string v8, "Blob not available locally and localOnly requested."

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_2f} :catch_2f
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_2f} :catch_56

    .line 746
    .end local v0    # "client":Lmobisocial/omlib/client/LongdanClient;
    .end local v3    # "localBlob":Ljava/io/File;
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_2f
    move-exception v1

    .line 747
    .local v1, "e":Ljava/io/FileNotFoundException;
    throw v1

    .line 742
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "client":Lmobisocial/omlib/client/LongdanClient;
    .restart local v3    # "localBlob":Ljava/io/File;
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_31
    :try_start_31
    const-string v7, "timeout"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, "timeoutParam":Ljava/lang/String;
    if-eqz v5, :cond_53

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_53

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 744
    .local v4, "timeout":Ljava/lang/Integer;
    iget-object v7, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, p1, p2, v8, p3}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobForHashAndWait([BZILandroid/os/CancellationSignal;)Ljava/io/File;
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_50} :catch_2f
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_31 .. :try_end_50} :catch_56

    move-result-object v2

    .local v2, "file":Ljava/io/File;
    move-object v3, v2

    .line 745
    goto :goto_12

    .line 743
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "timeout":Ljava/lang/Integer;
    :cond_53
    const/16 v7, 0x28

    goto :goto_43

    .line 748
    .end local v0    # "client":Lmobisocial/omlib/client/LongdanClient;
    .end local v3    # "localBlob":Ljava/io/File;
    .end local v5    # "timeoutParam":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_56
    move-exception v1

    .line 749
    .local v1, "e":Lmobisocial/longdan/exception/LongdanException;
    const-string v7, "OmlibService"

    const-string v8, "Failed to fetch blob"

    invoke-static {v7, v8, v1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 750
    new-instance v7, Lmobisocial/omlib/exception/NetworkException;

    invoke-direct {v7, v1}, Lmobisocial/omlib/exception/NetworkException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public getBlobForHash([BZLmobisocial/omlib/interfaces/BlobDownloadListener;Landroid/os/CancellationSignal;)V
    .registers 7
    .param p1, "blobHash"    # [B
    .param p2, "frontOfQueue"    # Z
    .param p3, "listener"    # Lmobisocial/omlib/interfaces/BlobDownloadListener;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 726
    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$14;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-static {v1}, Lmobisocial/omlib/service/LongdanClientHelper;->getInstance(Landroid/content/Context;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    .line 727
    .local v0, "client":Lmobisocial/omlib/client/LongdanClient;
    iget-object v1, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v1, p1, p2, p3, p4}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobForHash([BZLmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;Landroid/os/CancellationSignal;)V

    .line 728
    return-void
.end method

.method public uploadBlobWithProgress(Ljava/io/File;Lmobisocial/omlib/interfaces/BlobUploadListener;Ljava/lang/String;Landroid/os/CancellationSignal;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    .registers 13
    .param p1, "blob"    # Ljava/io/File;
    .param p2, "handler"    # Lmobisocial/omlib/interfaces/BlobUploadListener;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    :try_start_0
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$14;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmobisocial/omlib/client/ClientBlobUtils;->uploadBlobWithProgress(Ljava/io/File;Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/BlobUploadListener;Ljava/lang/String;Landroid/os/CancellationSignal;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v6

    .line 718
    .local v6, "blobUploadRecord":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    return-object v6

    .line 719
    .end local v6    # "blobUploadRecord":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    :catch_12
    move-exception v7

    .line 720
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
