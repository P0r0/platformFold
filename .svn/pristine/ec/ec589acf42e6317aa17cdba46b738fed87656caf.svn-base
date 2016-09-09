.class Lcom/duoku/platform/download/utils/AppManager$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/AppManager;->checkDownloadSpace(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/AppManager;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/AppManager;J)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/AppManager$2;->a:Lcom/duoku/platform/download/utils/AppManager;

    iput-wide p2, p0, Lcom/duoku/platform/download/utils/AppManager$2;->b:J

    .line 404
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 410
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 411
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 413
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager$2;->a:Lcom/duoku/platform/download/utils/AppManager;

    iget-object v0, v0, Lcom/duoku/platform/download/utils/AppManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 429
    :cond_15
    :goto_15
    return-void

    .line 417
    :cond_16
    invoke-static {}, Lcom/duoku/platform/download/utils/DeviceUtil;->getUsableSpace()J

    move-result-wide v0

    .line 418
    iget-wide v2, p0, Lcom/duoku/platform/download/utils/AppManager$2;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    iget-wide v2, p0, Lcom/duoku/platform/download/utils/AppManager$2;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    .line 420
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager$2;->a:Lcom/duoku/platform/download/utils/AppManager;

    iget-object v0, v0, Lcom/duoku/platform/download/utils/AppManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_15

    .line 424
    :catch_32
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method
