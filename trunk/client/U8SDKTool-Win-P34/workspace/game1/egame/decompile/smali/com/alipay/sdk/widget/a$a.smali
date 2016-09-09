.class public final Lcom/alipay/sdk/widget/a$a;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/a;


# direct methods
.method protected constructor <init>(Lcom/alipay/sdk/widget/a;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    .line 50
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 3

    .prologue
    .line 136
    if-nez p0, :cond_f

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    :goto_6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 138
    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0

    .line 136
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_6
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 113
    .line 116
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_31
    .catchall {:try_start_1 .. :try_end_a} :catchall_3d

    .line 117
    :try_start_a
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 118
    const/16 v3, 0x1e0

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 120
    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 121
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2d} :catch_4b
    .catchall {:try_start_a .. :try_end_2d} :catchall_49

    .line 125
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_45

    .line 132
    :goto_30
    return-object v0

    .line 123
    :catch_31
    move-exception v0

    move-object v0, v1

    :goto_33
    if-eqz v0, :cond_4e

    .line 127
    :try_start_35
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_3a

    move-object v0, v1

    .line 129
    goto :goto_30

    :catch_3a
    move-exception v0

    move-object v0, v1

    goto :goto_30

    .line 125
    :catchall_3d
    move-exception v0

    move-object v2, v1

    :goto_3f
    if-eqz v2, :cond_44

    .line 127
    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_47

    .line 129
    :cond_44
    :goto_44
    throw v0

    :catch_45
    move-exception v1

    goto :goto_30

    :catch_47
    move-exception v1

    goto :goto_44

    .line 125
    :catchall_49
    move-exception v0

    goto :goto_3f

    .line 123
    :catch_4b
    move-exception v0

    move-object v0, v2

    goto :goto_33

    :cond_4e
    move-object v0, v1

    goto :goto_30
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .registers 14

    .prologue
    const/high16 v11, 0x41880000    # 17.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 63
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x42480000    # 50.0f

    .line 65
    invoke-static {p1, v1}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v10, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 68
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 72
    const v1, -0x1ae0dcc9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 73
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p1, v1}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 74
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {p1, v1}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 79
    invoke-static {p1, v2}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 81
    iget-object v1, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v1}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v2}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    .line 82
    invoke-static {v3}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v3

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v3, v5}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v5, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v5}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v5

    .line 81
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 84
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    sget-object v0, Lcom/alipay/sdk/widget/a;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    const/4 v3, 0x1

    const/4 v5, 0x1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 89
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 90
    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 92
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 95
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 96
    iget-object v0, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->b(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_eb

    const-string v0, "\u6b63\u5728\u52a0\u8f7d"

    :goto_c5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 103
    invoke-static {p1, v11}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v9, v9, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    return-object v7

    .line 96
    :cond_eb
    iget-object v0, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->b(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 15

    .prologue
    const/high16 v12, 0x41880000    # 17.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/sdk/widget/a$a;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v7, v1}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v11, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, -0x1ae0dcc9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v7, v1}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v7, v1}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v7, v2}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v1}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v2}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v3}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v3

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v3, v5}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v5, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v5}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v0, Lcom/alipay/sdk/widget/a;->d:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    const/4 v3, 0x1

    const/4 v5, 0x1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->b(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f8

    const-string v0, "\u6b63\u5728\u52a0\u8f7d"

    :goto_cc
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-static {v7, v12}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v10, v10, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v8}, Lcom/alipay/sdk/widget/a$a;->setContentView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0, v10}, Lcom/alipay/sdk/widget/a$a;->setCancelable(Z)V

    .line 58
    return-void

    .line 56
    :cond_f8
    iget-object v0, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->b(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_cc
.end method
