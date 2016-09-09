.class public Lcom/duoku/platform/download/DownloadInfo$Reader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mNewChars:Landroid/database/CharArrayBuffer;

.field private mOldChars:Landroid/database/CharArrayBuffer;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    .line 72
    iput-object p2, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    .line 73
    return-void
.end method

.method private addHeader(Lcom/duoku/platform/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 213
    # getter for: Lcom/duoku/platform/download/DownloadInfo;->mRequestHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadInfo;->access$3(Lcom/duoku/platform/download/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/duoku/platform/download/utils/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/duoku/platform/download/utils/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method private getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 228
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 229
    if-nez p1, :cond_10

    .line 231
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 258
    :cond_f
    :goto_f
    return-object p1

    .line 233
    :cond_10
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    if-nez v1, :cond_1d

    .line 236
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    .line 238
    :cond_1d
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    invoke-interface {v1, v0, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 239
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    iget v1, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_38

    .line 242
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {p1, v0, v6, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_f

    .line 244
    :cond_38
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mOldChars:Landroid/database/CharArrayBuffer;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mOldChars:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v0, v1, :cond_49

    .line 246
    :cond_42
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mOldChars:Landroid/database/CharArrayBuffer;

    .line 248
    :cond_49
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mOldChars:Landroid/database/CharArrayBuffer;

    iget-object v2, v0, Landroid/database/CharArrayBuffer;->data:[C

    .line 249
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    iget-object v3, v0, Landroid/database/CharArrayBuffer;->data:[C

    .line 250
    invoke-virtual {p1, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 251
    add-int/lit8 v0, v1, -0x1

    :goto_56
    if-ltz v0, :cond_f

    .line 253
    aget-char v4, v2, v0

    aget-char v5, v3, v0

    if-eq v4, v5, :cond_64

    .line 255
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v6, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_f

    .line 251
    :cond_64
    add-int/lit8 v0, v0, -0x1

    goto :goto_56
.end method

.method private readRequestHeaders(Lcom/duoku/platform/download/DownloadInfo;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 174
    # getter for: Lcom/duoku/platform/download/DownloadInfo;->mRequestHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadInfo;->access$3(Lcom/duoku/platform/download/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "headers"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 176
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 179
    :try_start_1b
    const-string v0, "header"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 180
    const-string v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 181
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2a
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_59

    move-result v3

    if-eqz v3, :cond_4a

    .line 188
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 191
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 193
    const-string v0, "Cookie"

    iget-object v1, p1, Lcom/duoku/platform/download/DownloadInfo;->mCookies:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/duoku/platform/download/DownloadInfo$Reader;->addHeader(Lcom/duoku/platform/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_3e
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v0, :cond_49

    .line 197
    const-string v0, "Referer"

    iget-object v1, p1, Lcom/duoku/platform/download/DownloadInfo;->mReferer:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/duoku/platform/download/DownloadInfo$Reader;->addHeader(Lcom/duoku/platform/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_49
    return-void

    .line 183
    :cond_4a
    :try_start_4a
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/duoku/platform/download/DownloadInfo$Reader;->addHeader(Lcom/duoku/platform/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_59

    goto :goto_2a

    .line 187
    :catchall_59
    move-exception v0

    .line 188
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 189
    throw v0
.end method


# virtual methods
.method public newDownloadInfo(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/nu;)Lcom/duoku/platform/download/DownloadInfo;
    .registers 5

    .prologue
    .line 87
    new-instance v0, Lcom/duoku/platform/download/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/duoku/platform/download/DownloadInfo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/nu;Lcom/duoku/platform/download/DownloadInfo;)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/DownloadInfo$Reader;->updateFromDatabase(Lcom/duoku/platform/download/DownloadInfo;)V

    .line 89
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadInfo$Reader;->readRequestHeaders(Lcom/duoku/platform/download/DownloadInfo;)V

    .line 90
    return-object v0
.end method

.method public updateFromDatabase(Lcom/duoku/platform/download/DownloadInfo;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 101
    monitor-enter p1

    .line 105
    :try_start_3
    const-string v2, "_id"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    .line 106
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mUri:Ljava/lang/String;

    const-string v3, "uri"

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mUri:Ljava/lang/String;

    .line 107
    const-string v2, "no_integrity"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1b0

    move v2, v1

    :goto_26
    iput-boolean v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mNoIntegrity:Z

    .line 108
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mHint:Ljava/lang/String;

    const-string v3, "hint"

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mHint:Ljava/lang/String;

    .line 109
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mFileName:Ljava/lang/String;

    const-string v3, "_data"

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v2, 0x0

    :cond_41
    iput-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 111
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    const-string v3, "mimetype"

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 112
    const-string v2, "destination"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mDestination:I

    .line 113
    const-string v2, "visibility"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mVisibility:I

    .line 115
    const-string v2, "numfailed"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mNumFailed:I

    .line 116
    const-string v2, "method"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 117
    const v3, 0xfffffff

    and-int/2addr v3, v2

    iput v3, p1, Lcom/duoku/platform/download/DownloadInfo;->mRetryAfter:I

    .line 119
    shr-int/lit8 v2, v2, 0x1c

    iput v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mRedirectCount:I

    .line 121
    const-string v2, "lastmod"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mLastMod:J

    .line 122
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mPackage:Ljava/lang/String;

    const-string v3, "notificationpackage"

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mPackage:Ljava/lang/String;

    .line 123
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mClass:Ljava/lang/String;

    const-string v3, "notificationclass"

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mClass:Ljava/lang/String;

    .line 124
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mExtras:Ljava/lang/String;

    const-string v3, "notificationextras"

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mExtras:Ljava/lang/String;

    .line 125
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mCookies:Ljava/lang/String;

    const-string v3, "cookiedata"

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mCookies:Ljava/lang/String;

    .line 126
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    const-string v3, "useragent"

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 127
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mReferer:Ljava/lang/String;

    const-string v3, "referer"

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mReferer:Ljava/lang/String;

    .line 128
    const-string v2, "total_bytes"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    .line 129
    const-string v2, "current_bytes"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mCurrentBytes:J

    .line 130
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mETag:Ljava/lang/String;

    const-string v3, "etag"

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mETag:Ljava/lang/String;

    .line 131
    const-string v2, "scanned"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1b3

    move v2, v1

    :goto_fc
    iput-boolean v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mMediaScanned:Z

    .line 132
    const-string v2, "deleted"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1b6

    move v2, v1

    :goto_10b
    iput-boolean v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mDeleted:Z

    .line 133
    iget-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    const-string v3, "mediaprovider_uri"

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    .line 134
    const-string v2, "is_public_api"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1b9

    move v2, v1

    :goto_124
    iput-boolean v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mIsPublicApi:Z

    .line 135
    const-string v2, "allowed_network_types"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mAllowedNetworkTypes:I

    .line 136
    const-string v2, "allow_roaming"

    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_13f

    move v0, v1

    :cond_13f
    iput-boolean v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mAllowRoaming:Z

    .line 137
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mTitle:Ljava/lang/String;

    const-string v2, "title"

    invoke-direct {p0, v0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mDescription:Ljava/lang/String;

    const-string v2, "description"

    invoke-direct {p0, v0, v2}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mDescription:Ljava/lang/String;

    .line 139
    const-string v0, "bypass_recommended_size_limit"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mBypassRecommendedSizeLimit:I

    .line 141
    const-string v0, "control"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    iget v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mControl:I

    if-nez v2, :cond_174

    if-ne v0, v1, :cond_174

    .line 145
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/duoku/platform/download/DownloadInfo;->mPauseNotiModifyFlag:Z

    .line 147
    :cond_174
    const-string v1, "status"

    invoke-direct {p0, v1}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 150
    iget v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    const/16 v3, 0xbe

    if-eq v2, v3, :cond_18a

    iget v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_19d

    .line 151
    :cond_18a
    const/16 v2, 0xc1

    if-eq v1, v2, :cond_19a

    const/16 v2, 0xc2

    if-eq v1, v2, :cond_19a

    const/16 v2, 0xc3

    if-eq v1, v2, :cond_19a

    const/16 v2, 0xc4

    if-ne v1, v2, :cond_19d

    .line 153
    :cond_19a
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/duoku/platform/download/DownloadInfo;->mPauseNotiModifyFlag:Z

    .line 156
    :cond_19d
    iput v1, p1, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    .line 158
    iput v0, p1, Lcom/duoku/platform/download/DownloadInfo;->mControl:I

    .line 161
    # getter for: Lcom/duoku/platform/download/DownloadInfo;->mMarkData:Ljava/lang/String;
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadInfo;->access$1(Lcom/duoku/platform/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "entity"

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/download/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/duoku/platform/download/DownloadInfo;->access$2(Lcom/duoku/platform/download/DownloadInfo;Ljava/lang/String;)V

    .line 101
    monitor-exit p1

    .line 164
    return-void

    :cond_1b0
    move v2, v0

    .line 107
    goto/16 :goto_26

    :cond_1b3
    move v2, v0

    .line 131
    goto/16 :goto_fc

    :cond_1b6
    move v2, v0

    .line 132
    goto/16 :goto_10b

    :cond_1b9
    move v2, v0

    .line 134
    goto/16 :goto_124

    .line 101
    :catchall_1bc
    move-exception v0

    monitor-exit p1
    :try_end_1be
    .catchall {:try_start_3 .. :try_end_1be} :catchall_1bc

    throw v0
.end method
