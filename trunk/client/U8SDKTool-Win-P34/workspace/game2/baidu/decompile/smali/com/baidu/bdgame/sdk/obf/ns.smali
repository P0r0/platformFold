.class Lcom/baidu/bdgame/sdk/obf/ns;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ns$a;
    }
.end annotation


# static fields
.field static final c:Ljava/lang/String; = "DownloadNotification"

.field static final d:Ljava/lang/String; = "(status >= \'100\') AND (status <= \'199\') AND (visibility IS NULL OR visibility == \'0\' OR visibility == \'1\')"

.field static final e:Ljava/lang/String; = "status >= \'200\' AND visibility == \'1\'"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/baidu/bdgame/sdk/obf/ns$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/baidu/bdgame/sdk/obf/nu;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/nu;)V
    .registers 4

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ns;->f:Lcom/baidu/bdgame/sdk/obf/nu;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ns;->b:Ljava/util/HashMap;

    .line 100
    return-void
.end method

.method private a(JJ)Ljava/lang/String;
    .registers 8

    .prologue
    .line 410
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_9

    .line 412
    const-string v0, ""

    .line 418
    :goto_8
    return-object v0

    .line 414
    :cond_9
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p3

    div-long/2addr v0, p1

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 417
    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private a(Lcom/duoku/platform/download/DownloadInfo;)Z
    .registers 4

    .prologue
    .line 381
    const/16 v0, 0x64

    iget v1, p1, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    if-gt v0, v1, :cond_13

    iget v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_13

    .line 383
    iget v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mVisibility:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 381
    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private b(Ljava/util/Collection;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/duoku/platform/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ns;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 124
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    .line 215
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ns;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_fc

    .line 277
    return-void

    .line 124
    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadInfo;

    .line 130
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ns;->a(Lcom/duoku/platform/download/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 135
    iget v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mControl:I

    if-ne v1, v2, :cond_98

    .line 137
    iget-boolean v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mPauseNotiModifyFlag:Z

    if-nez v1, :cond_b

    .line 143
    iput-boolean v2, v0, Lcom/duoku/platform/download/DownloadInfo;->mPauseNotiModifyFlag:Z

    .line 158
    :cond_38
    iget v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    const/16 v5, 0xbe

    if-eq v1, v5, :cond_b

    .line 163
    iget-wide v6, v0, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    .line 164
    iget-wide v8, v0, Lcom/duoku/platform/download/DownloadInfo;->mCurrentBytes:J

    .line 165
    iget-wide v10, v0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    .line 166
    iget-object v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 167
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_58

    .line 170
    :cond_4e
    iget-object v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mHint:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 172
    iget-object v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mHint:Ljava/lang/String;

    .line 180
    :cond_58
    :goto_58
    new-instance v5, Lcom/baidu/bdgame/sdk/obf/ns$a;

    invoke-direct {v5}, Lcom/baidu/bdgame/sdk/obf/ns$a;-><init>()V

    .line 181
    long-to-int v12, v10

    iput v12, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->a:I

    .line 182
    iput-object v1, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->d:Ljava/lang/String;

    .line 183
    iput-wide v8, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->b:J

    .line 184
    iput-wide v6, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->c:J

    .line 185
    iget v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mControl:I

    if-ne v1, v2, :cond_b1

    move v1, v2

    :goto_6b
    iput-boolean v1, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->g:Z

    .line 186
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ns;->b:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    const/16 v6, 0xc4

    if-ne v1, v6, :cond_b3

    iget-object v1, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->e:Ljava/lang/String;

    if-nez v1, :cond_b3

    .line 190
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    const-string v6, "dk_notification_need_wifi_for_size"

    invoke-static {v1, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->e:Ljava/lang/String;

    .line 191
    iput-boolean v2, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->g:Z

    goto/16 :goto_b

    .line 152
    :cond_98
    iget-boolean v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mPauseNotiModifyFlag:Z

    if-nez v1, :cond_38

    goto/16 :goto_b

    .line 176
    :cond_9e
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    const-string v12, "dk_download_unknown_title"

    invoke-static {v5, v12}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_58

    :cond_b1
    move v1, v3

    .line 185
    goto :goto_6b

    .line 193
    :cond_b3
    iget v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    const/16 v6, 0xc1

    if-ne v1, v6, :cond_d5

    iget-object v1, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->e:Ljava/lang/String;

    if-nez v1, :cond_d5

    .line 195
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    const-string v6, "dk_download_paused"

    invoke-static {v1, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->e:Ljava/lang/String;

    .line 196
    iput-boolean v2, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->g:Z

    goto/16 :goto_b

    .line 202
    :cond_d5
    iget v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    const/16 v1, 0xc3

    .line 198
    if-ne v0, v1, :cond_f7

    .line 202
    iget-object v0, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->e:Ljava/lang/String;

    if-nez v0, :cond_f7

    .line 204
    iput-boolean v2, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->g:Z

    .line 205
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    const-string v6, "download_paused"

    invoke-static {v1, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->e:Ljava/lang/String;

    goto/16 :goto_b

    .line 209
    :cond_f7
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/baidu/bdgame/sdk/obf/ns$a;->e:Ljava/lang/String;

    goto/16 :goto_b

    .line 215
    :cond_fc
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ns$a;

    .line 218
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/download/VersionedNotification;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/VersionedNotification;

    move-result-object v6

    .line 220
    iget-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->e:Ljava/lang/String;

    if-eqz v1, :cond_1ed

    move v4, v2

    .line 221
    :goto_10d
    const v1, 0x1080081

    .line 222
    if-eqz v4, :cond_115

    .line 224
    const v1, 0x108008a

    .line 226
    :cond_115
    if-eqz v4, :cond_11e

    iget-boolean v7, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->g:Z

    if-eqz v7, :cond_11e

    .line 228
    const v1, 0x1080082

    .line 230
    :cond_11e
    invoke-virtual {v6, v1}, Lcom/duoku/platform/download/VersionedNotification;->setSmallIcon(I)V

    .line 232
    iget-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->d:Ljava/lang/String;

    .line 233
    invoke-virtual {v6, v1}, Lcom/duoku/platform/download/VersionedNotification;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 235
    if-eqz v4, :cond_1f0

    .line 237
    iget-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->e:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/duoku/platform/download/VersionedNotification;->setContentText(Ljava/lang/CharSequence;)V

    .line 244
    :goto_12d
    iget-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->f:Ljava/lang/String;

    if-nez v1, :cond_18f

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->d:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    const-string v9, "download_begin"

    invoke-static {v8, v9}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->f:Ljava/lang/String;

    .line 247
    iget-boolean v1, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->g:Z

    if-eqz v1, :cond_18f

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->d:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    const-string v9, "dk_download_paused"

    invoke-static {v8, v9}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->f:Ljava/lang/String;

    .line 252
    :cond_18f
    iget-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->f:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/duoku/platform/download/VersionedNotification;->setTicker(Ljava/lang/CharSequence;)V

    .line 254
    new-instance v1, Landroid/content/Intent;

    sget-object v7, Lcom/duoku/platform/download/Constants;->ACTION_LIST:Ljava/lang/String;

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object v7, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/duoku/platform/download/DownloadReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    sget-object v7, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget v8, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->a:I

    int-to-long v8, v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 257
    const-string v7, "multiple"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    iget-object v7, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-static {v7, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/duoku/platform/download/VersionedNotification;->setContentIntent(Landroid/app/PendingIntent;)V

    .line 260
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/duoku/platform/download/VersionedNotification;->setWhen(J)V

    .line 262
    iget-boolean v1, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->g:Z

    if-eqz v1, :cond_211

    if-eqz v4, :cond_211

    .line 264
    invoke-virtual {v6, v3}, Lcom/duoku/platform/download/VersionedNotification;->setOngoing(Z)V

    .line 265
    invoke-virtual {v6, v2}, Lcom/duoku/platform/download/VersionedNotification;->setLatestEventInfo(Z)V

    .line 266
    invoke-virtual {v6, v2}, Lcom/duoku/platform/download/VersionedNotification;->setAutoCancel(Z)V

    .line 272
    :goto_1d8
    if-eqz v4, :cond_215

    iget-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->e:Ljava/lang/String;

    :goto_1dc
    invoke-virtual {v6, v1}, Lcom/duoku/platform/download/VersionedNotification;->setContentText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {v6}, Lcom/duoku/platform/download/VersionedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 275
    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ns;->f:Lcom/baidu/bdgame/sdk/obf/nu;

    iget v0, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->a:I

    int-to-long v6, v0

    invoke-interface {v4, v6, v7, v1}, Lcom/baidu/bdgame/sdk/obf/nu;->a(JLandroid/app/Notification;)V

    goto/16 :goto_1b

    :cond_1ed
    move v4, v3

    .line 220
    goto/16 :goto_10d

    .line 241
    :cond_1f0
    iget-wide v8, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->c:J

    long-to-int v7, v8

    iget-wide v8, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->b:J

    long-to-int v8, v8

    iget-wide v10, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->c:J

    const-wide/16 v12, -0x1

    cmp-long v1, v10, v12

    if-nez v1, :cond_20f

    move v1, v2

    :goto_1ff
    invoke-virtual {v6, v7, v8, v1}, Lcom/duoku/platform/download/VersionedNotification;->setProgress(IIZ)V

    .line 242
    iget-wide v8, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->c:J

    iget-wide v10, v0, Lcom/baidu/bdgame/sdk/obf/ns$a;->b:J

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/baidu/bdgame/sdk/obf/ns;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/duoku/platform/download/VersionedNotification;->setContentInfo(Ljava/lang/CharSequence;)V

    goto/16 :goto_12d

    :cond_20f
    move v1, v3

    .line 241
    goto :goto_1ff

    .line 270
    :cond_211
    invoke-virtual {v6, v2}, Lcom/duoku/platform/download/VersionedNotification;->setOngoing(Z)V

    goto :goto_1d8

    .line 272
    :cond_215
    const-string v1, ""

    goto :goto_1dc
.end method

.method private b(Lcom/duoku/platform/download/DownloadInfo;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 395
    iget v1, p1, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_c

    .line 396
    iget v1, p1, Lcom/duoku/platform/download/DownloadInfo;->mVisibility:I

    if-ne v1, v0, :cond_c

    .line 395
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private c(Ljava/util/Collection;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/duoku/platform/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 288
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 370
    return-void

    .line 288
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadInfo;

    .line 290
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ns;->b(Lcom/duoku/platform/download/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 295
    sget-object v1, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 296
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 297
    const-string v3, "visibility"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 301
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    .line 302
    const v1, 0x1080082

    iput v1, v5, Landroid/app/Notification;->icon:I

    .line 304
    iget-wide v2, v0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    .line 305
    iget-object v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 306
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_58

    .line 309
    :cond_4e
    iget-object v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mHint:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fb

    .line 311
    iget-object v1, v0, Lcom/duoku/platform/download/DownloadInfo;->mHint:Ljava/lang/String;

    .line 319
    :cond_58
    :goto_58
    sget-object v6, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 322
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/download/DownloadConfiguration;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadConfiguration;

    move-result-object v2

    .line 323
    iget v3, v0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    invoke-static {v3}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_131

    .line 326
    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadConfiguration;->isReStartOnClickFailedDownload()Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 328
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    const-string v7, "dk_notification_download_failed"

    invoke-static {v3, v7}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 329
    new-instance v2, Landroid/content/Intent;

    sget-object v7, Lcom/duoku/platform/download/Constants;->ACTION_REDOWNLOAD:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    sget-object v7, Lcom/duoku/platform/download/Constants;->DOWNLOAD_ID:Ljava/lang/String;

    iget-wide v8, v0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 338
    :goto_92
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 339
    const v7, 0x108008a

    iput v7, v5, Landroid/app/Notification;->icon:I

    .line 357
    :goto_aa
    iget-object v7, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/duoku/platform/download/DownloadReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 360
    iget-wide v8, v0, Lcom/duoku/platform/download/DownloadInfo;->mLastMod:J

    iput-wide v8, v5, Landroid/app/Notification;->when:J

    .line 361
    iget-object v7, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-static {v8, v10, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v5, v7, v1, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 363
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/duoku/platform/download/Constants;->ACTION_HIDE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/duoku/platform/download/DownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 366
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-static {v2, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 367
    iget v1, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v5, Landroid/app/Notification;->flags:I

    .line 368
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ns;->f:Lcom/baidu/bdgame/sdk/obf/nu;

    iget-wide v2, v0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-interface {v1, v2, v3, v5}, Lcom/baidu/bdgame/sdk/obf/nu;->a(JLandroid/app/Notification;)V

    goto/16 :goto_6

    .line 315
    :cond_fb
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v6, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    const-string v7, "dk_download_unknown_title"

    invoke-static {v6, v7}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_58

    .line 334
    :cond_10f
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    const-string v7, "dk_notification_download_failed2"

    invoke-static {v3, v7}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    new-instance v2, Landroid/content/Intent;

    sget-object v7, Lcom/duoku/platform/download/Constants;->ACTION_LIST:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    sget-object v7, Lcom/duoku/platform/download/Constants;->DOWNLOAD_ID:Ljava/lang/String;

    iget-wide v8, v0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_92

    .line 345
    :cond_131
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ns;->a:Landroid/content/Context;

    const-string v7, "dk_notification_download_complete"

    invoke-static {v3, v7}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 346
    iget v2, v0, Lcom/duoku/platform/download/DownloadInfo;->mDestination:I

    if-nez v2, :cond_163

    .line 348
    new-instance v2, Landroid/content/Intent;

    sget-object v7, Lcom/duoku/platform/download/Constants;->ACTION_OPEN:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    :goto_14e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto/16 :goto_aa

    .line 352
    :cond_163
    new-instance v2, Landroid/content/Intent;

    sget-object v7, Lcom/duoku/platform/download/Constants;->ACTION_LIST:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_14e
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/duoku/platform/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ns;->b(Ljava/util/Collection;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ns;->c(Ljava/util/Collection;)V

    .line 112
    return-void
.end method
