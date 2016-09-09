.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterAddressBookRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterAddressBookRequestProtocol"
.end annotation


# instance fields
.field public GetAddMeLinkRequest:Lmobisocial/longdan/LDProtocols$LDGetAddMeLinkRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a"
    .end annotation
.end field

.field public GetContactProfileRequest:Lmobisocial/longdan/LDProtocols$LDGetContactProfileRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field public MutualAddContact:Lmobisocial/longdan/LDProtocols$LDMutualAddContactByTokenRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m"
    .end annotation
.end field

.field public UploadEntriesRequest:Lmobisocial/longdan/LDProtocols$LDUploadAddressBookEntriesRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "u"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 619
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
