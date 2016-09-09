.class public Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDRequestContainerBase"
.end annotation


# instance fields
.field public CompleteChallenge:Lmobisocial/longdan/LDProtocols$LDCompleteChallengeRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "+"
    .end annotation
.end field

.field public Context:Lmobisocial/longdan/LDProtocols$LDRpcContext;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "@"
    .end annotation
.end field

.field public HelloChallenge:Lmobisocial/longdan/LDProtocols$LDHelloChallengeRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "*"
    .end annotation
.end field

.field public Ping:Lmobisocial/longdan/LDProtocols$LDPingRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-"
    .end annotation
.end field

.field public SequenceNumber:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "#"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 289
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
