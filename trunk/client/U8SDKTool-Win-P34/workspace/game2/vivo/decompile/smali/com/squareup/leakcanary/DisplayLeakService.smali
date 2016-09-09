.class public Lcom/squareup/leakcanary/DisplayLeakService;
.super Lcom/squareup/leakcanary/AbstractAnalysisResultService;
.source "DisplayLeakService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/squareup/leakcanary/AbstractAnalysisResultService;-><init>()V

    return-void
.end method

.method private notify(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 12
    .param p1, "contentTitle"    # Ljava/lang/String;
    .param p2, "contentText"    # Ljava/lang/String;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const v6, 0x108008a

    .line 98
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/squareup/leakcanary/DisplayLeakService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 100
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_2f

    .line 101
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 102
    .local v1, "notification":Landroid/app/Notification;
    iput v6, v1, Landroid/app/Notification;->icon:I

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 104
    move-object v2, v1

    .line 105
    .local v2, "notification2":Landroid/app/Notification;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 106
    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 117
    .end local v2    # "notification2":Landroid/app/Notification;
    :goto_28
    const v4, -0x21504111

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 118
    return-void

    .line 109
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_2f
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 110
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_5c

    .line 111
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 112
    .restart local v1    # "notification":Landroid/app/Notification;
    goto :goto_28

    .line 114
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_5c
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .restart local v1    # "notification":Landroid/app/Notification;
    goto :goto_28
.end method


# virtual methods
.method protected afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V
    .registers 4
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "result"    # Lcom/squareup/leakcanary/AnalysisResult;
    .param p3, "leakInfo"    # Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method

.method protected final onHeapAnalyzed(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V
    .registers 28
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "result"    # Lcom/squareup/leakcanary/AnalysisResult;

    .prologue
    .line 26
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/leakcanary/LeakCanary;->leakInfo(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Z)Ljava/lang/String;

    move-result-object v13

    .line 27
    .local v13, "leakInfo":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0xfa0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7b

    .line 28
    const-string v23, "LeakCanary"

    move-object/from16 v0, v23

    invoke-static {v0, v13}, Lcom/squareup/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_21
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_97

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/squareup/leakcanary/AnalysisResult;->leakFound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_39

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    move/from16 v23, v0

    if-eqz v23, :cond_97

    .line 39
    :cond_39
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    move/from16 v23, v0

    if-eqz v23, :cond_71

    .line 40
    invoke-static/range {p0 .. p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v19

    .line 41
    .local v19, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Ignored "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " leak"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "contentTitle":Ljava/lang/String;
    const-string v5, "Click to see previous leaks"

    .line 43
    .local v5, "contentText":Ljava/lang/String;
    const-string v23, "Click to see previous leaks"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Lcom/squareup/leakcanary/DisplayLeakService;->notify(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 45
    .end local v5    # "contentText":Ljava/lang/String;
    .end local v7    # "contentTitle":Ljava/lang/String;
    .end local v19    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_71
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13}, Lcom/squareup/leakcanary/DisplayLeakService;->afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V

    .line 94
    :cond_7a
    :goto_7a
    return-void

    .line 31
    :cond_7b
    const-string v23, "\n"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 33
    .local v16, "lines":[Ljava/lang/String;
    move-object/from16 v4, v16

    .local v4, "array":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v14, v0

    .local v14, "length":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_89
    if-ge v12, v14, :cond_21

    .line 34
    aget-object v15, v4, v12

    .line 35
    .local v15, "line":Ljava/lang/String;
    const-string v23, "LeakCanary"

    move-object/from16 v0, v23

    invoke-static {v0, v15}, Lcom/squareup/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    add-int/lit8 v12, v12, 0x1

    goto :goto_89

    .line 48
    .end local v4    # "array":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "length":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "lines":[Ljava/lang/String;
    :cond_97
    const/16 v17, 0x64

    .line 49
    .local v17, "maxStoredLeaks":I
    const/16 v23, 0x64

    invoke-static/range {v23 .. v23}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->findNextAvailableHprofFile(I)Ljava/io/File;

    move-result-object v21

    .line 50
    .local v21, "renamedFile":Ljava/io/File;
    if-nez v21, :cond_b2

    .line 51
    const-string v23, "LeakCanary"

    const-string v24, "Leak result dropped because we already store 100 leak traces."

    invoke-static/range {v23 .. v24}, Lcom/squareup/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13}, Lcom/squareup/leakcanary/DisplayLeakService;->afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V

    goto :goto_7a

    .line 55
    :cond_b2
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/squareup/leakcanary/HeapDump;->renameFile(Ljava/io/File;)Lcom/squareup/leakcanary/HeapDump;

    move-result-object p1

    .line 56
    invoke-static/range {v21 .. v21}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->leakResultFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v22

    .line 57
    .local v22, "resultFile":Ljava/io/File;
    const/4 v10, 0x0

    .line 59
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_bf
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c6} :catch_134
    .catchall {:try_start_bf .. :try_end_c6} :catchall_153

    .line 60
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    :try_start_c6
    new-instance v18, Ljava/io/ObjectOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    .local v18, "oos":Ljava/io/ObjectOutputStream;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 62
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_db} :catch_166
    .catchall {:try_start_c6 .. :try_end_db} :catchall_163

    .line 70
    if-eqz v11, :cond_e0

    .line 72
    :try_start_dd
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_15f

    .line 77
    :cond_e0
    :goto_e0
    if-eqz v11, :cond_e5

    .line 79
    :try_start_e2
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_161

    .line 83
    :cond_e5
    :goto_e5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v20

    .line 85
    .local v20, "pendingIntent2":Landroid/app/PendingIntent;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_15a

    .line 86
    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " has leaked"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "contentTitle2":Ljava/lang/String;
    :goto_11c
    const-string v6, "Click for more details"

    .line 92
    .local v6, "contentText2":Ljava/lang/String;
    const-string v23, "Click for more details"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v0, v8, v1, v2}, Lcom/squareup/leakcanary/DisplayLeakService;->notify(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 93
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13}, Lcom/squareup/leakcanary/DisplayLeakService;->afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 64
    .end local v6    # "contentText2":Ljava/lang/String;
    .end local v8    # "contentTitle2":Ljava/lang/String;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "oos":Ljava/io/ObjectOutputStream;
    .end local v20    # "pendingIntent2":Landroid/app/PendingIntent;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_134
    move-exception v9

    .line 65
    .local v9, "e":Ljava/io/IOException;
    :goto_135
    :try_start_135
    const-string v23, "LeakCanary"

    const-string v24, "Could not save leak analysis result to disk"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Lcom/squareup/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13}, Lcom/squareup/leakcanary/DisplayLeakService;->afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V
    :try_end_149
    .catchall {:try_start_135 .. :try_end_149} :catchall_153

    .line 70
    if-eqz v10, :cond_7a

    .line 72
    :try_start_14b
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_150

    goto/16 :goto_7a

    .line 74
    :catch_150
    move-exception v23

    goto/16 :goto_7a

    .line 69
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_153
    move-exception v23

    .line 70
    :goto_154
    if-eqz v10, :cond_159

    .line 72
    :try_start_156
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_159} :catch_15d

    .line 76
    :cond_159
    :goto_159
    throw v23

    .line 89
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v20    # "pendingIntent2":Landroid/app/PendingIntent;
    :cond_15a
    const-string v8, "Leak analysis failed"

    .restart local v8    # "contentTitle2":Ljava/lang/String;
    goto :goto_11c

    .line 74
    .end local v8    # "contentTitle2":Ljava/lang/String;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "oos":Ljava/io/ObjectOutputStream;
    .end local v20    # "pendingIntent2":Landroid/app/PendingIntent;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_15d
    move-exception v24

    goto :goto_159

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "oos":Ljava/io/ObjectOutputStream;
    :catch_15f
    move-exception v23

    goto :goto_e0

    .line 81
    :catch_161
    move-exception v23

    goto :goto_e5

    .line 69
    .end local v18    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_163
    move-exception v23

    move-object v10, v11

    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    goto :goto_154

    .line 64
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :catch_166
    move-exception v9

    move-object v10, v11

    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    goto :goto_135
.end method
