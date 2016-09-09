.class public Lmobisocial/longdan/LDProtocols$LDGPSLocation;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDGPSLocation"
.end annotation


# instance fields
.field public Latitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "x"
    .end annotation
.end field

.field public Longitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "y"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3871
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
