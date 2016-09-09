.class public Lmobisocial/longdan/LDProtocols$LDItemInfoListingContainer;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDItemInfoListingContainer"
.end annotation


# instance fields
.field public AppInfoList:Lmobisocial/longdan/LDProtocols$LDAppInfoListingWrapper;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ai"
    .end annotation
.end field

.field public StickerPackInfoList:Lmobisocial/longdan/LDProtocols$LDStickerPackInfoListingWrapper;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "si"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4044
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
