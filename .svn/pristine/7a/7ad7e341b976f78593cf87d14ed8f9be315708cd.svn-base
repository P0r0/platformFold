.class public Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final BACK_SIZE:I = 0x400

.field public static final COMPLETE:I = 0x2

.field public static final DOWNLOADING:I = 0x0

.field public static final DOWNLOAD_RECOVER:I = 0x3

.field public static final MSG_WHAT_UPDATE_PROGRESS:I = 0x6a11e3d

.field public static final NOTIFY_UPGRADE:I = 0x271b

.field public static final PAUSE:I = 0x1


# instance fields
.field bStop:Z

.field public doingRequest:Z

.field private downSize:J

.field private fileSize:J

.field private mContext:Landroid/content/Context;

.field public mDownladStatus:I

.field mDownloadUrl:Ljava/lang/String;

.field private mListener:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

.field progress:J

.field retryTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;Ljava/lang/String;)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownloadUrl:Ljava/lang/String;

    .line 31
    iput-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    .line 34
    iput-wide v2, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    .line 35
    iput-wide v2, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    .line 39
    iput-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doingRequest:Z

    .line 41
    iput-wide v2, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    .line 44
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mListener:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

    .line 46
    iput-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    .line 47
    iput-object p3, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownloadUrl:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadProgress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 51
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    .line 53
    :cond_30
    return-void
.end method

.method private setDownLoadData()V
    .registers 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadProgress(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    return-void
.end method


# virtual methods
.method doDownFail()V
    .registers 5

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    iget-wide v2, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 213
    const/4 v0, 0x1

    iput v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    .line 214
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->setDownLoadData()V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doingRequest:Z

    .line 217
    :cond_11
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 20

    .prologue
    .line 57
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doingRequest:Z

    .line 58
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_1b
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_fe

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_fe

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 66
    if-nez v2, :cond_56

    .line 67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    .line 69
    :cond_56
    const/4 v3, 0x2

    if-ne v2, v3, :cond_ab

    .line 70
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    .line 72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadFileSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    .line 73
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 74
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_ab

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_ab

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_ab

    .line 75
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doingRequest:Z

    .line 76
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 208
    :cond_aa
    :goto_aa
    return-object v2

    .line 81
    :cond_ab
    const/4 v3, 0x1

    if-ne v2, v3, :cond_c3

    .line 82
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    .line 90
    :cond_c3
    :goto_c3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mListener:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    invoke-interface/range {v3 .. v9}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;->updateDownloadProgress(JJJ)V

    .line 92
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    const-wide/16 v4, 0x400

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_114

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    const-wide/16 v4, 0x400

    sub-long/2addr v2, v4

    :goto_ea
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    .line 94
    const/4 v2, 0x0

    .line 96
    :cond_ef
    :goto_ef
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    if-eqz v3, :cond_117

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doDownFail()V

    .line 208
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_aa

    .line 86
    :cond_fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadFileSize(Landroid/content/Context;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadProgress(Landroid/content/Context;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadStatus(Landroid/content/Context;)V

    goto :goto_c3

    .line 92
    :cond_114
    const-wide/16 v2, 0x0

    goto :goto_ea

    .line 98
    :cond_117
    :try_start_117
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v15, v14, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/nearme/platform/opensdk/pay/download/util/http/MyHttpClient;->getUrlConnecttion(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_129
    .catch Ljava/net/SocketTimeoutException; {:try_start_117 .. :try_end_129} :catch_4a5
    .catch Ljava/net/SocketException; {:try_start_117 .. :try_end_129} :catch_49f
    .catch Ljava/net/UnknownHostException; {:try_start_117 .. :try_end_129} :catch_499
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_129} :catch_495
    .catchall {:try_start_117 .. :try_end_129} :catchall_48f

    move-result-object v10

    .line 100
    const/16 v2, 0x7530

    :try_start_12c
    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 101
    const/16 v2, 0x7530

    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 102
    const-string v2, "GET"

    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 104
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doingRequest:Z

    .line 106
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_156

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_156

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    if-nez v2, :cond_1c2

    :cond_156
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c2

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    const-string v3, "RANGE"

    invoke-virtual {v10, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadFileSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    .line 123
    :cond_191
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_210

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_210

    .line 124
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    .line 125
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1b0
    .catch Ljava/net/SocketTimeoutException; {:try_start_12c .. :try_end_1b0} :catch_38f
    .catch Ljava/net/SocketException; {:try_start_12c .. :try_end_1b0} :catch_3cb
    .catch Ljava/net/UnknownHostException; {:try_start_12c .. :try_end_1b0} :catch_407
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_1b0} :catch_443
    .catchall {:try_start_12c .. :try_end_1b0} :catchall_47f

    move-result-object v2

    .line 198
    if-eqz v10, :cond_aa

    .line 199
    :try_start_1b3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1bd} :catch_1bf

    goto/16 :goto_aa

    :catch_1bf
    move-exception v3

    goto/16 :goto_aa

    .line 112
    :cond_1c2
    :try_start_1c2
    const-string v2, "bytes=0-"

    .line 113
    const-string v3, "RANGE"

    invoke-virtual {v10, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V

    .line 115
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    if-lez v2, :cond_1f3

    .line 116
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadFileSize(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    :cond_1f3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_191

    .line 120
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1fe
    .catch Ljava/net/SocketTimeoutException; {:try_start_1c2 .. :try_end_1fe} :catch_38f
    .catch Ljava/net/SocketException; {:try_start_1c2 .. :try_end_1fe} :catch_3cb
    .catch Ljava/net/UnknownHostException; {:try_start_1c2 .. :try_end_1fe} :catch_407
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1fe} :catch_443
    .catchall {:try_start_1c2 .. :try_end_1fe} :catchall_47f

    move-result-object v2

    .line 198
    if-eqz v10, :cond_aa

    .line 199
    :try_start_201
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_20b
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_20b} :catch_20d

    goto/16 :goto_aa

    :catch_20d
    move-exception v3

    goto/16 :goto_aa

    .line 128
    :cond_210
    :try_start_210
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    invoke-virtual {v15, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 129
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 130
    const/16 v2, 0x4000

    new-array v0, v2, [B

    move-object/from16 v17, v0

    .line 131
    const/4 v4, 0x0

    .line 132
    const-wide/16 v2, 0x0

    .line 133
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    if-nez v5, :cond_25b

    .line 134
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    .line 135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    :goto_247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_256

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    if-nez v5, :cond_256

    const/4 v5, -0x1

    if-ne v4, v5, :cond_281

    .line 151
    :cond_256
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    .line 154
    :cond_25b
    invoke-direct/range {p0 .. p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->setDownLoadData()V

    .line 157
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_318

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    if-eqz v2, :cond_318

    .line 158
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_26f
    .catch Ljava/net/SocketTimeoutException; {:try_start_210 .. :try_end_26f} :catch_38f
    .catch Ljava/net/SocketException; {:try_start_210 .. :try_end_26f} :catch_3cb
    .catch Ljava/net/UnknownHostException; {:try_start_210 .. :try_end_26f} :catch_407
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_26f} :catch_443
    .catchall {:try_start_210 .. :try_end_26f} :catchall_47f

    move-result-object v2

    .line 198
    if-eqz v10, :cond_aa

    .line 199
    :try_start_272
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_27c} :catch_27e

    goto/16 :goto_aa

    :catch_27e
    move-exception v3

    goto/16 :goto_aa

    .line 137
    :cond_281
    :try_start_281
    invoke-virtual/range {v16 .. v17}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 138
    const/4 v4, -0x1

    if-eq v11, v4, :cond_4a8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    if-nez v4, :cond_4a8

    .line 139
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v4, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 140
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    int-to-long v6, v11

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    .line 141
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    sub-long/2addr v4, v2

    const-wide/32 v6, 0xf000

    cmp-long v4, v4, v6

    if-lez v4, :cond_4a8

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadSize(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    .line 144
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    div-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadProgress(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mListener:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    invoke-interface/range {v3 .. v9}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;->updateDownloadProgress(JJJ)V

    .line 147
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->publishProgress([Ljava/lang/Object;)V

    move-wide v2, v12

    move v4, v11

    goto/16 :goto_247

    .line 162
    :cond_318
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_379

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_379

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadSize(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_367
    .catch Ljava/net/SocketTimeoutException; {:try_start_281 .. :try_end_367} :catch_38f
    .catch Ljava/net/SocketException; {:try_start_281 .. :try_end_367} :catch_3cb
    .catch Ljava/net/UnknownHostException; {:try_start_281 .. :try_end_367} :catch_407
    .catch Ljava/lang/Exception; {:try_start_281 .. :try_end_367} :catch_443
    .catchall {:try_start_281 .. :try_end_367} :catchall_47f

    move-result-object v2

    .line 198
    if-eqz v10, :cond_aa

    .line 199
    :try_start_36a
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_374
    .catch Ljava/lang/Exception; {:try_start_36a .. :try_end_374} :catch_376

    goto/16 :goto_aa

    :catch_376
    move-exception v3

    goto/16 :goto_aa

    .line 170
    :cond_379
    const/4 v2, 0x0

    :try_start_37a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_37d
    .catch Ljava/net/SocketTimeoutException; {:try_start_37a .. :try_end_37d} :catch_38f
    .catch Ljava/net/SocketException; {:try_start_37a .. :try_end_37d} :catch_3cb
    .catch Ljava/net/UnknownHostException; {:try_start_37a .. :try_end_37d} :catch_407
    .catch Ljava/lang/Exception; {:try_start_37a .. :try_end_37d} :catch_443
    .catchall {:try_start_37a .. :try_end_37d} :catchall_47f

    move-result-object v2

    .line 198
    if-eqz v10, :cond_aa

    .line 199
    :try_start_380
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_38a
    .catch Ljava/lang/Exception; {:try_start_380 .. :try_end_38a} :catch_38c

    goto/16 :goto_aa

    :catch_38c
    move-exception v3

    goto/16 :goto_aa

    .line 171
    :catch_38f
    move-exception v2

    move-object v3, v2

    move-object v2, v10

    .line 172
    :goto_392
    :try_start_392
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    const/16 v5, 0x1e

    if-le v4, v5, :cond_3ba

    .line 173
    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doDownFail()V

    .line 175
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3aa
    .catchall {:try_start_392 .. :try_end_3aa} :catchall_48f

    move-result-object v3

    .line 198
    if-eqz v2, :cond_3b7

    .line 199
    :try_start_3ad
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3b7
    .catch Ljava/lang/Exception; {:try_start_3ad .. :try_end_3b7} :catch_4a2

    :cond_3b7
    :goto_3b7
    move-object v2, v3

    .line 175
    goto/16 :goto_aa

    .line 198
    :cond_3ba
    if-eqz v2, :cond_ef

    .line 199
    :try_start_3bc
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3c6
    .catch Ljava/lang/Exception; {:try_start_3bc .. :try_end_3c6} :catch_3c8

    goto/16 :goto_ef

    .line 202
    :catch_3c8
    move-exception v3

    goto/16 :goto_ef

    .line 177
    :catch_3cb
    move-exception v2

    move-object v3, v2

    move-object v2, v10

    .line 178
    :goto_3ce
    :try_start_3ce
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    const/16 v5, 0x1e

    if-le v4, v5, :cond_3f6

    .line 179
    invoke-virtual {v3}, Ljava/net/SocketException;->printStackTrace()V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doDownFail()V

    .line 181
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3e6
    .catchall {:try_start_3ce .. :try_end_3e6} :catchall_48f

    move-result-object v3

    .line 198
    if-eqz v2, :cond_3f3

    .line 199
    :try_start_3e9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3f3
    .catch Ljava/lang/Exception; {:try_start_3e9 .. :try_end_3f3} :catch_49c

    :cond_3f3
    :goto_3f3
    move-object v2, v3

    .line 181
    goto/16 :goto_aa

    .line 198
    :cond_3f6
    if-eqz v2, :cond_ef

    .line 199
    :try_start_3f8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_402
    .catch Ljava/lang/Exception; {:try_start_3f8 .. :try_end_402} :catch_404

    goto/16 :goto_ef

    .line 202
    :catch_404
    move-exception v3

    goto/16 :goto_ef

    .line 183
    :catch_407
    move-exception v2

    move-object v3, v2

    move-object v2, v10

    .line 184
    :goto_40a
    :try_start_40a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    const/16 v5, 0x1e

    if-le v4, v5, :cond_432

    .line 185
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doDownFail()V

    .line 187
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_422
    .catchall {:try_start_40a .. :try_end_422} :catchall_48f

    move-result-object v3

    .line 198
    if-eqz v2, :cond_42f

    .line 199
    :try_start_425
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_42f
    .catch Ljava/lang/Exception; {:try_start_425 .. :try_end_42f} :catch_497

    :cond_42f
    :goto_42f
    move-object v2, v3

    .line 187
    goto/16 :goto_aa

    .line 198
    :cond_432
    if-eqz v2, :cond_ef

    .line 199
    :try_start_434
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_43e
    .catch Ljava/lang/Exception; {:try_start_434 .. :try_end_43e} :catch_440

    goto/16 :goto_ef

    .line 202
    :catch_440
    move-exception v3

    goto/16 :goto_ef

    .line 189
    :catch_443
    move-exception v2

    move-object v3, v2

    move-object v2, v10

    .line 190
    :goto_446
    :try_start_446
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    const/16 v5, 0x1e

    if-le v4, v5, :cond_46e

    .line 191
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doDownFail()V

    .line 193
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_45e
    .catchall {:try_start_446 .. :try_end_45e} :catchall_48f

    move-result-object v3

    .line 198
    if-eqz v2, :cond_46b

    .line 199
    :try_start_461
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_46b
    .catch Ljava/lang/Exception; {:try_start_461 .. :try_end_46b} :catch_493

    :cond_46b
    :goto_46b
    move-object v2, v3

    .line 193
    goto/16 :goto_aa

    .line 198
    :cond_46e
    if-eqz v2, :cond_ef

    .line 199
    :try_start_470
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_47a
    .catch Ljava/lang/Exception; {:try_start_470 .. :try_end_47a} :catch_47c

    goto/16 :goto_ef

    .line 202
    :catch_47c
    move-exception v3

    goto/16 :goto_ef

    .line 195
    :catchall_47f
    move-exception v2

    .line 198
    :goto_480
    if-eqz v10, :cond_48c

    .line 199
    :try_start_482
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_48c
    .catch Ljava/lang/Exception; {:try_start_482 .. :try_end_48c} :catch_48d

    .line 204
    :cond_48c
    :goto_48c
    throw v2

    :catch_48d
    move-exception v3

    goto :goto_48c

    .line 195
    :catchall_48f
    move-exception v3

    move-object v10, v2

    move-object v2, v3

    goto :goto_480

    :catch_493
    move-exception v2

    goto :goto_46b

    .line 189
    :catch_495
    move-exception v3

    goto :goto_446

    :catch_497
    move-exception v2

    goto :goto_42f

    .line 183
    :catch_499
    move-exception v3

    goto/16 :goto_40a

    :catch_49c
    move-exception v2

    goto/16 :goto_3f3

    .line 177
    :catch_49f
    move-exception v3

    goto/16 :goto_3ce

    :catch_4a2
    move-exception v2

    goto/16 :goto_3b7

    .line 171
    :catch_4a5
    move-exception v3

    goto/16 :goto_392

    :cond_4a8
    move v4, v11

    goto/16 :goto_247
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .registers 3

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    .line 260
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 264
    :cond_17
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadFileSize(Landroid/content/Context;)V

    .line 265
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadProgress(Landroid/content/Context;)V

    .line 266
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadStatus(Landroid/content/Context;)V

    .line 267
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 268
    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 4

    .prologue
    .line 226
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 227
    iget v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 228
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadFileSize(Landroid/content/Context;)V

    .line 229
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadProgress(Landroid/content/Context;)V

    .line 230
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadStatus(Landroid/content/Context;)V

    .line 231
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mListener:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;->downloadSuccess(Ljava/lang/String;)V

    .line 239
    :cond_25
    :goto_25
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 240
    return-void

    .line 235
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mListener:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

    invoke-interface {v0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;->downloadFail()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_25

    :catch_2f
    move-exception v0

    goto :goto_25
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Long;)V
    .registers 2

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->onProgressUpdate([Ljava/lang/Long;)V

    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    .line 255
    return-void
.end method

.method public stopDownload()V
    .registers 3

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    .line 244
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 248
    :cond_17
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadFileSize(Landroid/content/Context;)V

    .line 249
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadProgress(Landroid/content/Context;)V

    .line 250
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadStatus(Landroid/content/Context;)V

    .line 251
    return-void
.end method
