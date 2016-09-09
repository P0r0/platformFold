.class public Lmobisocial/longdan/LDProtocols$LDClusterOrDeviceToClusterBlobRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDClusterOrDeviceToClusterBlobRequestProtocol"
.end annotation


# instance fields
.field public GetDownloadTicket:Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dt"
    .end annotation
.end field

.field public GetMultipartUploadTicket:Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mut"
    .end annotation
.end field

.field public GetUploadTicket:Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ut"
    .end annotation
.end field

.field public VerifyExistsAndPermanence:Lmobisocial/longdan/LDProtocols$LDVerifyExistsAndPermanenceRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ve"
    .end annotation
.end field

.field public VerifyUploadCompleted:Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 553
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
