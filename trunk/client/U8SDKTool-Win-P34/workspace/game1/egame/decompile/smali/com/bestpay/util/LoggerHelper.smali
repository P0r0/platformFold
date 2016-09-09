.class public Lcom/bestpay/util/LoggerHelper;
.super Ljava/lang/Object;
.source "LoggerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static on:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/bestpay/util/LoggerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bestpay/util/LoggerHelper;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_9

    .line 21
    sget-object v0, Lcom/bestpay/util/LoggerHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_7

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_7
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_7

    .line 33
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_9

    .line 51
    sget-object v0, Lcom/bestpay/util/LoggerHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_7

    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_7

    .line 75
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_9

    .line 57
    sget-object v0, Lcom/bestpay/util/LoggerHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_b

    .line 63
    sget-object v0, Lcom/bestpay/util/LoggerHelper;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :cond_b
    return-void
.end method

.method public static getLogAble()Z
    .registers 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_9

    .line 39
    sget-object v0, Lcom/bestpay/util/LoggerHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_9
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_7

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_7
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_7

    .line 99
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_7
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_9

    .line 81
    sget-object v0, Lcom/bestpay/util/LoggerHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_9
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_7

    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_7
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    sget-boolean v0, Lcom/bestpay/util/LoggerHelper;->on:Z

    if-eqz v0, :cond_7

    .line 93
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_7
    return-void
.end method
