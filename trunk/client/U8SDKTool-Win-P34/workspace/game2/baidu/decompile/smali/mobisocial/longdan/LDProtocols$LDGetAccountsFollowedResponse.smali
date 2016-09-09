.class public Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDGetAccountsFollowedResponse"
.end annotation


# instance fields
.field public AccountsFollowed:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "f"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDUser;",
            ">;"
        }
    .end annotation
.end field

.field public ContinuationKey:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3467
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
