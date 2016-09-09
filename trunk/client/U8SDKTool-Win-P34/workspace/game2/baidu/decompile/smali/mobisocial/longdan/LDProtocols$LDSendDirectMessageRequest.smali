.class public Lmobisocial/longdan/LDProtocols$LDSendDirectMessageRequest;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDSendDirectMessageRequest"
.end annotation


# instance fields
.field public Accounts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_a"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public AnyMemberWritable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "w"
    .end annotation
.end field

.field public Body:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b"
    .end annotation
.end field

.field public Feed:Lmobisocial/longdan/LDProtocols$LDFeed;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_f"
    .end annotation
.end field

.field public FeedKind:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "k"
    .end annotation
.end field

.field public Id:Lmobisocial/longdan/LDProtocols$LDTypedId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "i"
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

.field public SmsId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field public Version:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "v"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2737
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
