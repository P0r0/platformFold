.class public Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils;
.super Ljava/lang/Object;
.source "TimeDelayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static start(JJLcom/gionee/game/offlinesdk/utils/TimeDelayUtils$Callback;)V
    .registers 11
    .param p0, "startMs"    # J
    .param p2, "delayMs"    # J
    .param p4, "callback"    # Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$Callback;

    .prologue
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 12
    .local v0, "deltaTime":J
    sub-long v2, p2, v0

    .line 13
    .local v2, "remainTime":J
    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 14
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 15
    new-instance v4, Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$1;

    invoke-direct {v4, p4}, Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$1;-><init>(Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$Callback;)V

    invoke-static {v4, v2, v3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->postDelayed(Ljava/lang/Runnable;J)V

    .line 21
    return-void
.end method
