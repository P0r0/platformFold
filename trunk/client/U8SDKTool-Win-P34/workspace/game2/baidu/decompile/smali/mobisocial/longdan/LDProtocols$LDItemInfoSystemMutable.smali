.class public Lmobisocial/longdan/LDProtocols$LDItemInfoSystemMutable;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDItemInfoSystemMutable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/longdan/LDProtocols$LDItemInfoSystemMutable$PublishedStateValues;
    }
.end annotation


# instance fields
.field public CreationTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field public LastModifiedTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m"
    .end annotation
.end field

.field public Price:Lmobisocial/longdan/LDProtocols$LDPrice;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "$"
    .end annotation
.end field

.field public PublishedState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p"
    .end annotation
.end field

.field public WasEverPublished:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ep"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4533
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    .line 4535
    return-void
.end method
