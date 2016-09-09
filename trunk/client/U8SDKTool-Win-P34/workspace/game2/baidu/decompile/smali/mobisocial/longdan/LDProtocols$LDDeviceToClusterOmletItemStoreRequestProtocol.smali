.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterOmletItemStoreRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterOmletItemStoreRequestProtocol"
.end annotation


# instance fields
.field public CreateItemInfoRequest:Lmobisocial/longdan/LDProtocols$LDCreateItemInfoRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cr"
    .end annotation
.end field

.field public DeactivateApiKeyRequest:Lmobisocial/longdan/LDProtocols$LDDeactivateApiKeyRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dk"
    .end annotation
.end field

.field public DeleteGrantForItemRequest:Lmobisocial/longdan/LDProtocols$LDDeleteGrantForItemRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dgfi"
    .end annotation
.end field

.field public DeleteItemRequest:Lmobisocial/longdan/LDProtocols$LDDeleteItemRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "de"
    .end annotation
.end field

.field public DoesItemHaveGrantRequest:Lmobisocial/longdan/LDProtocols$LDDoesItemHaveGrantRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dihg"
    .end annotation
.end field

.field public GenerateApiKeyRequest:Lmobisocial/longdan/LDProtocols$LDGenerateApiKeyRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gk"
    .end annotation
.end field

.field public GenerateGrantForItemRequest:Lmobisocial/longdan/LDProtocols$LDGenerateGrantForItemRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gg"
    .end annotation
.end field

.field public GetItemInfoRequest:Lmobisocial/longdan/LDProtocols$LDGetItemInfoRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ga"
    .end annotation
.end field

.field public GetItemUsingGrantRequest:Lmobisocial/longdan/LDProtocols$LDGetItemUsingGrantRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gig"
    .end annotation
.end field

.field public ListAllItemsRequest:Lmobisocial/longdan/LDProtocols$LDListAllItemsRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "la"
    .end annotation
.end field

.field public ListApiKeysRequest:Lmobisocial/longdan/LDProtocols$LDListApiKeysRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lk"
    .end annotation
.end field

.field public ListItemsForAccountRequest:Lmobisocial/longdan/LDProtocols$LDListItemsForAccountRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lc"
    .end annotation
.end field

.field public ListPublishedItemsRequest:Lmobisocial/longdan/LDProtocols$LDListPublishedItemsRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lp"
    .end annotation
.end field

.field public PublishItemRequest:Lmobisocial/longdan/LDProtocols$LDPublishItemRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pu"
    .end annotation
.end field

.field public ReviewItemRequest:Lmobisocial/longdan/LDProtocols$LDReviewItemRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "re"
    .end annotation
.end field

.field public SystemUpdateItemInfoRequest:Lmobisocial/longdan/LDProtocols$LDSystemUpdateItemInfoRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "su"
    .end annotation
.end field

.field public UnpublishItemRequest:Lmobisocial/longdan/LDProtocols$LDUnpublishItemRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "un"
    .end annotation
.end field

.field public UserUpdateItemInfoRequest:Lmobisocial/longdan/LDProtocols$LDUserUpdateItemInfoRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uu"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 634
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
