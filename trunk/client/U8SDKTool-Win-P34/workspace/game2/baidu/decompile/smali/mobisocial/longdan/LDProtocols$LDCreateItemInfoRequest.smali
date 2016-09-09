.class public Lmobisocial/longdan/LDProtocols$LDCreateItemInfoRequest;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDCreateItemInfoRequest"
.end annotation


# instance fields
.field public Account:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ac"
    .end annotation
.end field

.field public ItemId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public ItemInfoUserMutableContainer:Lmobisocial/longdan/LDProtocols$LDItemInfoUserMutableContainer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "u"
    .end annotation
.end field

.field public ItemType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "it"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2185
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
