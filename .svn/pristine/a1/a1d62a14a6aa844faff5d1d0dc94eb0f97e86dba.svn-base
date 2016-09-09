.class public Lmobisocial/omlib/service/OmlibContentProvider;
.super Landroid/content/ContentProvider;
.source "OmlibContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;,
        Lmobisocial/omlib/service/OmlibContentProvider$MimeTypes;,
        Lmobisocial/omlib/service/OmlibContentProvider$Intents;
    }
.end annotation


# static fields
.field static final MATCH_ACCOUNTS:I = 0x1

.field static final MATCH_CHAT:I = 0xa

.field static final MATCH_FEED:I = 0x3

.field static final MATCH_FEED_ID:I = 0x4

.field static final MATCH_FEED_MEMBER:I = 0x5

.field static final MATCH_FEED_MEMBER_ID:I = 0x6

.field static final MATCH_IDENTITY:I = 0x8

.field static final MATCH_MEMBERS_OF_FEED_ID:I = 0x9

.field static final MATCH_OBJECTS:I = 0x2

.field static final MATCH_OBJECTS_WITH_SENDER:I = 0x7

.field static final MATCH_STICKERS:I = 0xb

.field static final TAG:Ljava/lang/String; = "Omlib-CP"

.field public static final TIMEOUT_SECONDS:I = 0x28


# instance fields
.field AUTHORITY:Ljava/lang/String;

.field private mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;

.field final mURIMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 90
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    .line 244
    return-void
.end method

.method private appendClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "clause"    # Ljava/lang/String;

    .prologue
    .line 169
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 172
    .end local p2    # "clause":Ljava/lang/String;
    :cond_8
    :goto_8
    return-object p2

    .restart local p2    # "clause":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_8
.end method

.method static blobHashForUri(Landroid/net/Uri;)[B
    .registers 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v7, 0x10

    .line 234
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 236
    .local v2, "len":I
    div-int/lit8 v4, v2, 0x2

    new-array v0, v4, [B

    .line 237
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v2, :cond_2e

    .line 238
    div-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 237
    add-int/lit8 v1, v1, 0x2

    goto :goto_f

    .line 240
    :cond_2e
    return-object v0
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 145
    const-string v0, "%s.omlib.provider"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete not allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Insert not allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 128
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobisocial/omlib/service/OmlibContentProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->AUTHORITY:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getInstance(Landroid/content/Context;)Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;

    .line 130
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "feeds"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "identities"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "feeds/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "objects"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "feedMembers"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "feedMembers/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "objects_with_sender"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "members/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "stickers"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "chats"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    return v4
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmobisocial/omlib/service/OmlibContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 203
    :try_start_0
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lmobisocial/omlib/service/LongdanClientHelper;->getInstance(Landroid/content/Context;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    .line 204
    .local v1, "client":Lmobisocial/omlib/client/LongdanClient;
    invoke-static {p1}, Lmobisocial/omlib/service/OmlibContentProvider;->blobHashForUri(Landroid/net/Uri;)[B

    move-result-object v0

    .line 205
    .local v0, "blobHash":[B
    const-string v7, "blobLink"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1c

    .line 206
    new-instance v7, Lmobisocial/omlib/service/OmlibContentProvider$1;

    invoke-direct {v7, p0, v1, v0, p1}, Lmobisocial/omlib/service/OmlibContentProvider$1;-><init>(Lmobisocial/omlib/service/OmlibContentProvider;Lmobisocial/omlib/client/LongdanClient;[BLandroid/net/Uri;)V

    invoke-virtual {v1, v7}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 214
    :cond_1c
    iget-object v7, v1, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v7, v0}, Lmobisocial/omlib/client/ClientBlobUtils;->getStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v4

    .line 215
    .local v4, "localBlob":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 216
    const/high16 v7, 0x10000000

    invoke-static {v4, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 224
    :goto_2e
    return-object v7

    .line 218
    :cond_2f
    const-string v7, "true"

    const-string v8, "localOnly"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 219
    new-instance v7, Ljava/io/FileNotFoundException;

    const-string v8, "Blob not available locally and localOnly requested."

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_45} :catch_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_72

    .line 225
    .end local v0    # "blobHash":[B
    .end local v1    # "client":Lmobisocial/omlib/client/LongdanClient;
    .end local v4    # "localBlob":Ljava/io/File;
    :catch_45
    move-exception v2

    .line 226
    .local v2, "e":Ljava/io/FileNotFoundException;
    throw v2

    .line 221
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "blobHash":[B
    .restart local v1    # "client":Lmobisocial/omlib/client/LongdanClient;
    .restart local v4    # "localBlob":Ljava/io/File;
    :cond_47
    :try_start_47
    const-string v7, "timeout"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "timeoutParam":Ljava/lang/String;
    if-eqz v6, :cond_6f

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6f

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_59
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 223
    .local v5, "timeout":Ljava/lang/Integer;
    iget-object v7, v1, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    const/4 v8, 0x1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v0, v8, v9, p3}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobForHashAndWait([BZILandroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object v3

    .line 224
    .local v3, "file":Ljava/io/File;
    const/high16 v7, 0x10000000

    invoke-static {v3, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_6d} :catch_45
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_6d} :catch_72

    move-result-object v7

    goto :goto_2e

    .line 222
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "timeout":Ljava/lang/Integer;
    :cond_6f
    const/16 v7, 0x28

    goto :goto_59

    .line 227
    .end local v0    # "blobHash":[B
    .end local v1    # "client":Lmobisocial/omlib/client/LongdanClient;
    .end local v4    # "localBlob":Ljava/io/File;
    .end local v6    # "timeoutParam":Ljava/lang/String;
    :catch_72
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "Omlib-CP"

    const-string v8, "Failed to fetch blob"

    invoke-static {v7, v8, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    new-instance v7, Ljava/io/FileNotFoundException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 150
    iget-object v2, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 151
    .local v9, "match":I
    const/4 v2, -0x1

    if-ne v9, v2, :cond_23

    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_23
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    .local v1, "table":Ljava/lang/String;
    const/4 v2, 0x4

    if-ne v9, v2, :cond_67

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lmobisocial/omlib/service/OmlibContentProvider;->appendClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 162
    :cond_4c
    :goto_4c
    iget-object v2, p0, Lmobisocial/omlib/service/OmlibContentProvider;->mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;

    invoke-virtual {v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 163
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 164
    .local v8, "c":Landroid/database/Cursor;
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 165
    return-object v8

    .line 157
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_67
    const/4 v2, 0x6

    if-ne v9, v2, :cond_86

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feedId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lmobisocial/omlib/service/OmlibContentProvider;->appendClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_4c

    .line 159
    :cond_86
    const/16 v2, 0x9

    if-ne v9, v2, :cond_4c

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feedId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lmobisocial/omlib/service/OmlibContentProvider;->appendClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_4c
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
