.class public Lmobisocial/longdan/LDProtocols$LDReportScoreRequest;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDReportScoreRequest"
.end annotation


# instance fields
.field public Account:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a"
    .end annotation
.end field

.field public GameId:Lmobisocial/longdan/LDProtocols$LDItemId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public GameScoreboard:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sb"
    .end annotation
.end field

.field public Latitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "la"
    .end annotation
.end field

.field public Longitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lo"
    .end annotation
.end field

.field public Score:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s"
    .end annotation
.end field

.field public SimilarScoresGlobal:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sg"
    .end annotation
.end field

.field public SimilarScoresInCity:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sc"
    .end annotation
.end field

.field public SimilarScoresInContinent:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "st"
    .end annotation
.end field

.field public SimilarScoresInCountry:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "su"
    .end annotation
.end field

.field public SimilarScoresLocal:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2548
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
