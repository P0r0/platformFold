.class public Lcom/gionee/game/offlinesdk/common/GamePlatformFactory;
.super Ljava/lang/Object;
.source "GamePlatformFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGamePlatform(Z)Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;
    .registers 2
    .param p0, "isSpecificPayMode"    # Z

    .prologue
    .line 6
    if-eqz p0, :cond_8

    .line 7
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePlatformSpecific;

    invoke-direct {v0}, Lcom/gionee/game/offlinesdk/common/GamePlatformSpecific;-><init>()V

    .line 9
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/gionee/game/offlinesdk/common/GamePlatformPopular;

    invoke-direct {v0}, Lcom/gionee/game/offlinesdk/common/GamePlatformPopular;-><init>()V

    goto :goto_7
.end method
