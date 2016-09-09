.class public Lcom/duoku/platform/download/utils/PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageReceiver"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/duoku/platform/download/utils/PackageReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/PackageReceiver;->onDownloadCompleted(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/PackageReceiver;->onDownloadPaused(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/PackageReceiver;->onDownloadPausedByUser(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/PackageReceiver;->onDownloadStart(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/PackageReceiver;->onDownloadCancled(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$6(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/PackageReceiver;->onDownloading(Landroid/content/Intent;)V

    return-void
.end method

.method public static isCausedByNet(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    const/16 v2, 0x190

    if-gt v2, p0, :cond_a

    const/16 v2, 0x1e8

    if-lt p0, v2, :cond_12

    .line 324
    :cond_a
    const/16 v2, 0x1f4

    if-gt v2, p0, :cond_13

    const/16 v2, 0x258

    if-ge p0, v2, :cond_13

    .line 353
    :cond_12
    :goto_12
    :pswitch_12
    return v0

    .line 328
    :cond_13
    packed-switch p0, :pswitch_data_20

    :pswitch_16
    goto :goto_12

    :pswitch_17
    move v0, v1

    .line 350
    goto :goto_12

    :pswitch_19
    move v0, v1

    .line 331
    goto :goto_12

    :pswitch_1b
    move v0, v1

    .line 341
    goto :goto_12

    :pswitch_1d
    move v0, v1

    .line 344
    goto :goto_12

    .line 328
    nop

    :pswitch_data_20
    .packed-switch 0x1e8
        :pswitch_17
        :pswitch_12
        :pswitch_16
        :pswitch_16
        :pswitch_19
        :pswitch_12
        :pswitch_12
        :pswitch_1b
        :pswitch_16
        :pswitch_1b
        :pswitch_1b
        :pswitch_1d
    .end packed-switch
.end method

.method private onDownloadCancled(Landroid/content/Intent;)V
    .registers 9

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/PackageReceiver;->parsePackageMode(Landroid/content/Intent;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v6

    .line 174
    new-instance v0, Lcom/duoku/platform/download/mode/QueryInput;

    iget-object v1, v6, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    iget v3, v6, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    iget-object v4, v6, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    iget-object v5, v6, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/mode/QueryInput;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatus(Lcom/duoku/platform/download/mode/QueryInput;)Ljava/util/Map;

    move-result-object v1

    .line 176
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 177
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 179
    const-string v1, "PackageHelper"

    const-string v2, "onDownloadCancled  game %S ,status is  %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v0, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    invoke-static {v0}, Lcom/duoku/platform/download/PackageMode;->getStatusString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method private onDownloadCompleted(Landroid/content/Intent;)V
    .registers 8

    .prologue
    const/16 v5, 0x40

    const/4 v4, 0x0

    .line 237
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/PackageReceiver;->parsePackageMode(Landroid/content/Intent;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    .line 238
    if-nez v0, :cond_a

    .line 304
    :goto_9
    return-void

    .line 242
    :cond_a
    const-string v1, "successful"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 243
    if-eqz v1, :cond_30

    .line 245
    iput v5, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 246
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 270
    :goto_17
    if-eqz v1, :cond_62

    .line 272
    const-string v1, "mark"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->getAppData(Ljava/lang/String;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v1

    .line 274
    iget-boolean v1, v1, Lcom/duoku/platform/download/PackageMark;->isDiffUpdate:Z

    if-eqz v1, :cond_52

    .line 277
    iput v5, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 278
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 279
    invoke-static {v0, v4}, Lcom/duoku/platform/download/utils/PackageHelper;->sendMergeRequest(Lcom/duoku/platform/download/PackageMode;Z)V

    goto :goto_9

    .line 257
    :cond_30
    const/16 v2, 0x20

    iput v2, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 258
    const-string v2, "reason"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 259
    invoke-static {v2}, Lcom/duoku/platform/download/utils/PackageHelper;->getFinalFailReason(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 260
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 264
    iget-object v2, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/duoku/platform/download/utils/PackageReceiver;->isCausedByNet(I)Z

    goto :goto_17

    .line 286
    :cond_52
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadOut(Lcom/duoku/platform/download/PackageMode;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v1

    .line 287
    sget-object v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-virtual {v1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setStatus(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;)V

    .line 289
    invoke-static {v4, v0, v1}, Lcom/duoku/platform/download/utils/PackageHelper;->checkAndNotifyForDownloadedGame(ZLcom/duoku/platform/download/PackageMode;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    .line 290
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateDownloadFinishedNotification()V

    goto :goto_9

    .line 298
    :cond_62
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadOut(Lcom/duoku/platform/download/PackageMode;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v1

    .line 299
    sget-object v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-virtual {v1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setStatus(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;)V

    .line 301
    invoke-static {v4, v0, v1}, Lcom/duoku/platform/download/utils/PackageHelper;->checkAndNotifyForDownloadedGame(ZLcom/duoku/platform/download/PackageMode;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    .line 302
    invoke-static {v1}, Lcom/duoku/platform/download/utils/Notifier;->showDownloadFailedNotification(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    goto :goto_9
.end method

.method private onDownloadPaused(Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/PackageReceiver;->parsePackageMode(Landroid/content/Intent;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    .line 220
    const/16 v1, 0x10

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 221
    const-string v1, "reason"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 222
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->getFinalPauseReason(I)I

    move-result v1

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 224
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 226
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V

    .line 228
    return-void
.end method

.method private onDownloadPausedByUser(Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/PackageReceiver;->parsePackageMode(Landroid/content/Intent;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    .line 205
    const/16 v1, 0x10

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 206
    const/16 v1, 0x323

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 207
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 209
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V

    .line 210
    return-void
.end method

.method private onDownloadStart(Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/PackageReceiver;->parsePackageMode(Landroid/content/Intent;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    .line 191
    const/16 v1, 0x8

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 192
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadOut(Lcom/duoku/platform/download/PackageMode;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_RUNNING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->setStatus(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;)V

    .line 194
    invoke-static {v0}, Lcom/duoku/platform/download/utils/Notifier;->showDownloadStartNotification(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    .line 195
    return-void
.end method

.method private onDownloading(Landroid/content/Intent;)V
    .registers 8

    .prologue
    const-wide/16 v4, -0x1

    .line 149
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/PackageReceiver;->parsePackageMode(Landroid/content/Intent;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    .line 150
    if-nez v0, :cond_9

    .line 163
    :goto_8
    return-void

    .line 154
    :cond_9
    const/16 v1, 0x8

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 155
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 157
    const-string v1, "current_size"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 158
    const-string v1, "total_size"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 159
    iput-wide v2, v0, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 160
    iput-wide v4, v0, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    .line 162
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    goto :goto_8
.end method

.method private parsePackageMode(Landroid/content/Intent;)Lcom/duoku/platform/download/PackageMode;
    .registers 21

    .prologue
    .line 88
    :try_start_0
    const-string v2, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    const-string v2, "dest"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_7c

    move-result-object v10

    .line 92
    if-eqz v10, :cond_1a

    .line 94
    :try_start_12
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_86

    move-result-object v10

    .line 101
    :cond_1a
    :goto_1a
    :try_start_1a
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 102
    const-string v2, "id"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 103
    const-string v2, "mark"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Lcom/duoku/platform/download/utils/PackageHelper;->getAppData(Ljava/lang/String;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v2

    .line 106
    iget-object v3, v2, Lcom/duoku/platform/download/PackageMark;->gameId:Ljava/lang/String;

    .line 108
    iget-object v5, v2, Lcom/duoku/platform/download/PackageMark;->packageName:Ljava/lang/String;

    .line 109
    iget-object v6, v2, Lcom/duoku/platform/download/PackageMark;->version:Ljava/lang/String;

    .line 110
    iget v7, v2, Lcom/duoku/platform/download/PackageMark;->versionCode:I

    .line 112
    const/4 v12, 0x0

    .line 113
    const/4 v13, 0x0

    .line 114
    const-wide/16 v14, 0x0

    .line 115
    const-wide/16 v16, -0x1

    .line 118
    iget-boolean v0, v2, Lcom/duoku/platform/download/PackageMark;->isDiffUpdate:Z

    move/from16 v18, v0

    .line 120
    new-instance v2, Lcom/duoku/platform/download/PackageMode;

    invoke-direct/range {v2 .. v18}, Lcom/duoku/platform/download/PackageMode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;JJZ)V

    .line 126
    const-string v3, "current_size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    const-string v3, "total_size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 128
    const-string v3, "current_size"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 129
    const-string v3, "total_size"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/duoku/platform/download/PackageMode;->totalSize:J
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_7b} :catch_7c

    .line 137
    :cond_7b
    :goto_7b
    return-object v2

    .line 134
    :catch_7c
    move-exception v2

    .line 136
    const-string v3, "PackageReceiver"

    const-string v4, "parsePackageMode error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 v2, 0x0

    goto :goto_7b

    .line 97
    :catch_86
    move-exception v2

    goto :goto_1a
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 35
    new-instance v0, Lcom/duoku/platform/download/utils/PackageReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/duoku/platform/download/utils/PackageReceiver$1;-><init>(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 80
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/PackageReceiver$1;->start()V

    .line 82
    return-void
.end method
