.class public Lcom/duoku/platform/floatview/DKFloatWindow;
.super Lcom/duoku/platform/view/common/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/floatview/DKFloatWindow$a;,
        Lcom/duoku/platform/floatview/DKFloatWindow$b;,
        Lcom/duoku/platform/floatview/DKFloatWindow$c;,
        Lcom/duoku/platform/floatview/DKFloatWindow$d;,
        Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;
    }
.end annotation


# static fields
.field private static final I:Ljava/lang/String;

.field public static a:Lcom/duoku/platform/h/t;


# instance fields
.field private A:Lcom/duoku/platform/view/common/b;

.field private B:Z

.field private final C:I

.field private final D:I

.field private final E:I

.field private F:Lcom/duoku/platform/floatview/DKFloatWindow$d;

.field private G:Z

.field private H:Ljava/lang/String;

.field private J:Landroid/animation/ObjectAnimator;

.field private K:Z

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private N:I

.field private O:I

.field private P:I

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/RelativeLayout$LayoutParams;

.field private S:Z

.field private T:Landroid/view/ViewGroup$LayoutParams;

.field private U:Landroid/view/View;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/TextView;

.field private X:Landroid/widget/TextView;

.field private Y:Ljava/lang/String;

.field private Z:I

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:I

.field private ag:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Lcom/duoku/platform/floatview/DKFloatWindow$c;

.field private am:Landroid/animation/ValueAnimator;

.field private an:Z

.field private ao:Ljava/lang/String;

.field private ap:I

.field private aq:Landroid/os/Handler;

.field private ar:Landroid/view/View$OnTouchListener;

.field private as:Landroid/view/View$OnLongClickListener;

.field private at:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Landroid/content/Context;

.field private u:Landroid/view/Display;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/view/LayoutInflater;

.field private y:Landroid/view/WindowManager;

.field private z:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const-class v0, Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->I:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/16 v4, 0x8c

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/common/a;-><init>(Landroid/content/Context;)V

    .line 77
    iput v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->o:F

    iput v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->p:F

    .line 78
    iput-boolean v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->q:Z

    .line 79
    iput-boolean v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->r:Z

    .line 82
    iput-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    .line 83
    iput-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->u:Landroid/view/Display;

    .line 84
    iput-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->v:Landroid/view/View;

    .line 85
    iput-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    .line 87
    iput-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->y:Landroid/view/WindowManager;

    .line 90
    iput-boolean v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->B:Z

    .line 91
    iput v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->C:I

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->D:I

    .line 93
    const/16 v0, 0xa

    iput v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->E:I

    .line 96
    iput-boolean v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->G:Z

    .line 101
    iput-boolean v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->K:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->L:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->M:Ljava/util/ArrayList;

    .line 104
    iput v4, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->N:I

    .line 105
    iput v4, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->O:I

    .line 106
    iput v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->P:I

    .line 109
    iput-boolean v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->S:Z

    .line 111
    iput-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->U:Landroid/view/View;

    .line 116
    iput v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Z:I

    .line 122
    iput v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->af:I

    .line 131
    iput-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->am:Landroid/animation/ValueAnimator;

    .line 132
    iput-boolean v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->an:Z

    .line 260
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWindow$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$1;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->b:Landroid/view/View$OnClickListener;

    .line 280
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWindow$10;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$10;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->c:Landroid/view/View$OnClickListener;

    .line 893
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWindow$12;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$12;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->aq:Landroid/os/Handler;

    .line 916
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWindow$13;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$13;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ar:Landroid/view/View$OnTouchListener;

    .line 1212
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWindow$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$2;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->as:Landroid/view/View$OnLongClickListener;

    .line 1223
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWindow$3;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$3;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->at:Landroid/view/View$OnClickListener;

    .line 144
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    .line 145
    invoke-virtual {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->b()V

    .line 147
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "67"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "cp_floatwindow_show"

    invoke-virtual {v0, p1, v1}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    invoke-static {p1}, Lcom/duoku/platform/util/c;->a(Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method private A()V
    .registers 3

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1379
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1380
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->am:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1a

    .line 1382
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->am:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1384
    :cond_1a
    return-void

    .line 1375
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1377
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_6
.end method

.method static synthetic A(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 1

    .prologue
    .line 1389
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->B()V

    return-void
.end method

.method static synthetic B(Lcom/duoku/platform/floatview/DKFloatWindow;)I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->P:I

    return v0
.end method

.method private B()V
    .registers 4

    .prologue
    .line 1391
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 1393
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->G:Z

    if-nez v0, :cond_16

    .line 1395
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_suspension_window_normal"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1402
    :cond_15
    :goto_15
    return-void

    .line 1399
    :cond_16
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_suspension_window_normal_hint"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15
.end method

.method static synthetic C(Lcom/duoku/platform/floatview/DKFloatWindow;)F
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->m:F

    return v0
.end method

.method private C()V
    .registers 2

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    invoke-virtual {v0}, Lcom/duoku/platform/view/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1411
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    invoke-virtual {v0}, Lcom/duoku/platform/view/common/b;->b()V

    .line 1412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    .line 1413
    const/4 v0, 0x0

    sput-boolean v0, Lcom/duoku/platform/floatview/DKFloatWindow;->e:Z

    .line 1415
    :cond_17
    return-void
.end method

.method static synthetic D(Lcom/duoku/platform/floatview/DKFloatWindow;)F
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->n:F

    return v0
.end method

.method static synthetic E(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->at:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic F(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/animation/ValueAnimator;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->am:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic G(Lcom/duoku/platform/floatview/DKFloatWindow;)Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->S:Z

    return v0
.end method

.method static synthetic H(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 1

    .prologue
    .line 873
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->s()V

    return-void
.end method

.method static synthetic I(Lcom/duoku/platform/floatview/DKFloatWindow;)Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->r:Z

    return v0
.end method

.method static synthetic J(Lcom/duoku/platform/floatview/DKFloatWindow;)I
    .registers 2

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->t()I

    move-result v0

    return v0
.end method

.method static synthetic K(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 1

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->q()V

    return-void
.end method

.method static synthetic L(Lcom/duoku/platform/floatview/DKFloatWindow;)I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->s:I

    return v0
.end method

.method static synthetic M(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic N(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 1

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->n()V

    return-void
.end method

.method static synthetic O(Lcom/duoku/platform/floatview/DKFloatWindow;)Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->K:Z

    return v0
.end method

.method static synthetic P(Lcom/duoku/platform/floatview/DKFloatWindow;)I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->N:I

    return v0
.end method

.method static synthetic Q(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 1

    .prologue
    .line 1352
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->y()V

    return-void
.end method

.method static synthetic R(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->T:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic S(Lcom/duoku/platform/floatview/DKFloatWindow;)I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Z:I

    return v0
.end method

.method static synthetic T(Lcom/duoku/platform/floatview/DKFloatWindow;)I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->O:I

    return v0
.end method

.method static synthetic U(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/View$OnTouchListener;
    .registers 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ar:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic V(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/View$OnLongClickListener;
    .registers 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->as:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic W(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic X(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 1

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->m()V

    return-void
.end method

.method static synthetic Y(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->k()V

    return-void
.end method

.method static synthetic Z(Lcom/duoku/platform/floatview/DKFloatWindow;)Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->G:Z

    return v0
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private a(IIIIII)V
    .registers 11

    .prologue
    .line 564
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    .line 577
    :goto_4
    return-void

    .line 568
    :cond_5
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Q:Landroid/widget/TextView;

    .line 569
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Q:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Q:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 571
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Q:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 572
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 573
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->R:Landroid/widget/RelativeLayout$LayoutParams;

    .line 574
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Q:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 575
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->R:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 576
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->R:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method private a(J)V
    .registers 14

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->g()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->K:Z

    if-nez v0, :cond_22

    .line 1424
    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    const-string v3, "alpha"

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const-wide/16 v6, 0xc8

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    new-instance v9, Lcom/duoku/platform/floatview/DKFloatWindow$9;

    invoke-direct {v9, p0, p1, p2}, Lcom/duoku/platform/floatview/DKFloatWindow$9;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;J)V

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 1441
    :cond_22
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 586
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->an:Z

    .line 589
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/duoku/platform/floatview/DKFloatWindow$5;

    invoke-direct {v1, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$5;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    .line 630
    const-wide/16 v2, 0x1f4

    .line 589
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 632
    :cond_16
    return-void
.end method

.method static synthetic a(Landroid/widget/ImageView;)V
    .registers 1

    .prologue
    .line 72
    sput-object p0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow;F)V
    .registers 2

    .prologue
    .line 77
    iput p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->o:F

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow;I)V
    .registers 2

    .prologue
    .line 74
    iput p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->k:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow;IIIIII)V
    .registers 7

    .prologue
    .line 562
    invoke-direct/range {p0 .. p6}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(IIIIII)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow;J)V
    .registers 4

    .prologue
    .line 1420
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow;Landroid/animation/ValueAnimator;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->am:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow;Lcom/duoku/platform/view/common/b;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow;Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 10

    .prologue
    .line 734
    invoke-direct/range {p0 .. p8}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1446
    invoke-direct {p0, p1}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow;Z)V
    .registers 2

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->r:Z

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 736
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_73

    .line 738
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->J:Landroid/animation/ObjectAnimator;

    .line 739
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->J:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p5, p6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 740
    if-eqz p8, :cond_25

    .line 742
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->J:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 744
    :cond_25
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->L:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->J:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->J:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 746
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->I:Ljava/lang/String;

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "animator:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->d(Ljava/lang/String;)V

    .line 749
    :cond_73
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1449
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->A()V

    .line 1450
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z()V

    .line 1452
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->o()V

    .line 1454
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-class v2, Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1455
    const-string v1, "function_code"

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1458
    const-string v1, "dk_operate_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    :cond_25
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/duoku/platform/c/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 1461
    iput-boolean v4, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->G:Z

    .line 1462
    iput v4, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Z:I

    .line 1463
    return-void
.end method

.method static synthetic a(Z)V
    .registers 1

    .prologue
    .line 72
    sput-boolean p0, Lcom/duoku/platform/floatview/DKFloatWindow;->e:Z

    return-void
.end method

.method static synthetic aa(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->M:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/floatview/DKFloatWindow;)Lcom/duoku/platform/floatview/DKFloatWindow$c;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->al:Lcom/duoku/platform/floatview/DKFloatWindow$c;

    return-object v0
.end method

.method static synthetic b(I)V
    .registers 1

    .prologue
    .line 72
    sput p0, Lcom/duoku/platform/floatview/DKFloatWindow;->d:I

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/floatview/DKFloatWindow;F)V
    .registers 2

    .prologue
    .line 77
    iput p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->p:F

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/floatview/DKFloatWindow;I)V
    .registers 2

    .prologue
    .line 74
    iput p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->l:I

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/floatview/DKFloatWindow;Z)V
    .registers 2

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->K:Z

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/floatview/DKFloatWindow;)Lcom/duoku/platform/view/common/b;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    return-object v0
.end method

.method static synthetic c(Lcom/duoku/platform/floatview/DKFloatWindow;F)V
    .registers 2

    .prologue
    .line 75
    iput p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->m:F

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/floatview/DKFloatWindow;I)V
    .registers 2

    .prologue
    .line 106
    iput p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->P:I

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/floatview/DKFloatWindow;Z)V
    .registers 2

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->q:Z

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/floatview/DKFloatWindow;F)V
    .registers 2

    .prologue
    .line 76
    iput p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->n:F

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/floatview/DKFloatWindow;I)V
    .registers 2

    .prologue
    .line 104
    iput p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->N:I

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/floatview/DKFloatWindow;Z)V
    .registers 2

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->S:Z

    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->aa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/floatview/DKFloatWindow;I)V
    .registers 2

    .prologue
    .line 105
    iput p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->O:I

    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/floatview/DKFloatWindow;Z)V
    .registers 2

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->an:Z

    return-void
.end method

.method static synthetic f(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 1

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->C()V

    return-void
.end method

.method static synthetic h(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ah:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Landroid/widget/ImageView;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ai:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->aj:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 197
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 228
    :cond_9
    :goto_9
    return-void

    .line 202
    :cond_a
    const-string v0, "1"

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "2"

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 206
    :cond_1e
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ad:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ae:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 210
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    invoke-virtual {v0}, Lcom/duoku/platform/view/common/b;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 212
    :cond_3a
    sput-boolean v3, Lcom/duoku/platform/floatview/DKFloatWindow;->e:Z

    .line 213
    new-instance v0, Lcom/duoku/platform/view/common/b;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->U:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/view/common/b;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    .line 214
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const/high16 v2, 0x43600000    # 224.0f

    invoke-static {v1, v2}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/common/b;->c(I)V

    .line 215
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/common/b;->b(I)V

    .line 216
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_floatbigbubble"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/common/b;->a(I)V

    .line 217
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    invoke-virtual {v0, v3}, Lcom/duoku/platform/view/common/b;->a(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->c()Z

    .line 220
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    sget-object v1, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const/high16 v4, 0x42820000    # 65.0f

    invoke-static {v3, v4}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/view/common/b;->a(Landroid/view/View;III)V

    .line 222
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "69"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "cp_bigbubble_show"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWindow$c;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$c;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->al:Lcom/duoku/platform/floatview/DKFloatWindow$c;

    .line 226
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->al:Lcom/duoku/platform/floatview/DKFloatWindow$c;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9
.end method

.method static synthetic l(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ac:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 345
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v2

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    .line 346
    if-nez v2, :cond_15

    .line 402
    :cond_14
    :goto_14
    return-void

    .line 350
    :cond_15
    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v3

    .line 351
    if-eqz v3, :cond_14

    .line 356
    sget-object v4, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v3, v4, :cond_db

    .line 358
    const/4 v3, 0x3

    iput v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->s:I

    .line 359
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v3

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 361
    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 363
    iput v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->s:I

    .line 377
    :cond_3c
    :goto_3c
    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    if-eqz v2, :cond_ba

    .line 379
    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v2}, Lcom/duoku/platform/h/t;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->H:Ljava/lang/String;

    .line 380
    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v2}, Lcom/duoku/platform/h/t;->b()I

    move-result v2

    if-ne v2, v0, :cond_ec

    :goto_50
    iput-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->G:Z

    .line 382
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->e()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Z:I

    .line 383
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ag:Ljava/lang/String;

    .line 384
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->aa:Ljava/lang/String;

    .line 385
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ab:Ljava/lang/String;

    .line 386
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ac:Ljava/lang/String;

    .line 387
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Y:Ljava/lang/String;

    .line 388
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ad:Ljava/lang/String;

    .line 389
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ae:Ljava/lang/String;

    .line 390
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->m()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->af:I

    .line 391
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ah:Ljava/lang/String;

    .line 392
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ai:Ljava/lang/String;

    .line 393
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->aj:Ljava/lang/String;

    .line 394
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ak:Ljava/lang/String;

    .line 396
    :cond_ba
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dk_actionanno_actiontype"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ao:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/q;->f(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ap:I

    .line 398
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ap:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 400
    const/16 v0, 0x32

    iput v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ap:I

    goto/16 :goto_14

    .line 367
    :cond_db
    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->_91:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v3, v2, :cond_e4

    .line 369
    const/4 v2, 0x2

    iput v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->s:I

    goto/16 :goto_3c

    .line 371
    :cond_e4
    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Duoku:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v3, v2, :cond_3c

    .line 373
    iput v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->s:I

    goto/16 :goto_3c

    :cond_ec
    move v0, v1

    .line 380
    goto/16 :goto_50
.end method

.method static synthetic m(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ak:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .registers 7

    .prologue
    .line 526
    const/4 v0, 0x0

    .line 527
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ao:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 529
    const/16 v0, 0xdac

    .line 532
    :cond_b
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/duoku/platform/floatview/DKFloatWindow$4;

    invoke-direct {v2, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$4;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    .line 539
    int-to-long v4, v0

    .line 532
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    return-void
.end method

.method static synthetic n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private n()V
    .registers 11

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v5, 0x0

    .line 638
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z()V

    .line 639
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->A()V

    .line 640
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_e

    .line 675
    :goto_d
    return-void

    .line 644
    :cond_e
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 645
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    .line 646
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->B()V

    .line 647
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->T:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    new-instance v9, Lcom/duoku/platform/floatview/DKFloatWindow$6;

    invoke-direct {v9, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$6;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    .line 657
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->P:I

    packed-switch v0, :pswitch_data_7a

    goto :goto_d

    .line 660
    :pswitch_33
    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    const-string v3, "x"

    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->N:I

    neg-int v0, v0

    int-to-float v4, v0

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_d

    .line 663
    :pswitch_45
    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    const-string v3, "y"

    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->O:I

    neg-int v0, v0

    int-to-float v4, v0

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_d

    .line 666
    :pswitch_57
    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    const-string v3, "x"

    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->N:I

    int-to-float v4, v0

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_d

    .line 669
    :pswitch_68
    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    const-string v3, "y"

    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->O:I

    int-to-float v4, v0

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_d

    .line 657
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_45
        :pswitch_57
        :pswitch_68
    .end packed-switch
.end method

.method private o()V
    .registers 11

    .prologue
    const-wide/16 v6, 0xfa

    .line 682
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z()V

    .line 683
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->A()V

    .line 685
    new-instance v9, Lcom/duoku/platform/floatview/DKFloatWindow$7;

    invoke-direct {v9, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$7;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    .line 695
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->P:I

    packed-switch v0, :pswitch_data_90

    .line 713
    :goto_12
    return-void

    .line 698
    :pswitch_13
    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    const-string v3, "x"

    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v4

    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->N:I

    int-to-float v1, v1

    sub-float v5, v0, v1

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_12

    .line 701
    :pswitch_32
    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    const-string v3, "y"

    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v4

    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    iget v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->O:I

    int-to-float v1, v1

    sub-float v5, v0, v1

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_12

    .line 704
    :pswitch_51
    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    const-string v3, "x"

    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v4

    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->N:I

    int-to-float v1, v1

    add-float v5, v0, v1

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_12

    .line 707
    :pswitch_70
    sget-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    const-string v3, "y"

    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v4

    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    iget v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->N:I

    int-to-float v1, v1

    add-float v5, v0, v1

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_12

    .line 695
    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_13
        :pswitch_32
        :pswitch_51
        :pswitch_70
    .end packed-switch
.end method

.method static synthetic o(Lcom/duoku/platform/floatview/DKFloatWindow;)Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->an:Z

    return v0
.end method

.method static synthetic p(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method private p()V
    .registers 4

    .prologue
    .line 770
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/duoku/platform/floatview/DKFloatWindow$8;

    invoke-direct {v2, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$8;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    .line 785
    return-void
.end method

.method private q()V
    .registers 1

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->r()V

    .line 859
    return-void
.end method

.method static synthetic q(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 1

    .prologue
    .line 1364
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z()V

    return-void
.end method

.method private r()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x7d0

    .line 868
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWindow$a;

    invoke-direct {v0, p0, v2, v3}, Lcom/duoku/platform/floatview/DKFloatWindow$a;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;J)V

    .line 869
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->M:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 871
    return-void
.end method

.method static synthetic r(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 1

    .prologue
    .line 1373
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->A()V

    return-void
.end method

.method private s()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 877
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWindow$a;

    invoke-direct {v0, p0, v2, v3}, Lcom/duoku/platform/floatview/DKFloatWindow$a;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;J)V

    .line 879
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 880
    return-void
.end method

.method static synthetic s(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 1

    .prologue
    .line 1311
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->w()V

    return-void
.end method

.method static synthetic t(Lcom/duoku/platform/floatview/DKFloatWindow;)F
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->o:F

    return v0
.end method

.method private t()I
    .registers 3

    .prologue
    .line 1185
    const/4 v0, 0x0

    .line 1186
    iget v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->P:I

    packed-switch v1, :pswitch_data_2c

    .line 1208
    :goto_6
    return v0

    .line 1190
    :pswitch_7
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v1, "dk_suspension_btn_left_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 1194
    :pswitch_10
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v1, "dk_suspension_btn_top_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 1198
    :pswitch_19
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v1, "dk_suspension_btn_right_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 1202
    :pswitch_22
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v1, "dk_suspension_btn_bottom_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 1186
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_10
        :pswitch_19
        :pswitch_22
    .end packed-switch
.end method

.method static synthetic u(Lcom/duoku/platform/floatview/DKFloatWindow;)F
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->p:F

    return v0
.end method

.method private u()V
    .registers 4

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->F:Lcom/duoku/platform/floatview/DKFloatWindow$d;

    if-nez v0, :cond_2c

    .line 1290
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWindow$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/floatview/DKFloatWindow$d;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;Lcom/duoku/platform/floatview/DKFloatWindow$d;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->F:Lcom/duoku/platform/floatview/DKFloatWindow$d;

    .line 1291
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1292
    const-string v1, "com.duoku.ACTION_GIFT_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1293
    const-string v1, "com.duoku.ACTION_MESSAGE_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1294
    const-string v1, "com.duoku.ACTION_VISITOR_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1295
    const-string v1, "com.duoku.ACTION_H5_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1296
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->F:Lcom/duoku/platform/floatview/DKFloatWindow$d;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1298
    :cond_2c
    return-void
.end method

.method static synthetic v(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private v()V
    .registers 3

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->F:Lcom/duoku/platform/floatview/DKFloatWindow$d;

    if-eqz v0, :cond_b

    .line 1304
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->F:Lcom/duoku/platform/floatview/DKFloatWindow$d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1306
    :cond_b
    return-void
.end method

.method static synthetic w(Lcom/duoku/platform/floatview/DKFloatWindow;)I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->k:I

    return v0
.end method

.method private w()V
    .registers 4

    .prologue
    const/high16 v2, 0x428c0000    # 70.0f

    .line 1313
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_7

    .line 1329
    :goto_6
    return-void

    .line 1317
    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1318
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1319
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1320
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1321
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1322
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1323
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1324
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->y:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1326
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    .line 1327
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->x()V

    .line 1328
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->T:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6
.end method

.method static synthetic x(Lcom/duoku/platform/floatview/DKFloatWindow;)I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ap:I

    return v0
.end method

.method private x()V
    .registers 4

    .prologue
    .line 1336
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 1338
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->G:Z

    if-nez v0, :cond_16

    .line 1340
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_suspension_window_normal_press"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1347
    :cond_15
    :goto_15
    return-void

    .line 1344
    :cond_16
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_suspension_window_normal_hint_press"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15
.end method

.method static synthetic y(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/Display;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->u:Landroid/view/Display;

    return-object v0
.end method

.method private y()V
    .registers 4

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    .line 1362
    :goto_4
    return-void

    .line 1358
    :cond_5
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1359
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    .line 1360
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1361
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->T:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method static synthetic z(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->y:Landroid/view/WindowManager;

    return-object v0
.end method

.method private z()V
    .registers 4

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1370
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1371
    return-void

    .line 1366
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1368
    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->g:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_6
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->d()V

    .line 165
    return-void
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->d()V

    .line 160
    return-void
.end method

.method public b()V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v3, -0x2

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->u()V

    .line 174
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->y:Landroid/view/WindowManager;

    .line 175
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->y:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->u:Landroid/view/Display;

    .line 176
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    .line 177
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 178
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 179
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 180
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 181
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0xa8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 183
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 185
    invoke-virtual {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->e()V

    .line 187
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_suspension_left_window_tvbg"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(IIIIII)V

    .line 188
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Q:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    return-void
.end method

.method public c()Z
    .registers 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->U:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "tv_float_big_bubble_content"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->V:Landroid/widget/TextView;

    .line 236
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->U:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "tv_float_big_bubble_close"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->W:Landroid/widget/TextView;

    .line 237
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->U:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "tv_float_big_bubble_go"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->X:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->U:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "ll_float_big_bubble_contain"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 240
    const-string v1, "1"

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 243
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->W:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->X:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->V:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->X:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_69
    :goto_69
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_6b
    const-string v1, "2"

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 251
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->V:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->X:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ae:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->W:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->X:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_69
.end method

.method public d()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/high16 v3, 0x428c0000    # 70.0f

    .line 409
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_8

    .line 448
    :goto_7
    return-void

    .line 413
    :cond_8
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->l()V

    .line 414
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 415
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->A()V

    .line 416
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z()V

    .line 417
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 418
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 419
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->y:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    .line 422
    iget v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->s:I

    if-nez v1, :cond_63

    .line 424
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_float_window_bg"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 443
    :goto_4d
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->T:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->t()I

    move-result v0

    sput v0, Lcom/duoku/platform/floatview/DKFloatWindow;->d:I

    .line 446
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->C()V

    .line 447
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->q()V

    goto :goto_7

    .line 428
    :cond_63
    sget-object v1, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    if-eqz v1, :cond_79

    .line 430
    sget-object v1, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v1}, Lcom/duoku/platform/h/t;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->H:Ljava/lang/String;

    .line 431
    sget-object v1, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v1}, Lcom/duoku/platform/h/t;->b()I

    move-result v1

    if-ne v1, v0, :cond_8b

    :goto_77
    iput-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->G:Z

    .line 434
    :cond_79
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->G:Z

    if-nez v0, :cond_8d

    .line 436
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_suspension_btn_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4d

    .line 431
    :cond_8b
    const/4 v0, 0x0

    goto :goto_77

    .line 440
    :cond_8d
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_suspension_btn_hint_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4d
.end method

.method public e()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/high16 v4, 0x428c0000    # 70.0f

    .line 456
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->l()V

    .line 457
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    .line 458
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->g:Landroid/os/Handler;

    .line 459
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->x:Landroid/view/LayoutInflater;

    .line 461
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    .line 462
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->T:Landroid/view/ViewGroup$LayoutParams;

    .line 463
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->x:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v3, "dk_suspension_window_view"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->v:Landroid/view/View;

    .line 465
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->x:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v3, "dk_dialog_float_big_bubble"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->U:Landroid/view/View;

    .line 466
    iget v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->s:I

    if-nez v0, :cond_7d

    .line 469
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v3, "dk_suspension_window_visitor_hint"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 470
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->v:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v3, "dk_float_window_bg"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 472
    :cond_7d
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    if-eqz v0, :cond_94

    .line 474
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->H:Ljava/lang/String;

    .line 475
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->b()I

    move-result v0

    if-ne v0, v1, :cond_f2

    move v0, v1

    :goto_92
    iput-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->G:Z

    .line 478
    :cond_94
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->G:Z

    if-nez v0, :cond_f4

    .line 480
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_suspension_start_normal_01"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 481
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_float_window_bg"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 489
    :goto_b2
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->ar:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 490
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->as:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 491
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->t()I

    move-result v0

    sput v0, Lcom/duoku/platform/floatview/DKFloatWindow;->d:I

    .line 493
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->T:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->y:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->z:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Landroid/view/View;)V

    .line 499
    invoke-static {}, Lcom/duoku/platform/ui/util/DKDialogUtil;->c()Lcom/duoku/platform/ui/util/DKDialogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    new-instance v2, Lcom/duoku/platform/floatview/DKFloatWindow$11;

    invoke-direct {v2, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$11;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;)V

    .line 508
    return-void

    .line 475
    :cond_f2
    const/4 v0, 0x0

    goto :goto_92

    .line 485
    :cond_f4
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_suspension_start_normal_01"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->t:Landroid/content/Context;

    const-string v2, "dk_float_window_bg"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_b2
.end method

.method public f()V
    .registers 2

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->p()V

    .line 757
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    if-eqz v0, :cond_12

    .line 759
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    invoke-virtual {v0}, Lcom/duoku/platform/view/common/b;->b()V

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    .line 761
    const/4 v0, 0x0

    sput-boolean v0, Lcom/duoku/platform/floatview/DKFloatWindow;->e:Z

    .line 764
    :cond_12
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->q()V

    .line 765
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->B:Z

    .line 801
    :goto_f
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->B:Z

    return v0

    .line 798
    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->B:Z

    goto :goto_f
.end method

.method public h()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 832
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->A()V

    .line 833
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z()V

    .line 835
    sget-object v0, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 836
    sput-object v2, Lcom/duoku/platform/floatview/DKFloatWindow;->f:Landroid/widget/ImageView;

    .line 838
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    if-eqz v0, :cond_1a

    .line 840
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    invoke-virtual {v0}, Lcom/duoku/platform/view/common/b;->b()V

    .line 841
    iput-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->A:Lcom/duoku/platform/view/common/b;

    .line 844
    :cond_1a
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 845
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->y:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 847
    iput-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->w:Landroid/widget/RelativeLayout;

    .line 848
    iput-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow;->y:Landroid/view/WindowManager;

    .line 850
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow;->v()V

    .line 851
    return-void
.end method
