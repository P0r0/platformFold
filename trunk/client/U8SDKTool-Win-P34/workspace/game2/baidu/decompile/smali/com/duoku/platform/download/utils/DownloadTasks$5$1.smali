.class Lcom/duoku/platform/download/utils/DownloadTasks$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/DownloadTasks$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/DownloadTasks$5;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/DownloadTasks$5;J)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/DownloadTasks$5$1;->a:Lcom/duoku/platform/download/utils/DownloadTasks$5;

    iput-wide p2, p0, Lcom/duoku/platform/download/utils/DownloadTasks$5$1;->b:J

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/duoku/platform/download/utils/DownloadTasks$5$1;->b:J

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    .line 465
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks;->mContext:Landroid/content/Context;

    const-string v2, "dk_sdcard_lack_space"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 467
    :cond_1a
    return-void
.end method
