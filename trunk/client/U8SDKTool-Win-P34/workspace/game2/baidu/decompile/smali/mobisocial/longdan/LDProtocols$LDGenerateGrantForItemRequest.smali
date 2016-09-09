.class public Lmobisocial/longdan/LDProtocols$LDGenerateGrantForItemRequest;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDGenerateGrantForItemRequest"
.end annotation


# instance fields
.field public ExpirationTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "e"
    .end annotation
.end field

.field public ItemId:Lmobisocial/longdan/LDProtocols$LDItemId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ii"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2296
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
