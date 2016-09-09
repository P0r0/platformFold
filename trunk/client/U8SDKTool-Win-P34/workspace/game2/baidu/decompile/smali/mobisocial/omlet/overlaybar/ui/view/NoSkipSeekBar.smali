.class public Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;
.super Landroid/widget/SeekBar;
.source "NoSkipSeekBar.java"


# instance fields
.field private isDragging:Z

.field mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private increment(I)V
    .registers 5
    .param p1, "direction"    # I

    .prologue
    .line 58
    if-eqz p1, :cond_13

    .line 59
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    if-gez p1, :cond_14

    const/16 v1, 0x15

    :goto_9
    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 60
    .local v0, "key":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 62
    .end local v0    # "key":Landroid/view/KeyEvent;
    :cond_13
    return-void

    .line 59
    :cond_14
    const/16 v1, 0x16

    goto :goto_9
.end method

.method private isWithinThumb(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getSeekBarThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getSeekBarThumb()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public init()V
    .registers 4

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setProgress(I)V

    .line 35
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_btn_playbar_cut_time_normal"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 36
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000d

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getSeekBarThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_14

    .line 67
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 94
    :cond_13
    :goto_13
    return v0

    .line 68
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_6e

    .line 94
    :cond_1b
    :goto_1b
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_13

    .line 70
    :pswitch_20
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->isWithinThumb(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 71
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->isDragging:Z

    .line 72
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_btn_playbar_cut_time_click"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_13

    .line 78
    :pswitch_42
    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->isDragging:Z

    .line 79
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "omp_btn_playbar_cut_time_normal"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->isWithinThumb(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 81
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_13

    .line 87
    :pswitch_64
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->isDragging:Z

    if-nez v0, :cond_1b

    move v0, v1

    .line 88
    goto :goto_13

    .line 91
    :pswitch_6a
    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->isDragging:Z

    goto :goto_1b

    .line 68
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_20
        :pswitch_42
        :pswitch_64
        :pswitch_6a
    .end packed-switch
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 45
    return-void
.end method
