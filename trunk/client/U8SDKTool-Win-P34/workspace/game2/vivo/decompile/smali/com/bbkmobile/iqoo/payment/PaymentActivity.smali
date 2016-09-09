.class public Lcom/bbkmobile/iqoo/payment/PaymentActivity;
.super Lcom/bbkmobile/iqoo/payment/BaseActivity;


# instance fields
.field private A:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

.field private B:Landroid/os/Handler;

.field private a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;

.field private t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

.field private u:Ljava/lang/String;

.field private v:Lcom/bbk/payment/payment/VivoPaymentManager;

.field private w:Z

.field private x:J

.field private y:Z

.field private z:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/bbkmobile/iqoo/payment/BaseActivity;-><init>()V

    new-instance v0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-direct {v0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;-><init>()V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    iput-boolean v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->w:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->x:J

    iput-boolean v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->y:Z

    new-instance v0, Lcom/bbkmobile/iqoo/payment/i;

    invoke-direct {v0, p0}, Lcom/bbkmobile/iqoo/payment/i;-><init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->A:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    new-instance v0, Lcom/bbkmobile/iqoo/payment/j;

    invoke-direct {v0, p0}, Lcom/bbkmobile/iqoo/payment/j;-><init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->B:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->z:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->s:Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_pay_cancel"

    invoke-static {v2, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;->failPayment(Lcom/bbkmobile/iqoo/payment/model/OrderInfo;Ljava/lang/String;)V

    const-string v0, "6001"

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_cancel"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ILandroid/os/Bundle;)V
    .registers 6

    const-string v0, "PaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returnPayResult result_code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pay_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/bbkmobile/iqoo/payment/PaymentActivity;ILandroid/os/Bundle;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, v0, p2}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/bbkmobile/iqoo/payment/PaymentActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/bbkmobile/iqoo/payment/PaymentActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->w:Z

    return-void
.end method

.method static synthetic b(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Lcom/bbkmobile/iqoo/payment/model/OrderInfo;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    return-object v0
.end method

.method static synthetic c(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Lcom/bbk/payment/payment/VivoPaymentManager;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->v:Lcom/bbk/payment/payment/VivoPaymentManager;

    return-object v0
.end method

.method static synthetic d(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->x:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_16

    const/4 v0, 0x0

    const-string v1, "PaymentActivity"

    const-string v2, "click too fast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->x:J

    return v0
.end method

.method static synthetic f(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V
    .registers 5

    iget-boolean v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->w:Z

    if-nez v0, :cond_4e

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/bbkmobile/iqoo/payment/q;

    invoke-direct {v1, p0}, Lcom/bbkmobile/iqoo/payment/q;-><init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->w:Z

    :try_start_16
    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->savePaymentType(Ljava/lang/String;)V

    new-instance v0, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->u:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->s:Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_card_s"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->s:Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->B:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v0, p0, v1, v2}, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;->payment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_58} :catch_59

    goto :goto_4e

    :catch_59
    move-exception v0

    const-string v1, "PaymentActivity"

    const-string v2, "occur exception in starting payment"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "4000"

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_sys_error"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method static synthetic h(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public failForPay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    const-string v0, "PaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failForPay pay_msg="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",rescode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "transNo"

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result_code"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_result"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "pay_msg"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->v:Lcom/bbk/payment/payment/VivoPaymentManager;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bbk/payment/payment/VivoPaymentManager;->singlePayResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v6}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    const/4 v2, 0x1

    if-eqz p3, :cond_7b

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "paytype["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_succ"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "transNo"

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result_code"

    const-string v1, "9000"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_msg"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_result"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->v:Lcom/bbk/payment/payment/VivoPaymentManager;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    const-string v3, "9000"

    iget-object v5, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v5}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bbk/payment/payment/VivoPaymentManager;->singlePayResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v6}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a(ILandroid/os/Bundle;)V

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_fail"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    const-string v0, "6002"

    const-string v1, "4006"

    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    :cond_9d
    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_cancel"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    const-string v0, "6002"

    const-string v1, "4006"

    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/bbkmobile/iqoo/payment/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-super {p0, p1}, Lcom/bbkmobile/iqoo/payment/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "PaymentActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_activity_payment_s"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getLayoutResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->z:Landroid/content/Context;

    new-instance v0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    invoke-direct {v0, p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;-><init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    invoke-static {p0}, Lcom/bbk/payment/payment/VivoPaymentManager;->getInstance(Landroid/content/Context;)Lcom/bbk/payment/payment/VivoPaymentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->v:Lcom/bbk/payment/payment/VivoPaymentManager;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->detectPayConditions(Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)Z

    move-result v0

    if-nez v0, :cond_56

    const-string v0, "1000"

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_invalid_param"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    const-string v0, "PaymentActivity1"

    const-string v1, "payment onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->A:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    invoke-static {p0, v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->checkUpdate(Landroid/content/Context;Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;)V

    return-void

    :cond_56
    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "payment_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6a

    const-string v1, "useWeixinPay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->y:Z

    :cond_6a
    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_paytype_title_s"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->showTitleMessage(I)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_back"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->showTitleLeftButton(I)V

    new-instance v0, Lcom/bbkmobile/iqoo/payment/k;

    invoke-direct {v0, p0}, Lcom/bbkmobile/iqoo/payment/k;-><init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "order_title"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "order_price"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_type_first"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_type_sec"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_type_third"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_type_four"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_type_five"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_icon_first"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_icon_sec"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_icon_third"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_icon_four"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_icon_five"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_layout_first"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->d:Landroid/view/View;

    new-instance v1, Lcom/bbkmobile/iqoo/payment/l;

    invoke-direct {v1, p0}, Lcom/bbkmobile/iqoo/payment/l;-><init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_layout_sec"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->e:Landroid/view/View;

    new-instance v1, Lcom/bbkmobile/iqoo/payment/m;

    invoke-direct {v1, p0}, Lcom/bbkmobile/iqoo/payment/m;-><init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_layout_third"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->f:Landroid/view/View;

    new-instance v1, Lcom/bbkmobile/iqoo/payment/n;

    invoke-direct {v1, p0}, Lcom/bbkmobile/iqoo/payment/n;-><init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_layout_four"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->g:Landroid/view/View;

    new-instance v1, Lcom/bbkmobile/iqoo/payment/o;

    invoke-direct {v1, p0}, Lcom/bbkmobile/iqoo/payment/o;-><init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pay_layout_five"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->h:Landroid/view/View;

    new-instance v1, Lcom/bbkmobile/iqoo/payment/p;

    invoke-direct {v1, p0}, Lcom/bbkmobile/iqoo/payment/p;-><init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->loadPaymentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->u:Ljava/lang/String;

    if-eqz v1, :cond_2ee

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->updateSelectItem(Ljava/lang/String;I)V

    :goto_200
    new-instance v1, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->u:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->s:Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_weixin"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    invoke-virtual {v2, v5}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->getPayType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->n:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    invoke-virtual {v4, v2, v5}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->getPayIconId(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->y:Z

    if-nez v3, :cond_23c

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23c

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_23c
    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    invoke-virtual {v2, v7}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->getPayType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->o:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    invoke-virtual {v4, v2, v7}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->getPayIconId(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->y:Z

    if-nez v3, :cond_261

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_261

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->e:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_261
    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    invoke-virtual {v2, v8}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->getPayType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->p:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    invoke-virtual {v4, v2, v8}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->getPayIconId(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->y:Z

    if-nez v3, :cond_286

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_286

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->f:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_286
    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    invoke-virtual {v2, v9}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->getPayType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->q:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    invoke-virtual {v4, v2, v9}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->getPayIconId(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->y:Z

    if-nez v3, :cond_2ab

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ab

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->g:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2ab
    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->getPayType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->r:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    const/4 v5, 0x4

    invoke-virtual {v4, v2, v5}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->getPayIconId(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->y:Z

    if-nez v3, :cond_2d2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d2

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->h:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2d2
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->t:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPrice()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_49

    :cond_2ee
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivityController;

    invoke-virtual {v1, v5}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->getPayType(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->u:Ljava/lang/String;

    goto/16 :goto_200
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a()V

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/bbkmobile/iqoo/payment/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method
