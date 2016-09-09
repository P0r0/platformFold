.class public Lcom/duoku/platform/view/StartView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout$LayoutParams;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/duoku/platform/view/LoadingBar;

.field private h:Landroid/content/Context;

.field private final i:I

.field private final j:I

.field private k:I

.field private l:I

.field private m:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/graphics/Bitmap;

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const/16 v0, 0x136

    iput v0, p0, Lcom/duoku/platform/view/StartView;->i:I

    .line 67
    const/16 v0, 0x96

    iput v0, p0, Lcom/duoku/platform/view/StartView;->j:I

    .line 105
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/StartView;->a(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/16 v0, 0x136

    iput v0, p0, Lcom/duoku/platform/view/StartView;->i:I

    .line 67
    const/16 v0, 0x96

    iput v0, p0, Lcom/duoku/platform/view/StartView;->j:I

    .line 96
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/StartView;->a(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/StartView;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->n:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 115
    iput-object p1, p0, Lcom/duoku/platform/view/StartView;->h:Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->d()V

    .line 118
    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->h:Landroid/content/Context;

    const-string v2, "dk_splash_bg"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->o:Landroid/graphics/Bitmap;

    .line 119
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->o:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 120
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/StartView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->e()V

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/StartView;Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/duoku/platform/view/StartView;->n:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/StartView;)I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/duoku/platform/view/StartView;->k:I

    return v0
.end method

.method static synthetic c(Lcom/duoku/platform/view/StartView;)I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/duoku/platform/view/StartView;->l:I

    return v0
.end method

.method static synthetic d(Lcom/duoku/platform/view/StartView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/16 v4, 0x51

    const/4 v3, -0x1

    .line 156
    invoke-virtual {p0, v6}, Lcom/duoku/platform/view/StartView;->setOrientation(I)V

    .line 157
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/duoku/platform/util/n;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 159
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->e:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 161
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 163
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->g()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/view/StartView;->a:Landroid/widget/LinearLayout;

    .line 164
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->g()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/view/StartView;->b:Landroid/widget/LinearLayout;

    .line 165
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->g()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/view/StartView;->c:Landroid/widget/LinearLayout;

    .line 166
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->g()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    .line 168
    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/StartView;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/duoku/platform/view/StartView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/view/StartView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 171
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 173
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/StartView;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/StartView;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 176
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 178
    new-instance v0, Lcom/duoku/platform/view/LoadingBar;

    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/duoku/platform/view/LoadingBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->g:Lcom/duoku/platform/view/LoadingBar;

    .line 179
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->f:Landroid/widget/ImageView;

    .line 181
    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x136

    invoke-static {v0, v1}, Lcom/duoku/platform/util/n;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/StartView;->k:I

    .line 182
    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {v0, v1}, Lcom/duoku/platform/util/n;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/StartView;->l:I

    .line 184
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 185
    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/StartView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->f()V

    .line 197
    new-instance v0, Lcom/duoku/platform/view/StartView$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/StartView$1;-><init>(Lcom/duoku/platform/view/StartView;)V

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->m:Landroid/os/AsyncTask;

    .line 319
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->m:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 320
    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/view/StartView;)V
    .registers 1

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->f()V

    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->f:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 328
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->f:Landroid/widget/ImageView;

    iget v1, p0, Lcom/duoku/platform/view/StartView;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 329
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->f:Landroid/widget/ImageView;

    iget v1, p0, Lcom/duoku/platform/view/StartView;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 330
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 331
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->h:Landroid/content/Context;

    const-string v2, "dk_splash_logo"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    return-void
.end method

.method private g()Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 340
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 341
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 342
    return-object v0
.end method

.method private h()V
    .registers 4

    .prologue
    const/4 v1, -0x2

    .line 447
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 448
    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/duoku/platform/util/n;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 449
    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/StartView;->g:Lcom/duoku/platform/view/LoadingBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_13

    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->g:Lcom/duoku/platform/view/LoadingBar;

    invoke-virtual {v0}, Lcom/duoku/platform/view/LoadingBar;->c()Z

    move-result v0

    if-nez v0, :cond_13

    .line 353
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView;->h()V

    .line 354
    :cond_13
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->g:Lcom/duoku/platform/view/LoadingBar;

    invoke-virtual {v0}, Lcom/duoku/platform/view/LoadingBar;->a()V

    .line 355
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    .line 463
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 466
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 468
    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 470
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 471
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_25

    move-result-wide v2

    .line 473
    cmp-long v4, v0, v4

    if-ltz v4, :cond_29

    cmp-long v0, v0, v2

    if-gtz v0, :cond_29

    .line 475
    const/4 v0, 0x1

    .line 483
    :goto_24
    return v0

    .line 479
    :catch_25
    move-exception v0

    .line 481
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 483
    :cond_29
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public b()V
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ltz v0, :cond_f

    .line 374
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/StartView;->g:Lcom/duoku/platform/view/LoadingBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 375
    :cond_f
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->g:Lcom/duoku/platform/view/LoadingBar;

    invoke-virtual {v0}, Lcom/duoku/platform/view/LoadingBar;->b()V

    .line 376
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/duoku/platform/view/StartView;->removeAllViews()V

    .line 385
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 387
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 389
    :cond_c
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 391
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 393
    :cond_15
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1e

    .line 395
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    :cond_1e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->m:Landroid/os/AsyncTask;

    if-eqz v0, :cond_d

    .line 132
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->m:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/StartView;->m:Landroid/os/AsyncTask;

    .line 135
    :cond_d
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    .line 137
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    :cond_16
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    .line 141
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    :cond_1f
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    .line 145
    iget-object v0, p0, Lcom/duoku/platform/view/StartView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    :cond_28
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 148
    return-void
.end method
