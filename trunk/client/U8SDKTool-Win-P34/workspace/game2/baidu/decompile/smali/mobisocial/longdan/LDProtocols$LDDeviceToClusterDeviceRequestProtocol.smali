.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterDeviceRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterDeviceRequestProtocol"
.end annotation


# instance fields
.field public AddDeviceRequest:Lmobisocial/longdan/LDProtocols$LDAddDeviceRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field public DeleteDeviceRequest:Lmobisocial/longdan/LDProtocols$LDDeleteDeviceRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field public SetDingTimeoutRequest:Lmobisocial/longdan/LDProtocols$LDSetDingTimeoutRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 691
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
