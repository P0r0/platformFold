.class public final Lcom/duoku/platform/download/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ACTION_HIDE:Ljava/lang/String; = null

.field public static ACTION_LIST:Ljava/lang/String; = null

.field public static ACTION_OPEN:Ljava/lang/String; = null

.field public static ACTION_REDOWNLOAD:Ljava/lang/String; = null

.field public static ACTION_RETRY:Ljava/lang/String; = null

.field public static final BUFFER_SIZE:I = 0x1000

.field public static final DEFAULT_DL_BINARY_EXTENSION:Ljava/lang/String; = ".bin"

.field public static final DEFAULT_DL_FILENAME:Ljava/lang/String; = "downloadfile"

.field public static final DEFAULT_DL_HTML_EXTENSION:Ljava/lang/String; = ".html"

.field public static DEFAULT_DL_SUBDIR:Ljava/lang/String; = null

.field public static final DEFAULT_DL_TEXT_EXTENSION:Ljava/lang/String; = ".txt"

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = "AndroidDownloadManager"

.field public static DOWNLOAD_ID:Ljava/lang/String; = null

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final FAILED_CONNECTIONS:Ljava/lang/String; = "numfailed"

.field public static final FILENAME_SEQUENCE_SEPARATOR:Ljava/lang/String; = "-"

.field public static final KNOWN_SPURIOUS_FILENAME:Ljava/lang/String; = "lost+found"

.field public static final LOGV:Z = false

.field public static final LOGVV:Z = false

.field static final LOGX:Z = false

.field public static final MAX_DOWNLOADS:I = 0x3e8

.field public static final MAX_REDIRECTS:I = 0x5

.field public static MAX_RETRIES:I = 0x0

.field public static final MAX_RETRY_AFTER:I = 0x15180

.field public static MAX_THREAD:I = 0x0

.field public static final MEDIA_SCANNED:Ljava/lang/String; = "scanned"

.field public static final MIMETYPE_APK:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final MIMETYPE_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final MIN_PROGRESS_STEP:I = 0x1fa0

.field public static final MIN_PROGRESS_TIME:J = 0x5dcL

.field public static final MIN_RETRY_AFTER:I = 0x1e

.field public static final NO_SYSTEM_FILES:Ljava/lang/String; = "no_system"

.field public static final OTA_UPDATE:Ljava/lang/String; = "otaupdate"

.field public static PREFIX:Ljava/lang/String; = null

.field public static final RECOVERY_DIRECTORY:Ljava/lang/String; = "recovery"

.field public static final RETRY_AFTER_X_REDIRECT_COUNT:Ljava/lang/String; = "method"

.field public static final RETRY_FIRST_DELAY:I = 0xa

.field public static final TAG:Ljava/lang/String; = "DownloadManager"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static mergeFailedCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    const-string v0, "com.duoku.platform.download.ex"

    sput-object v0, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->ACTION_RETRY:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.REDOWNLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->ACTION_REDOWNLOAD:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->ACTION_OPEN:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_LIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->ACTION_LIST:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->ACTION_HIDE:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->DEFAULT_DL_SUBDIR:Ljava/lang/String;

    .line 173
    const/4 v0, 0x3

    sput v0, Lcom/duoku/platform/download/Constants;->MAX_RETRIES:I

    .line 208
    const/4 v0, 0x2

    sput v0, Lcom/duoku/platform/download/Constants;->MAX_THREAD:I

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".download_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->DOWNLOAD_ID:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/Constants;->mergeFailedCountMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method
