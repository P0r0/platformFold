.class Lcom/duoku/platform/download/utils/PackageHelper$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->restartDownload(Lcom/duoku/platform/download/listener/DownloadCallback;[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1175
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 1179
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForFailedDownload()V

    .line 1180
    return-void
.end method
