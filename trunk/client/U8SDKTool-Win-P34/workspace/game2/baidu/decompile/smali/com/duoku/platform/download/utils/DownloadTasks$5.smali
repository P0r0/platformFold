.class Lcom/duoku/platform/download/utils/DownloadTasks$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/DownloadTasks;->checkSdcard()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/DownloadTasks;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/DownloadTasks;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/DownloadTasks$5;->a:Lcom/duoku/platform/download/utils/DownloadTasks;

    iput-object p2, p0, Lcom/duoku/platform/download/utils/DownloadTasks$5;->b:Landroid/os/Handler;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 454
    invoke-static {}, Lcom/duoku/platform/download/utils/DeviceUtil;->getUsableSpace()J

    move-result-wide v0

    .line 456
    iget-object v2, p0, Lcom/duoku/platform/download/utils/DownloadTasks$5;->b:Landroid/os/Handler;

    new-instance v3, Lcom/duoku/platform/download/utils/DownloadTasks$5$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/duoku/platform/download/utils/DownloadTasks$5$1;-><init>(Lcom/duoku/platform/download/utils/DownloadTasks$5;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    return-void
.end method
