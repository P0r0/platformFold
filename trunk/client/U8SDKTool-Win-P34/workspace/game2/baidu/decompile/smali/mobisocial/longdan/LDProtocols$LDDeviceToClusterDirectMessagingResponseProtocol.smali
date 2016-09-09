.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterDirectMessagingResponseProtocol;
.super Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterDirectMessagingResponseProtocol"
.end annotation


# instance fields
.field public GetSmsFeedResponse:Lmobisocial/longdan/LDProtocols$LDGetDirectFeedResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gs"
    .end annotation
.end field

.field public SendSmsMessageResponse:Lmobisocial/longdan/LDProtocols$LDSendDirectMessageResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sm"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1060
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;-><init>()V

    return-void
.end method
