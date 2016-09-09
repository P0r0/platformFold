.class public Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadItemOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;,
        Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;
    }
.end annotation


# instance fields
.field appData:Ljava/lang/String;

.field currentBytes:J

.field date:J

.field dest:Ljava/lang/String;

.field downloadId:J

.field mimeType:Ljava/lang/String;

.field originalStatusCode:I

.field reason:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field status:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

.field title:Ljava/lang/String;

.field totalBytes:J

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 549
    if-ne p0, p1, :cond_5

    .line 572
    :cond_4
    :goto_4
    return v0

    .line 551
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 552
    goto :goto_4

    .line 553
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 554
    goto :goto_4

    .line 555
    :cond_15
    check-cast p1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    .line 556
    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->downloadId:J

    iget-wide v4, p1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->downloadId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    move v0, v1

    .line 557
    goto :goto_4

    .line 558
    :cond_21
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->appData:Ljava/lang/String;

    if-nez v2, :cond_2b

    .line 560
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->appData:Ljava/lang/String;

    if-eqz v2, :cond_37

    move v0, v1

    .line 561
    goto :goto_4

    .line 563
    :cond_2b
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->appData:Ljava/lang/String;

    iget-object v3, p1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->appData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    move v0, v1

    .line 564
    goto :goto_4

    .line 565
    :cond_37
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->url:Ljava/lang/String;

    if-nez v2, :cond_41

    .line 567
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->url:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 568
    goto :goto_4

    .line 570
    :cond_41
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 571
    goto :goto_4
.end method

.method public getAppData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->appData:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentBytes()J
    .registers 3

    .prologue
    .line 467
    iget-wide v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->currentBytes:J

    return-wide v0
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 517
    iget-wide v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->date:J

    return-wide v0
.end method

.method public getDest()Ljava/lang/String;
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->dest:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadId()J
    .registers 3

    .prologue
    .line 437
    iget-wide v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->downloadId:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalStatusCode()I
    .registers 2

    .prologue
    .line 407
    iget v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->originalStatusCode:I

    return v0
.end method

.method public getReason()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->reason:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    return-object v0
.end method

.method public getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->status:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBytes()J
    .registers 3

    .prologue
    .line 457
    iget-wide v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->totalBytes:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 538
    .line 540
    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->downloadId:J

    iget-wide v4, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->downloadId:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x1f

    .line 541
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->appData:Ljava/lang/String;

    if-nez v0, :cond_1c

    move v0, v1

    :goto_13
    add-int/2addr v0, v2

    .line 542
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->url:Ljava/lang/String;

    if-nez v2, :cond_23

    :goto_1a
    add-int/2addr v0, v1

    .line 543
    return v0

    .line 541
    :cond_1c
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->appData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_13

    .line 542
    :cond_23
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1a
.end method

.method public setAppData(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 532
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->appData:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public setCurrentBytes(J)V
    .registers 4

    .prologue
    .line 472
    iput-wide p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->currentBytes:J

    .line 473
    return-void
.end method

.method public setDate(J)V
    .registers 4

    .prologue
    .line 522
    iput-wide p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->date:J

    .line 523
    return-void
.end method

.method public setDest(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 422
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->dest:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setDownloadId(J)V
    .registers 4

    .prologue
    .line 442
    iput-wide p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->downloadId:J

    .line 443
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 497
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->mimeType:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setOriginalStatusCode(I)V
    .registers 2

    .prologue
    .line 412
    iput p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->originalStatusCode:I

    .line 413
    return-void
.end method

.method public setReason(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;)V
    .registers 2

    .prologue
    .line 512
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->reason:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 513
    return-void
.end method

.method public setStatus(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;)V
    .registers 2

    .prologue
    .line 487
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->status:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    .line 488
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 452
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->title:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setTotalBytes(J)V
    .registers 4

    .prologue
    .line 462
    iput-wide p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->totalBytes:J

    .line 463
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 432
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->url:Ljava/lang/String;

    .line 433
    return-void
.end method
