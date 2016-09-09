.class public Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
.super Ljava/lang/Object;
.source "FileUploadIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadProgress"
.end annotation


# instance fields
.field public cancellation:Landroid/os/CancellationSignal;

.field description:Ljava/lang/String;

.field path:Ljava/lang/String;

.field primaryTag:Lmobisocial/longdan/LDProtocols$LDPostTag;

.field public progress:I

.field public resultFailure:Ljava/lang/Throwable;

.field public resultPostId:Lmobisocial/longdan/LDProtocols$LDPostId;

.field public resultShareLink:Ljava/lang/String;

.field public retryResult:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;

.field secondaryTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostTag;",
            ">;"
        }
    .end annotation
.end field

.field public status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

.field streamableFileTime:Ljava/lang/Long;

.field title:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
