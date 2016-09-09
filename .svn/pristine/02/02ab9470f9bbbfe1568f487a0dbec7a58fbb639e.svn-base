.class Lcom/duoku/platform/download/utils/PackageHelper$16;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->sendMergeRequestFromUI(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .registers 4

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$16;->a:J

    .line 454
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/16 v12, 0x80

    .line 459
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$16;->a:J

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    .line 460
    if-nez v0, :cond_f

    .line 486
    :goto_e
    return-void

    .line 464
    :cond_f
    sget-boolean v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG:Z

    if-eqz v1, :cond_27

    .line 466
    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMergeRequest "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_27
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->formPackageMode(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    .line 469
    iput v12, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 470
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 472
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v1

    iget-object v2, v0, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/duoku/platform/d/a;->i(Ljava/lang/String;)Lcom/duoku/platform/download/mode/MergeMode;

    move-result-object v1

    .line 473
    if-nez v1, :cond_5f

    .line 475
    new-instance v1, Lcom/duoku/platform/download/mode/MergeMode;

    iget-wide v2, v0, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    iget-object v4, v0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    iget-object v5, v0, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    iget v6, v0, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    iget-object v7, v0, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    iget-object v8, v0, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    iget-object v9, v0, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v1 .. v12}, Lcom/duoku/platform/download/mode/MergeMode;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 476
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/duoku/platform/d/a;->b(Lcom/duoku/platform/download/mode/MergeMode;)J

    .line 477
    # getter for: Lcom/duoku/platform/download/utils/PackageHelper;->mergingSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->access$0()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_5f
    invoke-static {}, Lcom/duoku/platform/download/DiffManager;->getInstance()Lcom/duoku/platform/download/DiffManager;

    move-result-object v1

    .line 485
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/duoku/platform/download/mode/DiffInfo;

    invoke-direct {v3, v0}, Lcom/duoku/platform/download/mode/DiffInfo;-><init>(Lcom/duoku/platform/download/PackageMode;)V

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/download/DiffManager;->postDiff(Landroid/content/Context;Lcom/duoku/platform/download/mode/DiffInfo;)V

    goto :goto_e
.end method
