.class public Lcom/duoku/platform/view/AnimationDrawableView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 66
    invoke-virtual {p0}, Lcom/duoku/platform/view/AnimationDrawableView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 67
    invoke-virtual {p0}, Lcom/duoku/platform/view/AnimationDrawableView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 69
    :cond_11
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/duoku/platform/view/AnimationDrawableView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_f

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_f

    .line 21
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 23
    :cond_f
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 24
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 44
    if-nez p2, :cond_15

    .line 46
    invoke-virtual {p0}, Lcom/duoku/platform/view/AnimationDrawableView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_14

    .line 49
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 60
    :cond_14
    :goto_14
    return-void

    .line 54
    :cond_15
    invoke-virtual {p0}, Lcom/duoku/platform/view/AnimationDrawableView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_14

    .line 57
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_14
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    return-void
.end method
