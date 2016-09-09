.class public Lmobisocial/longdan/LDProtocols$LDGetDirectFeedRequest;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDGetDirectFeedRequest"
.end annotation


# instance fields
.field public FeedKind:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "k"
    .end annotation
.end field

.field public Recipients:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "r"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDIdentity;",
            ">;"
        }
    .end annotation
.end field

.field public Sender:Lmobisocial/longdan/LDProtocols$LDIdentity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2725
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
