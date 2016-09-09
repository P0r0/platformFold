.class Lcom/duoku/platform/download/utils/BackAppListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/BackAppListener;->submit(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/BackAppListener;

.field private final synthetic b:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/BackAppListener;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/BackAppListener$2;->a:Lcom/duoku/platform/download/utils/BackAppListener;

    iput-object p2, p0, Lcom/duoku/platform/download/utils/BackAppListener$2;->b:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 713
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 714
    iget-object v1, p0, Lcom/duoku/platform/download/utils/BackAppListener$2;->b:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGame(Ljava/lang/Long;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    .line 719
    if-nez v0, :cond_44

    .line 721
    const-string v0, "BackAppListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[submit]\u9519\u8befError for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/utils/BackAppListener$2;->b:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/utils/BackAppListener$2;->b:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :goto_43
    return-void

    .line 727
    :cond_44
    const-string v1, "BackAppListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[submit]\u6ca1\u6709\u9519\u8bef for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/duoku/platform/download/utils/BackAppListener$2;->b:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    invoke-virtual {v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/download/utils/BackAppListener$2;->b:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    invoke-virtual {v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_9c

    .line 730
    const-string v1, "BackAppListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[submit] for"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/duoku/platform/download/utils/BackAppListener$2;->b:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    invoke-virtual {v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/download/utils/BackAppListener$2;->b:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    invoke-virtual {v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_9c
    invoke-static {}, Lcom/duoku/platform/download/work/FutureTaskManager;->getInstance()Lcom/duoku/platform/download/work/FutureTaskManager;

    move-result-object v1

    .line 732
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/duoku/platform/download/work/FutureTaskManager;->submitGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b3} :catch_b4

    goto :goto_43

    .line 734
    :catch_b4
    move-exception v0

    .line 736
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43
.end method
