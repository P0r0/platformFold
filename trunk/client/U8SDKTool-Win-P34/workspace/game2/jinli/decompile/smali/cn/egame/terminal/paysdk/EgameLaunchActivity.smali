.class public Lcn/egame/terminal/paysdk/EgameLaunchActivity;
.super Landroid/app/Activity;
.source "EgameLaunchActivity.java"


# static fields
.field private static final PIC_SHOW_WIDTH_PADING:I = 0x28


# instance fields
.field private logoView:Landroid/widget/ImageView;

.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/egame/terminal/paysdk/EgameLaunchActivity;)V
    .registers 1
    .param p0, "x0"    # Lcn/egame/terminal/paysdk/EgameLaunchActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->startGame()V

    return-void
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "srcFileName"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-virtual {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 185
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 186
    .local v2, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 188
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_6
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 189
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_14
    .catchall {:try_start_6 .. :try_end_d} :catchall_1d

    move-result-object v1

    .line 192
    if-eqz v2, :cond_13

    .line 194
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_24

    .line 199
    :cond_13
    :goto_13
    return-object v1

    .line 190
    :catch_14
    move-exception v3

    .line 192
    if-eqz v2, :cond_13

    .line 194
    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_13

    .line 195
    :catch_1b
    move-exception v3

    goto :goto_13

    .line 192
    :catchall_1d
    move-exception v3

    if-eqz v2, :cond_23

    .line 194
    :try_start_20
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_26

    .line 196
    :cond_23
    :goto_23
    throw v3

    .line 195
    :catch_24
    move-exception v3

    goto :goto_13

    :catch_26
    move-exception v4

    goto :goto_23
.end method

.method private getFitBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 117
    const-string v1, "egame_sdk_egame_logo.png"

    invoke-direct {p0, v1}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_11

    .line 119
    invoke-direct {p0, v0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getScale(Landroid/graphics/Bitmap;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getScaleBitmap(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    :cond_11
    return-object v0
.end method

.method private getScale(Landroid/graphics/Bitmap;)F
    .registers 16
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 125
    const/high16 v4, 0x3f800000    # 1.0f

    .line 126
    .local v4, "scale":F
    invoke-static {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getScreenHeight(Landroid/app/Activity;)I

    move-result v2

    .line 127
    .local v2, "height":I
    invoke-static {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getScreenWidth(Landroid/app/Activity;)I

    move-result v7

    .line 128
    .local v7, "screenW":I
    invoke-virtual {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 129
    .local v1, "config":Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 130
    .local v3, "orientation":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 131
    .local v0, "bitmapH":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 132
    .local v8, "width":I
    const/4 v9, 0x2

    if-ne v3, v9, :cond_38

    .line 133
    int-to-double v10, v2

    const-wide v12, 0x3fd51eb851eb851fL    # 0.33

    mul-double/2addr v10, v12

    double-to-float v5, v10

    .line 134
    .local v5, "scaleSize":F
    int-to-float v9, v0

    div-float v4, v5, v9

    .line 135
    int-to-float v9, v8

    mul-float/2addr v9, v4

    float-to-int v6, v9

    .line 136
    .local v6, "scaleW":I
    add-int/lit8 v9, v7, -0x28

    if-le v6, v9, :cond_37

    .line 137
    add-int/lit8 v9, v7, -0x28

    int-to-float v9, v9

    int-to-float v10, v8

    div-float v4, v9, v10

    .line 144
    .end local v6    # "scaleW":I
    :cond_37
    :goto_37
    return v4

    .line 141
    .end local v5    # "scaleSize":F
    :cond_38
    int-to-double v10, v7

    const-wide v12, 0x3fe23d70a3d70a3dL    # 0.57

    mul-double/2addr v10, v12

    double-to-float v5, v10

    .line 142
    .restart local v5    # "scaleSize":F
    int-to-float v9, v8

    div-float v4, v5, v9

    goto :goto_37
.end method

.method public static getScreenHeight(Landroid/app/Activity;)I
    .registers 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getScreenWidth(Landroid/app/Activity;)I
    .registers 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private initView()Z
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 87
    invoke-direct {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getFitBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 88
    iget-object v2, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_36

    .line 89
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->logoView:Landroid/widget/ImageView;

    .line 90
    iget-object v2, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->logoView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    iget-object v2, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->logoView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "main":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->logoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {p0, v0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->setContentView(Landroid/view/View;)V

    .line 100
    .end local v0    # "main":Landroid/widget/FrameLayout;
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_36
    iget-object v2, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3c

    const/4 v2, 0x1

    :goto_3b
    return v2

    :cond_3c
    const/4 v2, 0x0

    goto :goto_3b
.end method

.method private startGame()V
    .registers 8

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 65
    invoke-virtual {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    .line 64
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 66
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "EGAME_LAUNCH_ACTIVITY"

    .line 67
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "gameLaunchActivity":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v3}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_25

    .line 75
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "gameLaunchActivity":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_21
    invoke-virtual {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->finish()V

    .line 76
    return-void

    .line 72
    :catch_25
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "\u542f\u52a8\u6e38\u620f\u5931\u8d25\uff0c\u68c0\u67e5\u6e38\u620f\u542f\u52a8\u7c7b\u914d\u7f6e"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_21
.end method


# virtual methods
.method public getScaleBitmap(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # D

    .prologue
    .line 156
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_7

    .line 159
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_6
    return-object p1

    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double v2, v0, p2

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v0, v0

    mul-double v4, v0, p2

    move-object v0, p0

    move-object v1, p1

    .line 159
    invoke-virtual/range {v0 .. v5}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getScaleBitmap(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_6
.end method

.method public getScaleBitmap(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;
    .registers 20
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "newWidth"    # D
    .param p4, "newHeight"    # D

    .prologue
    .line 165
    if-nez p1, :cond_4

    .line 166
    const/4 v7, 0x0

    .line 180
    :cond_3
    :goto_3
    return-object v7

    .line 168
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 169
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 170
    .local v4, "height":I
    int-to-double v0, v3

    div-double v12, p2, v0

    .line 171
    .local v12, "scaleWidth":D
    int-to-double v0, v4

    div-double v10, p4, v0

    .line 172
    .local v10, "scaleHeight":D
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 173
    .local v8, "scale":D
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 174
    .local v5, "matrix":Landroid/graphics/Matrix;
    double-to-float v0, v8

    double-to-float v1, v8

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 175
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 177
    .local v7, "result":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    iget-object v1, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    .line 107
    iget-object v0, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 108
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_c
    invoke-direct {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getFitBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 111
    iget-object v1, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->logoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_21

    .line 112
    iget-object v1, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->logoView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    :cond_21
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#FFFFFF"

    .line 47
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-direct {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->initView()Z

    move-result v0

    .line 49
    .local v0, "hasFindPic":Z
    if-eqz v0, :cond_28

    .line 50
    iget-object v1, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->logoView:Landroid/widget/ImageView;

    new-instance v2, Lcn/egame/terminal/paysdk/EgameLaunchActivity$1;

    invoke-direct {v2, p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity$1;-><init>(Lcn/egame/terminal/paysdk/EgameLaunchActivity;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    :goto_27
    return-void

    .line 58
    :cond_28
    invoke-direct {p0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->startGame()V

    goto :goto_27
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 82
    iget-object v0, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 84
    :cond_c
    return-void
.end method
