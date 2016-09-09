.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterInboxRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterInboxRequestProtocol"
.end annotation


# instance fields
.field public GetDirtyFeeds:Lmobisocial/longdan/LDProtocols$LDGetDirtyFeedsRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field public GetFeedState:Lmobisocial/longdan/LDProtocols$LDGetFeedStateRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s"
    .end annotation
.end field

.field public MessagePush:Lmobisocial/longdan/LDProtocols$LDInboxDeliveryMessagePush;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m"
    .end annotation
.end field

.field public RegisterPushNotificationKey:Lmobisocial/longdan/LDProtocols$LDRegisterPushNotificationKeyRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "r"
    .end annotation
.end field

.field public SetAppleBadgeCount:Lmobisocial/longdan/LDProtocols$LDSetAppleBadgeCountRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b"
    .end annotation
.end field

.field public SetFeedAcceptance:Lmobisocial/longdan/LDProtocols$LDSetFeedAcceptanceRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a"
    .end annotation
.end field

.field public SubscribeAccount:Lmobisocial/longdan/LDProtocols$LDSubscribeForAccountInboxRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "S"
    .end annotation
.end field

.field public TerminatedPush:Lmobisocial/longdan/LDProtocols$LDInboxDeliveryTerminatedPush;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
    .end annotation
.end field

.field public UnsubscribeAccount:Lmobisocial/longdan/LDProtocols$LDUnsubscribeForAccountInboxRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "U"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 523
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
