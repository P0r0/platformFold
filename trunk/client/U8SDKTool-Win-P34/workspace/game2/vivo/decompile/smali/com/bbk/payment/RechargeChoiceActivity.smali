.class public Lcom/bbk/payment/RechargeChoiceActivity;
.super Lcom/bbk/payment/BaseActivity;


# static fields
.field public static mRechargeResult:I


# instance fields
.field private a:Lcom/bbk/payment/payment/PaymentGW;

.field private b:Lcom/bbk/payment/model/OrderInfo;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/content/Intent;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Z

.field private q:Landroid/content/Context;

.field private r:Landroid/content/res/Resources;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xf

    sput v0, Lcom/bbk/payment/RechargeChoiceActivity;->mRechargeResult:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbk/payment/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->p:Z

    new-instance v0, Lcom/bbk/payment/al;

    invoke-direct {v0, p0}, Lcom/bbk/payment/al;-><init>(Lcom/bbk/payment/RechargeChoiceActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->s:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/bbk/payment/an;

    invoke-direct {v0, p0}, Lcom/bbk/payment/an;-><init>(Lcom/bbk/payment/RechargeChoiceActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->t:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/bbk/payment/ar;

    invoke-direct {v0, p0}, Lcom/bbk/payment/ar;-><init>(Lcom/bbk/payment/RechargeChoiceActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->u:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_uppay"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_39

    const-string v0, "\u5145\u503c\u91d1\u989d\u4e0d\u80fd\u5c0f\u4e8e1\u5143"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_38
    return-void

    :cond_39
    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_75

    const-string v1, "RechargeChoiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doPayment mEditText.getText()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbk/payment/RechargeChoiceActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->isLeftMoveTwoBit(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",getRemainderBlance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getRemainderBlance()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    iget-object v1, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->isLeftMoveTwoBit(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setRemainderBlance(J)V

    new-instance v0, Lcom/bbk/payment/payment/PaymentGW;

    iget-object v1, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/bbk/payment/payment/PaymentGW;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->a:Lcom/bbk/payment/payment/PaymentGW;

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->a:Lcom/bbk/payment/payment/PaymentGW;

    iget-object v1, p0, Lcom/bbk/payment/RechargeChoiceActivity;->u:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, p0, v1, v2}, Lcom/bbk/payment/payment/PaymentGW;->payment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_90} :catch_9c

    :goto_90
    const-string v0, "amount_submit"

    iget-object v1, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->getPayTypeByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :catch_9c
    move-exception v0

    const-string v1, "RechargeChoiceActivity"

    const-string v2, "occur exception in starting payment"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "4000"

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_sys_error"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/RechargeChoiceActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90
.end method

.method private a(I)V
    .registers 6

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_24

    const-string v0, "RechargeChoiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returnPayResult result_code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",orderInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const-string v0, "amount_cancel"

    iget-object v1, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->getPayTypeByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setResult_code(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    iget-object v1, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setBlance(J)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/RechargeChoiceActivity;ILandroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbk/payment/RechargeChoiceActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/RechargeChoiceActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bbk/payment/RechargeChoiceActivity;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/RechargeChoiceActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/bbk/payment/RechargeChoiceActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/bbk/payment/RechargeChoiceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/bbk/payment/RechargeChoiceActivity;)Lcom/bbk/payment/model/OrderInfo;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    return-object v0
.end method


# virtual methods
.method public failForPay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "RechargeChoiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failForPay pay_msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rescode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const-string v0, "RechargeChoiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_8e

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x40000

    if-ne p1, v1, :cond_8f

    const v0, 0x70011

    if-eq p2, v0, :cond_42

    const v0, 0x70001

    if-ne p2, v0, :cond_8e

    :cond_42
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RechargeChoiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=======onActivityResult weixin result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8e

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    :cond_7a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/DetectPayResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->finish()V

    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/DetectPayResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->finish()V

    goto :goto_8e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/bbk/payment/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "preference_background_color"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_activity_vcoinchoice"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->q:Landroid/content/Context;

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->r:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->k:Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->k:Landroid/content/Intent;

    const-string v1, "orderInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/model/OrderInfo;

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->k:Landroid/content/Intent;

    const-string v1, "payment_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->k:Landroid/content/Intent;

    const-string v1, "test"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/bbk/payment/RechargeChoiceActivity;->k:Landroid/content/Intent;

    const-string v2, "retry"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget-boolean v2, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v2, :cond_92

    const-string v2, "retry"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "retry ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",payment_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",test="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",orderInfo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "widget10"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "widget50"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "widget100"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "widget500"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "widget1000"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "widget2000"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "title_left"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "title_right"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "submit_game_card"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->findViewById(I)Landroid/view/View;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "inputamountedittext"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->j:Landroid/widget/EditText;

    new-instance v2, Lcom/bbk/payment/ap;

    invoke-direct {v2, p0}, Lcom/bbk/payment/ap;-><init>(Lcom/bbk/payment/RechargeChoiceActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "submit_game_card"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->l:Landroid/widget/Button;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "tips_msgs"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->m:Landroid/widget/TextView;

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v0, :cond_1bb

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->j:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getRemainderBlance()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1bb
    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->j:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_1ec

    const-string v0, "RechargeChoiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RechargeChoiceActivity payment_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",orderInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/RechargeChoiceActivity;->b:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ec
    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v0, :cond_277

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->r:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_payment_title_left"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_205
    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_uppay"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28e

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->r:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_title_uppay"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_230
    :goto_230
    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_back"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->showTitleLeftButton(I)V

    new-instance v0, Lcom/bbk/payment/aq;

    invoke-direct {v0, p0}, Lcom/bbk/payment/aq;-><init>(Lcom/bbk/payment/RechargeChoiceActivity;)V

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-eqz v0, :cond_315

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->m:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_250
    if-nez v1, :cond_26b

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v0, :cond_26b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->p:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/bbk/payment/ao;

    invoke-direct {v1, p0}, Lcom/bbk/payment/ao;-><init>(Lcom/bbk/payment/RechargeChoiceActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-direct {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->a()V

    :cond_26b
    const-string v0, "amount_show"

    iget-object v1, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->getPayTypeByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_277
    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->r:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_recharge_title_left"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_205

    :cond_28e
    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_alipay"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->r:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_alipay"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_230

    :cond_2bb
    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_tencent"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e8

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->r:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_tencent"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_230

    :cond_2e8
    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_weixin"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_230

    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/RechargeChoiceActivity;->r:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_weixin"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_230

    :cond_315
    iget-object v0, p0, Lcom/bbk/payment/RechargeChoiceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_250
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    sget v0, Lcom/bbk/payment/RechargeChoiceActivity;->mRechargeResult:I

    invoke-direct {p0, v0}, Lcom/bbk/payment/RechargeChoiceActivity;->a(I)V

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/bbk/payment/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method
