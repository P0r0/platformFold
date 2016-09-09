.class public Lmobisocial/longdan/LDProtocols$LDClientEvent;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDClientEvent"
.end annotation


# instance fields
.field public Key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "k"
    .end annotation
.end field

.field public UtcTimestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3898
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
