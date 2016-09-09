.class public Lcom/vivo/assist/widget/AssistView;
.super Landroid/widget/FrameLayout;


# static fields
.field public static activityShowNotification:Ljava/lang/Boolean;

.field public static coordinateX:I

.field public static coordinateY:I

.field public static giftShowNotification:Ljava/lang/Boolean;

.field public static misLeftAlign:Z

.field public static onConfiguration:Ljava/lang/Boolean;

.field public static personalShowNotification:Ljava/lang/Boolean;

.field public static rawX:I

.field public static rawY:I

.field public static viewHeight:I

.field public static viewWidth:I


# instance fields
.field private A:I

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/view/View$OnLayoutChangeListener;

.field private D:Landroid/os/Handler;

.field a:Landroid/widget/LinearLayout;

.field final b:[I

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/Timer;

.field private g:Ljava/util/Timer;

.field private h:Ljava/util/Timer;

.field public hidex:I

.field private i:Ljava/util/Timer;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field public misRightAlign:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;

.field private w:Lcom/vivo/assist/AssistWindowManager;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    sput v1, Lcom/vivo/assist/widget/AssistView;->coordinateX:I

    sput v1, Lcom/vivo/assist/widget/AssistView;->coordinateY:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/widget/AssistView;->onConfiguration:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/widget/AssistView;->activityShowNotification:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    sput v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    sput v1, Lcom/vivo/assist/widget/AssistView;->rawY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/assist/AssistWindowManager;)V
    .registers 7

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/vivo/assist/widget/AssistView;->c:I

    iput v1, p0, Lcom/vivo/assist/widget/AssistView;->j:I

    iput v1, p0, Lcom/vivo/assist/widget/AssistView;->k:I

    iput-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->l:Z

    iput-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/assist/widget/AssistView;->n:Z

    iput-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->o:Z

    iput-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->p:Z

    iput-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->q:Z

    iput-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    iput-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->r:Z

    iput-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->s:Z

    iput v1, p0, Lcom/vivo/assist/widget/AssistView;->t:I

    iput v1, p0, Lcom/vivo/assist/widget/AssistView;->u:I

    const/16 v0, -0xa

    iput v0, p0, Lcom/vivo/assist/widget/AssistView;->hidex:I

    iput v3, p0, Lcom/vivo/assist/widget/AssistView;->x:I

    iput v3, p0, Lcom/vivo/assist/widget/AssistView;->y:I

    iput v3, p0, Lcom/vivo/assist/widget/AssistView;->z:I

    iput v3, p0, Lcom/vivo/assist/widget/AssistView;->A:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->b:[I

    new-instance v0, Lcom/vivo/assist/widget/a;

    invoke-direct {v0, p0}, Lcom/vivo/assist/widget/a;-><init>(Lcom/vivo/assist/widget/AssistView;)V

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->C:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/vivo/assist/widget/b;

    invoke-direct {v0, p0}, Lcom/vivo/assist/widget/b;-><init>(Lcom/vivo/assist/widget/AssistView;)V

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->D:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/assist/widget/c;

    invoke-direct {v0, p0}, Lcom/vivo/assist/widget/c;-><init>(Lcom/vivo/assist/widget/AssistView;)V

    iput-object p1, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    const/16 v0, 0xa

    iput v0, p0, Lcom/vivo/assist/widget/AssistView;->j:I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getStatusHeight()I

    move-result v0

    iput v0, p0, Lcom/vivo/assist/widget/AssistView;->k:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "float_window_small"

    invoke-static {p1, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->C:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const-string v0, "id"

    const-string v1, "small_window_layout"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->B:Landroid/widget/LinearLayout;

    const-string v0, "id"

    const-string v1, "small_window_layout_hide"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->a:Landroid/widget/LinearLayout;

    const-string v0, "AssistView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AssistView"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/assist/widget/AssistView;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sput v0, Lcom/vivo/assist/widget/AssistView;->viewWidth:I

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput v0, Lcom/vivo/assist/widget/AssistView;->viewHeight:I

    const-string v0, "AssistService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "giftShowNotification"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "activityShowNotification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/assist/widget/AssistView;->activityShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/vivo/assist/widget/AssistView;->activityShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_107

    const-string v0, "id"

    const-string v1, "float_window_notification_icon_right"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_fa
    invoke-static {}, Lcom/vivo/assist/align/AlignStrategyFactory;->createAlignStrategy()Lcom/vivo/assist/align/AlignStrategy;

    iput-object p2, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->g:Ljava/util/Timer;

    return-void

    :cond_107
    const-string v0, "id"

    const-string v1, "float_window_notification_icon_right"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_fa
.end method

.method static synthetic a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/assist/widget/AssistView;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/assist/widget/AssistView;->k:I

    return-void
.end method

.method static synthetic a(Lcom/vivo/assist/widget/AssistView;Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method static synthetic a(Lcom/vivo/assist/widget/AssistView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/assist/widget/AssistView;->m:Z

    return-void
.end method

.method static synthetic b(Lcom/vivo/assist/widget/AssistView;I)V
    .registers 2

    return-void
.end method

.method static synthetic b(Lcom/vivo/assist/widget/AssistView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/assist/widget/AssistView;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/vivo/assist/widget/AssistView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/assist/widget/AssistView;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/vivo/assist/widget/AssistView;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->f:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/assist/widget/AssistView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/assist/widget/AssistView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->D:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public OnAssistViewHideAssistPanelClickListener()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "AssistView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnAssistViewClickListener--mHided"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vivo/assist/widget/AssistView;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mShowingfalse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_3c

    const-string v0, "AssistView"

    const-string v1, "nin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopAlphaTask()V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->startTask()V

    iput-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    sput-boolean v4, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    iput-boolean v4, p0, Lcom/vivo/assist/widget/AssistView;->o:Z

    const/16 v0, -0xa

    sput v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    :goto_3b
    return-void

    :cond_3c
    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v1, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v1}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v1

    add-int/lit16 v1, v1, -0x96

    if-le v0, v1, :cond_66

    const-string v0, "AssistView"

    const-string v1, "ten"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopAlphaTask()V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->startTask()V

    sput-boolean v3, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    iput-boolean v4, p0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    iput-boolean v4, p0, Lcom/vivo/assist/widget/AssistView;->o:Z

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    goto :goto_3b

    :cond_66
    const-string v0, "AssistView"

    const-string v1, "ele"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    sput-boolean v3, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->startAlphaTask()V

    goto :goto_3b
.end method

.method protected drawableStateChanged()V
    .registers 1

    return-void
.end method

.method public getAlphaHided()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/assist/widget/AssistView;->r:Z

    return v0
.end method

.method public getHided()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/assist/widget/AssistView;->p:Z

    return v0
.end method

.method public getRectInFrame(Landroid/graphics/Rect;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v1, v0, v1

    iget v2, p0, Lcom/vivo/assist/widget/AssistView;->k:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public getStatusHeight()I
    .registers 4

    iget v0, p0, Lcom/vivo/assist/widget/AssistView;->k:I

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

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/assist/widget/AssistView;->k:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_3f

    :cond_28
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getStatusHeight() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vivo/assist/widget/AssistView;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/assist/util/LogUtil;->display(Ljava/lang/String;)V

    iget v0, p0, Lcom/vivo/assist/widget/AssistView;->k:I

    return v0

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method public getview()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public hideNotificationIcon()V
    .registers 4

    sget-object v0, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/vivo/assist/widget/AssistView;->activityShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "float_window_notification_icon_right"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2a
    const-string v0, "setAssistBg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hideNotificationIcon"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/assist/widget/AssistView;->activityShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4d
    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "float_window_notification_icon_right"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "float_window_notification_icon_right"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2a
.end method

.method public isAlign(I)Z
    .registers 3

    iget v0, p0, Lcom/vivo/assist/widget/AssistView;->c:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Point onConfigurationChanged START"

    invoke-static {v0}, Lcom/vivo/assist/util/LogUtil;->touchEvent(Ljava/lang/String;)V

    const-string v0, "Point onConfigurationChanged END"

    invoke-static {v0}, Lcom/vivo/assist/util/LogUtil;->touchEvent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getStatusHeight()I

    move-result v0

    iput v0, p0, Lcom/vivo/assist/widget/AssistView;->k:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_3d

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    const/16 v1, 0x96

    if-lt v0, v1, :cond_3d

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v1, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v1}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v1

    add-int/lit16 v1, v1, -0x96

    if-gt v0, v1, :cond_3d

    const-string v0, "AssistView"

    const-string v1, "ele"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    sput-boolean v2, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->startAlphaTask()V

    :cond_3d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    const/16 v6, -0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "AssistView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mHiding"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/vivo/assist/widget/AssistView;->m:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mShowingfalse"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "event.getAction()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/vivo/assist/widget/AssistView;->m:Z

    if-eqz v0, :cond_3a

    const-string v0, "AssistView"

    const-string v2, " mAssistiveManager.removeAssistButton()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return v1

    :cond_3a
    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopUpdateTask()V

    iget-boolean v0, p0, Lcom/vivo/assist/widget/AssistView;->r:Z

    if-eqz v0, :cond_59

    iput-boolean v2, p0, Lcom/vivo/assist/widget/AssistView;->r:Z

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "small_window_layout"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    :cond_59
    iput-boolean v2, p0, Lcom/vivo/assist/widget/AssistView;->n:Z

    iput-boolean v2, p0, Lcom/vivo/assist/widget/AssistView;->o:Z

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->setAssistBg()V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopAssistBgLayoutHideTask()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lcom/vivo/assist/widget/AssistView;->k:I

    sub-int/2addr v0, v4

    sput v0, Lcom/vivo/assist/widget/AssistView;->rawY:I

    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_3ae

    :cond_7c
    :goto_7c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AssistivePoint onTouchEvent action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/assist/util/LogUtil;->touchEvent(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_39

    :pswitch_b1
    const-string v0, "ACTION_DOWN"

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iput v1, p0, Lcom/vivo/assist/widget/AssistView;->y:I

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawY:I

    iput v1, p0, Lcom/vivo/assist/widget/AssistView;->A:I

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iput v1, p0, Lcom/vivo/assist/widget/AssistView;->t:I

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawY:I

    iput v1, p0, Lcom/vivo/assist/widget/AssistView;->u:I

    iput-boolean v2, p0, Lcom/vivo/assist/widget/AssistView;->l:Z

    goto :goto_7c

    :pswitch_c6
    const-string v0, "ACTION_UP"

    const-string v3, "AssistView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mHiding"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/vivo/assist/widget/AssistView;->m:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mShowingfalse"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "event.getAction()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mMoved"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vivo/assist/widget/AssistView;->l:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->l:Z

    if-eqz v3, :cond_7c

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AssistivePoint onTouchEvent action = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "mMovedX10"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "mMovedX2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/vivo/assist/widget/AssistView;->y:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "rawY"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "rawX"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/assist/util/LogUtil;->touchEvent(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/vivo/assist/widget/AssistView;->l:Z

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->v:Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;

    if-eqz v0, :cond_149

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->v:Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;

    invoke-interface {v0, v1}, Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;->onDragStateChanaged(I)V

    :cond_149
    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    sget v3, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/assist/AssistWindowManager;->updateAssistButtonPos(II)V

    const-string v0, "AssistView"

    const-string v3, "eig"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    const/16 v3, 0x96

    if-ge v0, v3, :cond_184

    const-string v0, "AssistView"

    const-string v3, "nin"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopAlphaTask()V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->startTask()V

    iput-boolean v2, p0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    sput-boolean v1, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    sput v6, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iput v6, p0, Lcom/vivo/assist/widget/AssistView;->hidex:I

    goto/16 :goto_39

    :cond_184
    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v3, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v3}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v3

    add-int/lit16 v3, v3, -0x96

    if-le v0, v3, :cond_1ba

    const-string v0, "AssistView"

    const-string v3, "ten"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopAlphaTask()V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->startTask()V

    sput-boolean v2, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    iput-boolean v1, p0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/vivo/assist/widget/AssistView;->hidex:I

    goto/16 :goto_39

    :cond_1ba
    const-string v0, "AssistView"

    const-string v3, "ele"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    sput-boolean v2, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->startAlphaTask()V

    goto/16 :goto_39

    :pswitch_1cd
    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget v4, p0, Lcom/vivo/assist/widget/AssistView;->t:I

    sub-int/2addr v0, v4

    sget v4, Lcom/vivo/assist/widget/AssistView;->rawY:I

    iget v5, p0, Lcom/vivo/assist/widget/AssistView;->u:I

    sub-int/2addr v4, v5

    int-to-double v6, v0

    int-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-int v5, v6

    sget v6, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iput v6, p0, Lcom/vivo/assist/widget/AssistView;->y:I

    sget v6, Lcom/vivo/assist/widget/AssistView;->rawY:I

    iget v7, p0, Lcom/vivo/assist/widget/AssistView;->A:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/vivo/assist/widget/AssistView;->z:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AssistivePoint move dx = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " dy = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " d = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mindistance = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/vivo/assist/widget/AssistView;->j:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "rawX"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "mDownX"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/vivo/assist/widget/AssistView;->t:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "mHided"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/vivo/assist/widget/AssistView;->p:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "rawY"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "mHiding"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/vivo/assist/widget/AssistView;->m:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "mShowingfalse"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "getWidth()/ 2"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/assist/util/LogUtil;->touchEvent(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne v3, v0, :cond_2d1

    iget v0, p0, Lcom/vivo/assist/widget/AssistView;->j:I

    if-le v5, v0, :cond_2d1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ACTION_MOVEmMovedX10"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "mMovedX2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/vivo/assist/widget/AssistView;->y:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "mMovedY1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/vivo/assist/widget/AssistView;->z:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "mMovedY2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/vivo/assist/widget/AssistView;->A:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/assist/util/LogUtil;->touchEvent(Ljava/lang/String;)V

    const-string v0, "AssistivePoint move distance > mindistance so move it and cancel"

    invoke-static {v0}, Lcom/vivo/assist/util/LogUtil;->touchEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    sget v3, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/assist/AssistWindowManager;->updateAssistButtonPos(II)V

    iget-boolean v0, p0, Lcom/vivo/assist/widget/AssistView;->l:Z

    if-nez v0, :cond_2cf

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->v:Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;

    if-eqz v0, :cond_2cf

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->v:Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;

    invoke-interface {v0, v2}, Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;->onDragStateChanaged(I)V

    :cond_2cf
    iput-boolean v1, p0, Lcom/vivo/assist/widget/AssistView;->l:Z

    :cond_2d1
    const-string v0, "ACTION_MOVE"

    goto/16 :goto_7c

    :pswitch_2d5
    const-string v0, "ACTION_CANCEL"

    iget-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->l:Z

    if-eqz v3, :cond_350

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AssistivePoint onTouchEvent action = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/assist/util/LogUtil;->touchEvent(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/vivo/assist/widget/AssistView;->l:Z

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->v:Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;

    if-eqz v0, :cond_316

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->v:Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;

    invoke-interface {v0, v1}, Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;->onDragStateChanaged(I)V

    :cond_316
    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    sget v3, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/assist/AssistWindowManager;->updateAssistButtonPos(II)V

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_349

    move v0, v1

    :goto_334
    sget v3, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v4, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v4}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x64

    if-le v3, v4, :cond_341

    move v2, v1

    :cond_341
    or-int/2addr v0, v2

    if-eqz v0, :cond_34b

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->startTask()V

    goto/16 :goto_39

    :cond_349
    move v0, v2

    goto :goto_334

    :cond_34b
    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->startAlphaTask()V

    goto/16 :goto_39

    :cond_350
    const-string v2, "AssistView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ACTION_CANCEL"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/assist/widget/AssistView;->isAlign(I)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7c

    :pswitch_36a
    const-string v0, "ACTION_OUTSIDE"

    iget-boolean v3, p0, Lcom/vivo/assist/widget/AssistView;->l:Z

    if-eqz v3, :cond_7c

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AssistivePoint onTouchEvent action = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/assist/util/LogUtil;->touchEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->v:Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;

    if-eqz v0, :cond_3a9

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->v:Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;

    invoke-interface {v0, v1}, Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;->onDragStateChanaged(I)V

    :cond_3a9
    iput-boolean v2, p0, Lcom/vivo/assist/widget/AssistView;->l:Z

    goto/16 :goto_39

    nop

    :pswitch_data_3ae
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_c6
        :pswitch_1cd
        :pswitch_2d5
        :pswitch_36a
    .end packed-switch
.end method

.method public setAssistBg()V
    .registers 8

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "float_view_bg_orange"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "float_window_notification_icon_right"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0}, Lcom/vivo/assist/AssistWindowManager;->resetAssistButtonPos()V

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_a1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0, v5}, Lcom/vivo/assist/AssistWindowManager;->setPersonalShowNotification(I)V

    :goto_5a
    sget-object v0, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0, v5}, Lcom/vivo/assist/AssistWindowManager;->setGiftShowNotification(I)V

    :goto_67
    const-string v0, "setAssistBg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/assist/widget/AssistView;->activityShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/vivo/assist/widget/AssistView;->activityShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_b3

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->showNotificationIcon()V

    :goto_a0
    return-void

    :cond_a1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0, v6}, Lcom/vivo/assist/AssistWindowManager;->setPersonalShowNotification(I)V

    goto :goto_5a

    :cond_ad
    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->w:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0, v6}, Lcom/vivo/assist/AssistWindowManager;->setGiftShowNotification(I)V

    goto :goto_67

    :cond_b3
    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->hideNotificationIcon()V

    goto :goto_a0
.end method

.method public setHided(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/assist/widget/AssistView;->p:Z

    return-void
.end method

.method public setOnDragListener(Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/assist/widget/AssistView;->v:Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;

    return-void
.end method

.method public showAssistPanehideNotificationIcon()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "float_window_notification_icon_right"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "setAssistBg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hideNotificationIcon"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/assist/widget/AssistView;->activityShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showNotificationIcon()V
    .registers 4

    sget-object v0, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/vivo/assist/widget/AssistView;->activityShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "float_window_notification_icon_right"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "float_window_notification_icon_right"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2a
.end method

.method public startAlphaTask()V
    .registers 5

    const-string v0, "AssistView"

    const-string v1, "startAlphaTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->f:Ljava/util/Timer;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->f:Ljava/util/Timer;

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/assist/widget/AssistView;->r:Z

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->f:Ljava/util/Timer;

    new-instance v1, Lcom/vivo/assist/widget/h;

    invoke-direct {v1, p0}, Lcom/vivo/assist/widget/h;-><init>(Lcom/vivo/assist/widget/AssistView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public startAssistBgLayoutHideTask()V
    .registers 5

    const-string v0, "AssistView"

    const-string v1, "startTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->i:Ljava/util/Timer;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->i:Ljava/util/Timer;

    :cond_12
    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->i:Ljava/util/Timer;

    new-instance v1, Lcom/vivo/assist/widget/d;

    invoke-direct {v1, p0}, Lcom/vivo/assist/widget/d;-><init>(Lcom/vivo/assist/widget/AssistView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public startHideUpdateTask()V
    .registers 7

    const/16 v5, 0x8

    const-string v0, "AssistView"

    const-string v1, "startHideUpdateTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->h:Ljava/util/Timer;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->h:Ljava/util/Timer;

    :cond_14
    sget-boolean v0, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "float_view_bg_hide"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->h:Ljava/util/Timer;

    new-instance v1, Lcom/vivo/assist/widget/g;

    invoke-direct {v1, p0}, Lcom/vivo/assist/widget/g;-><init>(Lcom/vivo/assist/widget/AssistView;)V

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x5

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_48
    iget-boolean v0, p0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/AssistView;->d:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "float_view_bg_hide_right"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_39
.end method

.method public startTask()V
    .registers 5

    const-string v0, "AssistView"

    const-string v1, "startTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->e:Ljava/util/Timer;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->e:Ljava/util/Timer;

    :cond_12
    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->e:Ljava/util/Timer;

    new-instance v1, Lcom/vivo/assist/widget/e;

    invoke-direct {v1, p0}, Lcom/vivo/assist/widget/e;-><init>(Lcom/vivo/assist/widget/AssistView;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public startUpdateTask()V
    .registers 7

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->g:Ljava/util/Timer;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->g:Ljava/util/Timer;

    :cond_b
    const-string v0, "AssistView"

    const-string v1, "startUpdateTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->g:Ljava/util/Timer;

    new-instance v1, Lcom/vivo/assist/widget/f;

    invoke-direct {v1, p0}, Lcom/vivo/assist/widget/f;-><init>(Lcom/vivo/assist/widget/AssistView;)V

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x5

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stopAllTask()V
    .registers 1

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopUpdateTask()V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopHideUpdateTask()V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    invoke-virtual {p0}, Lcom/vivo/assist/widget/AssistView;->stopAlphaTask()V

    return-void
.end method

.method public stopAlphaTask()V
    .registers 3

    const-string v0, "AssistView"

    const-string v1, "stopAlphaTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->f:Ljava/util/Timer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->f:Ljava/util/Timer;

    return-void
.end method

.method public stopAssistBgLayoutHideTask()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->i:Ljava/util/Timer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->i:Ljava/util/Timer;

    return-void
.end method

.method public stopHideUpdateTask()V
    .registers 3

    const-string v0, "AssistView"

    const-string v1, "startTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->h:Ljava/util/Timer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->h:Ljava/util/Timer;

    :cond_13
    return-void
.end method

.method public stopTask()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->e:Ljava/util/Timer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->e:Ljava/util/Timer;

    return-void
.end method

.method public stopUpdateTask()V
    .registers 3

    const-string v0, "AssistView"

    const-string v1, "stopUpdateTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->g:Ljava/util/Timer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/assist/widget/AssistView;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/assist/widget/AssistView;->g:Ljava/util/Timer;

    :cond_13
    return-void
.end method
