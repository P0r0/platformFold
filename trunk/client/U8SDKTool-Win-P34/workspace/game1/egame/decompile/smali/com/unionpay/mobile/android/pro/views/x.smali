.class public Lcom/unionpay/mobile/android/pro/views/x;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/unionpay/mobile/android/upviews/a$b;


# instance fields
.field private A:Lcom/unionpay/mobile/android/upviews/a;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Landroid/os/Handler;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Landroid/view/View$OnClickListener;

.field private I:Landroid/view/View$OnClickListener;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Lcom/unionpay/mobile/android/upwidget/a;

.field private x:Lcom/unionpay/mobile/android/upwidget/a;

.field private y:Landroid/widget/TextView;

.field private z:Lcom/unionpay/mobile/android/upviews/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    const-string v0, "00"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->r:Ljava/lang/String;

    iput v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->s:I

    iput v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->u:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->v:I

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->w:Lcom/unionpay/mobile/android/upwidget/a;

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->x:Lcom/unionpay/mobile/android/upwidget/a;

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->y:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    iput-boolean v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->C:Z

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->D:Landroid/os/Handler;

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/y;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pro/views/y;-><init>(Lcom/unionpay/mobile/android/pro/views/x;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->E:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/z;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pro/views/z;-><init>(Lcom/unionpay/mobile/android/pro/views/x;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->F:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/aa;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pro/views/aa;-><init>(Lcom/unionpay/mobile/android/pro/views/x;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->G:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/ab;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pro/views/ab;-><init>(Lcom/unionpay/mobile/android/pro/views/x;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->H:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/ad;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pro/views/ad;-><init>(Lcom/unionpay/mobile/android/pro/views/x;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->I:Landroid/view/View$OnClickListener;

    const/4 v0, 0x6

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->f:I

    const-string v0, "sdpay"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->q:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->D:Landroid/os/Handler;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->C:Z

    const v0, -0x10100c

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/x;->e()V

    return-void
.end method

.method static synthetic A(Lcom/unionpay/mobile/android/pro/views/x;)I
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    return v0
.end method

.method static synthetic B(Lcom/unionpay/mobile/android/pro/views/x;)V
    .registers 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/x;->j()V

    return-void
.end method

.method static synthetic C(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/widgets/m;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->b:Lcom/unionpay/mobile/android/widgets/m;

    return-object v0
.end method

.method static synthetic D(Lcom/unionpay/mobile/android/pro/views/x;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_25
    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v1, v1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_67
    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/x;Lcom/unionpay/mobile/android/model/c;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 11

    const/4 v0, 0x3

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/x;->u()Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    move-result-object v2

    if-nez v2, :cond_e

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->b(I)V

    :goto_d
    return-void

    :cond_e
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/ac;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/pro/views/ac;-><init>(Lcom/unionpay/mobile/android/pro/views/x;Lcom/unionpay/mobile/android/pro/pboc/engine/b;Lcom/unionpay/mobile/android/model/c;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_d
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/x;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x7

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0, p1, p2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/x;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/x;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/upviews/a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    return-object v0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/x;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/upwidget/a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->x:Lcom/unionpay/mobile/android/upwidget/a;

    return-object v0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/x;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/16 v0, 0x8

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->v:I

    return-void

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\"uuid\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v0, v2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_11
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/upwidget/a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->w:Lcom/unionpay/mobile/android/upwidget/a;

    return-object v0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pro/views/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/widgets/m;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->b:Lcom/unionpay/mobile/android/widgets/m;

    return-object v0
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/pro/views/x;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/x;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/pro/views/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    return-object v0
.end method

.method private f(I)V
    .registers 6

    const/4 v0, 0x4

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/x;->s:I

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, "query"

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->u:I

    return-void
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/pro/views/x;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->j:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->x:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    const-string v3, "1"

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->w:Lcom/unionpay/mobile/android/upwidget/a;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->w:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-static {v2, v3, v0, p1}, Lcom/unionpay/mobile/android/nocard/views/bh;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v2, v1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method static synthetic g(Lcom/unionpay/mobile/android/pro/views/x;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic i(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic j(Lcom/unionpay/mobile/android/pro/views/x;)Ljava/util/HashMap;
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->c()Ljava/util/HashMap;

    move-result-object v0

    :cond_f
    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->c()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_20
    :goto_20
    return-object v0

    :cond_21
    if-eqz v1, :cond_20

    if-nez v0, :cond_20

    move-object v0, v1

    goto :goto_20
.end method

.method static synthetic k(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic l(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic m(Lcom/unionpay/mobile/android/pro/views/x;)I
    .registers 2

    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->v:I

    return v0
.end method

.method static synthetic n(Lcom/unionpay/mobile/android/pro/views/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic p(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic q(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic r(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic s(Lcom/unionpay/mobile/android/pro/views/x;)V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->d(I)V

    return-void
.end method

.method static synthetic t(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic u(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic v(Lcom/unionpay/mobile/android/pro/views/x;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->D:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic w(Lcom/unionpay/mobile/android/pro/views/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic x(Lcom/unionpay/mobile/android/pro/views/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic y(Lcom/unionpay/mobile/android/pro/views/x;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/unionpay/mobile/android/pro/views/x;)V
    .registers 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/x;->j()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/unionpay/mobile/android/upviews/a$a;)V
    .registers 5

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->a(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sms elements:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, "sms"

    iget-object v2, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    goto :goto_b
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/unionpay/mobile/android/pro/views/x;->C:Z

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    packed-switch v0, :pswitch_data_234

    :cond_c
    :goto_c
    :pswitch_c
    return-void

    :pswitch_d
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/x;->j()V

    iput v6, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    sget v1, Lcom/unionpay/mobile/android/global/b;->p:I

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(I)V

    goto :goto_c

    :pswitch_1a
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/x;->j()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1, v6}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->b(I)V

    :cond_28
    :goto_28
    iput v6, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    goto :goto_c

    :cond_2b
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v7, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_44

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->d(I)V

    goto :goto_28

    :cond_44
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->y:Lorg/json/JSONArray;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->y:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->d(I)V

    goto :goto_28

    :pswitch_59
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->r:Ljava/lang/String;

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->u:I

    if-lez v0, :cond_75

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->r:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->s:I

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->f(I)V

    goto :goto_c

    :cond_75
    iput v6, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->r:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->s:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/x;->j()V

    iput v6, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "result"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->C:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "openupgrade_flag"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "temporary_pay_flag"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "temporary_pay_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "front_url"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "front_request"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "succ_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->b(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->a(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->f()V

    :cond_eb
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_succeed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pro/views/x;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->d(I)V

    goto/16 :goto_c

    :cond_10c
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->r:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_192

    const-string v0, "fail_msg"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/x;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/unionpay/mobile/android/utils/o;->j:[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/x;->r:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v1, v2, v3, v4}, Lcom/unionpay/mobile/android/pro/views/x;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    if-ne v1, v8, :cond_156

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->a(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_156
    new-instance v1, Lcom/unionpay/mobile/android/pro/views/ae;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/pro/views/ae;-><init>(Lcom/unionpay/mobile/android/pro/views/x;)V

    new-instance v2, Lcom/unionpay/mobile/android/pro/views/af;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/pro/views/af;-><init>(Lcom/unionpay/mobile/android/pro/views/x;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->A:Z

    if-eqz v3, :cond_17e

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/x;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v3, v1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->X:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_17e
    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v2, v1, v9}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_192
    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->u:I

    if-gtz v0, :cond_c

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->s:I

    if-ne v0, v8, :cond_1a3

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->af:Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lcom/unionpay/mobile/android/pro/views/x;->a(Ljava/lang/String;Z)V

    goto/16 :goto_c

    :cond_1a3
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->af:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->a(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_1ac
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    if-eqz v0, :cond_1c8

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1cd

    :cond_1c8
    invoke-virtual {p0, v4}, Lcom/unionpay/mobile/android/pro/views/x;->b(I)V

    goto/16 :goto_c

    :cond_1cd
    const/16 v0, 0x14

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->u:I

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->f(I)V

    goto/16 :goto_c

    :pswitch_1d8
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/x;->j()V

    const-string v0, "options"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;)V

    goto/16 :goto_c

    :pswitch_1ec
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21c

    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21c

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->v:I

    if-ltz v1, :cond_20d

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->B:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/unionpay/mobile/android/pro/views/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_20d
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v1, v9, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_21c
    const-string v0, "options"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "empty_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v2, v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto/16 :goto_c

    nop

    :pswitch_data_234
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_1ac
        :pswitch_59
        :pswitch_c
        :pswitch_1a
        :pswitch_1d8
        :pswitch_1ec
    .end packed-switch
.end method

.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->y:Landroid/widget/TextView;

    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_c
    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected final a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->C:Z

    return v0
.end method

.method protected final b()V
    .registers 6

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/unionpay/mobile/android/widgets/ax;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/x;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->v:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p0}, Lcom/unionpay/mobile/android/widgets/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ax$a;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected final c()V
    .registers 16

    const/4 v14, 0x3

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v13, -0x1

    const/4 v12, -0x2

    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v11, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->p:Lcom/unionpay/mobile/android/model/e;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->p:Lcom/unionpay/mobile/android/model/e;

    check-cast v0, Lcom/unionpay/mobile/android/model/f;

    const-string v2, "promotion"

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "instalment"

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "promotion_instalment_msgbox"

    invoke-virtual {v0, v3}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v2, Lcom/unionpay/mobile/android/model/b;->aP:Lorg/json/JSONObject;

    :cond_49
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_88

    new-instance v0, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/x;->q:Ljava/lang/String;

    invoke-direct {v0, v2, v1, p0, v3}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->b:Lcom/unionpay/mobile/android/widgets/m;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->aP:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/upviews/a;->a(Lcom/unionpay/mobile/android/widgets/m;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->b(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->c(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v11, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_88
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->z:Lcom/unionpay/mobile/android/upviews/a;

    const-string v1, "instalment"

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    :cond_93
    new-instance v1, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v0, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c()J

    move-result-wide v4

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v7, v0, Lcom/unionpay/mobile/android/model/b;->al:Ljava/lang/String;

    iget-object v9, p0, Lcom/unionpay/mobile/android/pro/views/x;->q:Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v1 .. v9}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v11, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/x;->i()Z

    move-result v1

    if-nez v1, :cond_f7

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ag:Lorg/json/JSONObject;

    if-nez v1, :cond_f7

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ah:Lorg/json/JSONObject;

    if-eqz v1, :cond_15d

    :cond_f7
    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ag:Lorg/json/JSONObject;

    if-eqz v1, :cond_126

    new-instance v1, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->ag:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/x;->I:Landroid/view/View$OnClickListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/x;->q:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_agree_user_protocol"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->x:Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->x:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_126
    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ah:Lorg/json/JSONObject;

    if-eqz v1, :cond_15d

    new-instance v1, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->ah:Lorg/json/JSONObject;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/x;->q:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_remember_bankNO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->w:Lcom/unionpay/mobile/android/upwidget/a;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->w:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15d
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->x:Lorg/json/JSONObject;

    const-string v3, "label"

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->y:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->y:Landroid/widget/TextView;

    invoke-static {}, Lcom/unionpay/mobile/android/pro/views/x;->p()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->y:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v2, :cond_19a

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/upviews/a;->e()Z

    move-result v2

    if-eqz v2, :cond_19b

    :cond_19a
    move v8, v10

    :cond_19b
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->n:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/x;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->y:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/x;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\"card\":\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->I:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cmd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ele:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/x;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1, p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->t:I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_30

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "action_resp_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "action_resp_message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz v0, :cond_24

    invoke-virtual {p0, v4, v0}, Lcom/unionpay/mobile/android/pro/views/x;->a(ILjava/lang/String;)V

    :goto_23
    return v3

    :cond_24
    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/pro/views/x;->b(I)V

    goto :goto_23

    :cond_28
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/unionpay/mobile/android/pro/views/x;->a(Ljava/lang/String;Z)V

    goto :goto_23

    :cond_30
    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/pro/views/x;->b(I)V

    goto :goto_23
.end method

.method public final l()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->C:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/x;->n()V

    goto :goto_9

    :cond_1c
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->bl:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/x;->a(I)V

    goto :goto_9
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    return-void
.end method

.method public final t()V
    .registers 1

    return-void
.end method

.method public u()Lcom/unionpay/mobile/android/pro/pboc/engine/b;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
