.class public Lcom/vivo/assist/align/AlignStrategyFactory;
.super Ljava/lang/Object;


# static fields
.field public static final ALIGN_STRATEGY_DEFAULT:I

.field public static final ALIGN_STRATEGY_HORIZENTAL_NO_ANIM:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlignStrategy()Lcom/vivo/assist/align/AlignStrategy;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vivo/assist/align/AlignStrategyFactory;->createAlignStrategy(I)Lcom/vivo/assist/align/AlignStrategy;

    move-result-object v0

    return-object v0
.end method

.method public static createAlignStrategy(I)Lcom/vivo/assist/align/AlignStrategy;
    .registers 2

    if-nez p0, :cond_8

    new-instance v0, Lcom/vivo/assist/align/LeftRightNoAnimationAlign;

    invoke-direct {v0}, Lcom/vivo/assist/align/LeftRightNoAnimationAlign;-><init>()V

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
