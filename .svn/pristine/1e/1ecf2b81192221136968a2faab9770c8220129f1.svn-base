.class Lcom/duoku/platform/download/utils/BroadcaseSender$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/utils/BroadcaseSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:J

.field final synthetic d:Lcom/duoku/platform/download/utils/BroadcaseSender;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/download/utils/BroadcaseSender;Landroid/os/Looper;)V
    .registers 5

    .prologue
    .line 394
    iput-object p1, p0, Lcom/duoku/platform/download/utils/BroadcaseSender$a;->d:Lcom/duoku/platform/download/utils/BroadcaseSender;

    .line 395
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/BroadcaseSender$a;->a:Ljava/lang/String;

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/download/utils/BroadcaseSender$a;->b:I

    .line 400
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duoku/platform/download/utils/BroadcaseSender$a;->c:J

    .line 396
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_2e

    .line 410
    :try_start_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 420
    iget-object v1, v0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/duoku/platform/download/utils/BroadcaseSender$a;->a:Ljava/lang/String;

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/duoku/platform/download/utils/BroadcaseSender$a;->c:J

    .line 422
    iget v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    iput v1, p0, Lcom/duoku/platform/download/utils/BroadcaseSender$a;->b:I

    .line 424
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->getPackageListners()Ljava/util/Set;

    move-result-object v1

    .line 427
    if-eqz v1, :cond_2e

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2e

    .line 431
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 472
    :cond_2e
    :goto_2e
    return-void

    .line 431
    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_40

    .line 438
    if-eqz v1, :cond_28

    .line 447
    :try_start_37
    invoke-interface {v1, v0}, Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;->onPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_28

    .line 453
    :catch_3b
    move-exception v1

    .line 455
    :try_start_3c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_28

    .line 465
    :catch_40
    move-exception v0

    .line 469
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e
.end method
