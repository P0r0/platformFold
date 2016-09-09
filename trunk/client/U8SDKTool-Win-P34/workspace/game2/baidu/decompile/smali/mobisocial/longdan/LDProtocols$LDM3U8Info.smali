.class public Lmobisocial/longdan/LDProtocols$LDM3U8Info;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDM3U8Info"
.end annotation


# instance fields
.field public BitRate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "r"
    .end annotation
.end field

.field public Duration:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
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

.field public File:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b"
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

.field public Headers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "h"
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4629
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
