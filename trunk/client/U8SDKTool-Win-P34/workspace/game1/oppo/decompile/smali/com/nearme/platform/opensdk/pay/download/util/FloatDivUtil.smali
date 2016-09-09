.class public Lcom/nearme/platform/opensdk/pay/download/util/FloatDivUtil;
.super Ljava/lang/Object;
.source "FloatDivUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static div(FFI)F
    .registers 6

    .prologue
    .line 39
    if-gez p2, :cond_a

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale cannot < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_a
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x4

    invoke-virtual {v0, v1, p2, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 48
    return v0
.end method

.method public static div(III)F
    .registers 6

    .prologue
    .line 65
    if-gez p2, :cond_a

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale cannot < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_a
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 72
    const/4 v2, 0x4

    invoke-virtual {v0, v1, p2, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 74
    return v0
.end method

.method public static div(JJI)F
    .registers 9

    .prologue
    .line 91
    if-gez p4, :cond_a

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale cannot < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_a
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 98
    const/4 v2, 0x5

    invoke-virtual {v0, v1, p4, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 100
    return v0
.end method
