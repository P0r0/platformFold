.class public Lmobisocial/omlib/db/entity/OMMessage;
.super Lmobisocial/omlib/db/util/OMBase;
.source "OMMessage.java"

# interfaces
.implements Lmobisocial/omlib/model/OmletModel$OMBaseColumns;


# annotations
.annotation runtime Lmobisocial/omlib/db/util/Table;
    value = "messages"
.end annotation


# static fields
.field public static final COL_FEED_ID_TYPED_ID:Ljava/lang/String; = "feedIdTypedId"

.field public static final COL_LAST_HASH_FOR_SEND:Ljava/lang/String; = "lastHashForSend"

.field public static final COL_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE messages (_id integer PRIMARY KEY AUTOINCREMENT, skHash integer, feedIdTypedId blob, timestamp integer, feedId integer, lastHashForSend integer)"

.field public static final FEED_ID:Ljava/lang/String; = "feedId"

.field public static final TABLE:Ljava/lang/String; = "messages"


# instance fields
.field public feedId:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "feedId"
    .end annotation
.end field

.field public feedIdTypedId:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "feedIdTypedId"
        secondaryKey = true
    .end annotation
.end field

.field public id:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "_id"
        primaryKey = true
    .end annotation
.end field

.field public lastHashForSend:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "lastHashForSend"
    .end annotation
.end field

.field public skHash:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "skHash"
        secondaryKeyQuickIndex = true
    .end annotation
.end field

.field public timestamp:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "timestamp"
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
