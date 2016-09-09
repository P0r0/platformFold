.class public Lmobisocial/omlib/db/SyncModel;
.super Ljava/lang/Object;
.source "SyncModel.java"


# static fields
.field public static final COL_ACCOUNT_SYNC_TIME:Ljava/lang/String; = "account_sync_time"

.field public static final COL_FEEDMEMBERS_SYNC_TIME:Ljava/lang/String; = "feed_members_sync_time"

.field public static final COL_FEED_SYNC_TIME:Ljava/lang/String; = "feed_sync_time"

.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_OBJECT_SYNC_TIME:Ljava/lang/String; = "object_sync_time"

.field public static final CREATE_SYNC:Ljava/lang/String; = "CREATE TABLE sync (object_sync_time integer, feed_sync_time integer, feed_members_sync_time integer, account_sync_time integer)"

.field public static final SYNC_TABLE:Ljava/lang/String; = "sync"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
