.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterMessageRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterMessageRequestProtocol"
.end annotation


# instance fields
.field public AddMember:Lmobisocial/longdan/LDProtocols$LDAddMemberRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "g"
    .end annotation
.end field

.field public AddMessage:Lmobisocial/longdan/LDProtocols$LDAddMessageRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a"
    .end annotation
.end field

.field public AddPendingInvitation:Lmobisocial/longdan/LDProtocols$LDAddPendingInvitationRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "f"
    .end annotation
.end field

.field public ApplyDocumentRequest:Lmobisocial/longdan/LDProtocols$LDApplyDocumentTransformRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "D"
    .end annotation
.end field

.field public CreateFeed:Lmobisocial/longdan/LDProtocols$LDCreateFeedRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field public DefaultAccess:Lmobisocial/longdan/LDProtocols$LDSetDefaultAccessRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "x"
    .end annotation
.end field

.field public DeleteMessage:Lmobisocial/longdan/LDProtocols$LDDeleteMessageRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field public GetFeedDetails:Lmobisocial/longdan/LDProtocols$LDGetPublicFeedDetailsRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gf"
    .end annotation
.end field

.field public GetJoinFeedLink:Lmobisocial/longdan/LDProtocols$LDGetJoinFeedLinkRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "j"
    .end annotation
.end field

.field public GetMessageById:Lmobisocial/longdan/LDProtocols$LDGetMessageByIdRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "i"
    .end annotation
.end field

.field public GetMessagesBefore:Lmobisocial/longdan/LDProtocols$LDGetMessagesBeforeRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b"
    .end annotation
.end field

.field public GetMessagesByType:Lmobisocial/longdan/LDProtocols$LDGetMessagesByTypeRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "T"
    .end annotation
.end field

.field public GetMessagesSince:Lmobisocial/longdan/LDProtocols$LDGetMessagesSinceRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s"
    .end annotation
.end field

.field public JoinBroadcast:Lmobisocial/longdan/LDProtocols$LDJoinBroadcastRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "B"
    .end annotation
.end field

.field public JoinFeed:Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "J"
    .end annotation
.end field

.field public MessageDeliveryPush:Lmobisocial/longdan/LDProtocols$LDMessageDeliveryPush;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p"
    .end annotation
.end field

.field public OverwriteMessage:Lmobisocial/longdan/LDProtocols$LDOverwriteMessageRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "o"
    .end annotation
.end field

.field public RealtimeMessageDeliveryPush:Lmobisocial/longdan/LDProtocols$LDRealtimeMessageDeliveryPush;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "P"
    .end annotation
.end field

.field public RemoveMember:Lmobisocial/longdan/LDProtocols$LDRemoveMemberRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "r"
    .end annotation
.end field

.field public RemovePendingInvitation:Lmobisocial/longdan/LDProtocols$LDRemovePendingInvitationRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "e"
    .end annotation
.end field

.field public SendRealtime:Lmobisocial/longdan/LDProtocols$LDSendRealtimeRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "L"
    .end annotation
.end field

.field public SetFeedName:Lmobisocial/longdan/LDProtocols$LDSetFeedNameRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "n"
    .end annotation
.end field

.field public SetFeedThumbnail:Lmobisocial/longdan/LDProtocols$LDSetFeedThumbnailRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "h"
    .end annotation
.end field

.field public SubscribeFeed:Lmobisocial/longdan/LDProtocols$LDSubscribeFeedRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "S"
    .end annotation
.end field

.field public SubscribeFeedRealtime:Lmobisocial/longdan/LDProtocols$LDSubscribeFeedRealtimeRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "l"
    .end annotation
.end field

.field public TerminatedPush:Lmobisocial/longdan/LDProtocols$LDMessageTerminatedPush;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
    .end annotation
.end field

.field public UnsubscribeFeed:Lmobisocial/longdan/LDProtocols$LDUnsubscribeFeedRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "U"
    .end annotation
.end field

.field public UnsubscribeFeedRealtime:Lmobisocial/longdan/LDProtocols$LDUnsubscribeFeedRealtimeRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "q"
    .end annotation
.end field

.field public UpdateMessage:Lmobisocial/longdan/LDProtocols$LDUpdateMessageRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "u"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 433
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
