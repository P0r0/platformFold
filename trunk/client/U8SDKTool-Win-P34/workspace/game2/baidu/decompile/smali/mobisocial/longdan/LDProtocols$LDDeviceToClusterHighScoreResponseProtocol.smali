.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterHighScoreResponseProtocol;
.super Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterHighScoreResponseProtocol"
.end annotation


# instance fields
.field public ScoreResponse:Lmobisocial/longdan/LDProtocols$LDScoreResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s"
    .end annotation
.end field

.field public ScoresResponse:Lmobisocial/longdan/LDProtocols$LDScoresResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ss"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1027
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;-><init>()V

    return-void
.end method
