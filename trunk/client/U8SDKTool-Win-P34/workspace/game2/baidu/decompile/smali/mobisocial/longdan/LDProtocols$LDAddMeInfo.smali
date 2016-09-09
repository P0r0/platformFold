.class public Lmobisocial/longdan/LDProtocols$LDAddMeInfo;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDAddMeInfo"
.end annotation


# instance fields
.field public Account:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aa"
    .end annotation
.end field

.field public AppDetails:Lmobisocial/longdan/LDProtocols$LDAppRestletDetails;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad"
    .end annotation
.end field

.field public AppId:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "U"
    .end annotation
.end field

.field public IntentLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "l"
    .end annotation
.end field

.field public Pin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p"
    .end annotation
.end field

.field public ProfileName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "an"
    .end annotation
.end field

.field public ProfileThumbnailLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ap"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 229
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
