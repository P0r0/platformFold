.class public Lmobisocial/omlib/db/entity/OMBlob;
.super Lmobisocial/omlib/db/util/OMBase;
.source "OMBlob.java"

# interfaces
.implements Lmobisocial/omlib/model/OmletModel$OMBaseColumns;


# annotations
.annotation runtime Lmobisocial/omlib/db/util/Table;
    value = "blobs"
.end annotation


# static fields
.field public static final COL_BLOB_HASH:Ljava/lang/String; = "blobHash"

.field public static final COL_SIZE:Ljava/lang/String; = "size"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE blobs (_id integer PRIMARY KEY AUTOINCREMENT, blobHash blob, skHash integer, size integer)"

.field public static final TABLE:Ljava/lang/String; = "blobs"


# instance fields
.field public blobHash:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "blobHash"
        secondaryKey = true
    .end annotation
.end field

.field public id:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "_id"
        primaryKey = true
    .end annotation
.end field

.field public size:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "size"
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
