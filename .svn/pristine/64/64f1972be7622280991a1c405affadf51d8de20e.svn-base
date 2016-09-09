.class public Lmobisocial/omlib/db/entity/OMIdentity;
.super Lmobisocial/omlib/db/util/OMBase;
.source "OMIdentity.java"

# interfaces
.implements Lmobisocial/omlib/model/OmletModel$Identities$IdentityColumns;


# annotations
.annotation runtime Lmobisocial/omlib/db/util/Table;
    value = "identities"
.end annotation


# instance fields
.field public accountId:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "accountid"
    .end annotation
.end field

.field public id:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "_id"
        primaryKey = true
    .end annotation
.end field

.field public identityHash:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "identityHash"
        secondaryKey = true
    .end annotation
.end field

.field public modifiedTimestamp:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        modificationTimestamp = true
        name = "modifiedTimestamp"
    .end annotation
.end field

.field public rawContactId:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "rawContactID"
    .end annotation
.end field

.field public skHash:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "skHash"
        secondaryKeyQuickIndex = true
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "type"
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "value"
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
