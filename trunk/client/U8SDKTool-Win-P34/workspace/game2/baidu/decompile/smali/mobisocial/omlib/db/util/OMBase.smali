.class public Lmobisocial/omlib/db/util/OMBase;
.super Ljava/lang/Object;
.source "OMBase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static safeHashCode(Ljava/lang/Object;)J
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 9
    instance-of v0, p0, [B

    if-eqz v0, :cond_e

    .line 10
    check-cast p0, [B

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    int-to-long v0, v0

    .line 12
    .restart local p0    # "object":Ljava/lang/Object;
    :goto_d
    return-wide v0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_d
.end method
