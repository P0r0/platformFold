.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterContactRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterContactRequestProtocol"
.end annotation


# instance fields
.field public BlockContactRequest:Lmobisocial/longdan/LDProtocols$LDBlockContactRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b"
    .end annotation
.end field

.field public OverwriteContactsRequest:Lmobisocial/longdan/LDProtocols$LDOverwriteContactRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "o"
    .end annotation
.end field

.field public RemoveContactRequest:Lmobisocial/longdan/LDProtocols$LDRemoveContactRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "r"
    .end annotation
.end field

.field public UnblockContactRequest:Lmobisocial/longdan/LDProtocols$LDUnblockContactRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "u"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 571
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
