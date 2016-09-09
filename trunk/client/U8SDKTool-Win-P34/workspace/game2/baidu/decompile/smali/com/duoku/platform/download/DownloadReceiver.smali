.class public Lcom/duoku/platform/download/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field mDownloadManager:Lcom/duoku/platform/download/DownloadManager;

.field mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/duoku/platform/download/DownloadReceiver;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    .line 53
    iput-object v0, p0, Lcom/duoku/platform/download/DownloadReceiver;->mDownloadManager:Lcom/duoku/platform/download/DownloadManager;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/duoku/platform/download/DownloadReceiver;Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadReceiver;->checkAppRunning(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/duoku/platform/download/DownloadReceiver;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadReceiver;->startService(Landroid/content/Context;)V

    return-void
.end method

.method private checkAppRunning(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 174
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 175
    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 179
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    .line 180
    :goto_1e
    if-lt v2, v5, :cond_22

    :cond_20
    move v0, v1

    .line 194
    :goto_21
    return v0

    .line 182
    :cond_22
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 183
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 184
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 185
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 188
    const/4 v0, 0x1

    goto :goto_21

    .line 180
    :cond_48
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1e
.end method

.method private getActivitys(Landroid/content/Context;)Ljava/util/HashSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 450
    const/4 v1, 0x0

    .line 453
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_12} :catch_1d

    move-result-object v0

    move-object v1, v0

    .line 460
    :goto_14
    if-eqz v1, :cond_1c

    .line 462
    const/4 v0, 0x0

    :goto_17
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v3, v3

    if-lt v0, v3, :cond_22

    .line 469
    :cond_1c
    return-object v2

    .line 455
    :catch_1d
    move-exception v0

    .line 458
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_14

    .line 464
    :cond_22
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 465
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method private handleNotificationBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 227
    if-nez v2, :cond_17

    .line 287
    :goto_16
    return-void

    .line 233
    :cond_17
    :try_start_17
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_67

    move-result v0

    if-nez v0, :cond_21

    .line 285
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_16

    .line 237
    :cond_21
    :try_start_21
    sget-object v0, Lcom/duoku/platform/download/Constants;->ACTION_OPEN:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 239
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadConfiguration;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadConfiguration;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration;->getOnNotifierClickListener()Lcom/duoku/platform/download/DownloadConfiguration$a;

    move-result-object v3

    .line 241
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration;->isOpenOnClickSuccessfulDownload()Z

    move-result v0

    .line 242
    if-eqz v0, :cond_3a

    .line 244
    invoke-direct {p0, p1, v2}, Lcom/duoku/platform/download/DownloadReceiver;->openDownload(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 246
    :cond_3a
    if-eqz v3, :cond_4b

    .line 260
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 261
    const/4 v4, 0x1

    int-to-long v6, v0

    invoke-interface {v3, v4, v6, v7}, Lcom/duoku/platform/download/DownloadConfiguration$a;->a(ZJ)V

    .line 263
    :cond_4b
    invoke-direct {p0, p1, v1, v2}, Lcom/duoku/platform/download/DownloadReceiver;->hideNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_4e
    .catchall {:try_start_21 .. :try_end_4e} :catchall_67

    .line 285
    :goto_4e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_16

    .line 265
    :cond_52
    :try_start_52
    sget-object v0, Lcom/duoku/platform/download/Constants;->ACTION_LIST:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 267
    invoke-direct {p0, p2, v2}, Lcom/duoku/platform/download/DownloadReceiver;->sendNotificationClickedIntent(Landroid/content/Intent;Landroid/database/Cursor;)V

    .line 270
    const-string v0, "status"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 271
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_66
    .catchall {:try_start_52 .. :try_end_66} :catchall_67

    goto :goto_4e

    .line 284
    :catchall_67
    move-exception v0

    .line 285
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 286
    throw v0

    .line 280
    :cond_6c
    :try_start_6c
    invoke-direct {p0, p1, v1, v2}, Lcom/duoku/platform/download/DownloadReceiver;->hideNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_67

    goto :goto_4e
.end method

.method private hideNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 301
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadReceiver;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/nu;->a(J)V

    .line 303
    const-string v0, "status"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 304
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 305
    const-string v1, "visibility"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 306
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 307
    invoke-static {v0}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    if-ne v1, v0, :cond_3d

    .line 309
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 310
    const-string v1, "visibility"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    :cond_3d
    return-void
.end method

.method private isAppContainsAc(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadReceiver;->getActivitys(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 475
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isGameSearchAppTop(Landroid/content/Context;)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 414
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 415
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 416
    const-string v0, ""

    .line 417
    const-string v0, ""

    .line 418
    if-eqz v5, :cond_1f

    .line 420
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v3, v1

    :goto_1d
    if-lt v3, v6, :cond_21

    :cond_1f
    move v0, v1

    .line 443
    :goto_20
    return v0

    .line 422
    :cond_21
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 423
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 425
    if-nez v0, :cond_3d

    move v0, v1

    .line 427
    goto :goto_20

    .line 431
    :cond_3d
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/download/DownloadReceiver;->isAppContainsAc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v2

    .line 433
    goto :goto_20

    .line 420
    :cond_4b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1d
.end method

.method private openDownload(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8

    .prologue
    .line 326
    const-string v0, "_data"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    const-string v0, "mimetype"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_27

    .line 332
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 335
    :cond_27
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 340
    :try_start_36
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_39
    .catch Landroid/content/ActivityNotFoundException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 347
    :goto_39
    return-void

    .line 342
    :catch_3a
    move-exception v0

    .line 344
    const-string v1, "dk_download_no_application_title"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 345
    const-string v1, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no activity for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method private sendNotificationClickedIntent(Landroid/content/Intent;Landroid/database/Cursor;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 359
    const-string v0, "notificationpackage"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 360
    if-nez v2, :cond_e

    .line 394
    :cond_d
    :goto_d
    return-void

    .line 365
    :cond_e
    const-string v0, "notificationclass"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 366
    const-string v0, "is_public_api"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    .line 369
    :goto_25
    if-eqz v0, :cond_39

    .line 371
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_NOTIFICATION_CLICKED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    :goto_31
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadReceiver;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/nu;->a(Landroid/content/Intent;)V

    goto :goto_d

    .line 366
    :cond_37
    const/4 v0, 0x0

    goto :goto_25

    .line 376
    :cond_39
    if-eqz v3, :cond_d

    .line 380
    new-instance v0, Landroid/content/Intent;

    sget-object v4, Lcom/duoku/platform/download/Downloads$Impl;->ACTION_NOTIFICATION_CLICKED:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v2, "multiple"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 384
    sget-object v1, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_31

    .line 388
    :cond_53
    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 389
    sget-object v1, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_31
.end method

.method private startIfNecessary(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 156
    new-instance v0, Lcom/duoku/platform/download/DownloadReceiver$2;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/DownloadReceiver$2;-><init>(Lcom/duoku/platform/download/DownloadReceiver;Landroid/content/Context;)V

    .line 167
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadReceiver$2;->start()V

    .line 169
    return-void
.end method

.method private startService(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/download/DownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 405
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    .line 58
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadReceiver;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nt;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/nt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadReceiver;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    .line 62
    :cond_b
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadConfiguration;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadConfiguration;

    move-result-object v0

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 67
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration;->isAutoResume()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 69
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadReceiver;->startService(Landroid/content/Context;)V

    .line 147
    :cond_24
    :goto_24
    return-void

    .line 73
    :cond_25
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadReceiver;->startIfNecessary(Landroid/content/Context;)V

    goto :goto_24

    .line 77
    :cond_29
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 83
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration;->isAutoResume()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 84
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_24

    .line 87
    :cond_3b
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 96
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 97
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 101
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadReceiver;->startService(Landroid/content/Context;)V

    .line 103
    new-instance v0, Lcom/duoku/platform/download/DownloadReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/DownloadReceiver$1;-><init>(Lcom/duoku/platform/download/DownloadReceiver;Landroid/content/Context;)V

    .line 109
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadReceiver$1;->start()V

    goto :goto_24

    .line 119
    :cond_63
    sget-object v0, Lcom/duoku/platform/download/Constants;->ACTION_RETRY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 121
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_24

    .line 123
    :cond_6f
    sget-object v0, Lcom/duoku/platform/download/Constants;->ACTION_OPEN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    sget-object v0, Lcom/duoku/platform/download/Constants;->ACTION_LIST:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    sget-object v0, Lcom/duoku/platform/download/Constants;->ACTION_HIDE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 125
    :cond_87
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/DownloadReceiver;->handleNotificationBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_24

    .line 127
    :cond_8b
    sget-object v0, Lcom/duoku/platform/download/Constants;->ACTION_REDOWNLOAD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 129
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadReceiver;->mDownloadManager:Lcom/duoku/platform/download/DownloadManager;

    if-nez v0, :cond_9d

    .line 132
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadReceiver;->mDownloadManager:Lcom/duoku/platform/download/DownloadManager;

    .line 134
    :cond_9d
    sget-object v0, Lcom/duoku/platform/download/Constants;->DOWNLOAD_ID:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 137
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadReceiver;->mDownloadManager:Lcom/duoku/platform/download/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    invoke-virtual {v2, p1, v3}, Lcom/duoku/platform/download/DownloadManager;->restartDownload(Landroid/content/Context;[J)V

    goto/16 :goto_24
.end method
