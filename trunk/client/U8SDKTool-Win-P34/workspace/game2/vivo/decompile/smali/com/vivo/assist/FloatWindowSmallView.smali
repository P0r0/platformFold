.class public Lcom/vivo/assist/FloatWindowSmallView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static a:I

.field public static viewHeight:I

.field public static viewWidth:I


# instance fields
.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->b:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "float_window_small"

    invoke-static {p1, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "id"

    const-string v1, "small_window_layout"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/FloatWindowSmallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sput v1, Lcom/vivo/assist/FloatWindowSmallView;->viewWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput v0, Lcom/vivo/assist/FloatWindowSmallView;->viewHeight:I

    return-void
.end method

.method private a()I
    .registers 4

    sget v0, Lcom/vivo/assist/FloatWindowSmallView;->a:I

    if-nez v0, :cond_28

    :try_start_4
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/vivo/assist/FloatWindowSmallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/vivo/assist/FloatWindowSmallView;->a:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_2b

    :cond_28
    :goto_28
    sget v0, Lcom/vivo/assist/FloatWindowSmallView;->a:I

    return v0

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_88

    :cond_7
    :goto_7
    const/4 v0, 0x1

    return v0

    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-direct {p0}, Lcom/vivo/assist/FloatWindowSmallView;->a()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-direct {p0}, Lcom/vivo/assist/FloatWindowSmallView;->a()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->e:F

    goto :goto_7

    :pswitch_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-direct {p0}, Lcom/vivo/assist/FloatWindowSmallView;->a()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->e:F

    iget-object v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->c:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/vivo/assist/FloatWindowSmallView;->d:F

    iget v2, p0, Lcom/vivo/assist/FloatWindowSmallView;->h:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->c:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/vivo/assist/FloatWindowSmallView;->e:F

    iget v2, p0, Lcom/vivo/assist/FloatWindowSmallView;->i:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/FloatWindowSmallView;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :pswitch_68
    iget v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->f:F

    iget v1, p0, Lcom/vivo/assist/FloatWindowSmallView;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget v0, p0, Lcom/vivo/assist/FloatWindowSmallView;->g:F

    iget v1, p0, Lcom/vivo/assist/FloatWindowSmallView;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/vivo/assist/FloatWindowSmallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/assist/MyWindowManager;->createBigWindow(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/assist/FloatWindowSmallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/assist/MyWindowManager;->removeSmallWindow(Landroid/content/Context;)V

    goto :goto_7

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_9
        :pswitch_68
        :pswitch_3a
    .end packed-switch
.end method

.method public setParams(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/assist/FloatWindowSmallView;->c:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method
