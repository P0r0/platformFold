.class public Lmobisocial/omlib/db/entity/OMSetting;
.super Lmobisocial/omlib/db/util/OMBase;
.source "OMSetting.java"

# interfaces
.implements Lmobisocial/omlib/model/OmletModel$Settings$SettingsColumns;


# annotations
.annotation runtime Lmobisocial/omlib/db/util/Table;
    name = "settings"
.end annotation


# instance fields
.field public booleanValue:Ljava/lang/Boolean;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "booleanValue"
    .end annotation
.end field

.field public byteArrayValue:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "byteArrayValue"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "_id"
        primaryKey = true
    .end annotation
.end field

.field public integerValue:Ljava/lang/Integer;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "intValue"
    .end annotation
.end field

.field public key:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "key"
        secondaryKey = true
    .end annotation
.end field

.field public longValue:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "longValue"
    .end annotation
.end field

.field public skHash:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "skHash"
        secondaryKeyQuickIndex = true
    .end annotation
.end field

.field public stringValue:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "stringValue"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lmobisocial/omlib/db/util/OMBase;-><init>()V

    return-void
.end method
