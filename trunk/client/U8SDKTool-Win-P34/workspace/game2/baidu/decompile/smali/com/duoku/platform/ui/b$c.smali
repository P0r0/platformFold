.class Lcom/duoku/platform/ui/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/download/listener/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b;)V
    .registers 2

    .prologue
    .line 279
    iput-object p1, p0, Lcom/duoku/platform/ui/b$c;->a:Lcom/duoku/platform/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 284
    iget-object v0, p0, Lcom/duoku/platform/ui/b$c;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/duoku/platform/ui/b$c;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_29

    .line 286
    :cond_13
    iget-object v0, p0, Lcom/duoku/platform/ui/b$c;->a:Lcom/duoku/platform/ui/b;

    iget-boolean v0, v0, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v0, :cond_28

    .line 288
    const-string v0, "DownloadAppListFragment"

    const-string v2, "DownloadCallback.findTarget return null searchResultAdapter is null or data is null for:%s "

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_28
    :goto_28
    return-object v1

    .line 293
    :cond_29
    iget-object v0, p0, Lcom/duoku/platform/ui/b$c;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v4

    .line 294
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    .line 296
    :goto_36
    if-lt v2, v5, :cond_4e

    .line 304
    iget-object v0, p0, Lcom/duoku/platform/ui/b$c;->a:Lcom/duoku/platform/ui/b;

    iget-boolean v0, v0, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v0, :cond_28

    .line 306
    const-string v0, "DownloadAppListFragment"

    const-string v2, "DownloadCallback.findTarget return null for %s "

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 298
    :cond_4e
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 299
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 296
    :goto_5e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_36

    :cond_63
    move-object v0, v1

    goto :goto_5e
.end method


# virtual methods
.method public onDownloadResult(Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/Integer;)V
    .registers 14

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 314
    invoke-direct {p0, p1}, Lcom/duoku/platform/ui/b$c;->a(Ljava/lang/String;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    .line 315
    if-nez v0, :cond_a

    .line 337
    :cond_9
    :goto_9
    return-void

    .line 319
    :cond_a
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 320
    if-eqz p2, :cond_16

    .line 322
    invoke-virtual {v0, p3, p4}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setDownloadId(J)V

    .line 323
    invoke-virtual {v0, p5}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setSaveDest(Ljava/lang/String;)V

    .line 325
    :cond_16
    iget-object v0, p0, Lcom/duoku/platform/ui/b$c;->a:Lcom/duoku/platform/ui/b;

    iget-boolean v0, v0, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v0, :cond_9

    .line 327
    if-eqz p2, :cond_34

    .line 329
    const-string v0, "DownloadAppListFragment"

    const-string v2, "[onDownloadResult]target:%s download successful,downloadId:%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 333
    :cond_34
    const-string v0, "DownloadAppListFragment"

    const-string v2, "[onDownloadResult]target:%s download error,reason:%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object p6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public onRestartDownloadResult(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;)V
    .registers 6

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/duoku/platform/ui/b$c;->a(Ljava/lang/String;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    .line 366
    if-nez v0, :cond_6

    .line 370
    :cond_6
    return-void
.end method

.method public onResumeDownloadResult(Ljava/lang/String;ZLjava/lang/Integer;)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 342
    invoke-direct {p0, p1}, Lcom/duoku/platform/ui/b$c;->a(Ljava/lang/String;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    .line 343
    if-nez v0, :cond_9

    .line 360
    :cond_8
    :goto_8
    return-void

    .line 347
    :cond_9
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/duoku/platform/ui/b$c;->a:Lcom/duoku/platform/ui/b;

    iget-boolean v1, v1, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v1, :cond_8

    .line 350
    if-eqz p2, :cond_25

    .line 352
    const-string v1, "DownloadAppListFragment"

    const-string v2, "[onResumeDownloadResult]target:%s resume/restart successful"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 356
    :cond_25
    const-string v1, "DownloadAppListFragment"

    const-string v2, "[onResumeDownloadResult]target:%s resume/restart error,reason:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method
