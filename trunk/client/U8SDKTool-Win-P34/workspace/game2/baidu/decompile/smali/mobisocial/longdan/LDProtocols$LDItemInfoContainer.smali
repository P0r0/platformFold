.class public Lmobisocial/longdan/LDProtocols$LDItemInfoContainer;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDItemInfoContainer"
.end annotation


# instance fields
.field public AppInfo:Lmobisocial/longdan/LDProtocols$LDAppInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ai"
    .end annotation
.end field

.field public StickerPackInfo:Lmobisocial/longdan/LDProtocols$LDStickerPackInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "si"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4035
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
