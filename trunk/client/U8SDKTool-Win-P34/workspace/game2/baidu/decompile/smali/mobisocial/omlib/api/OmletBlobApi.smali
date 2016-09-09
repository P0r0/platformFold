.class public interface abstract Lmobisocial/omlib/api/OmletBlobApi;
.super Ljava/lang/Object;
.source "OmletBlobApi.java"


# virtual methods
.method public abstract getBlobForHash([BZLandroid/os/CancellationSignal;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation
.end method

.method public abstract getBlobForHash([BZLmobisocial/omlib/interfaces/BlobDownloadListener;Landroid/os/CancellationSignal;)V
.end method

.method public abstract uploadBlobWithProgress(Ljava/io/File;Lmobisocial/omlib/interfaces/BlobUploadListener;Ljava/lang/String;Landroid/os/CancellationSignal;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
