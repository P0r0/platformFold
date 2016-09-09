.class public Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;
.super Ljava/lang/Object;
.source "FloatWindowsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatWindowsManager"

.field private static sInstance:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;


# instance fields
.field private mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mApplication:Landroid/app/Application;

.field private mFloatParams:Landroid/view/WindowManager$LayoutParams;

.field private mFloatView:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

.field public mIsFloatShow:Z

.field private mWindowHelper:Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .registers 4
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mIsFloatShow:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    .line 181
    new-instance v0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$1;

    invoke-direct {v0, p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$1;-><init>(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;)V

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 29
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mApplication:Landroid/app/Application;

    .line 30
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 31
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->getInstance(Landroid/app/Application;)Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mWindowHelper:Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->showFloat()V

    return-void
.end method

.method static synthetic access$100(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;J)V
    .registers 4
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;
    .param p1, "x1"    # J

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->startDestroyTask(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->destroyFloatView()V

    return-void
.end method

.method private calcInitLocation()V
    .registers 9

    .prologue
    .line 83
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/Utils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 84
    .local v1, "outSize":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 85
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 86
    .local v0, "height":I
    const/4 v3, -0x1

    .line 87
    .local v3, "xRate":I
    const/4 v4, 0x1

    .line 88
    .local v4, "yRate":I
    sget-object v5, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$3;->$SwitchMap$com$gionee$gsp$GnEFloatingBoxPositionModel:[I

    sget-object v6, Lcom/gionee/gsp/common/GnCommonConfig;->sOriginPositionModel:Lcom/gionee/gsp/GnEFloatingBoxPositionModel;

    invoke-virtual {v6}, Lcom/gionee/gsp/GnEFloatingBoxPositionModel;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_3c

    .line 108
    :goto_1b
    iget-object v5, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v6, v2, 0x2

    mul-int/2addr v6, v3

    sget v7, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_margin:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 109
    iget-object v5, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v6, v0, 0x2

    mul-int/2addr v6, v4

    sget v7, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_margin:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 110
    return-void

    .line 90
    :pswitch_30
    const/4 v3, -0x1

    .line 91
    const/4 v4, -0x1

    .line 92
    goto :goto_1b

    .line 94
    :pswitch_33
    const/4 v3, 0x1

    .line 95
    const/4 v4, 0x1

    .line 96
    goto :goto_1b

    .line 98
    :pswitch_36
    const/4 v3, -0x1

    .line 99
    const/4 v4, 0x1

    .line 100
    goto :goto_1b

    .line 102
    :pswitch_39
    const/4 v3, 0x1

    .line 103
    const/4 v4, -0x1

    .line 104
    goto :goto_1b

    .line 88
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
    .end packed-switch
.end method

.method private createFloatParams()V
    .registers 4

    .prologue
    .line 66
    sget v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_size:I

    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_size:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->createWindowParams(III)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    .line 68
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->isAndroidM()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 69
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 75
    :goto_17
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->calcInitLocation()V

    .line 76
    return-void

    .line 71
    :cond_1b
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d7

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_17
.end method

.method private destroyFloatView()V
    .registers 3

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->isCurrentAppInTop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 246
    const-string v0, "FloatWindowsManager"

    const-string v1, "isCurrentAppInTop return"

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_d
    :goto_d
    return-void

    .line 250
    :cond_e
    const-string v0, "FloatWindowsManager"

    const-string v1, "not CurrentAppInTop removeFloatView"

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatView:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    if-eqz v0, :cond_1e

    .line 252
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatView:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->removeGoEdgeRunnable()V

    .line 254
    :cond_1e
    iget-boolean v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mIsFloatShow:Z

    if-eqz v0, :cond_d

    .line 255
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mWindowHelper:Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatView:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    invoke-virtual {v0, v1}, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->removeView(Landroid/view/View;)V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mIsFloatShow:Z

    goto :goto_d
.end method

.method public static declared-synchronized getInstance(Landroid/app/Application;)Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;
    .registers 3
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 35
    const-class v1, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    monitor-enter v1

    if-nez p0, :cond_8

    .line 36
    const/4 v0, 0x0

    .line 42
    :goto_6
    monitor-exit v1

    return-object v0

    .line 38
    :cond_8
    :try_start_8
    sget-object v0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->sInstance:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    if-eqz v0, :cond_f

    .line 39
    sget-object v0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->sInstance:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    goto :goto_6

    .line 41
    :cond_f
    new-instance v0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    invoke-direct {v0, p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->sInstance:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    .line 42
    sget-object v0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->sInstance:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_19

    goto :goto_6

    .line 35
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRealValue(III)I
    .registers 4
    .param p1, "value"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 153
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 154
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 155
    return p1
.end method

.method private isAndroidM()Z
    .registers 3

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isCurrentAppInTop()Z
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_6

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/Utils;->getTopActivityPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private setFloatEdgeSize()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_edge_width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 119
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_edge_height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 120
    return-void
.end method

.method private setFloatNormalSize()V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_size:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 173
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_size:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 174
    return-void
.end method

.method private setFloatPos(I)V
    .registers 7
    .param p1, "xOffset"    # I

    .prologue
    .line 123
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/Utils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 124
    .local v0, "outSize":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 125
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->isLeft()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 126
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 131
    :goto_16
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mWindowHelper:Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;

    iget-object v3, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatView:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    iget-object v4, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3, v4}, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->updateView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    return-void

    .line 128
    :cond_20
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v3, p1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_16
.end method

.method private showFloat()V
    .registers 4

    .prologue
    .line 46
    const-string v0, "FloatWindowsManager"

    const-string v1, "call showFloat"

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-boolean v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mIsFloatShow:Z

    if-eqz v0, :cond_13

    .line 48
    const-string v0, "FloatWindowsManager"

    const-string v1, "Float already show"

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_12
    :goto_12
    return-void

    .line 52
    :cond_13
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatView:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    if-nez v0, :cond_20

    .line 53
    new-instance v0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1, p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;-><init>(Landroid/app/Application;Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;)V

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatView:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    .line 56
    :cond_20
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_27

    .line 57
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->createFloatParams()V

    .line 59
    :cond_27
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mWindowHelper:Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatView:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mIsFloatShow:Z

    .line 61
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatView:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->postGoEdgeRunnable()V

    goto :goto_12
.end method

.method private startDestroyTask(J)V
    .registers 6
    .param p1, "time"    # J

    .prologue
    .line 224
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$2;-><init>(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 235
    return-void
.end method


# virtual methods
.method public getFloatX()I
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    return v0
.end method

.method public getFloatY()I
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return v0
.end method

.method public isLeft()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 135
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_6

    .line 139
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ltz v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public moveFloatView(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 143
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/Utils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 144
    .local v1, "outSize":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 145
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 147
    .local v0, "height":I
    iget-object v3, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v4, v2

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v2, 0x2

    invoke-direct {p0, p1, v4, v5}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->getRealValue(III)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 148
    iget-object v3, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v4, v0

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v0, 0x2

    invoke-direct {p0, p2, v4, v5}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->getRealValue(III)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 149
    iget-object v3, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mWindowHelper:Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;

    iget-object v4, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatView:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    iget-object v5, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4, v5}, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->updateView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 150
    return-void
.end method

.method public setFloatEdging()V
    .registers 2

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->setFloatEdgeSize()V

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->setFloatPos(I)V

    .line 115
    return-void
.end method

.method public setFloatNormalState()V
    .registers 2

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->setFloatNormalSize()V

    .line 178
    sget v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_margin:I

    invoke-direct {p0, v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->setFloatPos(I)V

    .line 179
    return-void
.end method

.method public updateFloatNormalSize()V
    .registers 4

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->setFloatNormalSize()V

    .line 168
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mWindowHelper:Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatView:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mFloatParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->updateView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 169
    return-void
.end method
