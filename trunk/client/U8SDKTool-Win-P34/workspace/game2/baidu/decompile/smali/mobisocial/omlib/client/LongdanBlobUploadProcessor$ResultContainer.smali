.class Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;
.super Ljava/lang/Object;
.source "LongdanBlobUploadProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanBlobUploadProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultContainer"
.end annotation


# instance fields
.field exception:Lmobisocial/longdan/exception/LongdanException;

.field result:Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

.field final synthetic this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    .prologue
    .line 112
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$ResultContainer;->this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
