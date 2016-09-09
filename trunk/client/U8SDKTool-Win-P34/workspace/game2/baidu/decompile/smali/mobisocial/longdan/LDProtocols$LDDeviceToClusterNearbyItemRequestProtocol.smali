.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterNearbyItemRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterNearbyItemRequestProtocol"
.end annotation


# instance fields
.field public BroadcastItemRequest:Lmobisocial/longdan/LDProtocols$LDBroadcastItemRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b"
    .end annotation
.end field

.field public FetchNearbyItemsRequest:Lmobisocial/longdan/LDProtocols$LDFetchNearbyItemsRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "f"
    .end annotation
.end field

.field public ItemBroadcastStateChangedPush:Lmobisocial/longdan/LDProtocols$LDItemBroadcastStateChangedPush;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bp"
    .end annotation
.end field

.field public SubscribeForNearbyItemsRequest:Lmobisocial/longdan/LDProtocols$LDSubscribeForNearbyItemsRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s"
    .end annotation
.end field

.field public SubscriptionTerminatedPush:Lmobisocial/longdan/LDProtocols$LDSubscriptionTerminatedPush;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "st"
    .end annotation
.end field

.field public UnbroadcastItemRequest:Lmobisocial/longdan/LDProtocols$LDUnbroadcastItemRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ub"
    .end annotation
.end field

.field public UnsubscribeForNearbyItemsRequest:Lmobisocial/longdan/LDProtocols$LDUnsubscribeForNearbyItemsRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "us"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 763
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
