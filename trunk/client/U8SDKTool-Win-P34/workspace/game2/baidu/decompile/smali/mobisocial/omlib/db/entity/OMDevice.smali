.class public Lmobisocial/omlib/db/entity/OMDevice;
.super Lmobisocial/omlib/db/util/OMBase;
.source "OMDevice.java"

# interfaces
.implements Lmobisocial/omlib/model/OmletModel$OMBaseColumns;


# annotations
.annotation runtime Lmobisocial/omlib/db/util/Table;
    value = "device"
.end annotation


# static fields
.field public static final COL_ACCOUNT:Ljava/lang/String; = "account"

.field public static final COL_APP_ID:Ljava/lang/String; = "appId"

.field public static final COL_CLOSEST_CLUSTER:Ljava/lang/String; = "closestCluster"

.field public static final COL_CLUSTER:Ljava/lang/String; = "cluster"

.field public static final COL_DEVICE_KEY:Ljava/lang/String; = "deviceKey"

.field public static final COL_FEED_SYNC_END:Ljava/lang/String; = "feedSyncEnd"

.field public static final COL_FEED_SYNC_SPLIT:Ljava/lang/String; = "feedSyncSplit"

.field public static final COL_FEED_SYNC_START:Ljava/lang/String; = "feedSyncStart"

.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_INITIAL_INSTALL_TIME:Ljava/lang/String; = "initialInstallTime"

.field public static final COL_SCOPES:Ljava/lang/String; = "scopes"

.field public static final DEVICE_ROW_ID:I = 0x1

.field public static final TABLE:Ljava/lang/String; = "device"


# instance fields
.field public account:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "account"
    .end annotation
.end field

.field public appId:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "appId"
    .end annotation
.end field

.field public closestCluster:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "closestCluster"
    .end annotation
.end field

.field public cluster:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "cluster"
    .end annotation
.end field

.field public deviceKey:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "deviceKey"
    .end annotation
.end field

.field public feedSyncEnd:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "feedSyncEnd"
    .end annotation
.end field

.field public feedSyncSplit:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "feedSyncSplit"
    .end annotation
.end field

.field public feedSyncStart:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "feedSyncStart"
    .end annotation
.end field

.field public id:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "_id"
        primaryKey = true
    .end annotation
.end field

.field public initialInstallTime:J
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "initialInstallTime"
    .end annotation
.end field

.field public modificationTimestamp:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        modificationTimestamp = true
        name = "modifiedTimestamp"
    .end annotation
.end field

.field public scopes:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "scopes"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Lmobisocial/omlib/db/util/OMBase;-><init>()V

    .line 75
    return-void
.end method
