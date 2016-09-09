.class public Lcom/duoku/platform/floatview/DKFloatWebView;
.super Lcom/duoku/platform/view/c;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/floatview/DKFloatWebView$DownLoadBroadcastReceiver;,
        Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;,
        Lcom/duoku/platform/floatview/DKFloatWebView$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/widget/Toast;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/View;

.field private E:Ljava/lang/String;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Ljava/lang/String;

.field public a:Landroid/widget/ScrollView;

.field b:Landroid/os/Handler;

.field c:Lcom/duoku/platform/floatview/DKFloatWebView$DownLoadBroadcastReceiver;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Lcom/duoku/platform/view/e;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/webkit/WebView;

.field private w:Landroid/content/Context;

.field private x:Landroid/view/LayoutInflater;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/c;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->i:Z

    .line 74
    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->j:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->k:Landroid/widget/TextView;

    .line 76
    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->l:Landroid/view/View;

    .line 77
    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->m:Landroid/view/View;

    .line 78
    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->n:Lcom/duoku/platform/view/e;

    .line 79
    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->o:Landroid/view/View;

    .line 80
    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->p:Landroid/widget/TextView;

    .line 90
    iput-boolean v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->y:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->A:Z

    .line 109
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWebView$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWebView$1;-><init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->F:Landroid/view/View$OnClickListener;

    .line 118
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWebView$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWebView$2;-><init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->G:Landroid/view/View$OnClickListener;

    .line 496
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWebView$3;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWebView$3;-><init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->b:Landroid/os/Handler;

    .line 104
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    .line 105
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->x:Landroid/view/LayoutInflater;

    .line 106
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWebView;->n()V

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWebView;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWebView;Landroid/widget/Toast;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->B:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWebView;Lcom/duoku/platform/view/e;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->n:Lcom/duoku/platform/view/e;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWebView;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->E:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWebView;Z)V
    .registers 2

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->y:Z

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/Toast;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->B:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/floatview/DKFloatWebView;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->D:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/floatview/DKFloatWebView;)Lcom/duoku/platform/view/e;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->n:Lcom/duoku/platform/view/e;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/duoku/platform/floatview/DKFloatWebView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/duoku/platform/floatview/DKFloatWebView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    return-object v0
.end method

.method private n()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 934
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    if-eqz v0, :cond_1c

    .line 936
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWebView$DownLoadBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWebView$DownLoadBroadcastReceiver;-><init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->c:Lcom/duoku/platform/floatview/DKFloatWebView$DownLoadBroadcastReceiver;

    .line 937
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 938
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 939
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->c:Lcom/duoku/platform/floatview/DKFloatWebView$DownLoadBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 941
    :cond_1c
    return-void
.end method

.method static synthetic n(Lcom/duoku/platform/floatview/DKFloatWebView;)Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->y:Z

    return v0
.end method

.method private o()V
    .registers 3

    .prologue
    .line 945
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->c:Lcom/duoku/platform/floatview/DKFloatWebView$DownLoadBroadcastReceiver;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    if-eqz v0, :cond_f

    .line 947
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->c:Lcom/duoku/platform/floatview/DKFloatWebView$DownLoadBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 949
    :cond_f
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 775
    return-void
.end method

.method public a(Lcom/duoku/platform/c/b;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 763
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 510
    if-eqz p1, :cond_8

    .line 512
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->H:Ljava/lang/String;

    .line 515
    :cond_8
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/f/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->z:Ljava/lang/String;

    .line 516
    new-instance v0, Lcom/duoku/platform/util/a;

    invoke-direct {v0}, Lcom/duoku/platform/util/a;-><init>()V

    .line 517
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->z:Ljava/lang/String;

    .line 521
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->g()Z

    move-result v0

    if-eqz v0, :cond_20e

    sget v0, Lcom/duoku/platform/util/Constants;->screen_landscape_flag:I

    if-ne v0, v4, :cond_20e

    .line 523
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v2, "dk_floatview_landscape_h5"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->e:Landroid/view/ViewGroup;

    .line 530
    :goto_3f
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->isShowOlmet:Z

    if-eqz v0, :cond_77

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 532
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v1, "dk_layout_tab"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 533
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v1, "dk_wb_tab_omlet"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 535
    new-instance v1, Lcom/duoku/platform/floatview/DKFloatWebView$4;

    invoke-direct {v1, p0}, Lcom/duoku/platform/floatview/DKFloatWebView$4;-><init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    :cond_77
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v1, "dk_layout_prefecture_header"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->t:Landroid/widget/LinearLayout;

    .line 549
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v2, "dk_tv_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->u:Landroid/widget/TextView;

    .line 550
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->u:Landroid/widget/TextView;

    const-string v1, "dk_float_view_title"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v2, "dk_payment_iv_close"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->r:Landroid/widget/ImageView;

    .line 554
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v2, "dk_iv_payment_back"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->s:Landroid/widget/ImageView;

    .line 558
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->s:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v1, "dk_layout_progress_prefecture"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->m:Landroid/view/View;

    .line 562
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->x:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v2, "dk_common_progress_small"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->o:Landroid/view/View;

    .line 563
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v2, "tv_progress_small_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->p:Landroid/widget/TextView;

    .line 564
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v1, "dk_scrollview"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->a:Landroid/widget/ScrollView;

    .line 566
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->x:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v2, "dk_floatview_custom_toast"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->D:Landroid/view/View;

    .line 567
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->D:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v2, "textView"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->C:Landroid/widget/TextView;

    .line 570
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v1, "dk_layout_net_error"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->l:Landroid/view/View;

    .line 571
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v1, "dk_btn_retry"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->q:Landroid/widget/Button;

    .line 572
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->q:Landroid/widget/Button;

    new-instance v1, Lcom/duoku/platform/floatview/DKFloatWebView$5;

    invoke-direct {v1, p0}, Lcom/duoku/platform/floatview/DKFloatWebView$5;-><init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v1, "float_web_view"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    .line 589
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 590
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 591
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 592
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 593
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 596
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 597
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 598
    const-string v1, " BaiduMgame/3.7.1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 602
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;-><init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V

    .line 603
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    const-string v2, "BaiDuMobileGameJsBridge"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    new-instance v1, Lcom/duoku/platform/floatview/DKFloatWebView$a;

    invoke-direct {v1, p0, v3}, Lcom/duoku/platform/floatview/DKFloatWebView$a;-><init>(Lcom/duoku/platform/floatview/DKFloatWebView;Lcom/duoku/platform/floatview/DKFloatWebView$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 605
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f9

    .line 609
    :try_start_1bb
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->H:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 610
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->H:Ljava/lang/String;

    invoke-static {v1}, Lcom/duoku/platform/util/q;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&enter="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->z:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    :cond_1e4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 616
    const-string v2, "Referer"

    iget-object v3, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->H:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1f9} :catch_222

    .line 626
    :cond_1f9
    :goto_1f9
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    new-instance v1, Lcom/duoku/platform/floatview/DKFloatWebView$6;

    invoke-direct {v1, p0}, Lcom/duoku/platform/floatview/DKFloatWebView$6;-><init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 667
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    new-instance v1, Lcom/duoku/platform/floatview/DKFloatWebView$7;

    invoke-direct {v1, p0}, Lcom/duoku/platform/floatview/DKFloatWebView$7;-><init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 758
    return-void

    .line 527
    :cond_20e
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->w:Landroid/content/Context;

    const-string v2, "dk_floatview_h5"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->e:Landroid/view/ViewGroup;

    goto/16 :goto_3f

    .line 619
    :catch_222
    move-exception v0

    .line 622
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f9
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 958
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->E:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 960
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 962
    :cond_2e
    return-void
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 781
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_11

    .line 792
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 794
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 801
    :cond_11
    :goto_11
    return-void

    .line 798
    :cond_12
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_11
.end method

.method public d()V
    .registers 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->n:Lcom/duoku/platform/view/e;

    if-eqz v0, :cond_7

    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->n:Lcom/duoku/platform/view/e;

    .line 822
    :cond_7
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWebView;->o()V

    .line 823
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    .line 969
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 970
    invoke-super {p0}, Lcom/duoku/platform/view/c;->e()V

    .line 972
    :cond_c
    return-void
.end method
