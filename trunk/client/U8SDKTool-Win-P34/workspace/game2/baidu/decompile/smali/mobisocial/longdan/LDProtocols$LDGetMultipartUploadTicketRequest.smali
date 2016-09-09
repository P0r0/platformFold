.class public Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketRequest;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDGetMultipartUploadTicketRequest"
.end annotation


# instance fields
.field public Account:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a"
    .end annotation
.end field

.field public Cluster:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field public IsPermanent:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p"
    .end annotation
.end field

.field public PartMetadataList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pm"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDBlobMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public PermanenceRefTag:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prt"
    .end annotation
.end field

.field public PreferInsecure:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "e"
    .end annotation
.end field

.field public WholeMetadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wm"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2017
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
