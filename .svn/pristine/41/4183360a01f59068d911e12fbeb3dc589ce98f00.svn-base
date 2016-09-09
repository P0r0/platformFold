.class final Lcom/duoku/platform/download/VersionedNotification$a;
.super Lcom/duoku/platform/download/VersionedNotification;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/VersionedNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private A:Z

.field private a:Landroid/content/Context;

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:Landroid/app/PendingIntent;

.field private j:Landroid/widget/RemoteViews;

.field private k:Landroid/app/PendingIntent;

.field private l:Landroid/app/PendingIntent;

.field private m:Ljava/lang/CharSequence;

.field private n:Landroid/widget/RemoteViews;

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/net/Uri;

.field private q:I

.field private r:[J

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/duoku/platform/download/VersionedNotification;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    .line 258
    return-void
.end method

.method private a()Landroid/widget/RemoteViews;
    .registers 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/duoku/platform/download/VersionedNotification$a;->j:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_7

    .line 448
    iget-object v0, p0, Lcom/duoku/platform/download/VersionedNotification$a;->j:Landroid/widget/RemoteViews;

    .line 450
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    const-string v1, "dk_status_bar_ongoing_event_progress_bar"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/VersionedNotification$a;->a(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_6
.end method

.method private a(I)Landroid/widget/RemoteViews;
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x8

    .line 460
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 461
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->c:I

    if-eqz v1, :cond_86

    .line 462
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    const-string v2, "appIcon"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/duoku/platform/download/VersionedNotification$a;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 463
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    const-string v2, "appIcon"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 467
    :goto_2a
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3b

    .line 468
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    const-string v2, "title"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/download/VersionedNotification$a;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 470
    :cond_3b
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->g:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4c

    .line 471
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    const-string v2, "description"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/download/VersionedNotification$a;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 474
    :cond_4c
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->x:I

    if-nez v1, :cond_54

    iget-boolean v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->z:Z

    if-eqz v1, :cond_92

    .line 475
    :cond_54
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    const-string v2, "progress_bar"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/duoku/platform/download/VersionedNotification$a;->x:I

    iget v3, p0, Lcom/duoku/platform/download/VersionedNotification$a;->y:I

    iget-boolean v4, p0, Lcom/duoku/platform/download/VersionedNotification$a;->z:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 479
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    const-string v2, "progress_text"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 480
    iget v2, p0, Lcom/duoku/platform/download/VersionedNotification$a;->x:I

    int-to-long v2, v2

    iget v4, p0, Lcom/duoku/platform/download/VersionedNotification$a;->y:I

    int-to-long v4, v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/duoku/platform/download/VersionedNotification$a;->a(JJ)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 481
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    const-string v2, "progress_text"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 490
    :goto_85
    return-object v0

    .line 465
    :cond_86
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    const-string v2, "appIcon"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2a

    .line 483
    :cond_92
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    const-string v2, "progress_bar"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 484
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    const-string v2, "progress_text"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_85
.end method

.method private a(JJ)Ljava/lang/String;
    .registers 8

    .prologue
    .line 500
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_9

    .line 501
    const-string v0, ""

    .line 507
    :goto_8
    return-object v0

    .line 503
    :cond_9
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p3

    div-long/2addr v0, p1

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 506
    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private a(IZ)V
    .registers 5

    .prologue
    .line 435
    if-eqz p2, :cond_8

    .line 436
    iget v0, p0, Lcom/duoku/platform/download/VersionedNotification$a;->w:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/duoku/platform/download/VersionedNotification$a;->w:I

    .line 440
    :goto_7
    return-void

    .line 438
    :cond_8
    iget v0, p0, Lcom/duoku/platform/download/VersionedNotification$a;->w:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/duoku/platform/download/VersionedNotification$a;->w:I

    goto :goto_7
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .registers 6

    .prologue
    .line 263
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 265
    iget-wide v2, p0, Lcom/duoku/platform/download/VersionedNotification$a;->b:J

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 266
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->c:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 267
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->d:I

    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    .line 268
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->e:I

    iput v1, v0, Landroid/app/Notification;->number:I

    .line 269
    invoke-direct {p0}, Lcom/duoku/platform/download/VersionedNotification$a;->a()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 270
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->i:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 271
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->k:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 273
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->m:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 277
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->p:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 278
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->q:I

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 279
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->r:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 280
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->s:I

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 281
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->t:I

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 282
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->u:I

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 283
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->v:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 284
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->w:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 285
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->t:I

    if-eqz v1, :cond_55

    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->u:I

    if-eqz v1, :cond_55

    .line 286
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 288
    :cond_55
    iget v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->v:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_61

    .line 289
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 291
    :cond_61
    iget-boolean v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->A:Z

    if-eqz v1, :cond_70

    .line 292
    iget-object v1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/download/VersionedNotification$a;->f:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/duoku/platform/download/VersionedNotification$a;->g:Ljava/lang/CharSequence;

    .line 293
    iget-object v4, p0, Lcom/duoku/platform/download/VersionedNotification$a;->i:Landroid/app/PendingIntent;

    .line 292
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 295
    :cond_70
    return-object v0
.end method

.method public setAutoCancel(Z)V
    .registers 3

    .prologue
    .line 300
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/duoku/platform/download/VersionedNotification$a;->a(IZ)V

    .line 301
    return-void
.end method

.method public setContent(Landroid/widget/RemoteViews;)V
    .registers 4

    .prologue
    .line 305
    if-eqz p1, :cond_5

    .line 306
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->j:Landroid/widget/RemoteViews;

    .line 310
    :goto_4
    return-void

    .line 308
    :cond_5
    iget-object v0, p0, Lcom/duoku/platform/download/VersionedNotification$a;->a:Landroid/content/Context;

    const-string v1, "dk_status_bar_ongoing_event_progress_bar"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/VersionedNotification$a;->a(I)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/VersionedNotification$a;->j:Landroid/widget/RemoteViews;

    goto :goto_4
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 314
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->h:Ljava/lang/CharSequence;

    .line 315
    return-void
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)V
    .registers 2

    .prologue
    .line 319
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->i:Landroid/app/PendingIntent;

    .line 320
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->g:Ljava/lang/CharSequence;

    .line 325
    return-void
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 329
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->f:Ljava/lang/CharSequence;

    .line 330
    return-void
.end method

.method public setDefaults(I)V
    .registers 2

    .prologue
    .line 334
    iput p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->v:I

    .line 335
    return-void
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->k:Landroid/app/PendingIntent;

    .line 340
    return-void
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)V
    .registers 4

    .prologue
    .line 346
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->l:Landroid/app/PendingIntent;

    .line 347
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Lcom/duoku/platform/download/VersionedNotification$a;->a(IZ)V

    .line 348
    return-void
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 352
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->o:Landroid/graphics/Bitmap;

    .line 353
    return-void
.end method

.method public setLatestEventInfo(Z)V
    .registers 2

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->A:Z

    .line 521
    return-void
.end method

.method public setLights(III)V
    .registers 4

    .prologue
    .line 357
    iput p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->s:I

    .line 358
    iput p2, p0, Lcom/duoku/platform/download/VersionedNotification$a;->t:I

    .line 359
    iput p3, p0, Lcom/duoku/platform/download/VersionedNotification$a;->u:I

    .line 360
    return-void
.end method

.method public setNumber(I)V
    .registers 2

    .prologue
    .line 364
    iput p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->e:I

    .line 365
    return-void
.end method

.method public setOngoing(Z)V
    .registers 3

    .prologue
    .line 369
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/duoku/platform/download/VersionedNotification$a;->a(IZ)V

    .line 370
    return-void
.end method

.method public setOnlyAlertOnce(Z)V
    .registers 3

    .prologue
    .line 374
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/duoku/platform/download/VersionedNotification$a;->a(IZ)V

    .line 375
    return-void
.end method

.method public setProgress(IIZ)V
    .registers 4

    .prologue
    .line 379
    iput p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->x:I

    .line 380
    iput p2, p0, Lcom/duoku/platform/download/VersionedNotification$a;->y:I

    .line 381
    iput-boolean p3, p0, Lcom/duoku/platform/download/VersionedNotification$a;->z:Z

    .line 382
    return-void
.end method

.method public setSmallIcon(I)V
    .registers 2

    .prologue
    .line 392
    iput p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->c:I

    .line 393
    return-void
.end method

.method public setSmallIcon(II)V
    .registers 3

    .prologue
    .line 386
    iput p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->c:I

    .line 387
    iput p2, p0, Lcom/duoku/platform/download/VersionedNotification$a;->d:I

    .line 388
    return-void
.end method

.method public setSound(Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 398
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->p:Landroid/net/Uri;

    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lcom/duoku/platform/download/VersionedNotification$a;->q:I

    .line 400
    return-void
.end method

.method public setSound(Landroid/net/Uri;I)V
    .registers 3

    .prologue
    .line 404
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->p:Landroid/net/Uri;

    .line 405
    iput p2, p0, Lcom/duoku/platform/download/VersionedNotification$a;->q:I

    .line 406
    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 416
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->m:Ljava/lang/CharSequence;

    .line 417
    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)V
    .registers 3

    .prologue
    .line 410
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->m:Ljava/lang/CharSequence;

    .line 411
    iput-object p2, p0, Lcom/duoku/platform/download/VersionedNotification$a;->n:Landroid/widget/RemoteViews;

    .line 412
    return-void
.end method

.method public setVibrate([J)V
    .registers 2

    .prologue
    .line 421
    iput-object p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->r:[J

    .line 422
    return-void
.end method

.method public setWhen(J)V
    .registers 4

    .prologue
    .line 426
    iput-wide p1, p0, Lcom/duoku/platform/download/VersionedNotification$a;->b:J

    .line 427
    return-void
.end method
