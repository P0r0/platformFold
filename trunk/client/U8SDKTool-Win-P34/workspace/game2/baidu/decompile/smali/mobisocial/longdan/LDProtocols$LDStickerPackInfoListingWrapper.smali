.class public Lmobisocial/longdan/LDProtocols$LDStickerPackInfoListingWrapper;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDStickerPackInfoListingWrapper"
.end annotation


# instance fields
.field public Items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "i"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDStickerPackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public NextToken:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4398
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
