.class final Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;
.super Ljava/lang/Object;
.source "VideoDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader;->downloadVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$downloadDialog:Landroid/app/ProgressDialog;

.field final synthetic val$fileLink:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 35
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$fileName:Ljava/lang/String;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$fileLink:Ljava/lang/String;

    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$downloadDialog:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 27

    .prologue
    .line 39
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/omplay/videos/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "directory":Ljava/lang/String;
    :try_start_1b
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v13, "omletDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_29

    .line 44
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 46
    :cond_29
    new-instance v8, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$fileName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v8, "file":Ljava/io/File;
    const-string v19, "VideoDownloader"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$fileLink:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    .local v18, "url":Ljava/net/URL;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 50
    .local v16, "startTime":J
    const-string v19, "VideoDownloader"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "image download beginning: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$fileLink:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    .line 54
    .local v15, "ucon":Ljava/net/URLConnection;
    const/16 v19, 0x1388

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 55
    const/16 v19, 0x7530

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 58
    invoke-virtual {v15}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 59
    .local v10, "is":Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedInputStream;

    const/16 v19, 0x1400

    move/from16 v0, v19

    invoke-direct {v9, v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 60
    .local v9, "inStream":Ljava/io/BufferedInputStream;
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 61
    .local v14, "outStream":Ljava/io/FileOutputStream;
    const/16 v19, 0x1400

    move/from16 v0, v19

    new-array v4, v0, [B

    .line 64
    .local v4, "buff":[B
    :goto_a9
    invoke-virtual {v9, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v11

    .local v11, "len":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_11c

    .line 65
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v4, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_ba} :catch_bb

    goto :goto_a9

    .line 80
    .end local v4    # "buff":[B
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "inStream":Ljava/io/BufferedInputStream;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "len":I
    .end local v13    # "omletDir":Ljava/io/File;
    .end local v14    # "outStream":Ljava/io/FileOutputStream;
    .end local v15    # "ucon":Ljava/net/URLConnection;
    .end local v16    # "startTime":J
    .end local v18    # "url":Ljava/net/URL;
    :catch_bb
    move-exception v7

    .line 81
    .local v7, "e":Ljava/lang/Exception;
    const-string v19, "VideoDownloader"

    const-string v20, "Error "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$downloadDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->cancel()V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    new-instance v20, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1$2;-><init>(Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_e2
    new-instance v12, Landroid/content/Intent;

    const-string v19, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v12, "mediaScanIntent":Landroid/content/Intent;
    new-instance v19, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$fileName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 93
    .local v5, "contentUri":Landroid/net/Uri;
    invoke-virtual {v12, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    return-void

    .line 68
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v12    # "mediaScanIntent":Landroid/content/Intent;
    .restart local v4    # "buff":[B
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "len":I
    .restart local v13    # "omletDir":Ljava/io/File;
    .restart local v14    # "outStream":Ljava/io/FileOutputStream;
    .restart local v15    # "ucon":Ljava/net/URLConnection;
    .restart local v16    # "startTime":J
    .restart local v18    # "url":Ljava/net/URL;
    :cond_11c
    :try_start_11c
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    .line 69
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 70
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V

    .line 71
    const-string v19, "VideoDownloader"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "download completed in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v16

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " sec"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$downloadDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->cancel()V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;->val$activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    new-instance v20, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_16c} :catch_bb

    goto/16 :goto_e2
.end method
