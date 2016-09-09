.class public Lcom/duoku/platform/view/NewSegmentedLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/NewSegmentedLayout$a;,
        Lcom/duoku/platform/view/NewSegmentedLayout$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/duoku/platform/view/NewSegmentedLayout$b;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-boolean v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->a:Z

    .line 149
    iput-boolean v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->c:Z

    .line 150
    iput v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->d:I

    .line 151
    iput v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->e:I

    .line 152
    iput v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->f:I

    .line 171
    iput-boolean v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->g:Z

    .line 312
    iput-boolean v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->h:Z

    .line 392
    const v0, 0x22222

    iput v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->j:I

    .line 393
    const v0, 0x11111

    iput v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->k:I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private a(II)I
    .registers 7

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->e()Landroid/widget/RadioGroup;

    move-result-object v0

    .line 297
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 298
    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 299
    const/4 v0, 0x0

    .line 300
    if-le p2, p1, :cond_25

    .line 302
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 308
    :cond_24
    :goto_24
    return v0

    .line 304
    :cond_25
    if-ge p2, p1, :cond_24

    .line 306
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_24
.end method

.method static synthetic a(Lcom/duoku/platform/view/NewSegmentedLayout;I)I
    .registers 3

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/NewSegmentedLayout;->c(I)I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/4 v3, -0x2

    .line 397
    invoke-direct {p0, p2}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(Landroid/util/AttributeSet;)V

    .line 398
    invoke-virtual {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->l:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 400
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->i:I

    .line 401
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 402
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 403
    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/view/NewSegmentedLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getId()I

    move-result v1

    .line 405
    if-gtz v1, :cond_6a

    .line 407
    iget v1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->j:I

    .line 408
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setId(I)V

    move v0, v1

    .line 415
    :goto_2f
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 416
    iget v2, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->k:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 421
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 430
    const-string v3, "bottom"

    iget-object v4, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 432
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 433
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 434
    iget v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->m:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    :cond_61
    :goto_61
    invoke-virtual {p0, v1, v2}, Lcom/duoku/platform/view/NewSegmentedLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    const-string v0, "init"

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(Ljava/lang/String;)V

    .line 444
    return-void

    .line 412
    :cond_6a
    iput v1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->j:I

    move v0, v1

    goto :goto_2f

    .line 437
    :cond_6e
    const-string v0, "overlap"

    iget-object v3, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 439
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->setGravity(I)V

    .line 440
    iget v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->m:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_61
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 465
    const-string v0, "http://duoku.com/apk/res/android"

    .line 466
    const-string v1, "segment_layout"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->l:I

    .line 467
    const-string v1, "segment_indicator"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->m:I

    .line 468
    const-string v1, "indicator_grivaty"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->o:Ljava/lang/String;

    .line 469
    const-string v1, "indicator_width"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->n:Ljava/lang/String;

    .line 470
    const-string v1, "indicator_animation"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->p:Z

    .line 471
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->a:Z

    if-nez v0, :cond_5

    .line 500
    :cond_4
    :goto_4
    return-void

    .line 480
    :cond_5
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 481
    const-string v0, "NewSegmentedLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]son:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    move-object v0, p0

    .line 482
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 483
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 484
    sget-boolean v2, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v2, :cond_62

    .line 485
    const-string v2, "NewSegmentedLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]child1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";child2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_62
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 491
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 492
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 494
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 495
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 496
    sget-boolean v4, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v4, :cond_a2

    .line 497
    const-string v4, "NewSegmentedLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]measuredWidth1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";width1:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_a2
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 499
    const-string v0, "NewSegmentedLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]measuredWidth2:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";width2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private b()V
    .registers 5

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->g:Z

    if-eqz v0, :cond_5

    .line 186
    :goto_4
    return-void

    .line 179
    :cond_5
    invoke-direct {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->d()Landroid/widget/ImageView;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    invoke-virtual {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->i:I

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 182
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 184
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->g:Z

    goto :goto_4
.end method

.method private b(I)V
    .registers 7

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->d()Landroid/widget/ImageView;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 262
    iget-boolean v2, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->a:Z

    if-eqz v2, :cond_3a

    .line 263
    const-string v2, "NewSegmentedLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lp.leftMargin:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",offSet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",lp.topMargin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_3a
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 266
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    return-void
.end method

.method private b(II)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 316
    .line 318
    iget-boolean v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->h:Z

    if-nez v0, :cond_83

    .line 320
    if-ge p1, p2, :cond_78

    .line 322
    invoke-direct {p0, v2, p1}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(II)I

    move-result v1

    .line 323
    invoke-direct {p0, v2, p2}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(II)I

    move-result v0

    .line 352
    :goto_10
    iget-boolean v2, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->a:Z

    if-eqz v2, :cond_50

    .line 353
    sget-boolean v2, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v2, :cond_50

    .line 354
    const-string v2, "NewSegmentedLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "translate:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_50
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v2, v1, v0, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 357
    iget-boolean v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->h:Z

    if-nez v0, :cond_5f

    .line 358
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 359
    :cond_5f
    const-wide/16 v0, 0xa0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 360
    iget-boolean v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->h:Z

    if-eqz v0, :cond_70

    .line 361
    new-instance v0, Lcom/duoku/platform/view/NewSegmentedLayout$a;

    invoke-direct {v0, p0, p2}, Lcom/duoku/platform/view/NewSegmentedLayout$a;-><init>(Lcom/duoku/platform/view/NewSegmentedLayout;I)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 363
    :cond_70
    invoke-direct {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->d()Landroid/widget/ImageView;

    move-result-object v0

    .line 364
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 365
    :cond_77
    return-void

    .line 325
    :cond_78
    if-le p1, p2, :cond_77

    .line 327
    invoke-direct {p0, v2, p1}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(II)I

    move-result v1

    .line 328
    invoke-direct {p0, v2, p2}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(II)I

    move-result v0

    goto :goto_10

    .line 338
    :cond_83
    if-ge p1, p2, :cond_8b

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(II)I

    move-result v0

    move v1, v2

    .line 341
    goto :goto_10

    .line 342
    :cond_8b
    if-le p1, p2, :cond_77

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(II)I

    move-result v0

    neg-int v0, v0

    move v1, v2

    .line 345
    goto/16 :goto_10
.end method

.method static synthetic b(Lcom/duoku/platform/view/NewSegmentedLayout;I)V
    .registers 2

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/NewSegmentedLayout;->b(I)V

    return-void
.end method

.method private c(I)I
    .registers 9

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->e()Landroid/widget/RadioGroup;

    move-result-object v3

    .line 276
    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 277
    invoke-direct {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->d()Landroid/widget/ImageView;

    move-result-object v5

    .line 278
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 279
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_2c

    .line 280
    const-string v1, "NewSegmentedLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "child left:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2c
    if-nez v0, :cond_31

    .line 283
    const/4 v1, 0x0

    :goto_2f
    if-lt v1, p1, :cond_3e

    .line 290
    :cond_31
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0

    .line 285
    :cond_3e
    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 283
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_2f
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 190
    iget-boolean v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->c:Z

    if-eqz v0, :cond_6

    .line 220
    :cond_5
    :goto_5
    return-void

    .line 194
    :cond_6
    invoke-virtual {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->getMeasuredWidth()I

    move-result v0

    .line 195
    if-lez v0, :cond_5

    .line 200
    invoke-direct {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->e()Landroid/widget/RadioGroup;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->e:I

    .line 202
    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(Landroid/widget/RadioGroup;)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->f:I

    .line 203
    iget v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->e:I

    if-eqz v0, :cond_5

    .line 207
    const-string v0, "fill"

    iget-object v1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 213
    iget v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->f:I

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->c(I)I

    move-result v0

    .line 214
    invoke-direct {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->b(I)V

    .line 216
    :cond_33
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_6d

    .line 217
    const-string v0, "NewSegmentedLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " offSet(0):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/duoku/platform/view/NewSegmentedLayout;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offset(1):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/duoku/platform/view/NewSegmentedLayout;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offSet(2):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/duoku/platform/view/NewSegmentedLayout;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_6d
    iget v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->f:I

    iput v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->d:I

    .line 219
    iput-boolean v3, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->c:Z

    goto :goto_5
.end method

.method private d()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->k:I

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 248
    return-object v0
.end method

.method private e()Landroid/widget/RadioGroup;
    .registers 2

    .prologue
    .line 253
    iget v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->j:I

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 254
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->f:I

    return v0
.end method

.method public a(Landroid/widget/RadioGroup;)I
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 225
    if-gtz v2, :cond_8

    .line 242
    :cond_7
    :goto_7
    return v0

    .line 230
    :cond_8
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    move v1, v0

    .line 231
    :goto_d
    if-lt v1, v3, :cond_32

    .line 240
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 241
    const-string v1, "NewSegmentedLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkedId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " child return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 233
    :cond_32
    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v2, v4, :cond_3d

    move v0, v1

    .line 237
    :cond_3d
    sget-boolean v4, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v4, :cond_71

    .line 238
    const-string v4, "NewSegmentedLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkedId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " child "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public a(I)V
    .registers 5

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->e()Landroid/widget/RadioGroup;

    move-result-object v1

    .line 99
    iget-object v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->b:Lcom/duoku/platform/view/NewSegmentedLayout$b;

    if-eqz v0, :cond_1f

    .line 101
    iget-object v2, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->b:Lcom/duoku/platform/view/NewSegmentedLayout$b;

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(Lcom/duoku/platform/view/NewSegmentedLayout$b;)V

    .line 103
    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 104
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(Lcom/duoku/platform/view/NewSegmentedLayout$b;)V

    .line 112
    :goto_1e
    return-void

    .line 109
    :cond_1f
    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1e
.end method

.method public a(Lcom/duoku/platform/view/NewSegmentedLayout$b;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->b:Lcom/duoku/platform/view/NewSegmentedLayout$b;

    .line 94
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 65
    const-string v0, "onAttachedToWindow"

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 7

    .prologue
    .line 118
    iget-object v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->b:Lcom/duoku/platform/view/NewSegmentedLayout$b;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->b:Lcom/duoku/platform/view/NewSegmentedLayout$b;

    invoke-interface {v0, p0, p2}, Lcom/duoku/platform/view/NewSegmentedLayout$b;->a(Lcom/duoku/platform/view/NewSegmentedLayout;I)V

    .line 122
    :cond_9
    invoke-direct {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->e()Landroid/widget/RadioGroup;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    .line 124
    const/4 v0, 0x0

    :goto_12
    if-lt v0, v2, :cond_15

    .line 144
    :goto_14
    return-void

    .line 126
    :cond_15
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne p2, v3, :cond_33

    .line 128
    iget-boolean v1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->p:Z

    if-eqz v1, :cond_2b

    .line 131
    iget v1, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->d:I

    invoke-direct {p0, v1, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->b(II)V

    .line 139
    :goto_28
    iput v0, p0, Lcom/duoku/platform/view/NewSegmentedLayout;->d:I

    goto :goto_14

    .line 136
    :cond_2b
    invoke-direct {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->c(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/duoku/platform/view/NewSegmentedLayout;->b(I)V

    goto :goto_28

    .line 124
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 58
    const-string v0, "onFinishInflate"

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .prologue
    .line 41
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 42
    invoke-direct {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->c()V

    .line 43
    const-string v0, "onLayout"

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 50
    invoke-direct {p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->b()V

    .line 51
    const-string v0, "onMeasure"

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 72
    const-string v0, "onWindowFocusChanged"

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(Ljava/lang/String;)V

    .line 73
    return-void
.end method
