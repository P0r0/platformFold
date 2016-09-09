.class public Lmobisocial/longdan/LDProtocols$LDPublicKeys;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDPublicKeys"
.end annotation


# instance fields
.field public ClusterEndpoints:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ClusterEndpoints"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;>;"
        }
    .end annotation
.end field

.field public ClusterKeys:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ClusterKeys"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public DefaultCluster:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DefaultCluster"
    .end annotation
.end field

.field public IdpEndpoints:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IdpEndpoints"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field public IdpKey:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IdpKey"
    .end annotation
.end field

.field public ReadOnlyEndpoints:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReadOnlyEndpoints"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field public ReadOnlyKey:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReadOnlyKey"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 175
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
