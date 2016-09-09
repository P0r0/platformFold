.class public Lmobisocial/longdan/LDProtocols$LDVideoPost;
.super Lmobisocial/longdan/LDProtocols$LDPost;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDVideoPost"
.end annotation


# instance fields
.field public BlobLinkString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b"
    .end annotation
.end field

.field public Description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field public Duration:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "D"
    .end annotation
.end field

.field public Height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "H"
    .end annotation
.end field

.field public HlsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "h"
    .end annotation
.end field

.field public LinkUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "u"
    .end annotation
.end field

.field public M3u8s:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDM3U8Info;",
            ">;"
        }
    .end annotation
.end field

.field public ThumbnailBlobLinkString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "B"
    .end annotation
.end field

.field public VideoBlobRefTag:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "r"
    .end annotation
.end field

.field public Width:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "W"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4407
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDPost;-><init>()V

    return-void
.end method
