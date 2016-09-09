.class public Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDResponseContainerBase"
.end annotation


# instance fields
.field public CompleteChallenge:Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "+"
    .end annotation
.end field

.field public ErrorCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "!"
    .end annotation
.end field

.field public ErrorDetail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "!!"
    .end annotation
.end field

.field public HelloChallenge:Lmobisocial/longdan/LDProtocols$LDHelloChallengeResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "*"
    .end annotation
.end field

.field public Ping:Lmobisocial/longdan/LDProtocols$LDPingResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-"
    .end annotation
.end field

.field public SequenceNumber:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "#"
    .end annotation
.end field

.field public Simple:Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "="
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 382
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
