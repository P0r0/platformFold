.class public Lcom/duoku/platform/download/OpenDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/duoku/platform/download/OpenDownloadReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/OpenDownloadReceiver;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private deleteFile(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 162
    const-string v0, "image"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 164
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 178
    :goto_b
    if-eqz v0, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_data = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_4b

    :cond_26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4b

    const/4 v0, 0x0

    :goto_32
    return v0

    .line 166
    :cond_33
    const-string v0, "audio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 168
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_b

    .line 170
    :cond_3e
    const-string v0, "video"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 172
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_b

    :cond_49
    move-object v0, v1

    .line 176
    goto :goto_b

    .line 178
    :cond_4b
    const/4 v0, 0x1

    goto :goto_32
.end method

.method private hideNotification(Landroid/content/Context;J)V
    .registers 6

    .prologue
    .line 45
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nt;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/nt;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3}, Lcom/baidu/bdgame/sdk/obf/nt;->a(J)V

    .line 46
    sget-object v0, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 47
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 58
    const/4 v2, 0x5

    :try_start_a
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 59
    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "notificationextras"

    aput-object v4, v2, v3

    .line 60
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 57
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_f3

    move-result-object v2

    .line 61
    :try_start_2c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 63
    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    const-string v4, "mimetype"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 66
    sget-object v6, Lcom/duoku/platform/download/Downloads;->ACTION_NOTIFICATION_CLICKED:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 68
    const-string v0, "status"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 69
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 71
    int-to-long v6, v1

    invoke-direct {p0, p1, v6, v7}, Lcom/duoku/platform/download/OpenDownloadReceiver;->hideNotification(Landroid/content/Context;J)V

    .line 73
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadConfiguration;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadConfiguration;

    move-result-object v5

    .line 74
    invoke-virtual {v5}, Lcom/duoku/platform/download/DownloadConfiguration;->isOpenOnClickSuccessfulDownload()Z

    move-result v6

    .line 79
    invoke-virtual {v5}, Lcom/duoku/platform/download/DownloadConfiguration;->getOnNotifierClickListener()Lcom/duoku/platform/download/DownloadConfiguration$a;

    move-result-object v5

    .line 80
    invoke-static {v0}, Lcom/duoku/platform/download/Downloads;->isStatusCompleted(I)Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-static {v0}, Lcom/duoku/platform/download/Downloads;->isStatusSuccess(I)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 83
    if-eqz v6, :cond_a9

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9e

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    :cond_9e
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_a6
    .catchall {:try_start_2c .. :try_end_a6} :catchall_c3

    .line 96
    :try_start_a6
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a6 .. :try_end_a9} :catch_f1
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_c3

    .line 141
    :cond_a9
    :goto_a9
    if-eqz v2, :cond_ae

    .line 143
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_ae
    return-void

    .line 108
    :cond_af
    :try_start_af
    invoke-static {v0}, Lcom/duoku/platform/download/Downloads;->isStatusCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_cb

    invoke-static {v0}, Lcom/duoku/platform/download/Downloads;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 110
    if-eqz v5, :cond_a9

    .line 112
    const/4 v0, 0x0

    int-to-long v6, v1

    invoke-interface {v5, v0, v6, v7}, Lcom/duoku/platform/download/DownloadConfiguration$a;->a(ZJ)V
    :try_end_c2
    .catchall {:try_start_af .. :try_end_c2} :catchall_c3

    goto :goto_a9

    .line 140
    :catchall_c3
    move-exception v0

    move-object v1, v2

    .line 141
    :goto_c5
    if-eqz v1, :cond_ca

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_ca
    throw v0

    .line 115
    :cond_cb
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_d6

    .line 117
    if-eqz v5, :cond_a9

    .line 119
    int-to-long v0, v1

    :try_start_d2
    invoke-interface {v5, v0, v1}, Lcom/duoku/platform/download/DownloadConfiguration$a;->a(J)V

    goto :goto_a9

    .line 124
    :cond_d6
    if-eqz v5, :cond_a9

    .line 126
    int-to-long v0, v1

    invoke-interface {v5, v0, v1}, Lcom/duoku/platform/download/DownloadConfiguration$a;->b(J)V

    goto :goto_a9

    .line 130
    :cond_dd
    const-string v6, "android.intent.action.DELETE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 132
    invoke-direct {p0, v0, v3, v4}, Lcom/duoku/platform/download/OpenDownloadReceiver;->deleteFile(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 134
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f0
    .catchall {:try_start_d2 .. :try_end_f0} :catchall_c3

    goto :goto_a9

    .line 98
    :catch_f1
    move-exception v0

    goto :goto_a9

    .line 140
    :catchall_f3
    move-exception v0

    move-object v1, v6

    goto :goto_c5
.end method
