.class Lcom/duoku/platform/download/utils/PackageHelper$20;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->restartDownloadNormally(JLcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Lcom/duoku/platform/download/mode/DownloadItemInput;

.field private final synthetic c:Lcom/duoku/platform/download/listener/DownloadCallback;


# direct methods
.method constructor <init>(JLcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;)V
    .registers 6

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$20;->a:J

    iput-object p3, p0, Lcom/duoku/platform/download/utils/PackageHelper$20;->b:Lcom/duoku/platform/download/mode/DownloadItemInput;

    iput-object p4, p0, Lcom/duoku/platform/download/utils/PackageHelper$20;->c:Lcom/duoku/platform/download/listener/DownloadCallback;

    .line 1061
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1067
    iget-wide v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$20;->a:J

    iget-object v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$20;->b:Lcom/duoku/platform/download/mode/DownloadItemInput;

    # invokes: Lcom/duoku/platform/download/utils/PackageHelper;->updateDownloadForRestart(JLcom/duoku/platform/download/mode/DownloadItemInput;)I
    invoke-static {v0, v1, v2}, Lcom/duoku/platform/download/utils/PackageHelper;->access$3(JLcom/duoku/platform/download/mode/DownloadItemInput;)I

    move-result v0

    .line 1068
    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$20;->c:Lcom/duoku/platform/download/listener/DownloadCallback;

    if-eqz v1, :cond_54

    .line 1070
    const/4 v1, -0x1

    if-ne v0, v1, :cond_55

    .line 1072
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$20;->b:Lcom/duoku/platform/download/mode/DownloadItemInput;

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/duoku/platform/download/utils/PackageHelper;->DEFAUL_TDOWNLOAD_DEST:Ljava/lang/String;
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->access$4()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/download/utils/PackageHelper$20;->b:Lcom/duoku/platform/download/mode/DownloadItemInput;

    # invokes: Lcom/duoku/platform/download/utils/PackageHelper;->formSaveName(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;
    invoke-static {v3}, Lcom/duoku/platform/download/utils/PackageHelper;->access$5(Lcom/duoku/platform/download/mode/DownloadItemInput;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->composeDestination(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1073
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_44

    .line 1074
    const-string v1, "Package Helper : "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "destination file name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_44
    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$20;->c:Lcom/duoku/platform/download/listener/DownloadCallback;

    iget-object v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$20;->b:Lcom/duoku/platform/download/mode/DownloadItemInput;

    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/duoku/platform/download/listener/DownloadCallback;->onRestartDownloadResult(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;)V

    .line 1083
    :cond_54
    :goto_54
    return-void

    .line 1079
    :cond_55
    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$20;->c:Lcom/duoku/platform/download/listener/DownloadCallback;

    iget-object v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$20;->b:Lcom/duoku/platform/download/mode/DownloadItemInput;

    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v4, v3, v0}, Lcom/duoku/platform/download/listener/DownloadCallback;->onRestartDownloadResult(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;)V

    goto :goto_54
.end method
