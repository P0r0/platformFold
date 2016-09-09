.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterCloudSyncRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterCloudSyncRequestProtocol"
.end annotation


# instance fields
.field public DisconnectCloudSyncRequest:Lmobisocial/longdan/LDProtocols$LDDisconnectCloudSyncRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field public GetCloudConfigRequest:Lmobisocial/longdan/LDProtocols$LDGetCloudConfigRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "g"
    .end annotation
.end field

.field public RefreshCloudConfigRequest:Lmobisocial/longdan/LDProtocols$LDRefreshCloudConfigRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "r"
    .end annotation
.end field

.field public SetCloudConfigRequest:Lmobisocial/longdan/LDProtocols$LDSetCloudConfigRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 703
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
