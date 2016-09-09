.class public Lmobisocial/longdan/LDProtocols$LDItemInfoSystemMutableContainer;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDItemInfoSystemMutableContainer"
.end annotation


# instance fields
.field public AppInfoSystemMutable:Lmobisocial/longdan/LDProtocols$LDAppInfoSystemMutable;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ai"
    .end annotation
.end field

.field public StickerPackInfoSystemMutable:Lmobisocial/longdan/LDProtocols$LDStickerPackInfoSystemMutable;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ii"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3806
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
