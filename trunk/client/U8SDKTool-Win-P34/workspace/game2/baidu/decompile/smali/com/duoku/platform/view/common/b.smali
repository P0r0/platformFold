.class public Lcom/duoku/platform/view/common/b;
.super Lcom/duoku/platform/view/common/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/common/b$a;,
        Lcom/duoku/platform/view/common/b$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:[I

.field private C:[I

.field private D:Landroid/graphics/Rect;

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Z

.field private I:Lcom/duoku/platform/view/common/b$a;

.field private J:Z

.field private K:I

.field private final L:[I

.field private M:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private N:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private O:I

.field private P:I

.field private a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Z

.field private k:Z

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Z

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/view/View$OnTouchListener;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/common/a;-><init>(Landroid/content/Context;)V

    .line 55
    iput v2, p0, Lcom/duoku/platform/view/common/b;->o:I

    .line 57
    iput-boolean v1, p0, Lcom/duoku/platform/view/common/b;->p:Z

    .line 58
    iput-boolean v2, p0, Lcom/duoku/platform/view/common/b;->q:Z

    .line 59
    iput-boolean v1, p0, Lcom/duoku/platform/view/common/b;->r:Z

    .line 71
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/duoku/platform/view/common/b;->B:[I

    .line 72
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/duoku/platform/view/common/b;->C:[I

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/common/b;->D:Landroid/graphics/Rect;

    .line 82
    iput-boolean v2, p0, Lcom/duoku/platform/view/common/b;->J:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/duoku/platform/view/common/b;->K:I

    .line 87
    new-array v0, v1, [I

    .line 88
    const v1, 0x10100aa

    aput v1, v0, v2

    iput-object v0, p0, Lcom/duoku/platform/view/common/b;->L:[I

    .line 94
    new-instance v0, Lcom/duoku/platform/view/common/b$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/common/b$1;-><init>(Lcom/duoku/platform/view/common/b;)V

    iput-object v0, p0, Lcom/duoku/platform/view/common/b;->N:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 120
    if-eqz p2, :cond_46

    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/common/b;->a:Landroid/content/Context;

    .line 123
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/duoku/platform/view/common/b;->b:Landroid/view/WindowManager;

    .line 126
    :cond_46
    invoke-virtual {p0, p2}, Lcom/duoku/platform/view/common/b;->a(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/common/b;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->M:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(Landroid/view/WindowManager$LayoutParams;)V
    .registers 6

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 449
    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->a:Landroid/content/Context;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->b:Landroid/view/WindowManager;

    if-nez v2, :cond_16

    .line 451
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_16
    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_47

    .line 456
    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 458
    if-eqz v2, :cond_4c

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_4c

    .line 465
    :goto_26
    new-instance v2, Lcom/duoku/platform/view/common/b$b;

    iget-object v3, p0, Lcom/duoku/platform/view/common/b;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/duoku/platform/view/common/b$b;-><init>(Lcom/duoku/platform/view/common/b;Landroid/content/Context;)V

    .line 466
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 467
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/view/common/b$b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 468
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    invoke-virtual {v2, v0, v3}, Lcom/duoku/platform/view/common/b$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iput-object v2, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    .line 476
    :goto_3e
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Lcom/duoku/platform/view/common/b;->z:I

    .line 477
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/duoku/platform/view/common/b;->A:I

    .line 478
    return-void

    .line 474
    :cond_47
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    iput-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    goto :goto_3e

    :cond_4c
    move v0, v1

    goto :goto_26
.end method

.method static synthetic a(Lcom/duoku/platform/view/common/b;Z)V
    .registers 2

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/common/b;->b(Z)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .registers 15

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 576
    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->B:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 577
    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->B:[I

    aget v2, v2, v0

    add-int/2addr v2, p3

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 578
    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->B:[I

    aget v2, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p4

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 582
    const/16 v2, 0x33

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 584
    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->C:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 585
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 586
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 589
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p0, Lcom/duoku/platform/view/common/b;->A:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_44

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p0, Lcom/duoku/platform/view/common/b;->z:I

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_aa

    .line 596
    :cond_44
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 597
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 598
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/duoku/platform/view/common/b;->z:I

    add-int/2addr v7, v4

    add-int/2addr v7, p3

    iget v8, p0, Lcom/duoku/platform/view/common/b;->A:I

    add-int/2addr v8, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, p4

    invoke-direct {v6, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 599
    invoke-virtual {p1, v6, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 603
    iget-object v4, p0, Lcom/duoku/platform/view/common/b;->B:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 604
    iget-object v4, p0, Lcom/duoku/platform/view/common/b;->B:[I

    aget v4, v4, v0

    add-int/2addr v4, p3

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 605
    iget-object v4, p0, Lcom/duoku/platform/view/common/b;->B:[I

    aget v4, v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 608
    iget-object v4, p0, Lcom/duoku/platform/view/common/b;->C:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 610
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/duoku/platform/view/common/b;->C:[I

    aget v5, v5, v1

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, p4

    iget-object v5, p0, Lcom/duoku/platform/view/common/b;->C:[I

    aget v5, v5, v1

    sub-int/2addr v5, p4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, v2

    if-ge v4, v2, :cond_97

    move v0, v1

    .line 611
    :cond_97
    if-eqz v0, :cond_b2

    .line 613
    const/16 v2, 0x53

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 614
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/view/common/b;->B:[I

    aget v1, v3, v1

    sub-int v1, v2, v1

    add-int/2addr v1, p4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 622
    :cond_aa
    :goto_aa
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 624
    return v0

    .line 618
    :cond_b2
    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->B:[I

    aget v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_aa
.end method

.method static synthetic a(Lcom/duoku/platform/view/common/b;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .registers 6

    .prologue
    .line 573
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duoku/platform/view/common/b;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/duoku/platform/view/common/b;)Landroid/view/View;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .prologue
    .line 487
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    return-void
.end method

.method private b(Z)V
    .registers 4

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/duoku/platform/view/common/b;->H:Z

    if-eq p1, v0, :cond_19

    .line 403
    iput-boolean p1, p0, Lcom/duoku/platform/view/common/b;->H:Z

    .line 405
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 412
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    .line 414
    iget-boolean v0, p0, Lcom/duoku/platform/view/common/b;->H:Z

    if-eqz v0, :cond_1a

    .line 416
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/view/common/b;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    :cond_19
    :goto_19
    return-void

    .line 420
    :cond_1a
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/view/common/b;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    .line 425
    :cond_22
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_19
.end method

.method private c()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 557
    iget v1, p0, Lcom/duoku/platform/view/common/b;->K:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 559
    iget-boolean v1, p0, Lcom/duoku/platform/view/common/b;->k:Z

    if-eqz v1, :cond_a

    .line 570
    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/duoku/platform/view/common/b;->K:I

    goto :goto_a
.end method

.method static synthetic c(Lcom/duoku/platform/view/common/b;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/duoku/platform/view/common/b;->O:I

    return v0
.end method

.method private d(I)I
    .registers 6

    .prologue
    const/high16 v3, 0x20000

    .line 522
    const v0, -0x68219

    and-int/2addr v0, p1

    .line 524
    iget-boolean v1, p0, Lcom/duoku/platform/view/common/b;->J:Z

    if-eqz v1, :cond_e

    .line 526
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 528
    :cond_e
    iget-boolean v1, p0, Lcom/duoku/platform/view/common/b;->n:Z

    if-nez v1, :cond_2e

    .line 530
    or-int/lit8 v0, v0, 0x8

    .line 531
    iget v1, p0, Lcom/duoku/platform/view/common/b;->o:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 533
    or-int/2addr v0, v3

    .line 540
    :cond_1a
    :goto_1a
    iget-boolean v1, p0, Lcom/duoku/platform/view/common/b;->p:Z

    if-nez v1, :cond_20

    .line 542
    or-int/lit8 v0, v0, 0x10

    .line 544
    :cond_20
    iget-boolean v1, p0, Lcom/duoku/platform/view/common/b;->q:Z

    if-eqz v1, :cond_27

    .line 546
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 548
    :cond_27
    iget-boolean v1, p0, Lcom/duoku/platform/view/common/b;->r:Z

    if-nez v1, :cond_2d

    .line 550
    or-int/lit16 v0, v0, 0x200

    .line 552
    :cond_2d
    return v0

    .line 536
    :cond_2e
    iget v1, p0, Lcom/duoku/platform/view/common/b;->o:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 538
    or-int/2addr v0, v3

    goto :goto_1a
.end method

.method static synthetic d(Lcom/duoku/platform/view/common/b;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/duoku/platform/view/common/b;->P:I

    return v0
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->M:Ljava/lang/ref/WeakReference;

    .line 884
    if-eqz v0, :cond_19

    .line 886
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 888
    :goto_b
    if-eqz v0, :cond_16

    .line 890
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 891
    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->N:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 893
    :cond_16
    iput-object v1, p0, Lcom/duoku/platform/view/common/b;->M:Ljava/lang/ref/WeakReference;

    .line 894
    return-void

    :cond_19
    move-object v0, v1

    goto :goto_b
.end method

.method static synthetic e(Lcom/duoku/platform/view/common/b;)Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/duoku/platform/view/common/b;->H:Z

    return v0
.end method

.method static synthetic f(Lcom/duoku/platform/view/common/b;)[I
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->L:[I

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/view/common/b;)Landroid/view/View$OnTouchListener;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->s:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic h(Lcom/duoku/platform/view/common/b;)Landroid/view/View;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 151
    iput p1, p0, Lcom/duoku/platform/view/common/b;->K:I

    .line 152
    return-void
.end method

.method public a(IIIIZ)V
    .registers 11

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 741
    if-eq p3, v4, :cond_9

    .line 743
    iput p3, p0, Lcom/duoku/platform/view/common/b;->v:I

    .line 744
    invoke-virtual {p0, p3}, Lcom/duoku/platform/view/common/b;->c(I)V

    .line 747
    :cond_9
    if-eq p4, v4, :cond_10

    .line 749
    iput p4, p0, Lcom/duoku/platform/view/common/b;->y:I

    .line 750
    invoke-virtual {p0, p4}, Lcom/duoku/platform/view/common/b;->b(I)V

    .line 753
    :cond_10
    invoke-virtual {p0}, Lcom/duoku/platform/view/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    if-nez v0, :cond_1b

    .line 806
    :cond_1a
    :goto_1a
    return-void

    .line 758
    :cond_1b
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 762
    iget v2, p0, Lcom/duoku/platform/view/common/b;->t:I

    if-gez v2, :cond_74

    iget v2, p0, Lcom/duoku/platform/view/common/b;->t:I

    .line 763
    :goto_29
    if-eq p3, v4, :cond_34

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v3, v2, :cond_34

    .line 765
    iput v2, p0, Lcom/duoku/platform/view/common/b;->v:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move p5, v1

    .line 769
    :cond_34
    iget v2, p0, Lcom/duoku/platform/view/common/b;->w:I

    if-gez v2, :cond_77

    iget v2, p0, Lcom/duoku/platform/view/common/b;->w:I

    .line 770
    :goto_3a
    if-eq p4, v4, :cond_45

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v3, v2, :cond_45

    .line 772
    iput v2, p0, Lcom/duoku/platform/view/common/b;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move p5, v1

    .line 776
    :cond_45
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v2, p1, :cond_4c

    .line 778
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v1

    .line 782
    :cond_4c
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, p2, :cond_53

    .line 784
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v1

    .line 788
    :cond_53
    invoke-direct {p0}, Lcom/duoku/platform/view/common/b;->c()I

    move-result v2

    .line 789
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_5e

    .line 791
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v1

    .line 795
    :cond_5e
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Lcom/duoku/platform/view/common/b;->d(I)I

    move-result v2

    .line 796
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v3, :cond_7a

    .line 798
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 802
    :goto_6a
    if-eqz v1, :cond_1a

    .line 804
    iget-object v1, p0, Lcom/duoku/platform/view/common/b;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a

    .line 762
    :cond_74
    iget v2, p0, Lcom/duoku/platform/view/common/b;->v:I

    goto :goto_29

    .line 769
    :cond_77
    iget v2, p0, Lcom/duoku/platform/view/common/b;->y:I

    goto :goto_3a

    :cond_7a
    move v1, p5

    goto :goto_6a
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/duoku/platform/view/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 177
    :cond_6
    :goto_6
    return-void

    .line 166
    :cond_7
    iput-object p1, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->a:Landroid/content/Context;

    if-nez v0, :cond_15

    .line 170
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/common/b;->a:Landroid/content/Context;

    .line 173
    :cond_15
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->b:Landroid/view/WindowManager;

    if-nez v0, :cond_6

    .line 175
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/duoku/platform/view/common/b;->b:Landroid/view/WindowManager;

    goto :goto_6
.end method

.method public a(Landroid/view/View;III)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 314
    invoke-virtual {p0}, Lcom/duoku/platform/view/common/b;->a()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    if-nez v0, :cond_c

    .line 351
    :cond_b
    :goto_b
    return-void

    .line 319
    :cond_c
    invoke-direct {p0}, Lcom/duoku/platform/view/common/b;->d()V

    .line 321
    iput-boolean v2, p0, Lcom/duoku/platform/view/common/b;->c:Z

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/view/common/b;->k:Z

    .line 341
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 342
    invoke-direct {p0}, Lcom/duoku/platform/view/common/b;->c()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 343
    invoke-direct {p0, v0}, Lcom/duoku/platform/view/common/b;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 344
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 345
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 346
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 347
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 348
    iget v1, p0, Lcom/duoku/platform/view/common/b;->u:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 349
    iget v1, p0, Lcom/duoku/platform/view/common/b;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 350
    invoke-direct {p0, v0}, Lcom/duoku/platform/view/common/b;->b(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_b
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/duoku/platform/view/common/b;->n:Z

    .line 195
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/duoku/platform/view/common/b;->c:Z

    return v0
.end method

.method public b()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 666
    invoke-virtual {p0}, Lcom/duoku/platform/view/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    if-eqz v0, :cond_3a

    .line 668
    invoke-direct {p0}, Lcom/duoku/platform/view/common/b;->d()V

    .line 672
    :try_start_f
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_3b

    .line 676
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    .line 678
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 680
    :cond_2b
    iput-object v4, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    .line 681
    iput-boolean v3, p0, Lcom/duoku/platform/view/common/b;->c:Z

    .line 682
    sput-boolean v3, Lcom/duoku/platform/view/common/b;->e:Z

    .line 684
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->I:Lcom/duoku/platform/view/common/b$a;

    if-eqz v0, :cond_3a

    .line 686
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->I:Lcom/duoku/platform/view/common/b$a;

    invoke-interface {v0}, Lcom/duoku/platform/view/common/b$a;->a()V

    .line 690
    :cond_3a
    return-void

    .line 675
    :catchall_3b
    move-exception v0

    move-object v1, v0

    .line 676
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    if-eq v0, v2, :cond_52

    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_52

    .line 678
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 680
    :cond_52
    iput-object v4, p0, Lcom/duoku/platform/view/common/b;->m:Landroid/view/View;

    .line 681
    iput-boolean v3, p0, Lcom/duoku/platform/view/common/b;->c:Z

    .line 682
    sput-boolean v3, Lcom/duoku/platform/view/common/b;->e:Z

    .line 684
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->I:Lcom/duoku/platform/view/common/b$a;

    if-eqz v0, :cond_61

    .line 686
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->I:Lcom/duoku/platform/view/common/b$a;

    invoke-interface {v0}, Lcom/duoku/platform/view/common/b$a;->a()V

    .line 688
    :cond_61
    throw v1
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 271
    iput p1, p0, Lcom/duoku/platform/view/common/b;->x:I

    .line 272
    return-void
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 291
    iput p1, p0, Lcom/duoku/platform/view/common/b;->u:I

    .line 292
    return-void
.end method
