.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterMessageResponseProtocol;
.super Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterMessageResponseProtocol"
.end annotation


# instance fields
.field public GetFeedDetails:Lmobisocial/longdan/LDProtocols$LDGetPublicFeedDetailsResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gf"
    .end annotation
.end field

.field public GetJoinFeedLinkResponse:Lmobisocial/longdan/LDProtocols$LDGetJoinFeedLinkResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "l"
    .end annotation
.end field

.field public GetMessageResponse:Lmobisocial/longdan/LDProtocols$LDGetMessageResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m"
    .end annotation
.end field

.field public GetMessagesResponse:Lmobisocial/longdan/LDProtocols$LDGetMessagesResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "M"
    .end annotation
.end field

.field public GetMessagesWithContinuationResponse:Lmobisocial/longdan/LDProtocols$LDGetMessagesWithContinuationResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "C"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 922
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;-><init>()V

    return-void
.end method
