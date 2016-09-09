.class public Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;
.super Lcom/baidu/paysdk/ui/PayBaseActivity;

# interfaces
.implements Lcom/baidu/wallet/base/widget/SixNumberPwdView$OnPwdChangedListener;


# instance fields
.field private A:Landroid/view/animation/Animation;

.field private B:Landroid/view/animation/Animation;

.field private C:Landroid/view/animation/Animation;

.field private D:Landroid/view/animation/Animation;

.field private E:Landroid/view/animation/Animation;

.field private F:Landroid/view/animation/Animation;

.field private G:Z

.field private a:I

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

.field private e:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/baidu/wallet/base/widget/SafeScrollView;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Lcom/baidu/paysdk/ui/widget/CashdeskProgessView;

.field private r:Lcom/baidu/paysdk/datamodel/PwdRequest;

.field private s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

.field private t:Lcom/baidu/paysdk/datamodel/PayRequest;

.field private u:Lcom/baidu/paysdk/beans/o;

.field private v:Lcom/baidu/paysdk/beans/k;

.field private w:Lcom/baidu/paysdk/beans/i;

.field private x:Lcom/baidu/paysdk/beans/p;

.field private y:Lcom/baidu/paysdk/beans/b;

.field private z:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;-><init>()V

    iput v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->a:I

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->G:Z

    return-void
.end method

.method private a()Ljava/util/ArrayList;
    .registers 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mOrderNo:Ljava/lang/String;

    :goto_18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_1c
    const-string v0, ""

    goto :goto_d

    :cond_1f
    const-string v0, ""

    goto :goto_18
.end method

.method static synthetic a(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/View;ILandroid/view/animation/Animation;)V
    .registers 14

    new-instance v0, Lcom/baidu/paysdk/ui/cb;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p6

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/paysdk/ui/cb;-><init>(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/View;I)V

    invoke-virtual {p3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .registers 6

    const-string v0, "layout_set"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->b:Landroid/view/View;

    const-string v0, "pwd_tip_set"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->c:Landroid/widget/TextView;

    const-string v0, "pwd_input_box_set"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->d:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->d:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->setShowInputMethod(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->d:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->addSixNumberPwdChangedListenter(Lcom/baidu/wallet/base/widget/SixNumberPwdView$OnPwdChangedListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->d:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "pwd_input"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->e:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->e:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->p:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->o:Lcom/baidu/wallet/base/widget/SafeScrollView;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->b:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->initSafeKeyBoardParams(Landroid/view/ViewGroup;Lcom/baidu/wallet/base/widget/SafeScrollView;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->e:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->setGap(I)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private c()V
    .registers 6

    const-string v0, "layout_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->f:Landroid/view/View;

    const-string v0, "pwd_tip_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->g:Landroid/widget/TextView;

    const-string v0, "pwd_input_box_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->h:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->h:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->setShowInputMethod(Z)V

    const-string v0, "error_area_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->j:Landroid/view/View;

    const-string v0, "error_tip_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "protocol_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_protocol"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->m:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_protocol_text"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->n:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->e()V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->h()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->h:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->addSixNumberPwdChangedListenter(Lcom/baidu/wallet/base/widget/SixNumberPwdView$OnPwdChangedListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->h:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "pwd_input"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->k:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->k:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->p:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->o:Lcom/baidu/wallet/base/widget/SafeScrollView;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->f:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->initSafeKeyBoardParams(Landroid/view/ViewGroup;Lcom/baidu/wallet/base/widget/SafeScrollView;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->k:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->setGap(I)V

    return-void
.end method

.method static synthetic d(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)Lcom/baidu/wallet/base/widget/SafeScrollView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->o:Lcom/baidu/wallet/base/widget/SafeScrollView;

    return-object v0
.end method

.method private d()V
    .registers 6

    const-string v0, "ebpay_pwd_changed"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->a(I)V

    iget v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->a:I

    iget v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->o()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->a:I

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->resetPwdConfirm()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->k:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->p:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->o:Lcom/baidu/wallet/base/widget/SafeScrollView;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->f:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->initSafeKeyBoardParams(Landroid/view/ViewGroup;Lcom/baidu/wallet/base/widget/SafeScrollView;Landroid/view/View;Z)V

    goto :goto_22
.end method

.method static synthetic e(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->e:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    return-object v0
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method static synthetic f(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method private f()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v1, v1, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v1, v1, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_34

    :cond_12
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isRealPay()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v2, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v2, :cond_35

    iget-object v2, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v2}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->isNeedPayPwdtoPay()Z

    move-result v2

    if-nez v2, :cond_35

    :cond_34
    :goto_34
    return v0

    :cond_35
    if-eqz v1, :cond_34

    iget-object v2, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v2, :cond_34

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->getPassfreeMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->isHasShowPassFreeCheckBox()Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v0, 0x1

    goto :goto_34
.end method

.method static synthetic g(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->k:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    return-object v0
.end method

.method private g()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setHasShowPassFreeCheckBox(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    const-string v1, "1"

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mNeedOpenPassFree:Ljava/lang/String;

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_48

    :cond_31
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isRealPay()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "newCustomerChangePassFree"

    const-string v1, ""

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->p()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :cond_48
    return-void

    :cond_49
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    const-string v1, "2"

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mNeedOpenPassFree:Ljava/lang/String;

    goto :goto_20

    :cond_50
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setHasShowPassFreeCheckBox(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    const-string v1, "0"

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mNeedOpenPassFree:Ljava/lang/String;

    goto :goto_20
.end method

.method private h()V
    .registers 8

    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v2, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v2}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->getPassfreeMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Lcom/baidu/paysdk/ui/ca;

    invoke-direct {v2, p0}, Lcom/baidu/paysdk/ui/ca;-><init>(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ebpay_pwdfree_agree"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->n:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->getPassfreeSelected()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_66
    return-void

    :cond_67
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_66

    :cond_6d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_66

    :cond_73
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_66
.end method

.method private i()V
    .registers 3

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->g()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    :cond_1a
    :goto_1a
    return-void

    :pswitch_1b
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->j()V

    goto :goto_1a

    :pswitch_1f
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->k()V

    goto :goto_1a

    :pswitch_23
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->j()V

    goto :goto_1a

    :pswitch_27
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->m()V

    goto :goto_1a

    :pswitch_2b
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->m()V

    goto :goto_1a

    :pswitch_2f
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->l()V

    goto :goto_1a

    :cond_33
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->n()V

    goto :goto_1a

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
    .end packed-switch
.end method

.method private j()V
    .registers 5

    const-string v1, "bindclickPay"

    const-string v2, ""

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_c
    invoke-static {p0, v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "@timePay"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_paying"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->x:Lcom/baidu/paysdk/beans/p;

    if-nez v0, :cond_40

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xd

    const-string v3, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/p;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->x:Lcom/baidu/paysdk/beans/p;

    :cond_40
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->x:Lcom/baidu/paysdk/beans/p;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/p;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->x:Lcom/baidu/paysdk/beans/p;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/p;->execBean()V

    return-void

    :cond_4b
    const-string v0, ""

    goto :goto_c
.end method

.method private k()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_safe_handle"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->y:Lcom/baidu/paysdk/beans/b;

    if-nez v0, :cond_26

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x201

    const-string v3, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/b;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->y:Lcom/baidu/paysdk/beans/b;

    :cond_26
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "@bindCard"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->y:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/b;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->y:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/b;->execBean()V

    return-void
.end method

.method private l()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_safe_handle"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->v:Lcom/baidu/paysdk/beans/k;

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x104

    const-string v3, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/k;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->v:Lcom/baidu/paysdk/beans/k;

    :cond_2e
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "@findPassword"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->v:Lcom/baidu/paysdk/beans/k;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/k;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->v:Lcom/baidu/paysdk/beans/k;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/k;->execBean()V

    return-void
.end method

.method private m()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_safe_handle"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->w:Lcom/baidu/paysdk/beans/i;

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x20c

    const-string v3, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/i;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->w:Lcom/baidu/paysdk/beans/i;

    :cond_2e
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "@findPwdResetPWD"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->w:Lcom/baidu/paysdk/beans/i;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/i;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->w:Lcom/baidu/paysdk/beans/i;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/i;->execBean()V

    return-void
.end method

.method private n()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    const/4 v1, 0x3

    iput v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mRequestType:I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_safe_handle"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->u:Lcom/baidu/paysdk/beans/o;

    if-nez v0, :cond_33

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x103

    const-string v3, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/o;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->u:Lcom/baidu/paysdk/beans/o;

    :cond_33
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "@modifyPassword"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->u:Lcom/baidu/paysdk/beans/o;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/o;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->u:Lcom/baidu/paysdk/beans/o;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/o;->execBean()V

    return-void
.end method

.method private o()V
    .registers 8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->h:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->d:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->f:Landroid/view/View;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->F:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->b:Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->E:Landroid/view/animation/Animation;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->a(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/View;ILandroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->e()V

    return-void
.end method

.method private p()Ljava/util/ArrayList;
    .registers 4

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-nez v0, :cond_14

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :goto_13
    return-object v0

    :cond_14
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v2, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v2, :cond_44

    iget-object v2, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->passfree_selected:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->passfree_selected:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_33
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mNeedOpenPassFree:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, ""

    :goto_3f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_13

    :cond_44
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_4a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mNeedOpenPassFree:Ljava/lang/String;

    goto :goto_3f
.end method


# virtual methods
.method public getPwdConfirm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->h:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->getPwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPwdSet()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->d:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->getPwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleFailure(IILjava/lang/String;)V
    .registers 10

    const/16 v2, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->o()V

    const v0, 0x186c6

    if-ne p2, v0, :cond_1f

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1f

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3, v5}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->o()V

    :goto_1e
    return-void

    :cond_1f
    const/16 v0, 0x103

    if-ne p1, v0, :cond_53

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "@modifyPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failure"

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/baidu/wallet/base/controllers/PasswordController;->editPwdFail(ILjava/lang/String;)V

    iput-object p3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDialogMsg:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v4, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_1e

    :cond_53
    const/16 v0, 0x104

    if-ne p1, v0, :cond_87

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const-string v0, "@findPassword"

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failure"

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPwdFail(ILjava/lang/String;)V

    goto :goto_1e

    :cond_87
    const/16 v0, 0x20c

    if-ne p1, v0, :cond_dd

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c5

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const-string v0, "@completeCard"

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPassByUserFail(Ljava/lang/String;)V

    :cond_a7
    :goto_a7
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failure"

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_c5
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a7

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPwdFail(ILjava/lang/String;)V

    const-string v0, "@findPwdResetPWD"

    goto :goto_a7

    :cond_dd
    if-eq p1, v2, :cond_e3

    const/16 v0, 0x201

    if-ne p1, v0, :cond_120

    :cond_e3
    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iput-object p3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDialogMsg:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v4, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    if-ne p1, v2, :cond_100

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bindPayAcceptFail"

    const-string v2, ""

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_100
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "@bindCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failure"

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_120
    const/16 v0, 0x106

    if-ne p1, v0, :cond_163

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "@createPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failure"

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x186d0

    if-eq p2, v0, :cond_14f

    const v0, 0x186cd

    if-ne p2, v0, :cond_15b

    :cond_14f
    invoke-static {p0, p3, v5}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_152
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPwdFail(ILjava/lang/String;)V

    goto/16 :goto_1e

    :cond_15b
    iput-object p3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDialogMsg:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v4, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_152

    :cond_163
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->handleFailure(IILjava/lang/String;)V

    goto/16 :goto_1e
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x103

    if-ne p1, v0, :cond_36

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->editPwdSucceed(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_modify_success"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "@modifyPassword"

    const-string v2, ""

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->clearTasksWithFlag(I)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    const/16 v0, 0x104

    if-ne p1, v0, :cond_56

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const-string v0, "@findPassword"

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    const-string v3, "0"

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPwdSucceed(Ljava/lang/String;)V

    goto :goto_35

    :cond_56
    const/16 v0, 0x20c

    if-ne p1, v0, :cond_9e

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7e

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "@completeCard"

    const-string v2, ""

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPassByUserSucceed(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->clearTasksWithFlag(I)V

    goto :goto_35

    :cond_7e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_35

    const-string v0, "@findPwdResetPWD"

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    const-string v3, "0"

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPwdSucceed(Ljava/lang/String;)V

    goto :goto_35

    :cond_9e
    const/16 v0, 0x201

    if-ne p1, v0, :cond_de

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "@bindCard"

    const-string v2, ""

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_d6

    const-string v0, "pay_from_bind_card"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getPayFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/baidu/wallet/base/controllers/PayController;->bindExtSuccess(Lcom/baidu/wallet/core/BaseActivity;Ljava/lang/Object;)V

    :goto_cb
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPassByUserSucceed(Ljava/lang/String;)V

    goto/16 :goto_35

    :cond_d6
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/controllers/PayController;->bindSuccess()V

    goto :goto_cb

    :cond_de
    const/16 v0, 0x106

    if-ne p1, v0, :cond_fd

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "@createPassword"

    const-string v2, ""

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPwdSucceed(Ljava/lang/String;)V

    goto/16 :goto_35

    :cond_fd
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->handleResponse(ILjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_35
.end method

.method public onBackPressed()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->o()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pwd_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->removeBeanRequestFromCache(Ljava/lang/String;)V

    :cond_20
    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onBackPressed()V

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->setFlagPaySdk()V

    if-eqz p1, :cond_4f

    const-string v0, "mPwdRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1b

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-eqz v1, :cond_1b

    check-cast v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    :cond_1b
    const-string v0, "mBindRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_2b

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v1, :cond_2b

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    :cond_2b
    const-string v0, "mPayRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_3b

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v1, :cond_3b

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    :cond_3b
    :goto_3b
    const-string v0, "ebpay_pwd_set_tip"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ebpay_pwd_confim_tip"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-nez v1, :cond_7a

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->callBackClientCancel()V

    :goto_4e
    return-void

    :cond_4f
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pwd_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    goto :goto_3b

    :cond_7a
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v1, v1, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    if-eq v1, v6, :cond_ca

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v1, :cond_88

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->callBackClientCancel()V

    goto :goto_4e

    :cond_88
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isRealPay()Z

    move-result v1

    if-eqz v1, :cond_ad

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-nez v0, :cond_98

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->callBackClientCancel()V

    goto :goto_4e

    :cond_98
    const-string v0, "ebpay_pwd_confim_tip_pay"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :cond_ad
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-eq v1, v5, :cond_b9

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-nez v1, :cond_bb

    :cond_b9
    iput-boolean v5, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->G:Z

    :cond_bb
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :cond_ca
    move-object v1, v0

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/PwdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v0, v3, v4}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    const-string v0, "ebpay_layout_setandconfirm_pwd"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "scrollview"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SafeScrollView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->o:Lcom/baidu/wallet/base/widget/SafeScrollView;

    const-string v0, "root_view"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->p:Landroid/widget/RelativeLayout;

    const-string v0, "wallet_base_slide_to_left"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getAnimation(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->A:Landroid/view/animation/Animation;

    const-string v0, "wallet_base_slide_from_right"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getAnimation(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->B:Landroid/view/animation/Animation;

    const-string v0, "wallet_base_slide_to_right"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getAnimation(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->C:Landroid/view/animation/Animation;

    const-string v0, "wallet_base_slide_from_left"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getAnimation(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->D:Landroid/view/animation/Animation;

    const-string v0, "wallet_base_alpha_pwd_show"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getAnimation(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->E:Landroid/view/animation/Animation;

    const-string v0, "wallet_base_alpha_pwd_hide"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getAnimation(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->F:Landroid/view/animation/Animation;

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->G:Z

    if-ne v0, v5, :cond_158

    const-string v0, "stepbar"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/ui/widget/CashdeskProgessView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->q:Lcom/baidu/paysdk/ui/widget/CashdeskProgessView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->q:Lcom/baidu/paysdk/ui/widget/CashdeskProgessView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/baidu/paysdk/ui/widget/CashdeskProgessView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->q:Lcom/baidu/paysdk/ui/widget/CashdeskProgessView;

    invoke-virtual {v0, v7}, Lcom/baidu/paysdk/ui/widget/CashdeskProgessView;->configTotalStep(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->q:Lcom/baidu/paysdk/ui/widget/CashdeskProgessView;

    invoke-virtual {v0, v7}, Lcom/baidu/paysdk/ui/widget/CashdeskProgessView;->configCurrentStep(I)V

    :cond_158
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->b()V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->c()V

    const-string v0, "ebpay_set_phone_paycode"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->initActionBar(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->e:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    new-instance v1, Lcom/baidu/paysdk/ui/by;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/by;-><init>(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->k:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    new-instance v1, Lcom/baidu/paysdk/ui/bz;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/bz;-><init>(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_4e
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onDestroy()V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    const-string v1, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->z:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->z:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->z:Landroid/os/CountDownTimer;

    :cond_18
    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onPause()V

    const-string v0, "PwdSetAndConfirmActivity"

    invoke-static {p0, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onPwdChanged(I)V
    .registers 9

    const/4 v0, 0x6

    if-ne p1, v0, :cond_47

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdSet()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->b:Landroid/view/View;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->F:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->f:Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->E:Landroid/view/animation/Animation;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->a(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/View;ILandroid/view/animation/Animation;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->i()V

    goto :goto_22

    :cond_43
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->d()V

    goto :goto_22

    :cond_47
    if-lez p1, :cond_22

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->e()V

    goto :goto_22
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->d:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    :cond_10
    const-string v0, "PwdSetAndConfirmActivity"

    invoke-static {p0, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "mPwdRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->r:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v0, :cond_15

    const-string v0, "mBindRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->s:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_15
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_20

    const-string v0, "mPayRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->t:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_20
    return-void
.end method

.method public resetPwdConfirm()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->h:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    return-void
.end method

.method public resetPwdSet()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->d:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    return-void
.end method
