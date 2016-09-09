.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterNearbyItemResponseProtocol;
.super Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterNearbyItemResponseProtocol"
.end annotation


# instance fields
.field public BroadcastItemResponse:Lmobisocial/longdan/LDProtocols$LDBroadcastItemResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b"
    .end annotation
.end field

.field public FetchNearbyItemsResponse:Lmobisocial/longdan/LDProtocols$LDFetchNearbyItemsResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "f"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1036
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;-><init>()V

    return-void
.end method
