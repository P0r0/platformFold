.class public Lcom/duoku/platform/download/utils/Notifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMMON_DOWNLOAD_ID:I = 0xc8

.field private static final COMMON_FAILED_ID:I = 0xca

.field private static final COMMON_SUCCESSFUL_ID:I = 0xc9

.field public static final UPDATENOTIFYID:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cancleNotification(I)V
    .registers 3

    .prologue
    .line 300
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 299
    check-cast v0, Landroid/app/NotificationManager;

    .line 301
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 302
    return-void
.end method

.method public static cancleNotifyUpdatableList()V
    .registers 2

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/NotificationManager;

    .line 37
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 43
    :goto_11
    return-void

    .line 39
    :catch_12
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public static removeNotificationForDelete(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/Notifier;->cancleNotification(I)V

    .line 290
    return-void
.end method

.method public static showDownloadFailedNotification(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 170
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->loadDownloadTasks()Ljava/util/Map;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    .line 172
    if-eqz v3, :cond_4d

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4d

    .line 174
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 175
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_ic_notification"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 176
    const-wide/16 v0, 0xca

    .line 177
    const-string v2, "%s\u4e0b\u8f7d\u5931\u8d25"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 178
    const-string v4, "%d\u4e2a\u4efb\u52a1\u4e0b\u8f7d\u5931\u8d25"

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 179
    const-string v4, "\u70b9\u51fb\u67e5\u770b"

    .line 181
    const-class v6, Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    .line 180
    invoke-static/range {v0 .. v6}, Lcom/duoku/platform/download/utils/Notifier;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V

    .line 183
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V

    .line 190
    :goto_4c
    return-void

    .line 187
    :cond_4d
    const/16 v0, 0xca

    invoke-static {v0}, Lcom/duoku/platform/download/utils/Notifier;->cancleNotification(I)V

    goto :goto_4c
.end method

.method public static showDownloadFinishedNotification(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 195
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->loadDownloadTasks()Ljava/util/Map;

    move-result-object v0

    .line 196
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    .line 197
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_51

    .line 199
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 200
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_ic_notification"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 202
    const-wide/16 v0, 0xc9

    .line 203
    const-string v2, "%s\u4e0b\u8f7d\u5b8c\u6210"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v6, "%d\u4e2a\u4efb\u52a1\u5df2\u5b8c\u6210"

    new-array v7, v5, [Ljava/lang/Object;

    .line 205
    aput-object v3, v7, v8

    .line 204
    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 206
    const-string v4, "\u70b9\u51fb\u8fdb\u5165\u4e0b\u8f7d\u7ba1\u7406"

    .line 208
    const-class v6, Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    .line 207
    invoke-static/range {v0 .. v6}, Lcom/duoku/platform/download/utils/Notifier;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V

    .line 210
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V

    .line 217
    :goto_50
    return-void

    .line 214
    :cond_51
    const/16 v0, 0xc9

    invoke-static {v0}, Lcom/duoku/platform/download/utils/Notifier;->cancleNotification(I)V

    goto :goto_50
.end method

.method public static showDownloadStartNotification(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 10

    .prologue
    const/16 v8, 0xc8

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 127
    .line 129
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->loadDownloadTasks()Ljava/util/Map;

    move-result-object v1

    .line 130
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_RUNNING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 131
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PENDING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    add-int v1, v2, v0

    if-nez v1, :cond_28

    .line 134
    invoke-static {v8}, Lcom/duoku/platform/download/utils/Notifier;->cancleNotification(I)V

    .line 164
    :goto_27
    return-void

    .line 138
    :cond_28
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    if-lez v2, :cond_40

    .line 143
    const-string v1, "%d\u4e2a\u4e0b\u8f7d\u4e2d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :cond_40
    if-lez v0, :cond_5e

    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_4d

    .line 149
    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_4d
    const-string v1, "%d\u4e2a\u4e0b\u8f7d\u7b49\u5f85"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :cond_5e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_69

    .line 155
    const-string v1, "\uff0c\u70b9\u51fb\u67e5\u770b"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :cond_69
    const-string v1, "%d\u4e2a\u4e0b\u8f7d\u4efb\u52a1"

    new-array v3, v7, [Ljava/lang/Object;

    .line 158
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    .line 157
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 159
    const-string v0, "%s\u5f00\u59cb\u4e0b\u8f7d"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v8}, Lcom/duoku/platform/download/utils/Notifier;->cancleNotification(I)V

    .line 161
    const-wide/16 v0, 0xc8

    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    .line 161
    invoke-static/range {v0 .. v6}, Lcom/duoku/platform/download/utils/Notifier;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V

    goto :goto_27
.end method

.method private static showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 239
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 242
    const-string v2, "dk_ic_notification"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 243
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    const-string v3, "notification_id"

    invoke-virtual {v2, v3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 245
    const/high16 v3, 0x34000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    if-eqz p2, :cond_25

    .line 249
    iput-object p2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 252
    :cond_25
    const-string v3, "from"

    const-string v4, "notification"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 256
    invoke-static {v0, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 255
    invoke-virtual {v1, v0, p3, p4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 259
    new-instance v2, Landroid/content/Intent;

    const-string v3, "duoku.opensdk.intent.action.CANCLE_NOTIFICATION"

    .line 258
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    const-string v3, "notification_id"

    invoke-virtual {v2, v3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 262
    invoke-static {v0, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 265
    if-nez p5, :cond_60

    .line 267
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2a

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 276
    :goto_53
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    check-cast v0, Landroid/app/NotificationManager;

    .line 277
    long-to-int v2, p0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 279
    return-void

    .line 272
    :cond_60
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    goto :goto_53
.end method

.method public static updateDownloadFinishedNotification()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 101
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->loadDownloadTasks()Ljava/util/Map;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    .line 103
    if-eqz v3, :cond_40

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_40

    .line 105
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 106
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_ic_notification"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 108
    const-wide/16 v0, 0xc9

    .line 109
    const/4 v2, 0x0

    .line 110
    const-string v4, "%d\u4e2a\u4efb\u52a1\u5df2\u5b8c\u6210"

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 111
    const-string v4, "\u70b9\u51fb\u8fdb\u5165\u4e0b\u8f7d\u7ba1\u7406"

    .line 113
    const-class v6, Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    .line 112
    invoke-static/range {v0 .. v6}, Lcom/duoku/platform/download/utils/Notifier;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V

    .line 115
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V

    .line 122
    :goto_3f
    return-void

    .line 119
    :cond_40
    const/16 v0, 0xc9

    invoke-static {v0}, Lcom/duoku/platform/download/utils/Notifier;->cancleNotification(I)V

    goto :goto_3f
.end method

.method public static updateNotificationForDownload()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 54
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->loadDownloadTasks()Ljava/util/Map;

    move-result-object v1

    .line 56
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_RUNNING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 57
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PENDING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    add-int v1, v2, v0

    if-nez v1, :cond_28

    .line 61
    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/duoku/platform/download/utils/Notifier;->cancleNotification(I)V

    .line 93
    :goto_27
    return-void

    .line 65
    :cond_28
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    if-lez v2, :cond_40

    .line 70
    const-string v1, "%d\u4e2a\u4e0b\u8f7d\u4e2d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    :cond_40
    if-lez v0, :cond_5e

    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_4d

    .line 76
    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_4d
    const-string v1, "%d\u4e2a\u4e0b\u8f7d\u7b49\u5f85"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_5e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_69

    .line 83
    const-string v1, "\uff0c\u70b9\u51fb\u67e5\u770b"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_69
    const-string v1, "%d\u4e2a\u4e0b\u8f7d\u4efb\u52a1"

    new-array v3, v7, [Ljava/lang/Object;

    .line 87
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    .line 86
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 88
    const/4 v2, 0x0

    .line 90
    const-wide/16 v0, 0xc8

    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    .line 90
    invoke-static/range {v0 .. v6}, Lcom/duoku/platform/download/utils/Notifier;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V

    goto :goto_27
.end method

.method public static updateNotificationForFailedDownload()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 309
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 311
    invoke-static {}, Lcom/duoku/platform/download/utils/PackageHelper;->loadDownloadTasks()Ljava/util/Map;

    move-result-object v0

    .line 312
    sget-object v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    .line 313
    if-eqz v3, :cond_40

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_40

    .line 315
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 316
    const-string v2, "dk_ic_notification"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 317
    const-wide/16 v0, 0xca

    .line 318
    const/4 v2, 0x0

    .line 319
    const-string v4, "%d\u4e2a\u4efb\u52a1\u4e0b\u8f7d\u5931\u8d25"

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 320
    const-string v4, "\u70b9\u51fb\u67e5\u770b"

    .line 322
    const-class v6, Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    .line 321
    invoke-static/range {v0 .. v6}, Lcom/duoku/platform/download/utils/Notifier;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V

    .line 324
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V

    .line 331
    :goto_3f
    return-void

    .line 328
    :cond_40
    const/16 v0, 0xca

    invoke-static {v0}, Lcom/duoku/platform/download/utils/Notifier;->cancleNotification(I)V

    goto :goto_3f
.end method
