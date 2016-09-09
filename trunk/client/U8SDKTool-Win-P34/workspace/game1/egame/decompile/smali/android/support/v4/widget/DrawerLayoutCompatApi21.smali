.class Landroid/support/v4/widget/DrawerLayoutCompatApi21;
.super Ljava/lang/Object;
.source "DrawerLayoutCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    .registers 8
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "gravity"    # I

    .prologue
    const/4 v4, 0x0

    .line 51
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsets;

    .line 52
    .local v0, "wi":Landroid/view/WindowInsets;
    const/4 v1, 0x3

    if-ne p2, v1, :cond_30

    .line 53
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    .line 59
    :cond_17
    :goto_17
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 60
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 61
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 62
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 63
    return-void

    .line 55
    :cond_30
    const/4 v1, 0x5

    if-ne p2, v1, :cond_17

    .line 56
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_17
.end method

.method public static configureApplyInsets(Landroid/view/View;)V
    .registers 2
    .param p0, "drawerLayout"    # Landroid/view/View;

    .prologue
    .line 30
    instance-of v0, p0, Landroid/support/v4/widget/DrawerLayoutImpl;

    if-eqz v0, :cond_11

    .line 31
    new-instance v0, Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 32
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    :cond_11
    return-void
.end method

.method public static dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
    .registers 8
    .param p0, "child"    # Landroid/view/View;
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "gravity"    # I

    .prologue
    const/4 v4, 0x0

    .line 38
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsets;

    .line 39
    .local v0, "wi":Landroid/view/WindowInsets;
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1b

    .line 40
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    .line 46
    :cond_17
    :goto_17
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 47
    return-void

    .line 42
    :cond_1b
    const/4 v1, 0x5

    if-ne p2, v1, :cond_17

    .line 43
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_17
.end method

.method public static getTopInset(Ljava/lang/Object;)I
    .registers 2
    .param p0, "insets"    # Ljava/lang/Object;

    .prologue
    .line 66
    if-eqz p0, :cond_9

    check-cast p0, Landroid/view/WindowInsets;

    .end local p0    # "insets":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    :goto_8
    return v0

    .restart local p0    # "insets":Ljava/lang/Object;
    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
