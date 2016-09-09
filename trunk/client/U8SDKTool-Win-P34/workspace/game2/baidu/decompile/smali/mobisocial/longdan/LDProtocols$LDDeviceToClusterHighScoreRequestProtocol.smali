.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterHighScoreRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterHighScoreRequestProtocol"
.end annotation


# instance fields
.field public GetHighScoreRequest:Lmobisocial/longdan/LDProtocols$LDGetHighScoreRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hs"
    .end annotation
.end field

.field public GetTopScoresRequest:Lmobisocial/longdan/LDProtocols$LDGetTopScoresRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ts"
    .end annotation
.end field

.field public ReportScoreRequest:Lmobisocial/longdan/LDProtocols$LDReportScoreRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rs"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 751
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
