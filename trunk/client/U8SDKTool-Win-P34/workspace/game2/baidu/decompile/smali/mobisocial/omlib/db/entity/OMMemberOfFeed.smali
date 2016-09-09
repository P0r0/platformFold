.class public Lmobisocial/omlib/db/entity/OMMemberOfFeed;
.super Lmobisocial/omlib/db/entity/OMAccount;
.source "OMMemberOfFeed.java"

# interfaces
.implements Lmobisocial/omlib/model/OmletModel$MembersOfFeed$MembersOfFeedColumns;


# annotations
.annotation runtime Lmobisocial/omlib/db/util/Table;
    value = "members"
.end annotation


# instance fields
.field public accountId:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "accountId"
    .end annotation
.end field

.field public feedId:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "feedId"
    .end annotation
.end field

.field public lastAck:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "lastAck"
    .end annotation
.end field

.field public lastRead:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "lastRead"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lmobisocial/omlib/db/entity/OMAccount;-><init>()V

    return-void
.end method
