.class public Lcom/gionee/gsp/util/GnHttpRequester;
.super Ljava/lang/Object;
.source "GnHttpRequester.java"


# instance fields
.field private defaultContentEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/util/GnHttpRequester;->defaultContentEncoding:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static downloadApp(Landroid/app/Activity;Ljava/lang/String;Ljava/io/FileOutputStream;Ljava/io/File;Ljava/lang/String;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/util/List;I)Z
    .registers 43
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .param p3, "savePath"    # Ljava/io/File;
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "gnDownloadDialog"    # Lcom/gionee/gsp/dialog/GnDownloadDialog;
    .param p7, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/io/FileOutputStream;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/gionee/gsp/dialog/GnDownloadDialog;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 405
    .local p6, "listenCancelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .line 406
    .local v16, "connection":Ljava/net/HttpURLConnection;
    const/16 v28, 0x0

    .line 407
    .local v28, "in":Ljava/io/BufferedInputStream;
    const/16 v30, 0x0

    .line 408
    .local v30, "out":Ljava/io/BufferedOutputStream;
    const-string v7, "\u5f00\u59cb\u4e0b\u8f7d"

    .line 409
    .local v7, "downloadText":Ljava/lang/String;
    const-string v22, ""

    .line 410
    .local v22, "dynamicText":Ljava/lang/String;
    const/4 v5, 0x0

    .line 411
    .local v5, "progress":I
    const/4 v6, 0x0

    .line 416
    .local v6, "secondaryProgress":I
    :try_start_c
    invoke-static/range {p1 .. p1}, Lcom/gionee/gsp/util/GnHttpRequester;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v16

    .line 418
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .line 427
    .local v18, "contentLength":J
    new-instance v29, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_214
    .catchall {:try_start_c .. :try_end_22} :catchall_1fa

    .line 428
    .end local v28    # "in":Ljava/io/BufferedInputStream;
    .local v29, "in":Ljava/io/BufferedInputStream;
    :try_start_22
    new-instance v31, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2b} :catch_217
    .catchall {:try_start_22 .. :try_end_2b} :catchall_210

    .line 431
    .end local v30    # "out":Ljava/io/BufferedOutputStream;
    .local v31, "out":Ljava/io/BufferedOutputStream;
    const/16 v2, 0x2800

    :try_start_2d
    new-array v15, v2, [B

    .line 433
    .local v15, "buffer":[B
    const/16 v26, 0x1

    .line 436
    .local v26, "i":I
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    .line 435
    invoke-static/range {v2 .. v8}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->updateDialog(Landroid/app/Activity;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/lang/String;IILjava/lang/String;Z)V

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    sub-long v20, v2, v8

    .line 439
    .local v20, "currentTimeMillis":J
    const-wide/16 v32, 0x0

    .local v32, "readLength":D
    move/from16 v27, v26

    .line 440
    .end local v26    # "i":I
    .local v27, "i":I
    :goto_47
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v17

    .local v17, "count":I
    if-gtz v17, :cond_8e

    .line 483
    invoke-virtual/range {v31 .. v31}, Ljava/io/BufferedOutputStream;->flush()V

    .line 488
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-eqz v2, :cond_5f

    move-wide/from16 v0, v18

    long-to-double v2, v0

    cmpl-double v2, v2, v32

    if-nez v2, :cond_1ec

    .line 489
    :cond_5f
    const/16 v5, 0x64

    .line 490
    move v6, v5

    .line 491
    const-string v7, "\u4e0b\u8f7d\u6210\u529f"

    .line 493
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    .line 492
    invoke-static/range {v2 .. v8}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->updateDialog(Landroid/app/Activity;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/lang/String;IILjava/lang/String;Z)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_6e} :catch_9c
    .catchall {:try_start_2d .. :try_end_6e} :catchall_1d1

    .line 496
    const-wide/16 v2, 0x3e8

    :try_start_70
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_1cb
    .catchall {:try_start_70 .. :try_end_73} :catchall_1d1

    .line 531
    :goto_73
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    .line 533
    aput-object v29, v2, v3

    const/4 v3, 0x1

    aput-object v31, v2, v3

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    .line 534
    aput-object v16, v2, v3

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->disconnectHttpURLConnection([Ljava/net/HttpURLConnection;)V

    .line 501
    const/4 v2, 0x1

    move-object/from16 v30, v31

    .end local v31    # "out":Ljava/io/BufferedOutputStream;
    .restart local v30    # "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v28, v29

    .line 536
    .end local v15    # "buffer":[B
    .end local v17    # "count":I
    .end local v18    # "contentLength":J
    .end local v20    # "currentTimeMillis":J
    .end local v27    # "i":I
    .end local v29    # "in":Ljava/io/BufferedInputStream;
    .end local v32    # "readLength":D
    .restart local v28    # "in":Ljava/io/BufferedInputStream;
    :goto_8d
    return v2

    .line 442
    .end local v28    # "in":Ljava/io/BufferedInputStream;
    .end local v30    # "out":Ljava/io/BufferedOutputStream;
    .restart local v15    # "buffer":[B
    .restart local v17    # "count":I
    .restart local v18    # "contentLength":J
    .restart local v20    # "currentTimeMillis":J
    .restart local v27    # "i":I
    .restart local v29    # "in":Ljava/io/BufferedInputStream;
    .restart local v31    # "out":Ljava/io/BufferedOutputStream;
    .restart local v32    # "readLength":D
    :cond_8e
    :try_start_8e
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f1

    .line 443
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "\u7528\u6237\u70b9\u51fb\u4e86\u53d6\u6d88\u64cd\u4f5c"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9c} :catch_9c
    .catchall {:try_start_8e .. :try_end_9c} :catchall_1d1

    .line 507
    .end local v15    # "buffer":[B
    .end local v17    # "count":I
    .end local v20    # "currentTimeMillis":J
    .end local v27    # "i":I
    .end local v32    # "readLength":D
    :catch_9c
    move-exception v23

    move-object/from16 v30, v31

    .end local v31    # "out":Ljava/io/BufferedOutputStream;
    .restart local v30    # "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v28, v29

    .line 508
    .end local v18    # "contentLength":J
    .end local v29    # "in":Ljava/io/BufferedInputStream;
    .local v23, "e":Ljava/lang/Exception;
    .restart local v28    # "in":Ljava/io/BufferedInputStream;
    :goto_a1
    :try_start_a1
    invoke-static/range {v23 .. v23}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_1fa

    .line 511
    :try_start_a4
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->delete()Z
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_1f4
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_1fa

    .line 518
    :goto_a7
    :try_start_a7
    const-string v25, "\u7f51\u7edc\u5f02\u5e38\uff0c\u65e0\u6cd5\u8fde\u63a5\u4e0b\u8f7d\u670d\u52a1\u5668"

    .line 519
    .local v25, "errorMessage":Ljava/lang/String;
    move-object/from16 v0, v23

    instance-of v2, v0, Ljava/net/MalformedURLException;

    if-eqz v2, :cond_1fc

    .line 520
    const-string v25, "\u65e0\u6cd5\u83b7\u53d6\u4e0b\u8f7d\u5730\u5740"

    .line 527
    :cond_b1
    :goto_b1
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lcom/gionee/gsp/result/GnResultCode;->DOWNLOAD_APP_FAILED:I

    invoke-static {v3}, Lcom/gionee/gsp/result/GnResultCode;->getResult(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 528
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 527
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 530
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    .line 529
    invoke-static/range {v2 .. v8}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->updateDialog(Landroid/app/Activity;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/lang/String;IILjava/lang/String;Z)V
    :try_end_da
    .catchall {:try_start_a7 .. :try_end_da} :catchall_1fa

    .line 531
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    .line 533
    aput-object v28, v2, v3

    const/4 v3, 0x1

    aput-object v30, v2, v3

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    .line 534
    aput-object v16, v2, v3

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->disconnectHttpURLConnection([Ljava/net/HttpURLConnection;)V

    .line 536
    const/4 v2, 0x0

    goto :goto_8d

    .line 445
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v25    # "errorMessage":Ljava/lang/String;
    .end local v28    # "in":Ljava/io/BufferedInputStream;
    .end local v30    # "out":Ljava/io/BufferedOutputStream;
    .restart local v15    # "buffer":[B
    .restart local v17    # "count":I
    .restart local v18    # "contentLength":J
    .restart local v20    # "currentTimeMillis":J
    .restart local v27    # "i":I
    .restart local v29    # "in":Ljava/io/BufferedInputStream;
    .restart local v31    # "out":Ljava/io/BufferedOutputStream;
    .restart local v32    # "readLength":D
    :cond_f1
    move/from16 v0, v17

    int-to-double v2, v0

    add-double v32, v32, v2

    .line 446
    :try_start_f6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-ltz v2, :cond_21c

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\u5b89\u88c5\u5305"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 450
    const-string v22, ""

    .line 453
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-nez v2, :cond_1ab

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double v8, v32, v8

    double-to-int v3, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(KB)      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 468
    :goto_13d
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---i="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v26, v27, 0x1

    .end local v27    # "i":I
    .restart local v26    # "i":I
    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 473
    .local v34, "tempStr":Ljava/lang/String;
    new-instance v13, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v34

    invoke-direct {v13, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 474
    .local v13, "style":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/high16 v3, -0x10000

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 475
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v8, 0x22

    .line 474
    invoke-virtual {v13, v2, v3, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 479
    const/4 v14, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p5

    move-object/from16 v10, p4

    move v11, v5

    move v12, v6

    .line 478
    invoke-static/range {v8 .. v14}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->updateDialog(Landroid/app/Activity;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/lang/String;IILandroid/text/SpannableStringBuilder;Z)V

    .line 481
    .end local v13    # "style":Landroid/text/SpannableStringBuilder;
    .end local v34    # "tempStr":Ljava/lang/String;
    :goto_19f
    const/4 v2, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v15, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    move/from16 v27, v26

    .end local v26    # "i":I
    .restart local v27    # "i":I
    goto/16 :goto_47

    .line 462
    :cond_1ab
    move-wide/from16 v0, v18

    long-to-double v2, v0

    div-double v2, v32, v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    double-to-int v5, v2

    .line 464
    add-int/lit8 v6, v5, 0x5

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_13d

    .line 497
    :catch_1cb
    move-exception v23

    .line 499
    .restart local v23    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_1cf} :catch_9c
    .catchall {:try_start_f6 .. :try_end_1cf} :catchall_1d1

    goto/16 :goto_73

    .line 531
    .end local v15    # "buffer":[B
    .end local v17    # "count":I
    .end local v20    # "currentTimeMillis":J
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v27    # "i":I
    .end local v32    # "readLength":D
    :catchall_1d1
    move-exception v2

    move-object/from16 v30, v31

    .end local v31    # "out":Ljava/io/BufferedOutputStream;
    .restart local v30    # "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v28, v29

    .end local v18    # "contentLength":J
    .end local v29    # "in":Ljava/io/BufferedInputStream;
    .restart local v28    # "in":Ljava/io/BufferedInputStream;
    :goto_1d6
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    .line 533
    aput-object v28, v3, v4

    const/4 v4, 0x1

    aput-object v30, v3, v4

    invoke-static {v3}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/net/HttpURLConnection;

    const/4 v4, 0x0

    .line 534
    aput-object v16, v3, v4

    invoke-static {v3}, Lcom/gionee/gsp/util/GnCommonUtil;->disconnectHttpURLConnection([Ljava/net/HttpURLConnection;)V

    .line 535
    throw v2

    .line 504
    .end local v28    # "in":Ljava/io/BufferedInputStream;
    .end local v30    # "out":Ljava/io/BufferedOutputStream;
    .restart local v15    # "buffer":[B
    .restart local v17    # "count":I
    .restart local v18    # "contentLength":J
    .restart local v20    # "currentTimeMillis":J
    .restart local v27    # "i":I
    .restart local v29    # "in":Ljava/io/BufferedInputStream;
    .restart local v31    # "out":Ljava/io/BufferedOutputStream;
    .restart local v32    # "readLength":D
    :cond_1ec
    :try_start_1ec
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "\u4e0b\u8f7d\u7684\u6570\u636e\u957f\u5ea6\u548c\u83b7\u53d6\u5230\u7684\u957f\u5ea6\u4e0d\u4e00\u81f4"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_1f4} :catch_9c
    .catchall {:try_start_1ec .. :try_end_1f4} :catchall_1d1

    .line 512
    .end local v15    # "buffer":[B
    .end local v17    # "count":I
    .end local v18    # "contentLength":J
    .end local v20    # "currentTimeMillis":J
    .end local v27    # "i":I
    .end local v29    # "in":Ljava/io/BufferedInputStream;
    .end local v31    # "out":Ljava/io/BufferedOutputStream;
    .end local v32    # "readLength":D
    .restart local v23    # "e":Ljava/lang/Exception;
    .restart local v28    # "in":Ljava/io/BufferedInputStream;
    .restart local v30    # "out":Ljava/io/BufferedOutputStream;
    :catch_1f4
    move-exception v24

    .line 514
    .local v24, "e1":Ljava/lang/Exception;
    :try_start_1f5
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a7

    .line 531
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v24    # "e1":Ljava/lang/Exception;
    :catchall_1fa
    move-exception v2

    goto :goto_1d6

    .line 521
    .restart local v23    # "e":Ljava/lang/Exception;
    .restart local v25    # "errorMessage":Ljava/lang/String;
    :cond_1fc
    move-object/from16 v0, v23

    instance-of v2, v0, Ljava/net/SocketException;

    if-eqz v2, :cond_206

    .line 522
    const-string v25, "\u7f51\u7edc\u5f02\u5e38\uff0c\u65e0\u6cd5\u8fde\u63a5\u4e0b\u8f7d\u670d\u52a1\u5668"

    .line 523
    goto/16 :goto_b1

    :cond_206
    move-object/from16 v0, v23

    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_b1

    .line 524
    const-string v25, "\u7f51\u7edc\u5f02\u5e38\uff0c\u65e0\u6cd5\u8fde\u63a5\u4e0b\u8f7d\u670d\u52a1\u5668"
    :try_end_20e
    .catchall {:try_start_1f5 .. :try_end_20e} :catchall_1fa

    goto/16 :goto_b1

    .line 531
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v25    # "errorMessage":Ljava/lang/String;
    .end local v28    # "in":Ljava/io/BufferedInputStream;
    .restart local v18    # "contentLength":J
    .restart local v29    # "in":Ljava/io/BufferedInputStream;
    :catchall_210
    move-exception v2

    move-object/from16 v28, v29

    .end local v29    # "in":Ljava/io/BufferedInputStream;
    .restart local v28    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1d6

    .line 507
    .end local v18    # "contentLength":J
    :catch_214
    move-exception v23

    goto/16 :goto_a1

    .end local v28    # "in":Ljava/io/BufferedInputStream;
    .restart local v18    # "contentLength":J
    .restart local v29    # "in":Ljava/io/BufferedInputStream;
    :catch_217
    move-exception v23

    move-object/from16 v28, v29

    .end local v29    # "in":Ljava/io/BufferedInputStream;
    .restart local v28    # "in":Ljava/io/BufferedInputStream;
    goto/16 :goto_a1

    .end local v28    # "in":Ljava/io/BufferedInputStream;
    .end local v30    # "out":Ljava/io/BufferedOutputStream;
    .restart local v15    # "buffer":[B
    .restart local v17    # "count":I
    .restart local v20    # "currentTimeMillis":J
    .restart local v27    # "i":I
    .restart local v29    # "in":Ljava/io/BufferedInputStream;
    .restart local v31    # "out":Ljava/io/BufferedOutputStream;
    .restart local v32    # "readLength":D
    :cond_21c
    move/from16 v26, v27

    .end local v27    # "i":I
    .restart local v26    # "i":I
    goto :goto_19f
.end method

.method public static downloadAppForStandalone(Landroid/app/Activity;Ljava/lang/String;Ljava/io/FileOutputStream;Ljava/io/File;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;)Z
    .registers 33
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .param p3, "savePath"    # Ljava/io/File;
    .param p4, "gnDownloadListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gionee/gsp/GnException;
        }
    .end annotation

    .prologue
    .line 556
    const/4 v5, 0x0

    .line 557
    .local v5, "connection":Ljava/net/HttpURLConnection;
    const/4 v15, 0x0

    .line 558
    .local v15, "in":Ljava/io/BufferedInputStream;
    const/16 v17, 0x0

    .line 559
    .local v17, "out":Ljava/io/BufferedOutputStream;
    const/16 v19, 0x0

    .line 564
    .local v19, "progress":I
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/gionee/gsp/util/GnHttpRequester;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 566
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v21

    move/from16 v0, v21

    int-to-long v6, v0

    .line 575
    .local v6, "contentLength":J
    new-instance v16, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_143
    .catchall {:try_start_6 .. :try_end_1e} :catchall_a6

    .line 576
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .local v16, "in":Ljava/io/BufferedInputStream;
    :try_start_1e
    new-instance v18, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_146
    .catchall {:try_start_1e .. :try_end_27} :catchall_13e

    .line 579
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .local v18, "out":Ljava/io/BufferedOutputStream;
    const/16 v21, 0x2800

    :try_start_29
    move/from16 v0, v21

    new-array v4, v0, [B

    .line 581
    .local v4, "buffer":[B
    const/4 v14, 0x1

    .line 585
    .local v14, "i":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    sub-long v10, v24, v26

    .line 586
    .local v10, "currentTimeMillis":J
    const-wide/16 v22, 0x0

    .line 587
    .local v22, "readLength":D
    :goto_38
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    .local v8, "count":I
    if-gtz v8, :cond_77

    .line 611
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_43} :catch_89
    .catchall {:try_start_29 .. :try_end_43} :catchall_112

    .line 616
    const-wide/16 v24, -0x1

    cmp-long v21, v6, v24

    if-eqz v21, :cond_50

    long-to-double v0, v6

    move-wide/from16 v24, v0

    cmpl-double v21, v24, v22

    if-nez v21, :cond_118

    .line 617
    :cond_50
    const/16 v19, 0x64

    .line 644
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    .line 646
    aput-object v16, v21, v24

    const/16 v24, 0x1

    aput-object v18, v21, v24

    invoke-static/range {v21 .. v21}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    .line 647
    aput-object v5, v21, v24

    invoke-static/range {v21 .. v21}, Lcom/gionee/gsp/util/GnCommonUtil;->disconnectHttpURLConnection([Ljava/net/HttpURLConnection;)V

    .line 618
    const/16 v21, 0x1

    return v21

    .line 589
    :cond_77
    :try_start_77
    invoke-virtual/range {p4 .. p4}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->isCancel()Z

    move-result v21

    if-eqz v21, :cond_ca

    .line 590
    new-instance v21, Ljava/lang/Exception;

    const-string v24, "\u7528\u6237\u70b9\u51fb\u4e86\u53d6\u6d88\u64cd\u4f5c"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_89} :catch_89
    .catchall {:try_start_77 .. :try_end_89} :catchall_112

    .line 624
    .end local v4    # "buffer":[B
    .end local v8    # "count":I
    .end local v10    # "currentTimeMillis":J
    .end local v14    # "i":I
    .end local v22    # "readLength":D
    :catch_89
    move-exception v9

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v15, v16

    .line 625
    .end local v6    # "contentLength":J
    .end local v16    # "in":Ljava/io/BufferedInputStream;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v15    # "in":Ljava/io/BufferedInputStream;
    :goto_8e
    :try_start_8e
    invoke-static {v9}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_a6

    .line 628
    :try_start_91
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->delete()Z
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_124
    .catchall {:try_start_91 .. :try_end_94} :catchall_a6

    .line 635
    :goto_94
    :try_start_94
    const-string v13, "\u7f51\u7edc\u5f02\u5e38\uff0c\u65e0\u6cd5\u8fde\u63a5\u4e0b\u8f7d\u670d\u52a1\u5668"

    .line 636
    .local v13, "errorMessage":Ljava/lang/String;
    instance-of v0, v9, Ljava/net/MalformedURLException;

    move/from16 v21, v0

    if-eqz v21, :cond_12a

    .line 637
    const-string v13, "\u65e0\u6cd5\u83b7\u53d6\u4e0b\u8f7d\u5730\u5740"

    .line 643
    :cond_9e
    :goto_9e
    new-instance v21, Lcom/gionee/gsp/GnException;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Lcom/gionee/gsp/GnException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_a6
    .catchall {:try_start_94 .. :try_end_a6} :catchall_a6

    .line 644
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "errorMessage":Ljava/lang/String;
    :catchall_a6
    move-exception v21

    :goto_a7
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    .line 646
    aput-object v15, v24, v25

    const/16 v25, 0x1

    aput-object v17, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/net/HttpURLConnection;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    .line 647
    aput-object v5, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/gionee/gsp/util/GnCommonUtil;->disconnectHttpURLConnection([Ljava/net/HttpURLConnection;)V

    .line 648
    throw v21

    .line 592
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "contentLength":J
    .restart local v8    # "count":I
    .restart local v10    # "currentTimeMillis":J
    .restart local v14    # "i":I
    .restart local v16    # "in":Ljava/io/BufferedInputStream;
    .restart local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v22    # "readLength":D
    :cond_ca
    int-to-double v0, v8

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    .line 593
    :try_start_cf
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v10

    const-wide/16 v26, 0x0

    cmp-long v21, v24, v26

    if-ltz v21, :cond_107

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 596
    const-wide/16 v24, -0x1

    cmp-long v21, v6, v24

    if-eqz v21, :cond_107

    .line 598
    long-to-double v0, v6

    move-wide/from16 v24, v0

    div-double v24, v22, v24

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v19, v0

    .line 599
    move/from16 v20, v19

    .line 600
    .local v20, "progressUpdate":I
    new-instance v21, Lcom/gionee/gsp/util/GnHttpRequester$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/gionee/gsp/util/GnHttpRequester$1;-><init>(Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 609
    .end local v20    # "progressUpdate":I
    :cond_107
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto/16 :goto_38

    .line 644
    .end local v4    # "buffer":[B
    .end local v8    # "count":I
    .end local v10    # "currentTimeMillis":J
    .end local v14    # "i":I
    .end local v22    # "readLength":D
    :catchall_112
    move-exception v21

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedInputStream;
    .restart local v15    # "in":Ljava/io/BufferedInputStream;
    goto :goto_a7

    .line 621
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "count":I
    .restart local v10    # "currentTimeMillis":J
    .restart local v14    # "i":I
    .restart local v16    # "in":Ljava/io/BufferedInputStream;
    .restart local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v22    # "readLength":D
    :cond_118
    new-instance v21, Lcom/gionee/gsp/GnException;

    const-string v24, "\u4e0b\u8f7d\u7684\u6570\u636e\u957f\u5ea6\u548c\u83b7\u53d6\u5230\u7684\u957f\u5ea6\u4e0d\u4e00\u81f4"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/gionee/gsp/GnException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_124} :catch_89
    .catchall {:try_start_cf .. :try_end_124} :catchall_112

    .line 629
    .end local v4    # "buffer":[B
    .end local v6    # "contentLength":J
    .end local v8    # "count":I
    .end local v10    # "currentTimeMillis":J
    .end local v14    # "i":I
    .end local v16    # "in":Ljava/io/BufferedInputStream;
    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    .end local v22    # "readLength":D
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v15    # "in":Ljava/io/BufferedInputStream;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    :catch_124
    move-exception v12

    .line 631
    .local v12, "e1":Ljava/lang/Exception;
    :try_start_125
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_94

    .line 638
    .end local v12    # "e1":Ljava/lang/Exception;
    .restart local v13    # "errorMessage":Ljava/lang/String;
    :cond_12a
    instance-of v0, v9, Ljava/net/SocketException;

    move/from16 v21, v0

    if-eqz v21, :cond_134

    .line 639
    const-string v13, "\u7f51\u7edc\u5f02\u5e38\uff0c\u65e0\u6cd5\u8fde\u63a5\u4e0b\u8f7d\u670d\u52a1\u5668"

    .line 640
    goto/16 :goto_9e

    :cond_134
    instance-of v0, v9, Ljava/net/SocketTimeoutException;

    move/from16 v21, v0

    if-eqz v21, :cond_9e

    .line 641
    const-string v13, "\u7f51\u7edc\u5f02\u5e38\uff0c\u65e0\u6cd5\u8fde\u63a5\u4e0b\u8f7d\u670d\u52a1\u5668"
    :try_end_13c
    .catchall {:try_start_125 .. :try_end_13c} :catchall_a6

    goto/16 :goto_9e

    .line 644
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "errorMessage":Ljava/lang/String;
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "contentLength":J
    .restart local v16    # "in":Ljava/io/BufferedInputStream;
    :catchall_13e
    move-exception v21

    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedInputStream;
    .restart local v15    # "in":Ljava/io/BufferedInputStream;
    goto/16 :goto_a7

    .line 624
    .end local v6    # "contentLength":J
    :catch_143
    move-exception v9

    goto/16 :goto_8e

    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "contentLength":J
    .restart local v16    # "in":Ljava/io/BufferedInputStream;
    :catch_146
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedInputStream;
    .restart local v15    # "in":Ljava/io/BufferedInputStream;
    goto/16 :goto_8e
.end method

.method static getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 4
    .param p0, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x4e20

    .line 209
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 212
    .local v1, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 213
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 214
    return-object v1
.end method

.method public static getPicData(Ljava/lang/String;)[B
    .registers 13
    .param p0, "fileUrl"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 360
    .local v4, "in":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 361
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 365
    .local v0, "buffer":[B
    :try_start_7
    invoke-static {p0}, Lcom/gionee/gsp/util/GnHttpRequester;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 367
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_74
    .catchall {:try_start_7 .. :try_end_14} :catchall_5a

    .line 369
    .end local v4    # "in":Ljava/io/DataInputStream;
    .local v5, "in":Ljava/io/DataInputStream;
    :try_start_14
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_76
    .catchall {:try_start_14 .. :try_end_19} :catchall_6d

    .line 371
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x1000

    :try_start_1b
    new-array v0, v8, [B

    .line 372
    const/4 v2, 0x0

    .line 373
    .local v2, "count":I
    :goto_1e
    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_3f

    .line 377
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 378
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_44
    .catchall {:try_start_1b .. :try_end_2a} :catchall_70

    move-result-object v8

    .line 383
    const/4 v0, 0x0

    new-array v9, v9, [Ljava/io/Closeable;

    .line 384
    aput-object v5, v9, v10

    aput-object v7, v9, v11

    invoke-static {v9}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    new-array v9, v11, [Ljava/net/HttpURLConnection;

    .line 385
    aput-object v1, v9, v10

    invoke-static {v9}, Lcom/gionee/gsp/util/GnCommonUtil;->disconnectHttpURLConnection([Ljava/net/HttpURLConnection;)V

    move-object v6, v7

    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "out":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 381
    .end local v2    # "count":I
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :goto_3e
    return-object v8

    .line 375
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "count":I
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_3f
    const/4 v8, 0x0

    :try_start_40
    invoke-virtual {v7, v0, v8, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44
    .catchall {:try_start_40 .. :try_end_43} :catchall_70

    goto :goto_1e

    .line 380
    .end local v2    # "count":I
    :catch_44
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "out":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 383
    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :goto_47
    const/4 v0, 0x0

    new-array v8, v9, [Ljava/io/Closeable;

    .line 384
    aput-object v4, v8, v10

    aput-object v6, v8, v11

    invoke-static {v8}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    new-array v8, v11, [Ljava/net/HttpURLConnection;

    .line 385
    aput-object v1, v8, v10

    invoke-static {v8}, Lcom/gionee/gsp/util/GnCommonUtil;->disconnectHttpURLConnection([Ljava/net/HttpURLConnection;)V

    .line 381
    const/4 v8, 0x0

    goto :goto_3e

    .line 382
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_5a
    move-exception v8

    .line 383
    :goto_5b
    const/4 v0, 0x0

    new-array v9, v9, [Ljava/io/Closeable;

    .line 384
    aput-object v4, v9, v10

    aput-object v6, v9, v11

    invoke-static {v9}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    new-array v9, v11, [Ljava/net/HttpURLConnection;

    .line 385
    aput-object v1, v9, v10

    invoke-static {v9}, Lcom/gionee/gsp/util/GnCommonUtil;->disconnectHttpURLConnection([Ljava/net/HttpURLConnection;)V

    .line 386
    throw v8

    .line 382
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catchall_6d
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    goto :goto_5b

    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_70
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "out":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    goto :goto_5b

    .line 380
    :catch_74
    move-exception v3

    goto :goto_47

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catch_76
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    goto :goto_47
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 288
    :try_start_0
    new-instance v2, Lcom/gionee/gsp/util/GnHttpRequester;

    invoke-direct {v2}, Lcom/gionee/gsp/util/GnHttpRequester;-><init>()V

    .line 289
    .local v2, "request":Lcom/gionee/gsp/util/GnHttpRequester;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/gionee/gsp/util/GnHttpRequester;->sendGet(Landroid/content/Context;)Lcom/gionee/gsp/util/GnHttpRespons;

    move-result-object v1

    .line 291
    .local v1, "hr":Lcom/gionee/gsp/util/GnHttpRespons;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/gionee/gsp/util/GnHttpRespons;->getUrlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/gionee/gsp/util/GnHttpRespons;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/gionee/gsp/util/GnHttpRespons;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/gionee/gsp/util/GnHttpRespons;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(I)V

    .line 295
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/gionee/gsp/util/GnHttpRespons;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/gionee/gsp/util/GnHttpRespons;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/gionee/gsp/util/GnHttpRespons;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    .line 303
    .end local v1    # "hr":Lcom/gionee/gsp/util/GnHttpRespons;
    .end local v2    # "request":Lcom/gionee/gsp/util/GnHttpRequester;
    :goto_49
    return-void

    .line 300
    :catch_4a
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_49
.end method

.method private makeContent(Ljava/lang/String;Ljava/net/HttpURLConnection;)Lcom/gionee/gsp/util/GnHttpRespons;
    .registers 15
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "urlConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v2, Lcom/gionee/gsp/util/GnHttpRespons;

    invoke-direct {v2}, Lcom/gionee/gsp/util/GnHttpRespons;-><init>()V

    .line 226
    .local v2, "httpResponser":Lcom/gionee/gsp/util/GnHttpRespons;
    const/4 v0, 0x0

    .line 227
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 229
    .local v4, "l":J
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "-----\u5f00\u59cb\u8bf7\u6c42url\uff0c"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 231
    .local v3, "in":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x2800

    invoke-direct {v0, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 232
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->contentCollection:Ljava/util/Vector;

    .line 233
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 234
    .local v7, "temp":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "line":Ljava/lang/String;
    :goto_3c
    if-nez v6, :cond_f2

    .line 240
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 242
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "ecod":Ljava/lang/String;
    if-nez v1, :cond_49

    .line 244
    iget-object v1, p0, Lcom/gionee/gsp/util/GnHttpRequester;->defaultContentEncoding:Ljava/lang/String;

    .line 246
    :cond_49
    iput-object p1, v2, Lcom/gionee/gsp/util/GnHttpRespons;->urlString:Ljava/lang/String;

    .line 248
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getDefaultPort()I

    move-result v8

    iput v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->defaultPort:I

    .line 249
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->file:Ljava/lang/String;

    .line 250
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->host:Ljava/lang/String;

    .line 251
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->path:Ljava/lang/String;

    .line 252
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    move-result v8

    iput v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->port:I

    .line 253
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->protocol:Ljava/lang/String;

    .line 254
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->query:Ljava/lang/String;

    .line 255
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->ref:Ljava/lang/String;

    .line 256
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->userInfo:Ljava/lang/String;

    .line 258
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v8, v9, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->content:Ljava/lang/String;

    .line 259
    iput-object v1, v2, Lcom/gionee/gsp/util/GnHttpRespons;->contentEncoding:Ljava/lang/String;

    .line 260
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    iput v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->code:I

    .line 261
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->message:Ljava/lang/String;

    .line 262
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->contentType:Ljava/lang/String;

    .line 263
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->method:Ljava/lang/String;

    .line 264
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v8

    iput v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->connectTimeout:I

    .line 265
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v8

    iput v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->readTimeout:I

    .line 267
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "-----\u5b8c\u6210\u8bf7\u6c42url\uff0c"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    .line 269
    return-object v2

    .line 236
    .end local v1    # "ecod":Ljava/lang/String;
    :cond_f2
    iget-object v8, v2, Lcom/gionee/gsp/util/GnHttpRespons;->contentCollection:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3c
.end method

.method public static saveUrlAs(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p0, "fileUrl"    # Ljava/lang/String;
    .param p1, "savePath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 316
    .local v4, "in":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 320
    .local v6, "out":Ljava/io/DataOutputStream;
    :try_start_6
    invoke-static {p0}, Lcom/gionee/gsp/util/GnHttpRequester;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 322
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_91
    .catchall {:try_start_6 .. :try_end_13} :catchall_76

    .line 324
    .end local v4    # "in":Ljava/io/DataInputStream;
    .local v5, "in":Ljava/io/DataInputStream;
    :try_start_13
    new-instance v7, Ljava/io/DataOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_93
    .catchall {:try_start_13 .. :try_end_1d} :catchall_8a

    .line 326
    .end local v6    # "out":Ljava/io/DataOutputStream;
    .local v7, "out":Ljava/io/DataOutputStream;
    const/16 v10, 0x1000

    :try_start_1f
    new-array v0, v10, [B

    .line 327
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 328
    .local v2, "count":I
    :goto_22
    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_40

    .line 332
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2b} :catch_45
    .catchall {:try_start_1f .. :try_end_2b} :catchall_8d

    .line 340
    new-array v10, v12, [Ljava/io/Closeable;

    .line 341
    aput-object v7, v10, v9

    aput-object v5, v10, v8

    invoke-static {v10}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 342
    invoke-static {v1}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    .line 344
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3d
    move-object v6, v7

    .end local v7    # "out":Ljava/io/DataOutputStream;
    .restart local v6    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .line 339
    .end local v0    # "buffer":[B
    .end local v2    # "count":I
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :goto_3f
    return v8

    .line 330
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "out":Ljava/io/DataOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "out":Ljava/io/DataOutputStream;
    :cond_40
    const/4 v10, 0x0

    :try_start_41
    invoke-virtual {v7, v0, v10, v2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_8d

    goto :goto_22

    .line 337
    .end local v0    # "buffer":[B
    .end local v2    # "count":I
    :catch_45
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/DataOutputStream;
    .restart local v6    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .line 338
    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :goto_48
    :try_start_48
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_48 .. :try_end_62} :catchall_76

    .line 340
    new-array v10, v12, [Ljava/io/Closeable;

    .line 341
    aput-object v6, v10, v9

    aput-object v4, v10, v8

    invoke-static {v10}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 342
    invoke-static {v1}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_74

    .line 344
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_74
    move v8, v9

    .line 339
    goto :goto_3f

    .line 340
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_76
    move-exception v10

    :goto_77
    new-array v11, v12, [Ljava/io/Closeable;

    .line 341
    aput-object v6, v11, v9

    aput-object v4, v11, v8

    invoke-static {v11}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 342
    invoke-static {v1}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_89

    .line 344
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 346
    :cond_89
    throw v10

    .line 340
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catchall_8a
    move-exception v10

    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    goto :goto_77

    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "out":Ljava/io/DataOutputStream;
    :catchall_8d
    move-exception v10

    move-object v6, v7

    .end local v7    # "out":Ljava/io/DataOutputStream;
    .restart local v6    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    goto :goto_77

    .line 337
    :catch_91
    move-exception v3

    goto :goto_48

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catch_93
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    goto :goto_48
.end method

.method private send(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gionee/gsp/util/GnHttpRespons;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "propertys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 144
    invoke-static {p1}, Lcom/gionee/gsp/util/GnCommonUtil;->isConnnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 145
    new-instance v5, Ljava/io/IOException;

    sget v6, Lcom/gionee/gsp/result/GnResultCode;->NOT_CONNECTION:I

    invoke-static {v6}, Lcom/gionee/gsp/result/GnResultCode;->getResult(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 147
    :cond_14
    const/4 v3, 0x0

    .line 150
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_15
    sget-object v4, Lcom/gionee/gsp/common/GnCommonConfig;->sRequestUrl:Ljava/lang/String;

    .line 151
    .local v4, "urlString":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    :cond_32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "taskTag"

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    const-string v5, "GET"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    if-eqz p3, :cond_7a

    .line 157
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v2, "param":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 159
    .local v0, "i":I
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_63
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_ea

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    .end local v0    # "i":I
    .end local v2    # "param":Ljava/lang/StringBuffer;
    :cond_7a
    invoke-static {v4}, Lcom/gionee/gsp/util/GnHttpRequester;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 171
    invoke-virtual {v3, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 172
    const-string v5, "Charset"

    const-string v6, "UTF-8"

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 174
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 175
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 177
    if-eqz p4, :cond_a4

    .line 178
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_11d

    .line 182
    :cond_a4
    const-string v5, "POST"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_de

    if-eqz p3, :cond_de

    .line 183
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    .restart local v2    # "param":Ljava/lang/StringBuffer;
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_bb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_12e

    .line 189
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 190
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 191
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 194
    .end local v2    # "param":Ljava/lang/StringBuffer;
    :cond_de
    invoke-direct {p0, v4, v3}, Lcom/gionee/gsp/util/GnHttpRequester;->makeContent(Ljava/lang/String;Ljava/net/HttpURLConnection;)Lcom/gionee/gsp/util/GnHttpRespons;
    :try_end_e1
    .catchall {:try_start_15 .. :try_end_e1} :catchall_114

    move-result-object v5

    .line 195
    new-array v6, v8, [Ljava/net/HttpURLConnection;

    .line 197
    aput-object v3, v6, v9

    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->disconnectHttpURLConnection([Ljava/net/HttpURLConnection;)V

    .line 194
    return-object v5

    .line 159
    .restart local v0    # "i":I
    .restart local v2    # "param":Ljava/lang/StringBuffer;
    :cond_ea
    :try_start_ea
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    .local v1, "key":Ljava/lang/String;
    if-nez v0, :cond_10e

    .line 161
    const-string v5, "?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :goto_f7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_63

    .line 163
    :cond_10e
    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_113
    .catchall {:try_start_ea .. :try_end_113} :catchall_114

    goto :goto_f7

    .line 195
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "param":Ljava/lang/StringBuffer;
    .end local v4    # "urlString":Ljava/lang/String;
    :catchall_114
    move-exception v5

    new-array v6, v8, [Ljava/net/HttpURLConnection;

    .line 197
    aput-object v3, v6, v9

    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->disconnectHttpURLConnection([Ljava/net/HttpURLConnection;)V

    .line 198
    throw v5

    .line 178
    .restart local v4    # "urlString":Ljava/lang/String;
    :cond_11d
    :try_start_11d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    .restart local v1    # "key":Ljava/lang/String;
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9e

    .line 184
    .end local v1    # "key":Ljava/lang/String;
    .restart local v2    # "param":Ljava/lang/StringBuffer;
    :cond_12e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    .restart local v1    # "key":Ljava/lang/String;
    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_14c
    .catchall {:try_start_11d .. :try_end_14c} :catchall_114

    goto/16 :goto_bb
.end method


# virtual methods
.method public getDefaultContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/gionee/gsp/util/GnHttpRequester;->defaultContentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public sendGet(Landroid/content/Context;)Lcom/gionee/gsp/util/GnHttpRespons;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    const-string v0, "GET"

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/gionee/gsp/util/GnHttpRequester;->send(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;

    move-result-object v0

    return-object v0
.end method

.method public sendGet(Landroid/content/Context;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gionee/gsp/util/GnHttpRespons;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/gionee/gsp/util/GnHttpRequester;->send(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;

    move-result-object v0

    return-object v0
.end method

.method public sendGet(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gionee/gsp/util/GnHttpRespons;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "propertys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "GET"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/gionee/gsp/util/GnHttpRequester;->send(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;

    move-result-object v0

    return-object v0
.end method

.method public sendPost(Landroid/content/Context;)Lcom/gionee/gsp/util/GnHttpRespons;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    const-string v0, "POST"

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/gionee/gsp/util/GnHttpRequester;->send(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;

    move-result-object v0

    return-object v0
.end method

.method public sendPost(Landroid/content/Context;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gionee/gsp/util/GnHttpRespons;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "POST"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/gionee/gsp/util/GnHttpRequester;->send(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;

    move-result-object v0

    return-object v0
.end method

.method public sendPost(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gionee/gsp/util/GnHttpRespons;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "propertys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "POST"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/gionee/gsp/util/GnHttpRequester;->send(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultContentEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "defaultContentEncoding"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/gionee/gsp/util/GnHttpRequester;->defaultContentEncoding:Ljava/lang/String;

    .line 284
    return-void
.end method
