.class Lcom/vivo/upgrade/CheckAppUpdate$6;
.super Ljava/lang/Object;
.source "CheckAppUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/upgrade/CheckAppUpdate;->downloadApk(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/upgrade/CheckAppUpdate;

.field private final synthetic val$downloadMd5:Ljava/lang/String;

.field private final synthetic val$downloadUrl:Ljava/lang/String;

.field private final synthetic val$level:I

.field private final synthetic val$lowMd5:Ljava/lang/String;

.field private final synthetic val$mode:I

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/vivo/upgrade/CheckAppUpdate;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    iput p2, p0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$size:I

    iput p3, p0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$level:I

    iput-object p4, p0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$downloadUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$name:Ljava/lang/String;

    iput-object p6, p0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$downloadMd5:Ljava/lang/String;

    iput-object p7, p0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$lowMd5:Ljava/lang/String;

    iput p8, p0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$mode:I

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$size:I

    int-to-long v4, v3

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->preDownload(J)Z
    invoke-static {v2, v4, v5}, Lcom/vivo/upgrade/CheckAppUpdate;->access$26(Lcom/vivo/upgrade/CheckAppUpdate;J)Z

    move-result v2

    if-nez v2, :cond_32

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 743
    .local v17, "failMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$level:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 842
    .end local v17    # "failMsg":Landroid/os/Message;
    :goto_31
    return-void

    .line 749
    :cond_32
    :try_start_32
    new-instance v29, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$downloadUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/vivo/upgrade/CheckAppUpdate;->getDownloadUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 751
    .local v29, "url":Ljava/net/URL;
    invoke-virtual/range {v29 .. v29}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    .line 750
    check-cast v13, Ljava/net/HttpURLConnection;

    .line 752
    .local v13, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    .line 753
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v22

    .line 754
    .local v22, "length":I
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    .line 756
    .local v21, "is":Ljava/io/InputStream;
    new-instance v18, Ljava/io/File;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->APP_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/vivo/upgrade/CheckAppUpdate;->access$13()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 757
    .local v18, "file":Ljava/io/File;
    invoke-static/range {v18 .. v18}, Lcom/vivo/upgrade/utils/Util;->delete(Ljava/io/File;)V

    .line 758
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->APP_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/vivo/upgrade/CheckAppUpdate;->access$13()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 761
    .local v11, "apkFilePath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 762
    .local v10, "apkFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_96

    .line 763
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 766
    :cond_96
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 767
    .local v19, "fos":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 768
    .local v14, "count":I
    const/16 v2, 0x400

    new-array v12, v2, [B

    .line 769
    .local v12, "buf":[B
    const/16 v20, 0x0

    .line 771
    .local v20, "i":I
    :cond_a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$size:I

    int-to-long v4, v3

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->preDownload(J)Z
    invoke-static {v2, v4, v5}, Lcom/vivo/upgrade/CheckAppUpdate;->access$26(Lcom/vivo/upgrade/CheckAppUpdate;J)Z

    move-result v2

    if-nez v2, :cond_125

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;

    move-result-object v2

    .line 773
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 774
    .restart local v17    # "failMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$level:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 813
    .end local v17    # "failMsg":Landroid/os/Message;
    :goto_d5
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 814
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_db
    .catch Ljava/net/MalformedURLException; {:try_start_32 .. :try_end_db} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_db} :catch_1db

    goto/16 :goto_31

    .line 815
    .end local v10    # "apkFile":Ljava/io/File;
    .end local v11    # "apkFilePath":Ljava/lang/String;
    .end local v12    # "buf":[B
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local v14    # "count":I
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "i":I
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v22    # "length":I
    .end local v29    # "url":Ljava/net/URL;
    :catch_dd
    move-exception v16

    .line 816
    .local v16, "e":Ljava/net/MalformedURLException;
    const-string v2, "Upgrade.CheckAppUpdate"

    const-string v3, "MalformedURLException"

    invoke-static {v2, v3}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {v16 .. v16}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mTryNum:I
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$28(Lcom/vivo/upgrade/CheckAppUpdate;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_237

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mTryNum:I
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$28(Lcom/vivo/upgrade/CheckAppUpdate;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->access$29(Lcom/vivo/upgrade/CheckAppUpdate;I)V

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$downloadUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$size:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$level:I

    .line 821
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$downloadMd5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$lowMd5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$mode:I

    .line 820
    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->downloadApk(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v2 .. v9}, Lcom/vivo/upgrade/CheckAppUpdate;->access$11(Lcom/vivo/upgrade/CheckAppUpdate;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_31

    .line 779
    .end local v16    # "e":Ljava/net/MalformedURLException;
    .restart local v10    # "apkFile":Ljava/io/File;
    .restart local v11    # "apkFilePath":Ljava/lang/String;
    .restart local v12    # "buf":[B
    .restart local v13    # "conn":Ljava/net/HttpURLConnection;
    .restart local v14    # "count":I
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "i":I
    .restart local v21    # "is":Ljava/io/InputStream;
    .restart local v22    # "length":I
    .restart local v29    # "url":Ljava/net/URL;
    :cond_125
    :try_start_125
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I

    move-result v24

    .line 780
    .local v24, "numread":I
    add-int v14, v14, v24

    .line 781
    int-to-float v2, v14

    move/from16 v0, v22

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v27, v2, v3

    .line 782
    .local v27, "temp":F
    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 783
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 782
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 784
    .local v26, "showProgress":Ljava/lang/String;
    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 786
    .local v25, "progress":I
    move/from16 v0, v20

    move/from16 v1, v25

    if-eq v0, v1, :cond_153

    .line 787
    move/from16 v20, v25

    .line 790
    :cond_153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 791
    .local v28, "updateMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$level:I

    move-object/from16 v0, v28

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 792
    move/from16 v0, v25

    move-object/from16 v1, v28

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 793
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 796
    if-gtz v24, :cond_223

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 798
    .local v23, "msg":Landroid/os/Message;
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 799
    .local v15, "data":Landroid/os/Bundle;
    const-string v2, "name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$name:Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v2, "downloadMd5"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$downloadMd5:Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v2, "lowMd5"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$lowMd5:Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v2, "mode"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$mode:I

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 803
    const-string v2, "contentLength"

    move/from16 v0, v22

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 804
    move-object/from16 v0, v23

    iput-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 805
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$level:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1d9
    .catch Ljava/net/MalformedURLException; {:try_start_125 .. :try_end_1d9} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_1d9} :catch_1db

    goto/16 :goto_d5

    .line 828
    .end local v10    # "apkFile":Ljava/io/File;
    .end local v11    # "apkFilePath":Ljava/lang/String;
    .end local v12    # "buf":[B
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local v14    # "count":I
    .end local v15    # "data":Landroid/os/Bundle;
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "i":I
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v22    # "length":I
    .end local v23    # "msg":Landroid/os/Message;
    .end local v24    # "numread":I
    .end local v25    # "progress":I
    .end local v26    # "showProgress":Ljava/lang/String;
    .end local v27    # "temp":F
    .end local v28    # "updateMsg":Landroid/os/Message;
    .end local v29    # "url":Ljava/net/URL;
    :catch_1db
    move-exception v16

    .line 829
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 830
    const-string v2, "Upgrade.CheckAppUpdate"

    const-string v3, "IOException"

    invoke-static {v2, v3}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mTryNum:I
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$28(Lcom/vivo/upgrade/CheckAppUpdate;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_25b

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mTryNum:I
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$28(Lcom/vivo/upgrade/CheckAppUpdate;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->access$29(Lcom/vivo/upgrade/CheckAppUpdate;I)V

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$downloadUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$size:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$level:I

    .line 834
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$downloadMd5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$lowMd5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$mode:I

    .line 833
    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->downloadApk(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v2 .. v9}, Lcom/vivo/upgrade/CheckAppUpdate;->access$11(Lcom/vivo/upgrade/CheckAppUpdate;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_31

    .line 810
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v10    # "apkFile":Ljava/io/File;
    .restart local v11    # "apkFilePath":Ljava/lang/String;
    .restart local v12    # "buf":[B
    .restart local v13    # "conn":Ljava/net/HttpURLConnection;
    .restart local v14    # "count":I
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "i":I
    .restart local v21    # "is":Ljava/io/InputStream;
    .restart local v22    # "length":I
    .restart local v24    # "numread":I
    .restart local v25    # "progress":I
    .restart local v26    # "showProgress":Ljava/lang/String;
    .restart local v27    # "temp":F
    .restart local v28    # "updateMsg":Landroid/os/Message;
    .restart local v29    # "url":Ljava/net/URL;
    :cond_223
    const/4 v2, 0x0

    :try_start_224
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v12, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mIsCancelDownload:Z
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$16(Lcom/vivo/upgrade/CheckAppUpdate;)Z
    :try_end_232
    .catch Ljava/net/MalformedURLException; {:try_start_224 .. :try_end_232} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_232} :catch_1db

    move-result v2

    if-eqz v2, :cond_a4

    goto/16 :goto_d5

    .line 823
    .end local v10    # "apkFile":Ljava/io/File;
    .end local v11    # "apkFilePath":Ljava/lang/String;
    .end local v12    # "buf":[B
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local v14    # "count":I
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "i":I
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v22    # "length":I
    .end local v24    # "numread":I
    .end local v25    # "progress":I
    .end local v26    # "showProgress":Ljava/lang/String;
    .end local v27    # "temp":F
    .end local v28    # "updateMsg":Landroid/os/Message;
    .end local v29    # "url":Ljava/net/URL;
    .local v16, "e":Ljava/net/MalformedURLException;
    :cond_237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;

    move-result-object v2

    .line 824
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 825
    .restart local v23    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$level:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_31

    .line 836
    .end local v23    # "msg":Landroid/os/Message;
    .local v16, "e":Ljava/lang/Exception;
    :cond_25b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;

    move-result-object v2

    .line 837
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 838
    .restart local v23    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->val$level:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/upgrade/CheckAppUpdate$6;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_31
.end method
