.class public Lcom/vivo/assist/AssistWindowManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;


# static fields
.field private static d:Lcom/vivo/assist/AssistWindowManager;

.field private static l:Landroid/view/WindowManager;

.field public static mBackgroundAssistButton:Lcom/vivo/assist/widget/AssistView;

.field public static mBackgroundAssistButtonParams:Landroid/view/WindowManager$LayoutParams;


# instance fields
.field private a:Landroid/view/WindowManager$LayoutParams;

.field private b:Landroid/view/WindowManager$LayoutParams;

.field private c:Landroid/content/Context;

.field private e:Landroid/view/WindowManager;

.field private f:Lcom/vivo/assist/widget/AssistView;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Z

.field private j:Lcom/vivo/assist/panel/Panel;

.field private k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->h:Z

    iput-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->i:Z

    iput-object p1, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    new-instance v0, Lcom/vivo/assist/widget/AssistView;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/vivo/assist/widget/AssistView;-><init>(Landroid/content/Context;Lcom/vivo/assist/AssistWindowManager;)V

    iput-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    new-instance v1, Lcom/vivo/assist/a;

    invoke-direct {v1, p0}, Lcom/vivo/assist/a;-><init>(Lcom/vivo/assist/AssistWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/vivo/assist/widget/AssistView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0, p0}, Lcom/vivo/assist/widget/AssistView;->setOnDragListener(Lcom/vivo/assist/widget/AssistView$OnDragStateChangedListener;)V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    const-string v1, "layout"

    const-string v2, "float_view_window_bg_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    new-instance v0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-direct {v0, v1, p0, v2}, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;-><init>(Landroid/content/Context;Lcom/vivo/assist/AssistWindowManager;Landroid/view/View;)V

    iput-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->j:Lcom/vivo/assist/panel/Panel;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, Lcom/vivo/assist/AssistWindowManager;->l:Landroid/view/WindowManager;

    if-nez v0, :cond_76

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/vivo/assist/AssistWindowManager;->l:Landroid/view/WindowManager;

    :cond_76
    sget-object v0, Lcom/vivo/assist/AssistWindowManager;->l:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/vivo/assist/widget/AssistView;->viewWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/vivo/assist/widget/AssistView;->viewHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-void
.end method

.method static synthetic a(Lcom/vivo/assist/AssistWindowManager;)Lcom/vivo/assist/widget/AssistView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/assist/AssistWindowManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->h:Z

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/assist/AssistWindowManager;
    .registers 2

    sget-object v0, Lcom/vivo/assist/AssistWindowManager;->d:Lcom/vivo/assist/AssistWindowManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/vivo/assist/AssistWindowManager;

    invoke-direct {v0, p0}, Lcom/vivo/assist/AssistWindowManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/assist/AssistWindowManager;->d:Lcom/vivo/assist/AssistWindowManager;

    :cond_b
    sget-object v0, Lcom/vivo/assist/AssistWindowManager;->d:Lcom/vivo/assist/AssistWindowManager;

    return-object v0
.end method


# virtual methods
.method public getAssistHeight()I
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getAssistWidth()I
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getGetDisplayHeight()I
    .registers 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------height: -----------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getGetDisplayWidth()I
    .registers 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------width: -----------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getLcdHeight()I
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLcdWidth()I
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public getPanel()Lcom/vivo/assist/panel/Panel;
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->j:Lcom/vivo/assist/panel/Panel;

    return-object v0
.end method

.method public getStatusHeight()I
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->getStatusHeight()I

    move-result v0

    return v0
.end method

.method public hideAssistButton()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->i:Z

    if-eqz v0, :cond_16

    :try_start_f
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_1a

    :cond_16
    :goto_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->i:Z

    goto :goto_a

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public hideAssistButtonNotification()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->hideNotificationIcon()V

    return-void
.end method

.method public hideAssistPanel()V
    .registers 3

    iget-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->h:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_24

    :goto_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->h:Z

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->OnAssistViewHideAssistPanelClickListener()V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->showNotificationIcon()V

    goto :goto_e

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public initAssistPanel(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    return-void
.end method

.method public onDragStateChanaged(I)V
    .registers 3

    if-nez p1, :cond_9

    iget-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->h:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->hideAssistPanel()V

    :cond_9
    return-void
.end method

.method public removeAssistButton()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopAllTask()V

    :cond_a
    sput-object v1, Lcom/vivo/assist/AssistWindowManager;->d:Lcom/vivo/assist/AssistWindowManager;

    sput-object v1, Lcom/vivo/assist/AssistWindowManager;->mBackgroundAssistButton:Lcom/vivo/assist/widget/AssistView;

    sput-object v1, Lcom/vivo/assist/AssistWindowManager;->mBackgroundAssistButtonParams:Landroid/view/WindowManager$LayoutParams;

    sput-object v1, Lcom/vivo/assist/AssistWindowManager;->l:Landroid/view/WindowManager;

    return-void
.end method

.method public removeVmView()V
    .registers 4

    const-string v0, "AssistWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---removeVmView-----mButtonShown\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vivo/assist/AssistWindowManager;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPanelShown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/assist/AssistWindowManager;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_22
    iget-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->i:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->i:Z

    :cond_30
    iget-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->h:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->h:Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3e} :catch_3f

    :cond_3e
    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method

.method public resetAssistButtonPos()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public restoreAssistButton()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0, v1}, Lcom/vivo/assist/widget/AssistView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setGiftShowNotification(I)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->j:Lcom/vivo/assist/panel/Panel;

    invoke-interface {v0, p1}, Lcom/vivo/assist/panel/Panel;->setGiftShowNotification(I)V

    return-void
.end method

.method public setPersonalShowNotification(I)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->j:Lcom/vivo/assist/panel/Panel;

    invoke-interface {v0, p1}, Lcom/vivo/assist/panel/Panel;->setPersonalShowNotification(I)V

    return-void
.end method

.method public showAssistButton(II)V
    .registers 11

    const/4 v7, 0x2

    const/16 v6, -0xa

    const/16 v5, 0x11

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->i:Z

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showAssistButton in point( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/assist/util/LogUtil;->i(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    add-int/lit16 v0, v0, -0xc8

    if-lt p1, v0, :cond_e5

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v1, p1, -0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_3d
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    if-lt p2, v0, :cond_f5

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v1, p2, -0x32

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_4b
    :try_start_4b
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_54} :catch_105

    :goto_54
    const-string v1, "AssistViewshowAssistButton"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "mContext.getResources().getConfiguration().orientation"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_9c

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v7, :cond_b4

    :cond_9c
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, v3, :cond_15c

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_15c

    :cond_b4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_15c

    const/16 v0, 0x96

    if-ge p1, v0, :cond_110

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_da

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_da

    sput v6, Lcom/vivo/assist/widget/AssistView;->rawX:I

    sput p2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    :cond_da
    const-string v0, "AssistView"

    const-string v1, "nin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    :goto_e1
    iput-boolean v3, p0, Lcom/vivo/assist/AssistWindowManager;->i:Z

    goto/16 :goto_b

    :cond_e5
    if-gez p1, :cond_ef

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xa

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_3d

    :cond_ef
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_3d

    :cond_f5
    if-gez p2, :cond_ff

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xa

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_4b

    :cond_ff
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_4b

    :catch_105
    move-exception v0

    const-string v1, "----\u663e\u793a\u60ac\u6d6e\u7a97\u6709\u5f02\u5e38\uff0c\u88ab\u6355\u83b7-----"

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_54

    :cond_110
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    add-int/lit16 v0, v0, -0x96

    if-le p1, v0, :cond_144

    const-string v0, "AssistView"

    const-string v1, "ten"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_e1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_e1

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    sput p2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    goto :goto_e1

    :cond_144
    const-string v0, "AssistView"

    const-string v1, "ele"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    iput-boolean v4, v0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    sput-boolean v4, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->startAlphaTask()V

    goto :goto_e1

    :cond_15c
    const/16 v0, 0x96

    if-ge p1, v0, :cond_1b7

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_178

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v7, :cond_190

    :cond_178
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, v3, :cond_19a

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_19a

    :cond_190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_19a

    sput v6, Lcom/vivo/assist/widget/AssistView;->rawX:I

    sput p2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    goto/16 :goto_b

    :cond_19a
    const-string v0, "AssistView"

    const-string v1, "nin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopAlphaTask()V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->startTask()V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    iput-boolean v4, v0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    sput-boolean v3, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    sput v6, Lcom/vivo/assist/widget/AssistView;->rawX:I

    sput p2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    goto/16 :goto_e1

    :cond_1b7
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    add-int/lit16 v0, v0, -0x96

    if-le p1, v0, :cond_1e2

    const-string v0, "AssistView"

    const-string v1, "ten"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopAlphaTask()V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->startTask()V

    sput-boolean v4, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    iput-boolean v3, v0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    sput p2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    goto/16 :goto_e1

    :cond_1e2
    const-string v0, "AssistView"

    const-string v1, "ele"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    iput-boolean v4, v0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    sput-boolean v4, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->startAlphaTask()V

    goto/16 :goto_e1
.end method

.method public showAssistPanel()V
    .registers 13

    const/16 v11, 0x21c

    const/16 v10, 0x1e4

    const/16 v9, 0x1e0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/vivo/assist/AssistWindowManager;->h:Z

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    const-string v0, "11111111111111111"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getLcdWidth()I

    move-result v4

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getLcdHeight()I

    move-result v5

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0, v3}, Lcom/vivo/assist/widget/AssistView;->getRectInFrame(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "rect: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " left: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " top: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " right: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " bottom: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iget v0, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_24c

    const-string v0, "222222222222222222222222"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget v0, v3, Landroid/graphics/Rect;->right:I

    iput v0, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ge v0, v5, :cond_ac

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    iget-object v5, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v0, v5

    iput v0, v4, Landroid/graphics/Point;->x:I

    const-string v0, "44444444444444444444"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    :cond_ac
    const-string v0, "AssistivePoint"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "location.x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    :goto_c2
    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v3}, Lcom/vivo/assist/widget/AssistView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iput v0, v4, Landroid/graphics/Point;->y:I

    iget v0, v4, Landroid/graphics/Point;->x:I

    iget v3, v4, Landroid/graphics/Point;->y:I

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "showAssistPanel in point( "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )getGetDisplayWidth()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/assist/util/LogUtil;->i(ILjava/lang/String;)V

    if-ltz v0, :cond_23f

    if-ltz v3, :cond_23f

    const-string v4, "AssistivePoint"

    const-string v5, "mAssistButton.isAlign(AlignStrategy.bottom)mAssistButton.isAlign(AlignStrategy.RIGHT"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_392

    iget-object v4, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    const/16 v5, 0x32

    invoke-virtual {v4, v5, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    iget-object v5, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    const-string v7, "drawable"

    const-string v8, "float_view_window_bg"

    invoke-static {v6, v7, v8}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_339

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    const/16 v4, 0x5a0

    if-ne v0, v4, :cond_2ff

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v3, v3, -0x64

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_155
    :goto_155
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string v3, "AssistivePoint"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AssistivePoint"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mPanelView.getMeasuredWidth()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mAssistButtonParams.x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mAssistButton.getWidth()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v5}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "location[0]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "location[1]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mPanelView.getHeight()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v3}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_1f2

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v1

    iget-object v3, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1f2
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->j:Lcom/vivo/assist/panel/Panel;

    invoke-interface {v0}, Lcom/vivo/assist/panel/Panel;->getPanelLayouttwoVisiblity()I

    move-result v0

    if-nez v0, :cond_22d

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_22d

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v3}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ge v0, v1, :cond_22d

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v1

    iget-object v3, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_22d
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v1}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/vivo/assist/AssistWindowManager;->updateAssistButtonPos(II)V

    :cond_23f
    :goto_23f
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    iget-object v3, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p0, Lcom/vivo/assist/AssistWindowManager;->h:Z

    goto/16 :goto_c

    :cond_24c
    iget v0, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-lt v0, v5, :cond_c2

    const-string v0, "3333333333333333333"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->getMeasuredWidth()I

    move-result v5

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->getMeasuredHeight()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "assitBtnWidth: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " assitBtnHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v0, v6

    iput v0, v4, Landroid/graphics/Point;->x:I

    iget v0, v4, Landroid/graphics/Point;->x:I

    if-gez v0, :cond_299

    iput v1, v4, Landroid/graphics/Point;->x:I

    const-string v0, "55555555555555555"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    :cond_299
    iget v0, v4, Landroid/graphics/Point;->x:I

    if-ge v0, v5, :cond_2c9

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v6, "AssistWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "---------oritation\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v2, :cond_2fd

    move v0, v1

    :goto_2c0
    if-eqz v0, :cond_2c9

    iput v5, v4, Landroid/graphics/Point;->x:I

    const-string v0, "666666666666666666666"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    :cond_2c9
    const-string v0, "AssistivePoint"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "location.x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rect.left "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mPanelView.getMeasuredWidth() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c2

    :cond_2fd
    move v0, v2

    goto :goto_2c0

    :cond_2ff
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    const/16 v4, 0x438

    if-ne v0, v4, :cond_30f

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v3, v3, -0x5a

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_155

    :cond_30f
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    const/16 v4, 0x2d0

    if-ne v0, v4, :cond_31f

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v3, v3, -0x3c

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_155

    :cond_31f
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    if-eq v0, v11, :cond_38a

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    if-eq v0, v9, :cond_331

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    if-ne v0, v10, :cond_155

    :cond_331
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v3, v3, -0x28

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_155

    :cond_339
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_155

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    const/16 v4, 0x5a0

    if-ne v0, v4, :cond_358

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v3, v3, -0x64

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_155

    :cond_358
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    const/16 v4, 0x438

    if-ne v0, v4, :cond_368

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v3, v3, -0x5a

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_155

    :cond_368
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    const/16 v4, 0x2d0

    if-ne v0, v4, :cond_378

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v3, v3, -0x3c

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_155

    :cond_378
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    if-eq v0, v11, :cond_38a

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    if-eq v0, v9, :cond_38a

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    if-ne v0, v10, :cond_155

    :cond_38a
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v3, v3, -0x28

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_155

    :cond_392
    iget-object v4, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_23f

    iget-object v4, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    const/16 v5, 0x32

    invoke-virtual {v4, v1, v1, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    iget-object v4, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "float_view_window_bg_right"

    invoke-static {v5, v6, v7}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_479

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    const/16 v1, 0x5a0

    if-ne v0, v1, :cond_441

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v1, v3, -0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_3de
    :goto_3de
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v1, v3

    if-ge v0, v1, :cond_3f9

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_3f9
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->j:Lcom/vivo/assist/panel/Panel;

    invoke-interface {v0}, Lcom/vivo/assist/panel/Panel;->getPanelLayouttwoVisiblity()I

    move-result v0

    if-nez v0, :cond_434

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_434

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v3}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ge v0, v1, :cond_434

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v1

    iget-object v3, p0, Lcom/vivo/assist/AssistWindowManager;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_434
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/vivo/assist/AssistWindowManager;->updateAssistButtonPos(II)V

    goto/16 :goto_23f

    :cond_441
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    const/16 v1, 0x438

    if-ne v0, v1, :cond_450

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v1, v3, -0x5a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3de

    :cond_450
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_45f

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v1, v3, -0x3c

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3de

    :cond_45f
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    if-eq v0, v11, :cond_4ca

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    if-eq v0, v9, :cond_471

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v0

    if-ne v0, v10, :cond_3de

    :cond_471
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v1, v3, -0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3de

    :cond_479
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3de

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    const/16 v1, 0x5a0

    if-ne v0, v1, :cond_498

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v1, v3, -0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3de

    :cond_498
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    const/16 v1, 0x438

    if-ne v0, v1, :cond_4a8

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v1, v3, -0x5a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3de

    :cond_4a8
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_4b8

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v1, v3, -0x3c

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3de

    :cond_4b8
    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    if-eq v0, v11, :cond_4ca

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    if-eq v0, v9, :cond_4ca

    invoke-virtual {p0}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayHeight()I

    move-result v0

    if-ne v0, v10, :cond_3de

    :cond_4ca
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v1, v3, -0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3de
.end method

.method public updateAlphaAssistButtonPos(II)V
    .registers 6

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x228

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :try_start_19
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_23

    goto :goto_a

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public updateAssistButtonPos(II)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v0, "AssistView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " mAssistButtonParams.x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mAssistButtonParams.y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_3d

    move p1, v1

    :cond_3d
    if-gez p2, :cond_40

    move p2, v1

    :cond_40
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setCoordinatex(I)V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0, p2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setCoordinatey(I)V

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :try_start_50
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_59} :catch_5a

    goto :goto_b

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public updateHideAssistButtonPos(II)V
    .registers 6

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x228

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :try_start_19
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_23

    goto :goto_a

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public updateHidingAssistButtonPos()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x228

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :try_start_11
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_a

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public updateRotateAssistButtonPos(II)V
    .registers 6

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :try_start_19
    iget-object v0, p0, Lcom/vivo/assist/AssistWindowManager;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/assist/AssistWindowManager;->f:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, p0, Lcom/vivo/assist/AssistWindowManager;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_23

    goto :goto_a

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method
