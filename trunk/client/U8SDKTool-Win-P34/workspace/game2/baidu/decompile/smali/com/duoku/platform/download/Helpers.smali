.class public final Lcom/duoku/platform/download/Helpers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;,
        Lcom/duoku/platform/download/Helpers$a;
    }
.end annotation


# static fields
.field private static final CHECK_MIME_TYPE:Z

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field public static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/duoku/platform/download/Helpers;->RANDOM:Ljava/util/Random;

    .line 52
    const-string v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static checkCanHandleDownload(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 288
    if-eqz p3, :cond_2

    .line 295
    :cond_2
    return-void
.end method

.method private static chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 656
    if-eqz p0, :cond_26

    .line 660
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 661
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    if-eqz v1, :cond_1f

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 664
    :cond_1f
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/duoku/platform/download/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_26

    .line 681
    :cond_26
    if-nez v0, :cond_2c

    .line 687
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 689
    :cond_2c
    return-object v0
.end method

.method private static chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 588
    if-eqz p0, :cond_1c

    .line 590
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_1c

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    :cond_1c
    if-nez v0, :cond_36

    .line 609
    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 611
    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 617
    const-string v0, ".html"

    .line 637
    :cond_36
    :goto_36
    return-object v0

    .line 619
    :cond_37
    if-eqz p1, :cond_36

    .line 625
    const-string v0, ".txt"

    goto :goto_36

    .line 628
    :cond_3c
    if-eqz p1, :cond_36

    .line 634
    const-string v0, ".bin"

    goto :goto_36
.end method

.method private static chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v4, 0x3f

    const/16 v3, 0x2f

    .line 483
    const/4 v1, 0x0

    .line 486
    if-nez v1, :cond_1d

    if-eqz p1, :cond_1d

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 492
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 493
    if-lez v0, :cond_86

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 505
    :cond_1d
    :goto_1d
    if-nez v1, :cond_33

    if-eqz p2, :cond_33

    .line 507
    invoke-static {p2}, Lcom/duoku/platform/download/Helpers;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    if-eqz v1, :cond_33

    .line 514
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 515
    if-lez v0, :cond_33

    .line 517
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 523
    :cond_33
    if-nez v1, :cond_88

    if-eqz p3, :cond_88

    .line 525
    invoke-static {p3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_88

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_88

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_88

    .line 532
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 533
    if-lez v1, :cond_57

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 545
    :cond_57
    :goto_57
    if-nez v0, :cond_79

    .line 547
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    if-eqz v1, :cond_79

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_79

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_79

    .line 550
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 551
    if-lez v2, :cond_79

    .line 557
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_79
    if-nez v0, :cond_7d

    .line 569
    const-string v0, "downloadfile"

    .line 572
    :cond_7d
    const-string v1, "[()\ufffd\ufffd\ufffd\ufffd.,\ufffd\ufffd:\\-|^$#_\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd=\ufffd\ufffd/+\ufffd\ufffd\ufffd\ufffd<>*?\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\'\'\"\"]"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    return-object v0

    :cond_86
    move-object v1, p1

    .line 499
    goto :goto_1d

    :cond_88
    move-object v0, v1

    goto :goto_57
.end method

.method private static chooseFullPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {p0, p5, p6, p7, p8}, Lcom/duoku/platform/download/Helpers;->locateDestinationDirectory(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v2

    .line 243
    invoke-static {p1, p2, p3, p4, p6}, Lcom/duoku/platform/download/Helpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 249
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 250
    if-gez v3, :cond_4c

    .line 252
    const/4 v0, 0x1

    invoke-static {p5, v0}, Lcom/duoku/platform/download/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_15
    const-string v3, "recovery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {p6, v1, v0, v3}, Lcom/duoku/platform/download/Helpers;->chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :cond_4c
    invoke-static {p5, p6, v1, v3}, Lcom/duoku/platform/download/Helpers;->chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 257
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_15
.end method

.method private static chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_28

    .line 711
    if-eqz p3, :cond_27

    if-eq p0, v1, :cond_28

    const/4 v2, 0x2

    if-eq p0, v2, :cond_28

    const/4 v2, 0x3

    if-eq p0, v2, :cond_28

    .line 735
    :cond_27
    return-object v0

    .line 715
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    .line 728
    :goto_3c
    const v0, 0x3b9aca00

    if-lt v3, v0, :cond_4b

    .line 744
    new-instance v0, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;

    const/16 v1, 0x1ec

    const-string v2, "failed to generate an unused filename on internal download storage"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v0

    .line 730
    :cond_4b
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_4e
    const/16 v0, 0x9

    if-lt v1, v0, :cond_57

    .line 728
    mul-int/lit8 v0, v3, 0xa

    move v3, v0

    move v1, v2

    goto :goto_3c

    .line 732
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 741
    sget-object v0, Lcom/duoku/platform/download/Helpers;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 730
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4e
.end method

.method static deleteFile(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 1221
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1223
    if-nez v0, :cond_12

    .line 1225
    const-string v0, "DownloadManager"

    const-string v1, "deleteFile failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_24

    .line 1232
    :cond_12
    :goto_12
    sget-object v0, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id = ? "

    .line 1233
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1234
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1232
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1236
    return-void

    .line 1228
    :catch_24
    move-exception v0

    .line 1230
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' couldn\'t be deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public static discardPurgeableFiles(Landroid/content/Context;J)Z
    .registers 14

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 760
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 761
    sget-object v1, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    .line 763
    const-string v3, "( status = \'200\' AND destination = \'2\' )"

    .line 764
    const-string v5, "lastmod"

    move-object v4, v2

    .line 760
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 765
    if-nez v2, :cond_17

    move v0, v6

    .line 802
    :goto_16
    return v0

    .line 772
    :cond_17
    :try_start_17
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-wide v0, v8

    .line 773
    :goto_1b
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_6c

    move-result v3

    if-nez v3, :cond_25

    cmp-long v3, v0, p1

    if-ltz v3, :cond_2e

    .line 793
    :cond_25
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 802
    cmp-long v0, v0, v8

    if-lez v0, :cond_71

    const/4 v0, 0x1

    goto :goto_16

    .line 775
    :cond_2e
    :try_start_2e
    new-instance v3, Ljava/io/File;

    const-string v4, "_data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 781
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 782
    if-nez v3, :cond_4f

    .line 784
    const-string v3, "DownloadManager"

    const-string v4, "delete file failed."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_4f
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 787
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v7, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 788
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6b
    .catchall {:try_start_2e .. :try_end_6b} :catchall_6c

    goto :goto_1b

    .line 792
    :catchall_6c
    move-exception v0

    .line 793
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 794
    throw v0

    :cond_71
    move v0, v6

    .line 802
    goto :goto_16
.end method

.method public static generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p0, p5, p6, p9}, Lcom/duoku/platform/download/Helpers;->checkCanHandleDownload(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 150
    const/4 v0, 0x4

    if-ne p6, v0, :cond_b

    .line 152
    invoke-static {p2, p7, p8}, Lcom/duoku/platform/download/Helpers;->getPathForFileUri(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_a
    return-object v0

    :cond_b
    invoke-static/range {p0 .. p8}, Lcom/duoku/platform/download/Helpers;->chooseFullPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static getAvailableBytes(Ljava/io/File;)J
    .registers 7

    .prologue
    .line 458
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x4

    sub-long/2addr v2, v4

    .line 463
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static getCacheDestination(Landroid/content/Context;J)Ljava/io/File;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 433
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    .line 434
    invoke-static {v2}, Lcom/duoku/platform/download/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 435
    :goto_8
    cmp-long v3, v0, p1

    if-ltz v3, :cond_d

    .line 445
    return-object v2

    .line 438
    :cond_d
    sub-long v0, p1, v0

    invoke-static {p0, v0, v1}, Lcom/duoku/platform/download/Helpers;->discardPurgeableFiles(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 441
    new-instance v0, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;

    const/16 v1, 0x1f2

    const-string v2, "not enough free space in internal download storage, unable to free any more"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v0

    .line 443
    :cond_1f
    invoke-static {v2}, Lcom/duoku/platform/download/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_8
.end method

.method private static getExternalDestination(J)Ljava/io/File;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Lcom/duoku/platform/download/Helpers;->isExternalMediaMounted()Z

    move-result v0

    if-nez v0, :cond_10

    .line 380
    new-instance v0, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;

    const/16 v1, 0x1f3

    const-string v2, "external media not mounted"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v0

    .line 383
    :cond_10
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 384
    invoke-static {v0}, Lcom/duoku/platform/download/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v1, v2, p0

    if-gez v1, :cond_2d

    .line 387
    const-string v0, "DownloadManager"

    const-string v1, "download aborted - not enough free space"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v0, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;

    const/16 v1, 0x1f2

    const-string v2, "insufficient space on external media"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v0

    .line 391
    :cond_2d
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/download/Constants;->DEFAULT_DL_SUBDIR:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_70

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_70

    .line 398
    new-instance v0, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;

    const/16 v2, 0x1ec

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to create external downloads directory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v0

    .line 400
    :cond_70
    return-object v1
.end method

.method public static getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .prologue
    .line 203
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 211
    :cond_e
    return-object v0

    .line 208
    :cond_f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot determine filesystem root for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getPathForFileUri(Ljava/lang/String;J)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lcom/duoku/platform/download/Helpers;->isExternalMediaMounted()Z

    move-result v0

    if-nez v0, :cond_10

    .line 175
    new-instance v0, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;

    const/16 v1, 0x1f3

    const-string v2, "external media not mounted"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v0

    .line 177
    :cond_10
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 180
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File already exists: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 186
    :cond_3f
    invoke-static {v0}, Lcom/duoku/platform/download/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_55

    .line 188
    new-instance v0, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;

    const/16 v1, 0x1f2

    const-string v2, "insufficient space on external storage"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v0

    .line 191
    :cond_55
    return-object v0
.end method

.method public static isExternalMediaMounted()Z
    .registers 2

    .prologue
    .line 410
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 413
    const-string v0, "DownloadManager"

    const-string v1, "no external storage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x0

    .line 416
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public static isFilenameValid(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 826
    const-string v0, "/+"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 828
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x1

    goto :goto_25
.end method

.method public static isNetworkAvailable(Lcom/baidu/bdgame/sdk/obf/nu;)Z
    .registers 2

    .prologue
    .line 814
    invoke-interface {p0}, Lcom/baidu/bdgame/sdk/obf/nu;->b()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static locateDestinationDirectory(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x1

    if-eq p2, v0, :cond_11

    const/4 v0, 0x2

    if-eq p2, v0, :cond_11

    .line 359
    const/4 v0, 0x3

    if-eq p2, v0, :cond_11

    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 361
    :cond_11
    invoke-static {p0, p3, p4}, Lcom/duoku/platform/download/Helpers;->getCacheDestination(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 364
    :goto_15
    return-object v0

    :cond_16
    invoke-static {p3, p4}, Lcom/duoku/platform/download/Helpers;->getExternalDestination(J)Ljava/io/File;

    move-result-object v0

    goto :goto_15
.end method

.method private static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 78
    :try_start_0
    sget-object v0, Lcom/duoku/platform/download/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 81
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    .line 90
    :goto_11
    return-object v0

    .line 84
    :catch_12
    move-exception v0

    .line 88
    const-string v1, "Helpers"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_18
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static parseExpression(Lcom/duoku/platform/download/Helpers$a;)V
    .registers 3

    .prologue
    .line 881
    :goto_0
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 883
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->b()V

    .line 884
    invoke-static {p0}, Lcom/duoku/platform/download/Helpers;->parseExpression(Lcom/duoku/platform/download/Helpers$a;)V

    .line 885
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    .line 887
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, unmatched parenthese"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_1c
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->b()V

    .line 896
    :goto_1f
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    .line 902
    return-void

    .line 894
    :cond_27
    invoke-static {p0}, Lcom/duoku/platform/download/Helpers;->parseStatement(Lcom/duoku/platform/download/Helpers$a;)V

    goto :goto_1f

    .line 900
    :cond_2b
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->b()V

    goto :goto_0
.end method

.method private static parseStatement(Lcom/duoku/platform/download/Helpers$a;)V
    .registers 3

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    .line 915
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_f
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->b()V

    .line 920
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2f

    .line 922
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->b()V

    .line 923
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->a()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2b

    .line 925
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected quoted string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_2b
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->b()V

    .line 940
    :goto_2e
    return-void

    .line 932
    :cond_2f
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->a()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4d

    .line 934
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->b()V

    .line 935
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->a()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_49

    .line 937
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_49
    invoke-virtual {p0}, Lcom/duoku/platform/download/Helpers$a;->b()V

    goto :goto_2e

    .line 944
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error after column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validateSelection(Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 843
    if-eqz p0, :cond_8

    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 867
    :cond_8
    return-void

    .line 847
    :cond_9
    new-instance v0, Lcom/duoku/platform/download/Helpers$a;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/Helpers$a;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 848
    invoke-static {v0}, Lcom/duoku/platform/download/Helpers;->parseExpression(Lcom/duoku/platform/download/Helpers$a;)V

    .line 849
    invoke-virtual {v0}, Lcom/duoku/platform/download/Helpers$a;->a()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_8

    .line 851
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_21} :catch_21

    .line 854
    :catch_21
    move-exception v0

    .line 862
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid selection triggered "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    throw v0
.end method
