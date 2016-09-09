.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterMiscellaneousResponseProtocol;
.super Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterMiscellaneousResponseProtocol"
.end annotation


# instance fields
.field public CreatePlaygroundResponse:Lmobisocial/longdan/LDProtocols$LDCreatePlaygroundResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p"
    .end annotation
.end field

.field public GetExtraVersions:Lmobisocial/longdan/LDProtocols$LDGetExtraVersionsResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "e"
    .end annotation
.end field

.field public ImageSearchResponse:Lmobisocial/longdan/LDProtocols$LDImageSearchResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is"
    .end annotation
.end field

.field public UrlToStoryResponse:Lmobisocial/longdan/LDProtocols$LDUrlToStoryResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1045
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;-><init>()V

    return-void
.end method
