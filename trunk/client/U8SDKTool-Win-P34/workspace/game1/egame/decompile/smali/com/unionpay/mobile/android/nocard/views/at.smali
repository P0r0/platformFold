.class public final Lcom/unionpay/mobile/android/nocard/views/at;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Lcom/unionpay/mobile/android/upviews/a$b;


# instance fields
.field private A:Lcom/unionpay/mobile/android/upviews/a;

.field private B:Lcom/unionpay/mobile/android/upviews/a;

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Landroid/view/View$OnClickListener;

.field private I:Landroid/view/View$OnClickListener;

.field private J:Landroid/view/View$OnClickListener;

.field r:Landroid/widget/LinearLayout;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Lcom/unionpay/mobile/android/upwidget/a;

.field private y:Lcom/unionpay/mobile/android/upwidget/a;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/at;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    const-string v1, "00"

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->s:Ljava/lang/String;

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->t:I

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->w:I

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->x:Lcom/unionpay/mobile/android/upwidget/a;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->y:Lcom/unionpay/mobile/android/upwidget/a;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->C:Z

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->D:Z

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/au;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/au;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->F:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/av;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/av;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->G:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/aw;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/aw;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->H:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/ax;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/ax;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->I:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/ay;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/ay;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->J:Landroid/view/View$OnClickListener;

    const/4 v1, 0x6

    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->f:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->F:Z

    if-eqz v1, :cond_6e

    const-string v1, "bankpay_phoneNO_change"

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    :goto_5b
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->F:Z

    if-nez v1, :cond_62

    const/4 v0, 0x1

    :cond_62
    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->D:Z

    const v0, -0x10100c

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->e()V

    return-void

    :cond_6e
    const-string v1, "bankpay"

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    goto :goto_5b
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upviews/a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/at;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/at;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x8

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0, p1, p2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/at;ZLjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->j:Z

    if-nez p1, :cond_12

    const/4 v0, 0x2

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    invoke-direct {p0, p2}, Lcom/unionpay/mobile/android/nocard/views/at;->e(Ljava/lang/String;)V

    goto :goto_11
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upviews/a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    return-object v0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/at;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->E:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/at;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/at;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upwidget/a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->y:Lcom/unionpay/mobile/android/upwidget/a;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/16 v0, 0x9

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->w:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->w:I

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

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v0, v2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_11
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upwidget/a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->x:Lcom/unionpay/mobile/android/upwidget/a;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/az;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/nocard/views/az;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/ba;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/ba;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static d(Lorg/json/JSONObject;)Z
    .registers 3

    const-string v0, "reopen_flag"

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->j:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->x:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    const-string v3, "1"

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->x:Lcom/unionpay/mobile/android/upwidget/a;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->x:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-static {v2, v3, v0, p1}, Lcom/unionpay/mobile/android/nocard/views/bh;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v2, v1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/nocard/views/at;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->C:Z

    return v0
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/nocard/views/at;)I
    .registers 2

    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->w:I

    return v0
.end method

.method private f(I)V
    .registers 6

    const/4 v0, 0x4

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->t:I

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, "query"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    return-void
.end method

.method static synthetic g(Lcom/unionpay/mobile/android/nocard/views/at;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->j:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, "reopenrules"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/unionpay/mobile/android/nocard/views/at;)I
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    return v0
.end method

.method static synthetic i(Lcom/unionpay/mobile/android/nocard/views/at;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private u()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

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
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

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


# virtual methods
.method public final a(Lcom/unionpay/mobile/android/upviews/a$a;)V
    .registers 5

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;)V

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

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, "sms"

    iget-object v2, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    goto :goto_b
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 11

    const/4 v2, 0x5

    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/unionpay/mobile/android/nocard/views/at;->D:Z

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    packed-switch v0, :pswitch_data_2d6

    :cond_c
    :goto_c
    :pswitch_c
    return-void

    :pswitch_d
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->j()V

    iput v6, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    sget v1, Lcom/unionpay/mobile/android/global/b;->p:I

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(I)V

    goto :goto_c

    :pswitch_1a
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->j()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1, v7}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->b(I)V

    :cond_28
    :goto_28
    iput v6, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    goto :goto_c

    :cond_2b
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v7, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_48

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(ILcom/unionpay/mobile/android/model/e;)V

    goto :goto_28

    :cond_48
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->y:Lorg/json/JSONArray;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->y:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_28

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/nocard/views/at;->d(I)V

    goto :goto_28

    :pswitch_5c
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_74

    const-string v0, "fail_msg"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Ljava/lang/String;)V

    goto :goto_c

    :cond_74
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    if-lez v0, :cond_88

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->s:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->t:I

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->f(I)V

    goto :goto_c

    :cond_88
    iput v6, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->s:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12d

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->t:I

    packed-switch v0, :pswitch_data_2fa

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->j()V

    iput v6, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "result"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->C:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "openupgrade_flag"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "temporary_pay_flag"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "temporary_pay_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "front_url"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "front_request"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "succ_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->b(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->a(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->f()V

    :cond_101
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_succeed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->d(I)V

    goto/16 :goto_c

    :pswitch_122
    iput-boolean v7, p0, Lcom/unionpay/mobile/android/nocard/views/at;->C:Z

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->u()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->e(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_12d
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->s:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    const-string v0, "fail_msg"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/unionpay/mobile/android/utils/o;->j:[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/at;->s:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v1, v2, v3, v4}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->t:I

    if-ne v1, v8, :cond_177

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_177
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/bb;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/bb;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    new-instance v2, Lcom/unionpay/mobile/android/nocard/views/bc;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/nocard/views/bc;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->A:Z

    if-eqz v3, :cond_19f

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v3, v1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->ab:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->ac:Ljava/lang/String;

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_19f
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->ab:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1b4
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    if-gtz v0, :cond_c

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->af:Ljava/lang/String;

    if-eqz v1, :cond_1d2

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->af:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->af:Ljava/lang/String;

    :cond_1d2
    iget v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->t:I

    if-ne v1, v8, :cond_1db

    invoke-virtual {p0, v0, v7}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;Z)V

    goto/16 :goto_c

    :cond_1db
    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_1e0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    if-eqz v0, :cond_1fc

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_201

    :cond_1fc
    invoke-virtual {p0, v4}, Lcom/unionpay/mobile/android/nocard/views/at;->b(I)V

    goto/16 :goto_c

    :cond_201
    const/16 v0, 0x14

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->f(I)V

    goto/16 :goto_c

    :pswitch_20c
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->j()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1, v6}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_21c

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->b(I)V

    goto/16 :goto_c

    :cond_21c
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    if-eqz v1, :cond_236

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_236

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(ILcom/unionpay/mobile/android/model/e;)V

    goto/16 :goto_c

    :cond_236
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->y:Lorg/json/JSONArray;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->y:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/nocard/views/at;->d(I)V

    goto/16 :goto_c

    :pswitch_24b
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->j()V

    const-string v0, "options"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;)V

    goto/16 :goto_c

    :pswitch_25f
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_290

    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_290

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->w:I

    if-ltz v1, :cond_280

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->E:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_280
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_290
    const-string v0, "options"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "empty_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v2, v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_2a7
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2b4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    :cond_2b4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "instalment_empty_info"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2ce

    :goto_2c5
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONObject;)V

    iput v6, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    goto/16 :goto_c

    :cond_2ce
    const-string v0, "instalment"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_2c5

    nop

    :pswitch_data_2d6
    .packed-switch 0x1
        :pswitch_d
        :pswitch_1e0
        :pswitch_1e0
        :pswitch_5c
        :pswitch_c
        :pswitch_1a
        :pswitch_20c
        :pswitch_24b
        :pswitch_25f
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_2a7
    .end packed-switch

    :pswitch_data_2fa
    .packed-switch 0x2
        :pswitch_122
    .end packed-switch
.end method

.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

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
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->D:Z

    iget v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    if-ne v2, v0, :cond_12

    invoke-static {p2}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Ljava/lang/String;)V

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method protected final b()V
    .registers 6

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/unionpay/mobile/android/widgets/ax;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->v:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p0}, Lcom/unionpay/mobile/android/widgets/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ax$a;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(I)V
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    :cond_10
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    const-string v1, "instalment"

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v1

    if-eqz v1, :cond_25

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mobile/android/widgets/p;

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/widgets/p;->a(Z)V

    check-cast v1, Lcom/unionpay/mobile/android/widgets/p;

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/widgets/p;->b(Z)V

    :cond_25
    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->b(I)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final c()V
    .registers 15

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->a(Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->m:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v13, p0, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->p:Lcom/unionpay/mobile/android/model/e;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->p:Lcom/unionpay/mobile/android/model/e;

    check-cast v0, Lcom/unionpay/mobile/android/model/f;

    const-string v2, "promotion"

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "instalment"

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "promotion_instalment_msgbox"

    invoke-virtual {v0, v3}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v2, Lcom/unionpay/mobile/android/model/b;->aP:Lorg/json/JSONObject;

    :cond_5d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a7

    new-instance v0, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    invoke-direct {v0, v2, v1, p0, v3}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->aP:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/upviews/a;->a(Lcom/unionpay/mobile/android/widgets/m;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->bn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->b(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->c(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v13, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a7
    const/4 v10, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    const-string v1, "instalment"

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v10

    :cond_b4
    new-instance v1, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v0, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c()J

    move-result-wide v4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v7, v0, Lcom/unionpay/mobile/android/model/b;->al:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v11, v0, Lcom/unionpay/mobile/android/model/b;->Y:Lorg/json/JSONArray;

    iget-object v12, p0, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v1 .. v12}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZZLcom/unionpay/mobile/android/widgets/y;Lorg/json/JSONArray;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v13, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->i()Z

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ag:Lorg/json/JSONObject;

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ah:Lorg/json/JSONObject;

    if-eqz v0, :cond_18e

    :cond_126
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ag:Lorg/json/JSONObject;

    if-eqz v0, :cond_155

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->ag:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/at;->J:Landroid/view/View$OnClickListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_agree_user_protocol"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->y:Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->y:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_155
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ah:Lorg/json/JSONObject;

    if-eqz v0, :cond_18e

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->ah:Lorg/json/JSONObject;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_remember_bankNO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->x:Lcom/unionpay/mobile/android/upwidget/a;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->x:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18e
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->x:Lorg/json/JSONObject;

    const-string v3, "label"

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    invoke-static {}, Lcom/unionpay/mobile/android/nocard/views/at;->p()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_1cb

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->e()Z

    move-result v0

    if-eqz v0, :cond_20b

    :cond_1cb
    const/4 v0, 0x1

    :goto_1cc
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->n:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/at;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_20b
    const/4 v0, 0x0

    goto :goto_1cc
.end method

.method public final c(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->i()Z

    move-result v0

    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\"card\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
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

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1, p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    return-void

    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\"card\":\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

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

    goto :goto_2b
.end method

.method public final l()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->G:Z

    if-eqz v0, :cond_1a

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->G:Z

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->D:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->B:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->n()V

    goto :goto_9

    :cond_35
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->B:Lorg/json/JSONObject;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(I)V

    goto :goto_9
.end method

.method protected final onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    return-void
.end method

.method public final t()V
    .registers 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    const-string v1, "promotion"

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v0

    const-string v1, "\"\""

    if-eqz v0, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/unionpay/mobile/android/widgets/ai;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/ai;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_30
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v2, "instalment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\"promotion\":"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    return-void

    :cond_4b
    move-object v0, v1

    goto :goto_30
.end method
