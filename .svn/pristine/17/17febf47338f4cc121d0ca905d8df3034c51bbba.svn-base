.class public final Lcom/duoku/platform/download/Downloads;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/Downloads$Impl;
    }
.end annotation


# static fields
.field public static ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String; = null

.field public static ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = null

.field public static final COLUMN_APP_DATA:Ljava/lang/String; = "entity"

.field public static final COLUMN_CONTROL:Ljava/lang/String; = "control"

.field public static final COLUMN_COOKIE_DATA:Ljava/lang/String; = "cookiedata"

.field public static final COLUMN_CURRENT_BYTES:Ljava/lang/String; = "current_bytes"

.field public static final COLUMN_DELETED:Ljava/lang/String; = "deleted"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DESTINATION:Ljava/lang/String; = "destination"

.field public static final COLUMN_FILE_NAME_HINT:Ljava/lang/String; = "hint"

.field public static final COLUMN_LAST_MODIFICATION:Ljava/lang/String; = "lastmod"

.field public static final COLUMN_MIME_TYPE:Ljava/lang/String; = "mimetype"

.field public static final COLUMN_NOTIFICATION_CLASS:Ljava/lang/String; = "notificationclass"

.field public static final COLUMN_NOTIFICATION_EXTRAS:Ljava/lang/String; = "notificationextras"

.field public static final COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String; = "notificationpackage"

.field public static final COLUMN_NO_INTEGRITY:Ljava/lang/String; = "no_integrity"

.field public static final COLUMN_OTHER_UID:Ljava/lang/String; = "otheruid"

.field public static final COLUMN_REFERER:Ljava/lang/String; = "referer"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final COLUMN_USER_AGENT:Ljava/lang/String; = "useragent"

.field public static final COLUMN_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTROL_PAUSED:I = 0x1

.field public static final CONTROL_RUN:I = 0x0

.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final DESTINATION_CACHE_PARTITION:I = 0x1

.field public static final DESTINATION_CACHE_PARTITION_NOROAMING:I = 0x3

.field public static final DESTINATION_CACHE_PARTITION_PURGEABLE:I = 0x2

.field public static final DESTINATION_EXTERNAL:I = 0x0

.field public static PERMISSION_ACCESS:Ljava/lang/String; = null

.field public static PERMISSION_ACCESS_ADVANCED:Ljava/lang/String; = null

.field public static PERMISSION_CACHE:Ljava/lang/String; = null

.field public static PERMISSION_SEND_INTENTS:Ljava/lang/String; = null

.field public static final STATUS_BAD_REQUEST:I = 0x190

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_DEVICE_NOT_FOUND_ERROR:I = 0x1f3

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_HTTP_DATA_ERROR:I = 0x1ef

.field public static final STATUS_HTTP_EXCEPTION:I = 0x1f0

.field public static final STATUS_INSUFFICIENT_SPACE_ERROR:I = 0x1f2

.field public static final STATUS_LENGTH_REQUIRED:I = 0x19b

.field public static final STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_PRECONDITION_FAILED:I = 0x19c

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_TOO_MANY_REDIRECTS:I = 0x1f1

.field public static final STATUS_UNHANDLED_HTTP_CODE:I = 0x1ee

.field public static final STATUS_UNHANDLED_REDIRECT:I = 0x1ed

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.ACCESS_DOWNLOAD_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->PERMISSION_ACCESS:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->PERMISSION_ACCESS_ADVANCED:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.ACCESS_CACHE_FILESYSTEM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->PERMISSION_CACHE:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.SEND_DOWNLOAD_COMPLETED_INTENTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->PERMISSION_SEND_INTENTS:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/my_downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->CONTENT_URI:Landroid/net/Uri;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->ACTION_NOTIFICATION_CLICKED:Ljava/lang/String;

    .line 749
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static isStatusClientError(I)Z
    .registers 2

    .prologue
    .line 554
    const/16 v0, 0x190

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isStatusCompleted(I)Z
    .registers 2

    .prologue
    .line 582
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_8

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_12

    :cond_8
    const/16 v0, 0x190

    if-lt p0, v0, :cond_10

    const/16 v0, 0x258

    if-lt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static isStatusError(I)Z
    .registers 2

    .prologue
    .line 541
    const/16 v0, 0x190

    if-lt p0, v0, :cond_a

    const/16 v0, 0x258

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isStatusInformational(I)Z
    .registers 2

    .prologue
    .line 515
    const/16 v0, 0x64

    if-lt p0, v0, :cond_a

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isStatusServerError(I)Z
    .registers 2

    .prologue
    .line 567
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_a

    const/16 v0, 0x258

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isStatusSuccess(I)Z
    .registers 2

    .prologue
    .line 528
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
