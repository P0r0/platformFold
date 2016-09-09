.class public final Lcom/duoku/platform/download/DownloadProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/DownloadProvider$a;,
        Lcom/duoku/platform/download/DownloadProvider$b;,
        Lcom/duoku/platform/download/DownloadProvider$c;
    }
.end annotation


# static fields
.field public static final ALL_DOWNLOADS:I = 0x3

.field public static final ALL_DOWNLOADS_ID:I = 0x4

.field public static AUTHORITY:Ljava/lang/String; = null

.field public static BASE_URIS:[Landroid/net/Uri; = null

.field public static final CHECK_PERMISSION:Z = false

.field private static final DB_NAME:Ljava/lang/String; = "downloads.db"

.field private static final DB_TABLE:Ljava/lang/String; = "downloads"

.field private static final DB_VERSION:I = 0x6a

.field private static final DOWNLOAD_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/download"

.field private static final DOWNLOAD_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/download"

.field public static final MY_DOWNLOADS:I = 0x1

.field public static final MY_DOWNLOADS_ID:I = 0x2

.field public static final REQUEST_HEADERS_URI:I = 0x5

.field private static sAppReadableColumnsArray:[Ljava/lang/String;

.field private static sAppReadableColumnsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDefContainerUid:I

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

.field private mSystemUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 67
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    .line 93
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v3, "my_downloads"

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v3, "my_downloads/#"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v3, "all_downloads"

    invoke-virtual {v1, v2, v3, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v3, "all_downloads/#"

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v3, "my_downloads/#/headers"

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v3, "all_downloads/#/headers"

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v3, "download"

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v3, "download/#"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v3, "download/#/headers"

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    new-array v1, v6, [Landroid/net/Uri;

    .line 108
    sget-object v2, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v0

    sget-object v2, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v5

    .line 106
    sput-object v1, Lcom/duoku/platform/download/DownloadProvider;->BASE_URIS:[Landroid/net/Uri;

    .line 115
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    .line 116
    const-string v2, "_id"

    aput-object v2, v1, v0

    const-string v2, "entity"

    aput-object v2, v1, v5

    const-string v2, "_data"

    aput-object v2, v1, v6

    const-string v2, "mimetype"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "visibility"

    aput-object v3, v1, v2

    const-string v2, "destination"

    aput-object v2, v1, v7

    const/4 v2, 0x6

    .line 117
    const-string v3, "control"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "status"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "lastmod"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "notificationpackage"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "notificationclass"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 118
    const-string v3, "total_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "current_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "uri"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    .line 119
    const-string v3, "is_visible_in_downloads_ui"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "hint"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "mediaprovider_uri"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "deleted"

    aput-object v3, v1, v2

    .line 114
    sput-object v1, Lcom/duoku/platform/download/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    .line 129
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/duoku/platform/download/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    .line 130
    :goto_fa
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_100

    .line 134
    return-void

    .line 132
    :cond_100
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    sget-object v2, Lcom/duoku/platform/download/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_fa
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 52
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 140
    iput v1, p0, Lcom/duoku/platform/download/DownloadProvider;->mSystemUid:I

    .line 142
    iput v1, p0, Lcom/duoku/platform/download/DownloadProvider;->mDefContainerUid:I

    .line 52
    return-void
.end method

.method private checkFileUriDestination(Landroid/content/ContentValues;)V
    .registers 6

    .prologue
    .line 671
    const-string v0, "hint"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    if-nez v0, :cond_10

    .line 674
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DESTINATION_FILE_URI must include a file URI under COLUMN_FILE_NAME_HINT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 678
    if-eqz v1, :cond_22

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 680
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not a file URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 682
    :cond_37
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 683
    if-nez v1, :cond_52

    .line 685
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid file URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :cond_52
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 688
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 690
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Destination must be on external storage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 692
    :cond_75
    return-void
.end method

.method private checkInsertPermissions(Landroid/content/ContentValues;)V
    .registers 2

    .prologue
    .line 708
    return-void
.end method

.method private static copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .registers 4

    .prologue
    .line 1419
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1420
    if-eqz v0, :cond_9

    .line 1422
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1424
    :cond_9
    return-void
.end method

.method private static copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .registers 4

    .prologue
    .line 1400
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1401
    if-eqz v0, :cond_9

    .line 1403
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1405
    :cond_9
    return-void
.end method

.method private static copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .registers 4

    .prologue
    .line 1438
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1439
    if-eqz v0, :cond_9

    .line 1441
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    :cond_9
    return-void
.end method

.method private static copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1459
    invoke-static {p0, p1, p2}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1460
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1462
    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :cond_c
    return-void
.end method

.method private deleteRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1030
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 1031
    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 1033
    const-string v1, "downloads"

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1036
    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_18
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_40

    move-result v0

    if-eqz v0, :cond_22

    .line 1045
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1047
    return-void

    .line 1038
    :cond_22
    const/4 v0, 0x0

    :try_start_23
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "download_id="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1040
    const-string v2, "request_headers"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1036
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_40

    goto :goto_18

    .line 1044
    :catchall_40
    move-exception v0

    .line 1045
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1046
    throw v0
.end method

.method private varargs enforceAllowedValues(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 789
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 790
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 791
    array-length v2, p3

    const/4 v0, 0x0

    :goto_9
    if-lt v0, v2, :cond_2a

    .line 802
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid value for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_2a
    aget-object v3, p3, v0

    .line 793
    if-nez v1, :cond_31

    if-nez v3, :cond_31

    .line 799
    :cond_30
    return-void

    .line 797
    :cond_31
    if-eqz v1, :cond_39

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 791
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/duoku/platform/download/DownloadProvider$c;
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1206
    new-instance v0, Lcom/duoku/platform/download/DownloadProvider$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/duoku/platform/download/DownloadProvider$c;-><init>(Lcom/duoku/platform/download/DownloadProvider$c;)V

    .line 1207
    invoke-virtual {v0, p2, p3}, Lcom/duoku/platform/download/DownloadProvider$c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1208
    if-eq p4, v5, :cond_11

    const/4 v1, 0x4

    if-ne p4, v1, :cond_1e

    .line 1210
    :cond_11
    const-string v1, "_id = ?"

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/download/DownloadProvider$c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    :cond_1e
    if-eq p4, v4, :cond_22

    if-ne p4, v5, :cond_49

    :cond_22
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/download/Downloads$Impl;->PERMISSION_ACCESS_ALL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_49

    .line 1214
    const-string v1, "uid= ? OR otheruid= ?"

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/download/DownloadProvider$c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    :cond_49
    return-object v0
.end method

.method private insertRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V
    .registers 11

    .prologue
    .line 977
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 978
    const-string v0, "download_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 979
    invoke-virtual {p4}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 995
    return-void

    .line 979
    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 981
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 982
    const-string v4, "http_header_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 984
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 987
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid HTTP header line: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 989
    :cond_56
    const-string v1, ":"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 990
    const-string v1, "header"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v1, "value"

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v0, "request_headers"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_16
.end method

.method private logVerboseOpenFileInfo(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1336
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openFile uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    sget-object v1, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    .line 1338
    new-array v2, v7, [Ljava/lang/String;

    .line 1339
    const-string v0, "_id"

    aput-object v0, v2, v6

    .line 1340
    const-string v5, "_id"

    move-object v0, p0

    move-object v4, v3

    .line 1337
    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/download/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1341
    if-nez v0, :cond_60

    .line 1343
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :goto_48
    new-array v2, v7, [Ljava/lang/String;

    .line 1363
    const-string v0, "_data"

    aput-object v0, v2, v6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 1361
    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/download/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1365
    if-nez v0, :cond_96

    .line 1367
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :goto_5f
    return-void

    .line 1347
    :cond_60
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_71

    .line 1349
    const-string v1, "DownloadManager"

    const-string v2, "empty cursor in openFile"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :goto_6d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_48

    .line 1355
    :cond_71
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "row "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " available"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_71

    goto :goto_6d

    .line 1371
    :cond_96
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_a7

    .line 1373
    const-string v1, "DownloadManager"

    const-string v2, "empty cursor in openFile"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_a3
    :goto_a3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5f

    .line 1377
    :cond_a7
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1378
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filename in openFile: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 1381
    const-string v1, "DownloadManager"

    const-string v2, "file exists in openFile"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3
.end method

.method private logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    const-string v0, "starting query, database is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    if-eqz p5, :cond_12

    .line 903
    const-string v0, "not "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :cond_12
    const-string v0, "null; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    if-nez p1, :cond_49

    .line 908
    const-string v0, "projection is null; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    :cond_1e
    :goto_1e
    const-string v0, "selection is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    if-nez p3, :cond_70

    .line 930
    const-string v0, "selectionArgs is null; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    :goto_32
    const-string v0, "sort is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    const-string v0, "DownloadManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    return-void

    .line 910
    :cond_49
    array-length v0, p1

    if-nez v0, :cond_52

    .line 912
    const-string v0, "projection is empty; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_52
    move v0, v1

    .line 916
    :goto_53
    array-length v3, p1

    if-ge v0, v3, :cond_1e

    .line 918
    const-string v3, "projection["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 920
    const-string v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 932
    :cond_70
    array-length v0, p3

    if-nez v0, :cond_92

    .line 934
    const-string v0, "selectionArgs is empty; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 940
    :cond_79
    const-string v0, "selectionArgs["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 942
    const-string v0, "] is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    aget-object v0, p3, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    add-int/lit8 v1, v1, 0x1

    :cond_92
    array-length v0, p3

    if-lt v1, v0, :cond_79

    goto :goto_32
.end method

.method private varargs notifyContentChanged(Landroid/net/Uri;I[J)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1172
    .line 1173
    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1b

    .line 1175
    :cond_8
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1181
    :goto_14
    sget-object v4, Lcom/duoku/platform/download/DownloadProvider;->BASE_URIS:[Landroid/net/Uri;

    array-length v5, v4

    move v3, v2

    :goto_18
    if-lt v3, v5, :cond_28

    .line 1189
    return-void

    .line 1177
    :cond_1b
    if-eqz p3, :cond_43

    array-length v0, p3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_43

    .line 1179
    aget-wide v4, p3, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_14

    .line 1181
    :cond_28
    aget-object v2, v4, v3

    .line 1183
    if-eqz v0, :cond_34

    .line 1185
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1187
    :cond_34
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1181
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_18

    :cond_43
    move-object v0, v1

    goto :goto_14
.end method

.method private queryRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/duoku/platform/download/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1010
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1011
    const-string v1, "header"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "value"

    aput-object v1, v2, v0

    .line 1013
    const-string v1, "request_headers"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1014
    new-instance v1, Lcom/duoku/platform/download/DownloadProvider$b;

    invoke-direct {v1, v0}, Lcom/duoku/platform/download/DownloadProvider$b;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method private shouldRestrictVisibility()Z
    .registers 4

    .prologue
    .line 1057
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1058
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_1e

    iget v1, p0, Lcom/duoku/platform/download/DownloadProvider;->mSystemUid:I

    if-eq v0, v1, :cond_1e

    iget v1, p0, Lcom/duoku/platform/download/DownloadProvider;->mDefContainerUid:I

    if-eq v0, v1, :cond_1e

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9

    .prologue
    .line 1223
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1224
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/duoku/platform/download/DownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1228
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1230
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 1231
    packed-switch v1, :pswitch_data_56

    .line 1245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot delete URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1237
    :pswitch_32
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/duoku/platform/download/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/duoku/platform/download/DownloadProvider$c;

    move-result-object v2

    .line 1238
    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadProvider$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadProvider$c;->b()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/duoku/platform/download/DownloadProvider;->deleteRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1239
    const-string v3, "downloads"

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadProvider$c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadProvider$c;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1247
    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-direct {p0, p1, v1, v2}, Lcom/duoku/platform/download/DownloadProvider;->notifyContentChanged(Landroid/net/Uri;I[J)V

    .line 1254
    return v0

    .line 1231
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method public getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 962
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 497
    sget-object v0, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 498
    packed-switch v0, :pswitch_data_24

    .line 510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :pswitch_1e
    const-string v0, "vnd.android.cursor.dir/download"

    .line 504
    :goto_20
    return-object v0

    :pswitch_21
    const-string v0, "vnd.android.cursor.item/download"

    goto :goto_20

    .line 498
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 13

    .prologue
    .line 518
    invoke-direct {p0, p2}, Lcom/duoku/platform/download/DownloadProvider;->checkInsertPermissions(Landroid/content/ContentValues;)V

    .line 519
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 522
    sget-object v0, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 523
    const/4 v0, 0x1

    if-eq v3, v0, :cond_3b

    .line 525
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calling insert on an unknown/invalid URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown/Invalid URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_3b
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 531
    const-string v0, "uri"

    invoke-static {v0, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 532
    const-string v0, "entity"

    invoke-static {v0, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 533
    const-string v0, "no_integrity"

    invoke-static {v0, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 534
    const-string v0, "hint"

    invoke-static {v0, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 535
    const-string v0, "mimetype"

    invoke-static {v0, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 537
    const-string v0, "is_public_api"

    invoke-static {v0, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 538
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "is_public_api"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 540
    const-string v0, "destination"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_b1

    .line 551
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v6, Lcom/duoku/platform/download/Downloads$Impl;->PERMISSION_CACHE_NON_PURGEABLE:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18f

    const/4 v1, 0x1

    .line 552
    :goto_7f
    if-eqz v5, :cond_8f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8f

    if-eqz v1, :cond_8f

    .line 554
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 556
    :cond_8f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_ac

    .line 558
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 559
    const-string v9, "need WRITE_EXTERNAL_STORAGE permission to use DESTINATION_FILE_URI"

    .line 558
    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 560
    invoke-direct {p0, p2}, Lcom/duoku/platform/download/DownloadProvider;->checkFileUriDestination(Landroid/content/ContentValues;)V

    .line 562
    :cond_ac
    const-string v1, "destination"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    :cond_b1
    const-string v1, "visibility"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 565
    if-nez v1, :cond_19e

    .line 567
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_192

    .line 569
    const-string v1, "visibility"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    :goto_c9
    const-string v1, "control"

    invoke-static {v1, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 581
    const-string v1, "status"

    const/16 v6, 0xbe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    const-string v1, "lastmod"

    iget-object v6, p0, Lcom/duoku/platform/download/DownloadProvider;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v6}, Lcom/baidu/bdgame/sdk/obf/nu;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 584
    const-string v1, "notificationpackage"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    const-string v6, "notificationclass"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 586
    if-eqz v1, :cond_114

    if-nez v6, :cond_fa

    if-eqz v5, :cond_114

    .line 588
    :cond_fa
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 591
    if-eqz v5, :cond_108

    :try_start_100
    iget-object v7, p0, Lcom/duoku/platform/download/DownloadProvider;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v7, v5, v1}, Lcom/baidu/bdgame/sdk/obf/nu;->a(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_114

    .line 593
    :cond_108
    const-string v5, "notificationpackage"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    if-eqz v6, :cond_114

    .line 596
    const-string v1, "notificationclass"

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_114
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_100 .. :try_end_114} :catch_1a5

    .line 606
    :cond_114
    :goto_114
    const-string v1, "notificationextras"

    invoke-static {v1, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 607
    const-string v1, "cookiedata"

    invoke-static {v1, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 608
    const-string v1, "useragent"

    invoke-static {v1, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 609
    const-string v1, "referer"

    invoke-static {v1, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 614
    const-string v1, "uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-nez v1, :cond_140

    .line 617
    const-string v1, "uid"

    invoke-static {v1, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 619
    :cond_140
    const-string v1, "title"

    const-string v5, ""

    invoke-static {v1, p2, v4, v5}, Lcom/duoku/platform/download/DownloadProvider;->copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 620
    const-string v1, "description"

    const-string v5, ""

    invoke-static {v1, p2, v4, v5}, Lcom/duoku/platform/download/DownloadProvider;->copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 621
    const-string v1, "total_bytes"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    const-string v1, "current_bytes"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    const-string v1, "is_visible_in_downloads_ui"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 626
    const-string v0, "is_visible_in_downloads_ui"

    invoke-static {v0, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 636
    :goto_16f
    const-string v0, "allowed_network_types"

    invoke-static {v0, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 637
    const-string v0, "allow_roaming"

    invoke-static {v0, p2, v4}, Lcom/duoku/platform/download/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 649
    const-string v0, "downloads"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 650
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_1c2

    .line 652
    const-string v0, "DownloadManager"

    const-string v1, "couldn\'t insert into downloads database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v0, 0x0

    .line 660
    :goto_18e
    return-object v0

    .line 551
    :cond_18f
    const/4 v1, 0x0

    goto/16 :goto_7f

    .line 573
    :cond_192
    const-string v1, "visibility"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_c9

    .line 578
    :cond_19e
    const-string v6, "visibility"

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_c9

    .line 600
    :catch_1a5
    move-exception v1

    .line 603
    const-string v5, "DownloadProvider"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_114

    .line 631
    :cond_1ad
    if-eqz v0, :cond_1c0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1c0

    const/4 v0, 0x0

    .line 632
    :goto_1b6
    const-string v1, "is_visible_in_downloads_ui"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_16f

    .line 631
    :cond_1c0
    const/4 v0, 0x1

    goto :goto_1b6

    .line 656
    :cond_1c2
    invoke-direct {p0, v2, v0, v1, p2}, Lcom/duoku/platform/download/DownloadProvider;->insertRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V

    .line 657
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 658
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/duoku/platform/download/DownloadService;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 659
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v4, 0x0

    aput-wide v0, v2, v4

    invoke-direct {p0, p1, v3, v2}, Lcom/duoku/platform/download/DownloadProvider;->notifyContentChanged(Landroid/net/Uri;I[J)V

    .line 660
    sget-object v2, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_18e
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    if-nez v0, :cond_f

    .line 468
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nt;

    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadProvider;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    .line 471
    :cond_f
    new-instance v0, Lcom/duoku/platform/download/DownloadProvider$a;

    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/duoku/platform/download/DownloadProvider$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 473
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/duoku/platform/download/DownloadProvider;->mSystemUid:I

    .line 491
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1265
    .line 1266
    new-array v2, v7, [Ljava/lang/String;

    .line 1267
    const-string v0, "_data"

    aput-object v0, v2, v6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 1265
    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/download/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1273
    if-eqz v1, :cond_ae

    .line 1275
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1278
    :goto_17
    if-eq v0, v7, :cond_4c

    .line 1282
    if-nez v0, :cond_37

    .line 1284
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No entry for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_30

    .line 1293
    :catchall_30
    move-exception v0

    .line 1294
    if-eqz v1, :cond_36

    .line 1296
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1298
    :cond_36
    throw v0

    .line 1286
    :cond_37
    :try_start_37
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Multiple items at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :cond_4c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1290
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_30

    move-result-object v0

    .line 1294
    if-eqz v1, :cond_59

    .line 1296
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1300
    :cond_59
    if-nez v0, :cond_63

    .line 1302
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "No filename found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1304
    :cond_63
    invoke-static {v0}, Lcom/duoku/platform/download/Helpers;->isFilenameValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 1306
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Invalid filename."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1308
    :cond_71
    const-string v1, "r"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_98

    .line 1310
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad mode for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1313
    :cond_98
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1315
    if-nez v0, :cond_ad

    .line 1321
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "couldn\'t open file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_ad
    return-object v0

    :cond_ae
    move v0, v6

    goto/16 :goto_17
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 811
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 813
    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 814
    const/4 v2, -0x1

    if-ne v1, v2, :cond_25

    .line 820
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_25
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3b

    .line 825
    if-nez p2, :cond_2e

    if-nez p3, :cond_2e

    if-eqz p5, :cond_36

    .line 827
    :cond_2e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Request header queries do not support projections, selections or sorting"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_36
    invoke-direct {p0, v0, p1}, Lcom/duoku/platform/download/DownloadProvider;->queryRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 880
    :cond_3a
    :goto_3a
    return-object v0

    .line 832
    :cond_3b
    invoke-direct {p0, p1, p3, p4, v1}, Lcom/duoku/platform/download/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/duoku/platform/download/DownloadProvider$c;

    move-result-object v4

    .line 834
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadProvider;->shouldRestrictVisibility()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 836
    if-nez p2, :cond_6f

    .line 838
    sget-object p2, Lcom/duoku/platform/download/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    move-object v2, p2

    .line 857
    :goto_4a
    const-string v1, "downloads"

    invoke-virtual {v4}, Lcom/duoku/platform/download/DownloadProvider$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/duoku/platform/download/DownloadProvider$c;->b()[Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 859
    if-eqz v1, :cond_9f

    .line 861
    new-instance v0, Lcom/duoku/platform/download/DownloadProvider$b;

    invoke-direct {v0, v1}, Lcom/duoku/platform/download/DownloadProvider$b;-><init>(Landroid/database/Cursor;)V

    .line 864
    :goto_61
    if-eqz v0, :cond_3a

    .line 866
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_3a

    .line 842
    :cond_6f
    const/4 v1, 0x0

    :goto_70
    array-length v2, p2

    if-lt v1, v2, :cond_75

    :cond_73
    move-object v2, p2

    goto :goto_4a

    .line 844
    :cond_75
    sget-object v2, Lcom/duoku/platform/download/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 846
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "column "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p2, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed in queries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_9f
    move-object v0, v1

    goto :goto_61
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1067
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 1072
    const-string v0, "deleted"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 1074
    const-string v0, "deleted"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_12e

    move v6, v7

    .line 1082
    :goto_1e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_95

    .line 1084
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1085
    const-string v1, "entity"

    invoke-static {v1, p2, v0}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1086
    const-string v1, "visibility"

    invoke-static {v1, p2, v0}, Lcom/duoku/platform/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1087
    const-string v1, "control"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1088
    if-eqz v1, :cond_12b

    .line 1090
    const-string v2, "control"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1094
    :goto_44
    const-string v1, "control"

    invoke-static {v1, p2, v0}, Lcom/duoku/platform/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1095
    const-string v1, "title"

    invoke-static {v1, p2, v0}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1096
    const-string v1, "mediaprovider_uri"

    invoke-static {v1, p2, v0}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1097
    const-string v1, "description"

    invoke-static {v1, p2, v0}, Lcom/duoku/platform/download/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1098
    const-string v1, "deleted"

    invoke-static {v1, p2, v0}, Lcom/duoku/platform/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1099
    const-string v1, "scanned"

    invoke-static {v1, p2, v0}, Lcom/duoku/platform/download/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    move-object p2, v0

    .line 1130
    :cond_63
    :goto_63
    sget-object v0, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 1131
    packed-switch v1, :pswitch_data_132

    .line 1149
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updating unknown/invalid URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot update URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_95
    const-string v0, "_data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1107
    if-eqz v10, :cond_cc

    .line 1110
    new-array v2, v7, [Ljava/lang/String;

    .line 1111
    const-string v0, "title"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 1109
    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/download/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1113
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 1115
    :cond_bb
    const-string v1, "title"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_c9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1120
    :cond_cc
    const-string v0, "status"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1121
    if-eqz v1, :cond_f7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xbe

    if-ne v0, v2, :cond_f7

    move v0, v7

    .line 1122
    :goto_dd
    if-nez v0, :cond_f9

    if-eqz v1, :cond_e9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc1

    if-eq v0, v1, :cond_f9

    :cond_e9
    move v0, v8

    .line 1123
    :goto_ea
    const-string v1, "bypass_recommended_size_limit"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 1124
    if-nez v0, :cond_63

    if-nez v1, :cond_63

    move v7, v6

    goto/16 :goto_63

    :cond_f7
    move v0, v8

    .line 1121
    goto :goto_dd

    :cond_f9
    move v0, v7

    .line 1122
    goto :goto_ea

    .line 1137
    :pswitch_fb
    invoke-direct {p0, p1, p3, p4, v1}, Lcom/duoku/platform/download/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/duoku/platform/download/DownloadProvider$c;

    move-result-object v0

    .line 1138
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_129

    .line 1140
    const-string v2, "downloads"

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadProvider$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadProvider$c;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v2, p2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1153
    :goto_113
    new-array v2, v8, [J

    invoke-direct {p0, p1, v1, v2}, Lcom/duoku/platform/download/DownloadProvider;->notifyContentChanged(Landroid/net/Uri;I[J)V

    .line 1154
    if-eqz v7, :cond_128

    .line 1156
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1157
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/duoku/platform/download/DownloadService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1159
    :cond_128
    return v0

    :cond_129
    move v0, v8

    .line 1146
    goto :goto_113

    :cond_12b
    move v7, v6

    goto/16 :goto_44

    :cond_12e
    move v6, v8

    goto/16 :goto_1e

    .line 1131
    nop

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_fb
        :pswitch_fb
        :pswitch_fb
        :pswitch_fb
    .end packed-switch
.end method
