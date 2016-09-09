.class public Lmobisocial/omlib/db/entity/OMFeedMember;
.super Lmobisocial/omlib/db/util/OMBase;
.source "OMFeedMember.java"

# interfaces
.implements Lmobisocial/omlib/model/OmletModel$FeedMembers$FeedMemberColumns;


# annotations
.annotation runtime Lmobisocial/omlib/db/util/Table;
    value = "feedMembers"
.end annotation


# static fields
.field public static final ACCOUNT_FEED_KEY:Ljava/lang/String; = "accountFeedKey"

.field public static final TABLE:Ljava/lang/String; = "feedMembers"


# instance fields
.field public AccountFeed:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "accountFeedKey"
        secondaryKey = true
    .end annotation
.end field

.field public accountId:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "accountId"
    .end annotation
.end field

.field public feedId:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "feedId"
    .end annotation
.end field

.field public id:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "_id"
        primaryKey = true
    .end annotation
.end field

.field public lastAck:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "lastAck"
    .end annotation
.end field

.field public lastRead:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "lastRead"
    .end annotation
.end field

.field public modificationTimestamp:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        modificationTimestamp = true
        name = "modifiedTimestamp"
    .end annotation
.end field

.field public skHash:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "skHash"
        secondaryKeyQuickIndex = true
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
