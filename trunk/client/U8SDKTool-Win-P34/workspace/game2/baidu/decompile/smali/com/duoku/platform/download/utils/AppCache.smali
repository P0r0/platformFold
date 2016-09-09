.class public Lcom/duoku/platform/download/utils/AppCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/utils/AppCache$a;
    }
.end annotation


# static fields
.field static INSTANCE:Lcom/duoku/platform/download/utils/AppCache; = null

.field public static final TAG:Ljava/lang/String; = "AppCache"


# instance fields
.field private downloadList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile initialized:Z

.field private installedList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private myBroadcastReceiver:Lcom/duoku/platform/download/utils/AppCache$a;

.field private updatableList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/duoku/platform/download/mode/UpdatableAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private useCache:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/duoku/platform/download/utils/AppCache;->useCache:Z

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->updatableList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->downloadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->installedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    iput-boolean v1, p0, Lcom/duoku/platform/download/utils/AppCache;->initialized:Z

    .line 31
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppCache;->registerReceiver(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/duoku/platform/download/utils/AppCache;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/utils/AppCache;->notifyAppsChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1(Lcom/duoku/platform/download/utils/AppCache;Z)V
    .registers 2

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/duoku/platform/download/utils/AppCache;->initialized:Z

    return-void
.end method

.method public static getInstance()Lcom/duoku/platform/download/utils/AppCache;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/duoku/platform/download/utils/AppCache;->INSTANCE:Lcom/duoku/platform/download/utils/AppCache;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Lcom/duoku/platform/download/utils/AppCache;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/AppCache;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/utils/AppCache;->INSTANCE:Lcom/duoku/platform/download/utils/AppCache;

    .line 45
    :cond_b
    sget-object v0, Lcom/duoku/platform/download/utils/AppCache;->INSTANCE:Lcom/duoku/platform/download/utils/AppCache;

    return-object v0
.end method

.method private logDownloadLoad()V
    .registers 9

    .prologue
    .line 331
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->downloadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 332
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-lt v1, v2, :cond_b

    .line 338
    return-void

    .line 334
    :cond_b
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->downloadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 335
    sget-boolean v3, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v3, :cond_55

    .line 336
    const-string v3, "AppCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downloadList["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method private notifyAppsChanged(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 189
    new-instance v0, Lcom/duoku/platform/download/utils/AppCache$1;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/utils/AppCache$1;-><init>(Lcom/duoku/platform/download/utils/AppCache;Landroid/content/Context;)V

    .line 201
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppCache$1;->start()V

    .line 203
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->myBroadcastReceiver:Lcom/duoku/platform/download/utils/AppCache$a;

    if-nez v0, :cond_8e

    .line 241
    new-instance v0, Lcom/duoku/platform/download/utils/AppCache$a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/AppCache$a;-><init>(Lcom/duoku/platform/download/utils/AppCache;)V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->myBroadcastReceiver:Lcom/duoku/platform/download/utils/AppCache$a;

    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "duoku.platform.download.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 243
    const-string v1, "duoku.platform.download.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getSender()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->myBroadcastReceiver:Lcom/duoku/platform/download/utils/AppCache$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    const-string v1, "duoku.platform.download.intent.action.DOWNLOAD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getSender()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->myBroadcastReceiver:Lcom/duoku/platform/download/utils/AppCache$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    const-string v1, "duoku.platform.download.intent.action.INSTALL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getSender()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->myBroadcastReceiver:Lcom/duoku/platform/download/utils/AppCache$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    const-string v1, "duoku.platform.download.intent.action.IGNORED_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getSender()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->myBroadcastReceiver:Lcom/duoku/platform/download/utils/AppCache$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 264
    const-string v1, "duoku.platform.download.intent.action.INSTALLEDLIST_INITIALIZED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v1, "duoku.platform.download.intent.action.WHITELIST_INITIALIZED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getSender()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->myBroadcastReceiver:Lcom/duoku/platform/download/utils/AppCache$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    const-string v1, "duoku.platform.download.intent.action.PRE_PACKAGE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getSender()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->myBroadcastReceiver:Lcom/duoku/platform/download/utils/AppCache$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    :cond_8e
    return-void
.end method

.method private setDownload(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->downloadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 65
    if-eqz p1, :cond_c

    .line 67
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->downloadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    :cond_c
    return-void
.end method

.method private setInstall(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->installedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 118
    if-eqz p1, :cond_c

    .line 120
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->installedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    :cond_c
    return-void
.end method

.method private setUnpdatable(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/UpdatableAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->updatableList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 55
    if-eqz p1, :cond_c

    .line 57
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->updatableList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_c
    return-void
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->myBroadcastReceiver:Lcom/duoku/platform/download/utils/AppCache$a;

    if-eqz v0, :cond_10

    .line 293
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getSender()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppCache;->myBroadcastReceiver:Lcom/duoku/platform/download/utils/AppCache$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->myBroadcastReceiver:Lcom/duoku/platform/download/utils/AppCache$a;

    .line 296
    :cond_10
    return-void
.end method


# virtual methods
.method public getDownloads()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppCache;->downloadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInstalleds()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 78
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_4f

    .line 80
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    const-string v0, ""

    .line 83
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppCache;->installedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_9c

    .line 85
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppCache;->installedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_57

    .line 91
    :goto_25
    const-string v0, "\r\n------------------------\r\n\tDATE: %s\r\n\tINSTALLED GAMES: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0.test.installeds.log."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "yyyy.MM.dd.HH"

    invoke-static {v2, v3, v4}, Lcom/duoku/platform/download/utils/DateUtil;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/duoku/platform/download/utils/FileHelper;->saveResultToLogFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    :cond_4f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppCache;->installedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 85
    :cond_57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/BaseAppInfo;

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/BaseAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/BaseAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/BaseAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1f

    :cond_9c
    move-object v1, v0

    goto :goto_25
.end method

.method public getPopNumber(Landroid/content/Context;)I
    .registers 7

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/AppCache;->useCache:Z

    if-nez v0, :cond_d

    .line 209
    invoke-static {p1}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppManager;->getPopNumberFromDB()I

    move-result v0

    .line 228
    :cond_c
    :goto_c
    return v0

    .line 213
    :cond_d
    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->updatableList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 214
    const/4 v0, 0x0

    .line 215
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 222
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_41

    .line 223
    const-string v0, "AppCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[getPopNumber]updatable but not ignored count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " all updatable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_41
    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->downloadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 225
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 226
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 227
    const-string v1, "PopNumber"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[AppCache#getPopNumber]download size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 215
    :cond_6f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    .line 217
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->isIgnoreUpdate()Z

    move-result v0

    if-nez v0, :cond_15

    .line 219
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15
.end method

.method public getUnpdatable()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/UpdatableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppCache;->updatableList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isInitialize()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/AppCache;->useCache:Z

    if-nez v0, :cond_6

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_5
    return v0

    :cond_6
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/AppCache;->initialized:Z

    goto :goto_5
.end method

.method public onCreate()Ljava/lang/Runnable;
    .registers 3

    .prologue
    .line 357
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 358
    const-string v0, "AppCache"

    const-string v1, "[AppCache]onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_b
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->updatableList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 360
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->downloadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 361
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->installedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 363
    new-instance v0, Lcom/duoku/platform/download/utils/AppCache$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/AppCache$2;-><init>(Lcom/duoku/platform/download/utils/AppCache;)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->downloadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 282
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->installedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 283
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache;->updatableList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 284
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppCache;->unregisterReceiver(Landroid/content/Context;)V

    .line 285
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/download/utils/AppCache;->INSTANCE:Lcom/duoku/platform/download/utils/AppCache;

    .line 286
    return-void
.end method

.method public refreshDownload(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/AppCache;->useCache:Z

    if-nez v0, :cond_5

    .line 327
    :goto_4
    return-void

    .line 319
    :cond_5
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 320
    const-string v0, "AppCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AppCache]before refreshDownload:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->downloadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_1f
    invoke-static {p1}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGamesFromDB(Z)Ljava/util/List;

    move-result-object v0

    .line 323
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppCache;->setDownload(Ljava/util/List;)V

    .line 324
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_45

    .line 325
    const-string v0, "AppCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AppCache]after refreshDownload:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->downloadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_45
    invoke-direct {p0}, Lcom/duoku/platform/download/utils/AppCache;->logDownloadLoad()V

    goto :goto_4
.end method

.method public refreshInstall(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/AppCache;->useCache:Z

    if-nez v0, :cond_5

    .line 353
    :cond_4
    :goto_4
    return-void

    .line 346
    :cond_5
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 347
    const-string v0, "AppCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AppCache]before refreshInstall:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->installedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1f
    invoke-static {p1}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstalledGamesFromDB()Ljava/util/List;

    move-result-object v0

    .line 350
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppCache;->setInstall(Ljava/util/List;)V

    .line 351
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 352
    const-string v0, "AppCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AppCache]after refreshInstall:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->installedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public refreshUpdatable(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/AppCache;->useCache:Z

    if-nez v0, :cond_5

    .line 311
    :cond_4
    :goto_4
    return-void

    .line 304
    :cond_5
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 305
    const-string v0, "AppCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AppCache]before refreshUpdatable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->updatableList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1f
    invoke-static {p1}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 307
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/AppManager;->getAllUpdatableGamesFromDB(Z)Ljava/util/List;

    move-result-object v0

    .line 308
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppCache;->setUnpdatable(Ljava/util/List;)V

    .line 309
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 310
    const-string v0, "AppCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AppCache]after refreshUpdatable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppCache;->updatableList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
