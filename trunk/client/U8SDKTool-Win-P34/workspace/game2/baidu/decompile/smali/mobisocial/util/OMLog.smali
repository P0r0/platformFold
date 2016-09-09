.class public final Lmobisocial/util/OMLog;
.super Ljava/lang/Object;
.source "OMLog.java"


# static fields
.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static LOG_LEVEL:I = 0x0

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x5

    sput v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_8

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_8
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_8

    .line 65
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :cond_8
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_8

    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_8
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_8

    .line 35
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :cond_8
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_8

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_8
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_8

    .line 55
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_8
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_8

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_8
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_8

    .line 75
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_8
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_8

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_8
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    sget v0, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_8

    .line 45
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :cond_8
    return-void
.end method
