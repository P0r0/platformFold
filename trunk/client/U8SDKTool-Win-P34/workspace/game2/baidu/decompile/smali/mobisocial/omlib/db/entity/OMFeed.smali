.class public Lmobisocial/omlib/db/entity/OMFeed;
.super Lmobisocial/omlib/db/util/OMBase;
.source "OMFeed.java"

# interfaces
.implements Lmobisocial/omlib/model/OmletModel$Feeds$FeedColumns;


# annotations
.annotation runtime Lmobisocial/omlib/db/util/Table;
    value = "feeds"
.end annotation


# static fields
.field public static final APPROXIMATE_DIRTY_TIME:Ljava/lang/String; = "approximateDirtyTime"

.field public static final HAS_WRITE_ACCESS:Ljava/lang/String; = "hasWriteAccess"

.field public static final MASK_DEFAULT:I = 0x1f

.field public static final MASK_DETAILS:I = 0x4

.field public static final MASK_LAST_READ:I = 0x8

.field public static final MASK_MEMBERS:I = 0x10

.field public static final MASK_NEWER:I = 0x1

.field public static final MASK_OLDER:I = 0x20

.field public static final MASK_STATE:I = 0x2

.field public static final NEWEST_FROM_SERVICE:Ljava/lang/String; = "newestFromService"

.field public static final OLDEST_FROM_SERVICE:Ljava/lang/String; = "oldestFromService"

.field public static final SYNC_MASK:Ljava/lang/String; = "syncMask"


# instance fields
.field public acceptance:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "acceptance"
    .end annotation
.end field

.field public approximateDirtyTime:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "approximateDirtyTime"
    .end annotation
.end field

.field public expired:Z
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "expired"
    .end annotation
.end field

.field public favorite:Z
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "favorite"
    .end annotation
.end field

.field public hasWriteAccess:Z
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "hasWriteAccess"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "_id"
        primaryKey = true
    .end annotation
.end field

.field public identifier:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "identifier"
        secondaryKey = true
    .end annotation
.end field

.field public kind:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "kind"
    .end annotation
.end field

.field public lastReadTime:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "lastReadTime"
    .end annotation
.end field

.field private mLDFeed:Lmobisocial/longdan/LDProtocols$LDFeed;

.field public memberCount:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "memberCount"
    .end annotation
.end field

.field public membershipTime:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "membershipTime"
    .end annotation
.end field

.field public modifiedTimestamp:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        modificationTimestamp = true
        name = "modifiedTimestamp"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "name"
    .end annotation
.end field

.field public newestFromService:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "newestFromService"
    .end annotation
.end field

.field public numUnread:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "numUnread"
    .end annotation
.end field

.field public oldestFromService:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "oldestFromService"
    .end annotation
.end field

.field public renderableObjId:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "renderableId"
    .end annotation
.end field

.field public renderableTime:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "renderableTime"
    .end annotation
.end field

.field public skHash:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "skHash"
        secondaryKeyQuickIndex = true
    .end annotation
.end field

.field public specifiedName:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "specifiedName"
    .end annotation
.end field

.field public specifiedThumbnailHash:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "specifiedThumbnailHash"
    .end annotation
.end field

.field public syncMask:I
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "syncMask"
    .end annotation
.end field

.field public thumbnailHash:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "thumbnailHash"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lmobisocial/omlib/db/util/OMBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getLdFeed()Lmobisocial/longdan/LDProtocols$LDFeed;
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lmobisocial/omlib/db/entity/OMFeed;->mLDFeed:Lmobisocial/longdan/LDProtocols$LDFeed;

    if-nez v0, :cond_14

    iget-object v0, p0, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 114
    iget-object v0, p0, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    const-class v1, Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-static {v0, v1}, Lmobisocial/serialization/SerializationUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/LDProtocols$LDFeed;

    iput-object v0, p0, Lmobisocial/omlib/db/entity/OMFeed;->mLDFeed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 116
    :cond_14
    iget-object v0, p0, Lmobisocial/omlib/db/entity/OMFeed;->mLDFeed:Lmobisocial/longdan/LDProtocols$LDFeed;

    return-object v0
.end method

.method public isPushEnabled()Z
    .registers 5

    .prologue
    .line 120
    iget-wide v0, p0, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    sget-object v2, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->PushEnabled:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    invoke-virtual {v2}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lmobisocial/omlib/db/entity/OMFeed;->acceptance:J

    sget-object v2, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->RestrictedPush:Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;

    invoke-virtual {v2}, Lmobisocial/omlib/client/ClientFeedUtils$Acceptance;->ordinal()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
