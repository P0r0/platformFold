.class public Lcom/duoku/platform/download/widget/TransparentDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/duoku/platform/download/widget/TransparentDialog;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    invoke-direct {p0}, Lcom/duoku/platform/download/widget/TransparentDialog;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 22
    invoke-direct {p0}, Lcom/duoku/platform/download/widget/TransparentDialog;->init()V

    .line 23
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/duoku/platform/download/widget/TransparentDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p0}, Lcom/duoku/platform/download/widget/TransparentDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/duoku/platform/download/widget/TransparentDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 44
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 45
    invoke-virtual {p0}, Lcom/duoku/platform/download/widget/TransparentDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v1, v1, -0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 46
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 48
    invoke-virtual {p0}, Lcom/duoku/platform/download/widget/TransparentDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    return-void
.end method
