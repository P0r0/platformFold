.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterResponseContainer;
.super Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterResponseContainer"
.end annotation


# instance fields
.field public AddressBook:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterAddressBookResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a"
    .end annotation
.end field

.field public Blob:Lmobisocial/longdan/LDProtocols$LDClusterOrDeviceToClusterBlobResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b"
    .end annotation
.end field

.field public CloudSync:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterCloudSyncResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cs"
    .end annotation
.end field

.field public Contact:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterContactResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field public Device:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterDeviceResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field public EventSummary:Lmobisocial/longdan/LDProtocols$LDClusterOrDeviceToClusterEventSummaryResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "es"
    .end annotation
.end field

.field public GameChallenge:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterGameChallengeResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "g"
    .end annotation
.end field

.field public HighScore:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterHighScoreResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "h"
    .end annotation
.end field

.field public IdentityToken:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterIdentityTokenResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
    .end annotation
.end field

.field public Inbox:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterInboxResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "i"
    .end annotation
.end field

.field public Message:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterMessageResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m"
    .end annotation
.end field

.field public Misc:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterMiscellaneousResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "M"
    .end annotation
.end field

.field public NearbyItem:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterNearbyItemResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "n"
    .end annotation
.end field

.field public OmletAppStore:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterOmletItemStoreResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oas"
    .end annotation
.end field

.field public Oob:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterDirectMessagingResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "o"
    .end annotation
.end field

.field public Profile:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterProfileResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p"
    .end annotation
.end field

.field public ProfileCardViewed:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterProfileCardResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pcv"
    .end annotation
.end field

.field public PublicChat:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterPublicChatResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pc"
    .end annotation
.end field

.field public Subscription:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterSubscriptionResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s"
    .end annotation
.end field

.field public WallPost:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterWallPostResponseProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "w"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;-><init>()V

    return-void
.end method
