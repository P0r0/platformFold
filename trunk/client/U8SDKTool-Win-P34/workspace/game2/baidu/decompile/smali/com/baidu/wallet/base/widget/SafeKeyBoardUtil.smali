.class public final Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

.field private c:Landroid/view/ViewGroup;

.field private d:Lcom/baidu/wallet/base/widget/SafeScrollView;

.field private e:Landroid/view/View;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field public mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->h:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;)Lcom/baidu/wallet/base/widget/SafeScrollView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    return-object v0
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->f:I

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;->getPopupWindowHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->i:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/widget/SafeScrollView;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/SafeScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->f:I

    iget v3, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->i:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int v0, v2, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    new-instance v1, Lcom/baidu/wallet/base/widget/al;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/base/widget/al;-><init>(Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/widget/SafeScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->a()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;)I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->f:I

    return v0
.end method

.method static synthetic e(Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;)I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->i:I

    return v0
.end method

.method static synthetic f(Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;)Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->b:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;)I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->h:I

    return v0
.end method


# virtual methods
.method public hideSoftInputMethod(Landroid/widget/EditText;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->b:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_24

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setInputType(I)V

    :goto_23
    return-void

    :cond_24
    :try_start_24
    const-class v0, Landroid/widget/EditText;

    const-string v1, "setSoftInputShownOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_46} :catch_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_46} :catch_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_46} :catch_93
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_46} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_46} :catch_a6

    goto :goto_23

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    :try_start_4f
    const-class v0, Landroid/widget/EditText;

    const-string v1, "setShowSoftInputOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4f .. :try_end_71} :catch_72
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_71} :catch_7e

    goto :goto_23

    :catch_72
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_23

    :catch_7e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_23

    :catch_8a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_23

    :catch_93
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_23

    :catch_9c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_23

    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_23
.end method

.method public hideSoftKeyBoard()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->b()V

    :cond_17
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/wallet/base/widget/SafeScrollView;)V
    .registers 6

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_12
    new-instance v0, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    invoke-direct {v0, p1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    :cond_19
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_33

    :cond_25
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->g:I

    :cond_33
    :goto_33
    return-void

    :cond_34
    const-string v0, "gaolou"

    const-string v1, "SafeKeyBoardUtil.init ++ mScrollView == null"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->errord(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method

.method public showSoftKeyBoard(Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;Landroid/view/View;)V
    .registers 7

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->b:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    iput-object p2, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->b:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->e:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_1d

    :cond_15
    const-string v0, "gaolou"

    const-string v1, "SafeKeyBoardUtil.showSoftKeyBoard ++ View == null"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->errord(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;->setSafeEditTet(Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;->setScrollView(Lcom/baidu/wallet/base/widget/SafeScrollView;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->b:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->hideSoftInputMethod(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeScrollView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->b:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->d:Lcom/baidu/wallet/base/widget/SafeScrollView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeScrollView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    invoke-virtual {p1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->getUseRandKey()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;->initKeyNum(Z)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->c:Landroid/view/ViewGroup;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;->mPopupWindow:Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyBoardPopupWindow;->update()V

    :cond_69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/baidu/wallet/base/widget/aj;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/base/widget/aj;-><init>(Lcom/baidu/wallet/base/widget/SafeKeyBoardUtil;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1c
.end method
