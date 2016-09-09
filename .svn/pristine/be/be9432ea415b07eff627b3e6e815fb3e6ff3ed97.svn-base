.class public Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/util/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public breakLine:Z

.field public horizontalSpacing:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    const-string v1, "OmpFlowLayout_LayoutParams"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_d
    const-string v1, "OmpFlowLayout_LayoutParams_omp_layout_horizontalSpacing"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 146
    const-string v1, "OmpFlowLayout_LayoutParams_omp_layout_breakLine"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/util/FlowLayout$LayoutParams;->breakLine:Z
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2b

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    return-void

    .line 148
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method
