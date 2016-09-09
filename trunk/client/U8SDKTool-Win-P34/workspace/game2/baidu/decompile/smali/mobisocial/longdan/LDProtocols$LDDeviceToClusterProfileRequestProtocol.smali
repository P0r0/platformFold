.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterProfileRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterProfileRequestProtocol"
.end annotation


# instance fields
.field public AddFeaturesToProfileRequest:Lmobisocial/longdan/LDProtocols$LDAddFeaturesToProfileRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "afp"
    .end annotation
.end field

.field public AddItemsToProfileRequest:Lmobisocial/longdan/LDProtocols$LDAddItemsToProfileRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aip"
    .end annotation
.end field

.field public GetContactProfileRequest:Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field public GetProfileDetailsAndPublicStateRequest:Lmobisocial/longdan/LDProtocols$LDGetContactProfileAndPublicStateRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ppp"
    .end annotation
.end field

.field public GetProfileDetailsRequest:Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p"
    .end annotation
.end field

.field public GetProfilePublicStateRequest:Lmobisocial/longdan/LDProtocols$LDGetProfilePublicStateRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pps"
    .end annotation
.end field

.field public RemoveFeaturesFromProfileRequest:Lmobisocial/longdan/LDProtocols$LDRemoveFeaturesFromProfileRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rfp"
    .end annotation
.end field

.field public RemoveItemsFromProfileRequest:Lmobisocial/longdan/LDProtocols$LDRemoveItemsFromProfileRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rip"
    .end annotation
.end field

.field public SetNameRequest:Lmobisocial/longdan/LDProtocols$LDSetProfileNameRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "n"
    .end annotation
.end field

.field public SetProfilePictureRequest:Lmobisocial/longdan/LDProtocols$LDSetProfilePictureRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 586
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
