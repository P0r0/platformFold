.class public Lmobisocial/longdan/LDProtocols$LDClusterOrDeviceToClusterEventSummaryRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDClusterOrDeviceToClusterEventSummaryRequestProtocol"
.end annotation


# instance fields
.field public GatherEventsByAppRequest:Lmobisocial/longdan/LDProtocols$LDGatherEventsByAppRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ga"
    .end annotation
.end field

.field public ReportSummaryEventsRequest:Lmobisocial/longdan/LDProtocols$LDReportSummaryEventsRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "r"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 913
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
