.class public Lmobisocial/omlib/db/entity/OMBlobSource;
.super Lmobisocial/omlib/db/util/OMBase;
.source "OMBlobSource.java"

# interfaces
.implements Lmobisocial/omlib/model/OmletModel$OMBaseColumns;


# annotations
.annotation runtime Lmobisocial/omlib/db/util/Table;
    value = "blobSource"
.end annotation


# static fields
.field public static final COL_BLOB_ID:Ljava/lang/String; = "blobId"

.field public static final COL_CATEGORY:Ljava/lang/String; = "category"

.field public static final COL_ENCRYPTED:Ljava/lang/String; = "encrypted"

.field public static final COL_FAILURES:Ljava/lang/String; = "failures"

.field public static final COL_FEED_ID:Ljava/lang/String; = "feedId"

.field public static final COL_FIRST_FAIL:Ljava/lang/String; = "firstFail"

.field public static final COL_LAST_FAIL:Ljava/lang/String; = "lastFail"

.field public static final COL_MIME_TYPE:Ljava/lang/String; = "mimeType"

.field public static final COL_SOURCE:Ljava/lang/String; = "source"

.field public static final COL_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE blobSource (_id integer PRIMARY KEY AUTOINCREMENT, blobId text, source text, skHash integer, failures integer, firstFail integer, lastFail integer, timestamp integer, mimeType varchar(40), category varchar(40), feedId integer, encrypted integer)"

.field public static final TABLE:Ljava/lang/String; = "blobSource"


# instance fields
.field public blobId:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "blobId"
    .end annotation
.end field

.field public category:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "category"
    .end annotation
.end field

.field public encrypted:Ljava/lang/Boolean;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "encrypted"
    .end annotation
.end field

.field public failures:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "failures"
    .end annotation
.end field

.field public feedId:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "feedId"
    .end annotation
.end field

.field public firstFail:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "firstFail"
    .end annotation
.end field

.field public id:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "_id"
        primaryKey = true
    .end annotation
.end field

.field public lastFail:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "lastFail"
    .end annotation
.end field

.field public mimeType:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "mimeType"
    .end annotation
.end field

.field public skHash:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "skHash"
        secondaryKeyQuickIndex = true
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "source"
        secondaryKey = true
    .end annotation
.end field

.field public timestamp:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lmobisocial/omlib/db/util/OMBase;-><init>()V

    return-void
.end method
