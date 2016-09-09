.class public Lmobisocial/omlib/db/entity/OMObject;
.super Lmobisocial/omlib/db/util/OMBase;
.source "OMObject.java"

# interfaces
.implements Lmobisocial/omlib/model/OmletModel$Objects$ObjectColumns;


# annotations
.annotation runtime Lmobisocial/omlib/db/util/Table;
    value = "objects"
.end annotation


# static fields
.field public static final STATUS_OUTBOUND:I = 0x1

.field public static final STATUS_RECEIVED:I = 0x0

.field public static final STATUS_SENT:I = 0x2

.field public static final STATUS_UNDELIVERABLE:I = -0x1


# instance fields
.field public aggregateLikeCount:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "aggregateLikeCount"
    .end annotation
.end field

.field public audioHash:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioHash"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "audioHash"
    .end annotation
.end field

.field public callback:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "callback"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "callback"
    .end annotation
.end field

.field public commentCount:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "commentCount"
    .end annotation
.end field

.field public customName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customName"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "customName"
    .end annotation
.end field

.field public deleted:Ljava/lang/Boolean;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "deleted"
    .end annotation
.end field

.field public displayCaption:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayCaption"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "displayCaption"
    .end annotation
.end field

.field public displayText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayText"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "displayText"
    .end annotation
.end field

.field public displayThumbnailHash:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayThumbnailHash"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "displayThumbnailHash"
    .end annotation
.end field

.field public displayTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayTitle"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "displayTitle"
    .end annotation
.end field

.field public encodedAggregateLikes:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "encodedAggregateLikes"
    .end annotation
.end field

.field public encodedLikes:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "encodedLikes"
    .end annotation
.end field

.field public feedId:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "feedId"
    .end annotation
.end field

.field public fileHash:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fileHash"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "fileHash"
    .end annotation
.end field

.field public filename:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filename"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "filename"
    .end annotation
.end field

.field public fullsizeHash:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullSizeHash"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "fullsizeHash"
    .end annotation
.end field

.field public fullsizeHeight:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullSizeHeight"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "fullsizeHeight"
    .end annotation
.end field

.field public fullsizeWidth:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullSizeWidth"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "fullsizeWidth"
    .end annotation
.end field

.field public gifHash:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gifHash"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "gifHash"
    .end annotation
.end field

.field public id:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "_id"
        primaryKey = true
    .end annotation
.end field

.field public idHash:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "idHash"
    .end annotation
.end field

.field public jsonString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "json"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "json"
    .end annotation
.end field

.field public latitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "latitude"
    .end annotation
.end field

.field public likeCount:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "likeCount"
    .end annotation
.end field

.field public longitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "longitude"
    .end annotation
.end field

.field public messageId:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        name = "messageId"
        secondaryKey = true
    .end annotation
.end field

.field public messageStatus:Ljava/lang/Integer;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "messageStatus"
    .end annotation
.end field

.field public mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mimeType"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "mimeType"
    .end annotation
.end field

.field public modifiedTimestamp:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        modificationTimestamp = true
        name = "modifiedTimestamp"
    .end annotation
.end field

.field public noun:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noun"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "noun"
    .end annotation
.end field

.field public outgoingId:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "outgoingId"
    .end annotation
.end field

.field public parentId:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "parentId"
    .end annotation
.end field

.field public payload:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payload"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "payload"
    .end annotation
.end field

.field public profileVersion:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profileVersion"
    .end annotation
.end field

.field public referenceId:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "referenceId"
    .end annotation
.end field

.field public senderId:Ljava/lang/Long;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "SenderId"
    .end annotation
.end field

.field public serverMetadata:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "serverMetadata"
    .end annotation
.end field

.field public serverTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serverTimestamp"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "serverTimestamp"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "text"
    .end annotation
.end field

.field public thumbnailHash:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnailHash"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "thumbnailHash"
    .end annotation
.end field

.field public thumbnailHeight:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnailHeight"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "thumbnailHeight"
    .end annotation
.end field

.field public thumbnailWidth:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnailWidth"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "thumbnailWidth"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "type"
    .end annotation
.end field

.field public webCallback:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "webCallback"
    .end annotation

    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "webCallback"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 179
    invoke-direct {p0}, Lmobisocial/omlib/db/util/OMBase;-><init>()V

    .line 180
    return-void
.end method
