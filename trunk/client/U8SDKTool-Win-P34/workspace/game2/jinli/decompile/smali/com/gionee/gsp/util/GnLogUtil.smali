.class public Lcom/gionee/gsp/util/GnLogUtil;
.super Ljava/lang/Object;
.source "GnLogUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-boolean v0, Lcom/gionee/gsp/common/GnCommonConfig;->LOG:Z

    if-eqz v0, :cond_9

    .line 18
    const-string v0, "GSP"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-boolean v0, Lcom/gionee/gsp/common/GnCommonConfig;->LOG:Z

    if-eqz v0, :cond_9

    .line 36
    const-string v0, "GSP"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_9
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-boolean v0, Lcom/gionee/gsp/common/GnCommonConfig;->LOG:Z

    if-eqz v0, :cond_9

    .line 24
    const-string v0, "GSP"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_9
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 11
    sget-boolean v0, Lcom/gionee/gsp/common/GnCommonConfig;->LOG:Z

    if-eqz v0, :cond_9

    .line 12
    const-string v0, "GSP"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_9
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-boolean v0, Lcom/gionee/gsp/common/GnCommonConfig;->LOG:Z

    if-eqz v0, :cond_9

    .line 30
    const-string v0, "GSP"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_9
    return-void
.end method
