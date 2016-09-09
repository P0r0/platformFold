.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterRequestContainer;
.super Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterRequestContainer"
.end annotation


# instance fields
.field public AddressBook:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterAddressBookRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a"
    .end annotation
.end field

.field public Blob:Lmobisocial/longdan/LDProtocols$LDClusterOrDeviceToClusterBlobRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b"
    .end annotation
.end field

.field public CloudSync:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterCloudSyncRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cs"
    .end annotation
.end field

.field public Contact:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterContactRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field public Device:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterDeviceRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field public EventSummary:Lmobisocial/longdan/LDProtocols$LDClusterOrDeviceToClusterEventSummaryRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "es"
    .end annotation
.end field

.field public GameChallenge:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterGameChallengeRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "g"
    .end annotation
.end field

.field public HighScore:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterHighScoreRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "h"
    .end annotation
.end field

.field public IdentityToken:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterIdentityTokenRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
    .end annotation
.end field

.field public Inbox:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterInboxRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "i"
    .end annotation
.end field

.field public Message:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterMessageRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m"
    .end annotation
.end field

.field public Misc:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterMiscellaneousRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "M"
    .end annotation
.end field

.field public NearbyItem:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterNearbyItemRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "n"
    .end annotation
.end field

.field public OmletAppStore:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterOmletItemStoreRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oas"
    .end annotation
.end field

.field public Oob:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterDirectMessagingRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "o"
    .end annotation
.end field

.field public Profile:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterProfileRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p"
    .end annotation
.end field

.field public ProfileCardViewed:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterProfileCardRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pcv"
    .end annotation
.end field

.field public PublicChat:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterPublicChatRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pc"
    .end annotation
.end field

.field public Subscription:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterSubscriptionRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s"
    .end annotation
.end field

.field public WallPost:Lmobisocial/longdan/LDProtocols$LDDeviceToClusterWallPostRequestProtocol;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "w"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;-><init>()V

    return-void
.end method
