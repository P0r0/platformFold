.class Lcom/duoku/platform/download/utils/PackageHelper$12;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->sendMergeRequest(Lcom/duoku/platform/download/PackageMode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/duoku/platform/download/PackageMode;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/PackageMode;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    .line 271
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/16 v12, 0x80

    .line 276
    sget-boolean v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 278
    sget-object v0, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendMergeRequest "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1c
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    iget-object v1, v1, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/duoku/platform/d/a;->i(Ljava/lang/String;)Lcom/duoku/platform/download/mode/MergeMode;

    move-result-object v0

    .line 281
    if-nez v0, :cond_5d

    .line 283
    new-instance v1, Lcom/duoku/platform/download/mode/MergeMode;

    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    iget-wide v2, v0, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    iget-object v4, v0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    iget-object v5, v0, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    iget v6, v0, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    iget-object v7, v0, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    iget-object v8, v0, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    iget-object v9, v0, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v1 .. v12}, Lcom/duoku/platform/download/mode/MergeMode;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 284
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/duoku/platform/d/a;->b(Lcom/duoku/platform/download/mode/MergeMode;)J

    .line 285
    # getter for: Lcom/duoku/platform/download/utils/PackageHelper;->mergingSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->access$0()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_5d
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    iput v12, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 292
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 294
    invoke-static {}, Lcom/duoku/platform/download/DiffManager;->getInstance()Lcom/duoku/platform/download/DiffManager;

    move-result-object v0

    .line 296
    new-instance v1, Lcom/duoku/platform/download/mode/DiffInfo;

    iget-object v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$12;->a:Lcom/duoku/platform/download/PackageMode;

    invoke-direct {v1, v2}, Lcom/duoku/platform/download/mode/DiffInfo;-><init>(Lcom/duoku/platform/download/PackageMode;)V

    .line 297
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/duoku/platform/download/DiffManager;->postDiff(Landroid/content/Context;Lcom/duoku/platform/download/mode/DiffInfo;)V

    .line 298
    return-void
.end method
