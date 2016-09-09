.class Lcom/duoku/platform/download/utils/PackageHelper$5;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->resumeDownload(Ljava/lang/String;Lcom/duoku/platform/download/listener/DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/duoku/platform/download/listener/DownloadCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/duoku/platform/download/listener/DownloadCallback;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$5;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/download/utils/PackageHelper$5;->b:Lcom/duoku/platform/download/listener/DownloadCallback;

    .line 1317
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$5;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$5;->b:Lcom/duoku/platform/download/listener/DownloadCallback;

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/PackageHelper;->doResume(Ljava/lang/String;Lcom/duoku/platform/download/listener/DownloadCallback;)V

    .line 1323
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V

    .line 1324
    return-void
.end method
