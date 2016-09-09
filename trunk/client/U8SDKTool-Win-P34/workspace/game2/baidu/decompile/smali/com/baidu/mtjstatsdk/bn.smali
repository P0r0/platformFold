.class Lcom/baidu/mtjstatsdk/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/bk;

.field private b:J

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/bk;JLandroid/content/Context;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 390
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bn;->a:Lcom/baidu/mtjstatsdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bn;->f:Ljava/lang/String;

    .line 379
    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bn;->g:Ljava/lang/String;

    .line 392
    iput-wide p2, p0, Lcom/baidu/mtjstatsdk/bn;->b:J

    .line 393
    if-eqz p4, :cond_15

    .line 394
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bn;->c:Ljava/lang/ref/WeakReference;

    .line 397
    :cond_15
    iput-wide p5, p0, Lcom/baidu/mtjstatsdk/bn;->d:J

    .line 398
    if-eqz p7, :cond_20

    .line 399
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bn;->e:Ljava/lang/ref/WeakReference;

    .line 402
    :cond_20
    iput-object p8, p0, Lcom/baidu/mtjstatsdk/bn;->f:Ljava/lang/String;

    .line 403
    iput-object p9, p0, Lcom/baidu/mtjstatsdk/bn;->g:Ljava/lang/String;

    .line 404
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 407
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bn;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    .line 411
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bn;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    .line 412
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bn;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 413
    if-eqz v6, :cond_1e

    if-nez v0, :cond_2c

    .line 414
    :cond_1e
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v7

    const-string v1, "onPause, WeakReference is already been released"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 467
    :cond_2b
    :goto_2b
    return-void

    .line 418
    :cond_2c
    if-eq v6, v0, :cond_52

    .line 419
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bn;->f:Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 420
    if-eqz v1, :cond_2b

    .line 421
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v7

    const-string v1, "onPageStart() \u6216 onPageEnd()\u5b89\u653e\u9519\u8bef  || onPageStart() or onPageEnd() install error."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    goto :goto_2b

    .line 425
    :cond_42
    if-eqz v1, :cond_2b

    .line 426
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v7

    const-string v1, "onPause() \u6216 onResume()\u5b89\u653e\u9519\u8bef  ||  onPause() or onResume() install error."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    goto :goto_2b

    .line 435
    :cond_52
    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/bn;->b:J

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/bn;->d:J

    sub-long/2addr v2, v4

    .line 437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bn;->f:Ljava/lang/String;

    if-eqz v0, :cond_b4

    .line 440
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bn;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_65
    :goto_65
    if-eqz v1, :cond_93

    .line 455
    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new page view, page name = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",stay time = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "(ms)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_93
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bn;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    .line 460
    if-eqz v7, :cond_2b

    .line 461
    iget-object v0, v7, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->d:Lcom/baidu/mtjstatsdk/cp;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/bn;->d:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/cp;->a(Ljava/lang/String;JJ)V

    .line 464
    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/bn;->b:J

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bn;->g:Ljava/lang/String;

    invoke-virtual {v7, v6, v0, v1, v2}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->flushSession(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_2b

    .line 441
    :cond_b4
    instance-of v0, v6, Landroid/app/Activity;

    if-eqz v0, :cond_d2

    move-object v0, v6

    .line 442
    check-cast v0, Landroid/app/Activity;

    .line 444
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_65

    .line 448
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_65

    .line 451
    :cond_d2
    const-string v0, "Unknown"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65
.end method
