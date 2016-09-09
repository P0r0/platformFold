.class Lcom/duoku/platform/download/utils/PackageHelper$22;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->restartDownload(Ljava/lang/String;Lcom/duoku/platform/download/listener/DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1163
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 1167
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForFailedDownload()V

    .line 1168
    return-void
.end method
