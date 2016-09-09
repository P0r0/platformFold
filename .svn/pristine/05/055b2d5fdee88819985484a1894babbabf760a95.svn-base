.class public Lmobisocial/omlet/overlaybar/util/RecorderConfigUtil;
.super Ljava/lang/Object;
.source "RecorderConfigUtil.java"


# static fields
.field private static final VIDEO_MAX_LENGTH:J = 0x1d4c0L

.field private static final VIDEO_MIN_LENGTH:J = 0xbb8L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTags(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "omp_default_tags"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getArray(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoMaxLengthMs(Landroid/content/Context;)Ljava/lang/Long;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getVideoMaxLengthMs(Landroid/content/Context;)J

    move-result-wide v0

    .line 19
    .local v0, "prefVideoMaxLengthMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 22
    :goto_e
    return-object v2

    :cond_f
    const-wide/32 v2, 0x1d4c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_e
.end method

.method public static getVideoMinLengthMs(Landroid/content/Context;)Ljava/lang/Long;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getVideoMinLengthMs(Landroid/content/Context;)J

    move-result-wide v0

    .line 28
    .local v0, "prefVideoMinLengthMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 31
    :goto_e
    return-object v2

    :cond_f
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_e
.end method
