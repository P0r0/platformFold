.class public Lcom/bbk/payment/PaymentActivity;
.super Lcom/bbk/payment/BaseActivity;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/ListView;

.field private F:Lcom/bbk/payment/payment/VivoPaymentManager;

.field private G:Ljava/util/ArrayList;

.field private H:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private I:Lcom/bbk/payment/action/ChannelAdapter;

.field private J:Landroid/content/res/Resources;

.field private K:I

.field private L:Landroid/os/Handler;

.field private M:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

.field private N:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

.field private a:Landroid/content/Context;

.field private b:Lcom/bbk/payment/PaymentActivityController;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/bbk/payment/payment/PaymentGW;

.field private h:Lcom/bbk/payment/model/OrderInfo;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/CheckBox;

.field protected rogressDialog:Landroid/app/ProgressDialog;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/bbk/payment/BaseActivity;-><init>()V

    new-instance v0, Lcom/bbk/payment/model/OrderInfo;

    invoke-direct {v0}, Lcom/bbk/payment/model/OrderInfo;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    const-string v0, "0"

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->s:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/bbk/payment/PaymentActivity;->u:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/bbk/payment/PaymentActivity;->w:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/payment/PaymentActivity;->K:I

    new-instance v0, Lcom/bbk/payment/P;

    invoke-direct {v0, p0}, Lcom/bbk/payment/P;-><init>(Lcom/bbk/payment/PaymentActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->L:Landroid/os/Handler;

    new-instance v0, Lcom/bbk/payment/T;

    invoke-direct {v0, p0}, Lcom/bbk/payment/T;-><init>(Lcom/bbk/payment/PaymentActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->M:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    new-instance v0, Lcom/bbk/payment/U;

    invoke-direct {v0, p0}, Lcom/bbk/payment/U;-><init>(Lcom/bbk/payment/PaymentActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->N:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    return-void
.end method

.method static synthetic A(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->z:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/bbk/payment/PaymentActivity;I)I
    .registers 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_48

    :goto_4
    return v0

    :pswitch_5
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_background_icon1"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :pswitch_10
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_background_icon2"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :pswitch_1b
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_background_icon3"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :pswitch_26
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_background_icon31"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :pswitch_31
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_background_icon31"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :pswitch_3c
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_background_icon33"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_5
        :pswitch_10
        :pswitch_1b
        :pswitch_26
        :pswitch_31
        :pswitch_3c
    .end packed-switch
.end method

.method static synthetic a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    return-object v0
.end method

.method private a()V
    .registers 5

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_32

    const-string v0, "PaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alipay pay failed,what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",payment_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",paymentGW="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->g:Lcom/bbk/payment/payment/PaymentGW;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->g:Lcom/bbk/payment/payment/PaymentGW;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->g:Lcom/bbk/payment/payment/PaymentGW;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_pay_cancel"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bbk/payment/payment/PaymentGW;->failPayment(Lcom/bbk/payment/model/OrderInfo;Ljava/lang/String;)V

    :cond_4f
    const-string v0, "payorder_cancel"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "6001"

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_cancel"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(I)V
    .registers 5

    const-string v0, "PaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveChannelType, paytype="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->H:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLastSelectPayChannel(I)V

    :cond_1b
    return-void
.end method

.method private a(IILandroid/content/Intent;)V
    .registers 13

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v4, 0x7d1

    const/4 v2, 0x1

    if-eqz p3, :cond_228

    const-string v0, "pay_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_13d

    const-string v0, "orderInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/model/OrderInfo;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    :goto_19
    const-string v0, "PaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pay_result="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/bbk/payment/TicketActivity;->mBackResult:I

    if-eq v0, p1, :cond_8d

    if-eqz v6, :cond_1a0

    const-string v0, "pay_result"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    if-eq p1, v4, :cond_48

    iget v0, p0, Lcom/bbk/payment/PaymentActivity;->K:I

    invoke-direct {p0, v0}, Lcom/bbk/payment/PaymentActivity;->a(I)V

    :cond_48
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_succ"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "transNo"

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result_code"

    const-string v1, "9000"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_msg"

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_result"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->F:Lcom/bbk/payment/payment/VivoPaymentManager;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    const-string v3, "9000"

    iget-object v5, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v5}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bbk/payment/payment/VivoPaymentManager;->payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v8, v7}, Lcom/bbk/payment/PaymentActivity;->a(ILandroid/os/Bundle;)V

    :cond_8d
    :goto_8d
    if-nez v6, :cond_13c

    sget v0, Lcom/bbk/payment/RechargeChoiceActivity;->mRechargeResult:I

    if-eq v0, p2, :cond_13c

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getTicketCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->v:Ljava/lang/String;

    const-string v0, "PaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ticket_amount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->w:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->v:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setTicketCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setTicketAmount(J)V

    :goto_e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->v:Ljava/lang/String;

    const-string v0, "PaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ticket_amount===================="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",orderInfo.getBlance()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",orderInfo.getTicketAmount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->updateTicketChkBox()V

    invoke-direct {p0}, Lcom/bbk/payment/PaymentActivity;->b()V

    :cond_13c
    :goto_13c
    return-void

    :cond_13d
    const-string v0, "orderInfo"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/model/OrderInfo;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    goto/16 :goto_19

    :cond_149
    const-string v0, "pay_result"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_178

    if-eq p1, v4, :cond_15e

    iget v0, p0, Lcom/bbk/payment/PaymentActivity;->K:I

    invoke-direct {p0, v0}, Lcom/bbk/payment/PaymentActivity;->a(I)V

    :cond_15e
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_fail"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    const-string v0, "4000"

    const-string v1, "4006"

    invoke-static {v1}, Lcom/bbk/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8d

    :cond_178
    const-string v0, "pay_result"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_cancel"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    const-string v0, "6001"

    const-string v1, "4006"

    invoke-static {v1}, Lcom/bbk/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8d

    :cond_1a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v3, "bbk_vcoin_balance"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8d

    :cond_1dc
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setTicketCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->v:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setTicketAmount(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->v:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_vcoin_title"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e7

    :cond_228
    sget v0, Lcom/bbk/payment/TicketActivity;->mBackResult:I

    if-eq v0, p1, :cond_2b0

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getResult_code()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b0

    const-string v0, "9000"

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getResult_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a4

    if-eq p1, v4, :cond_249

    iget v0, p0, Lcom/bbk/payment/PaymentActivity;->K:I

    invoke-direct {p0, v0}, Lcom/bbk/payment/PaymentActivity;->a(I)V

    :cond_249
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "transNo"

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result_code"

    const-string v1, "9000"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_msg"

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "bbk_pay_succ"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_result"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->F:Lcom/bbk/payment/payment/VivoPaymentManager;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    const-string v3, "9000"

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_pay_succ"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v5}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bbk/payment/payment/VivoPaymentManager;->payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v8, v6}, Lcom/bbk/payment/PaymentActivity;->a(ILandroid/os/Bundle;)V

    :goto_29c
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setResult_code(Ljava/lang/String;)V

    goto/16 :goto_13c

    :cond_2a4
    const-string v0, "4006"

    const-string v1, "4006"

    invoke-static {v1}, Lcom/bbk/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29c

    :cond_2b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v3, "bbk_vcoin_balance"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13c
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

    invoke-virtual {p0, p1, v0}, Lcom/bbk/payment/PaymentActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/PaymentActivity;Lcom/bbk/payment/action/ChannelAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/PaymentActivity;->I:Lcom/bbk/payment/action/ChannelAdapter;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/PaymentActivity;->s:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7a

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->o:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v3, "bbk_submitbtn_margin_top1"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v4, "bbk_submitbtn_margin_bottom1"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->D:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v3, "bbk_paytype_title"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->D:Landroid/widget/Button;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v3, "bbk_pay_next_step"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_79
    return-void

    :cond_7a
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10f

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v3, "bbk_submitbtn_margin_top3"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v4, "bbk_submitbtn_margin_bottom3"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_b1
    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->D:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v3, "bbk_pay_recharge_title"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v2, "bbk_recharge_and_pay"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->s:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->D:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_79

    :cond_10f
    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v3, "bbk_submitbtn_margin_top2"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v4, "bbk_submitbtn_margin_bottom2"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_b1
.end method

.method static synthetic b(Lcom/bbk/payment/PaymentActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/PaymentActivity;->K:I

    return-void
.end method

.method static synthetic b(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/PaymentActivity;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/bbk/payment/PaymentActivity;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_72

    :pswitch_4
    const-string v1, "PaymentActivity"

    const-string v2, "unsupport type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-object v0

    :pswitch_c
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_alipay"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_1d
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_uppay"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_2e
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_card"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_3f
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_game_card"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_50
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_weixin"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_61
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_tencent"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1d
        :pswitch_4
        :pswitch_2e
        :pswitch_3f
        :pswitch_4
        :pswitch_50
        :pswitch_61
    .end packed-switch
.end method

.method static synthetic c(Lcom/bbk/payment/PaymentActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbk/payment/PaymentActivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/PaymentActivity;->w:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->x:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/PaymentActivity;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->y:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/PaymentActivity;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->B:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic g(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->D:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/bbk/payment/PaymentActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->G:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/bbk/payment/PaymentActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->H:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic j(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->E:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic n(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/action/ChannelAdapter;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->I:Lcom/bbk/payment/action/ChannelAdapter;

    return-object v0
.end method

.method static synthetic o(Lcom/bbk/payment/PaymentActivity;)Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic p(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->q:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/bbk/payment/PaymentActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbk/payment/PaymentActivity;->b()V

    return-void
.end method

.method static synthetic t(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/bbk/payment/PaymentActivity;)V
    .registers 7

    :try_start_0
    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_3a

    const-string v0, "PaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doPayment payment_type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",getTicketAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",getPrice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_vcoin_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "payorder_click_recharge"

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->getPayTypeByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getTicketCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/bbk/payment/util/UtilTool;->getShprefsTicketCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setTicketHasChanged(Ljava/lang/String;)V

    :goto_76
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_card"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/CardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_9e
    :goto_9e
    return-void

    :cond_9f
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setTicketHasChanged(Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a6} :catch_a7

    goto :goto_76

    :catch_a7
    move-exception v0

    const-string v1, "PaymentActivity"

    const-string v2, "occur exception in starting payment"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "4000"

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_sys_error"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    :cond_c6
    :try_start_c6
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_game_card"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/JCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gamecard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9e

    :cond_f5
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_uppay"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14d

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_alipay"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14d

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_tencent"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14d

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_weixin"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e5

    :cond_14d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->v:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->s:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setRemainderBlance(J)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setRemainderBlanceY(J)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    iget-object v4, p0, Lcom/bbk/payment/PaymentActivity;->s:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/bbk/payment/model/OrderInfo;->setBlance(J)V

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_1c9

    const-string v1, "PaymentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doPayment ticketAmount="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bbk/payment/PaymentActivity;->v:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",remainder_blance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",orderInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",Long.valueOf(blance)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/PaymentActivity;->s:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c9
    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "payment_type"

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "test"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v1, Lcom/bbk/payment/RechargeChoiceActivity;->mRechargeResult:I

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_9e

    :cond_1e5
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_vcoin_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    new-instance v0, Lcom/bbk/payment/payment/PaymentGW;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->i:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/bbk/payment/payment/PaymentGW;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->g:Lcom/bbk/payment/payment/PaymentGW;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->g:Lcom/bbk/payment/payment/PaymentGW;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->L:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, p0, v1, v2}, Lcom/bbk/payment/payment/PaymentGW;->payment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_20d} :catch_a7

    goto/16 :goto_9e
.end method

.method static synthetic x(Lcom/bbk/payment/PaymentActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/PaymentActivity;->K:I

    return v0
.end method

.method static synthetic y(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->u:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result_code"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_result"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "pay_msg"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->F:Lcom/bbk/payment/payment/VivoPaymentManager;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bbk/payment/payment/VivoPaymentManager;->payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v6}, Lcom/bbk/payment/PaymentActivity;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public getTips(Lcom/bbk/payment/model/OrderInfo;)V
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->H:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPaytipsLastCloseTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2c

    const-string v0, "PaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "lastCloseTime="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-void

    :cond_2c
    new-instance v1, Lcom/bbk/payment/model/DeviceInfo;

    invoke-direct {v1, p0}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x8

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "2.0.2"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "model"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sdkVersion"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getVersionNeme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v1, 0x4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appId"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v1, 0x5

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "packageName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v1, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uid"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v1, 0x7

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "orderAmount"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_ae

    :goto_ab
    array-length v1, v2

    if-lt v0, v1, :cond_d6

    :cond_ae
    new-instance v0, Lcom/bbk/payment/Y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bbk/payment/Y;-><init>(Lcom/bbk/payment/PaymentActivity;B)V

    invoke-virtual {v0, v2}, Lcom/bbk/payment/Y;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b7} :catch_b9

    goto/16 :goto_2b

    :catch_b9
    move-exception v0

    const-string v1, "PaymentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTips failed,error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0

    :cond_d6
    :try_start_d6
    const-string v1, "PaymentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---------------nameValuePairs"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_f6} :catch_b9

    add-int/lit8 v0, v0, 0x1

    goto :goto_ab
.end method

.method public initialPayPairs(Lcom/bbk/payment/model/OrderInfo;)Lorg/json/JSONObject;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/bbk/payment/model/DeviceInfo;

    invoke-direct {v1, p0}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x17

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "2.0.2"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signMethod"

    const-string v6, "MD5"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "model"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sdkVersion"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getVersionNeme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v1, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appId"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v1, 0x7

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "packageName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0x8

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uid"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0x9

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "orderNumber"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0xa

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "orderAmount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v1, "PaymentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "price="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "blance"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getGameBlance()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0xc

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "vip"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getVip()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0xd

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "level"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0xe

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "party"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getParty()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0xf

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "roleId"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getRoleId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0x10

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "roleName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getRoleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0x11

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "serverName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0x12

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "extInfo"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getExtInfo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0x13

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "visitor"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getVisitor()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0x14

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "extuid"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getExtuserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0x15

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "origin"

    iget-object v5, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getValOrigin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getUseMode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a7

    const/16 v1, 0x16

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "test"

    const-string v5, "0"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    :goto_195
    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_19c

    :goto_199
    array-length v1, v2

    if-lt v0, v1, :cond_1d2

    :cond_19c
    new-instance v0, Lcom/bbk/payment/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bbk/payment/aa;-><init>(Lcom/bbk/payment/PaymentActivity;B)V

    invoke-virtual {v0, v2}, Lcom/bbk/payment/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    return-object v0

    :cond_1a7
    const/16 v1, 0x16

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "test"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b4} :catch_1b5

    goto :goto_195

    :catch_1b5
    move-exception v0

    const-string v1, "PaymentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send initial payment failed,error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0

    :cond_1d2
    :try_start_1d2
    const-string v1, "PaymentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---------------nameValuePairs"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1f2} :catch_1b5

    add-int/lit8 v0, v0, 0x1

    goto :goto_199
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v2, "bbk_fade_in"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->z:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_3b

    const-string v0, "PaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult\uff0c requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_4d

    if-nez p2, :cond_49

    const-string v0, "PaymentActivity"

    const-string v1, "cancel from select more channel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    return-void

    :cond_49
    invoke-direct {p0, p1, p2, p3}, Lcom/bbk/payment/PaymentActivity;->a(IILandroid/content/Intent;)V

    goto :goto_48

    :cond_4d
    invoke-direct {p0, p1, p2, p3}, Lcom/bbk/payment/PaymentActivity;->a(IILandroid/content/Intent;)V

    goto :goto_48
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/bbk/payment/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->setOritation(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_activity_payment"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    new-instance v0, Lcom/bbk/payment/PaymentActivityController;

    invoke-direct {v0, p0}, Lcom/bbk/payment/PaymentActivityController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->b:Lcom/bbk/payment/PaymentActivityController;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bbk/payment/payment/VivoPaymentManager;->getInstance(Landroid/content/Context;)Lcom/bbk/payment/payment/VivoPaymentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->F:Lcom/bbk/payment/payment/VivoPaymentManager;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->H:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orderInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/model/OrderInfo;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    if-nez v1, :cond_2fb

    new-instance v0, Lcom/bbk/payment/model/OrderInfo;

    invoke-direct {v0}, Lcom/bbk/payment/model/OrderInfo;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->b:Lcom/bbk/payment/PaymentActivityController;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1}, Lcom/bbk/payment/PaymentActivityController;->detectPayConditions(Lcom/bbk/payment/model/OrderInfo;)Z

    move-result v0

    move v1, v0

    :goto_59
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout_dlg"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout_order_content"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout_content"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "loading_layout"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "retry_layout"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "error_text"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "btn_submit"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->D:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "order_title"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "order_price"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_order_vcoin_balance"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout_ticket"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout_tips"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "tips_content"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "tips_cancel"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "checkbox_ticket"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->r:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout_pay_channel"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout_more_channel"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "label_title"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout_my_ticket"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "channel_list"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->E:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->D:Landroid/widget/Button;

    new-instance v2, Lcom/bbk/payment/V;

    invoke-direct {v2, p0}, Lcom/bbk/payment/V;-><init>(Lcom/bbk/payment/PaymentActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->r:Landroid/widget/CheckBox;

    new-instance v2, Lcom/bbk/payment/W;

    invoke-direct {v2, p0}, Lcom/bbk/payment/W;-><init>(Lcom/bbk/payment/PaymentActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->j:Landroid/widget/TextView;

    new-instance v2, Lcom/bbk/payment/X;

    invoke-direct {v2, p0}, Lcom/bbk/payment/X;-><init>(Lcom/bbk/payment/PaymentActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->p:Landroid/widget/TextView;

    new-instance v2, Lcom/bbk/payment/Q;

    invoke-direct {v2, p0}, Lcom/bbk/payment/Q;-><init>(Lcom/bbk/payment/PaymentActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->y:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/bbk/payment/R;

    invoke-direct {v2, p0}, Lcom/bbk/payment/R;-><init>(Lcom/bbk/payment/PaymentActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->n:Landroid/widget/ImageView;

    new-instance v2, Lcom/bbk/payment/S;

    invoke-direct {v2, p0}, Lcom/bbk/payment/S;-><init>(Lcom/bbk/payment/PaymentActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_260

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v4, "bbk_dlg_margin_left_right"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v5, "bbk_order_content_marginTop_landscape"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v6, "bbk_dlg_margin_left_right"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->J:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const-string v4, "bbk_more_channel_marginTop_landscape"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v7, v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_260
    const-string v0, "PaymentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orderInfo.getProductName()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "select_ticket_amount"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->f:Landroid/widget/TextView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActivity;->G:Ljava/util/ArrayList;

    if-nez v1, :cond_2c3

    const-string v0, "1000"

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_invalid_param"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c2
    return-void

    :cond_2c3
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->b:Lcom/bbk/payment/PaymentActivityController;

    invoke-virtual {v0, p0}, Lcom/bbk/payment/PaymentActivityController;->uploadEventMsg(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    if-eqz v0, :cond_2e9

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getVisitor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e9

    new-instance v0, Lcom/vivo/sdkplugin/TempNoticeDialog;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/bbk/payment/PaymentActivity;->M:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    iget-object v4, p0, Lcom/bbk/payment/PaymentActivity;->N:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/sdkplugin/TempNoticeDialog;-><init>(Landroid/content/Context;ILcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->show()V

    :cond_2e9
    :try_start_2e9
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->initialPayPairs(Lcom/bbk/payment/model/OrderInfo;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActivity;->getTips(Lcom/bbk/payment/model/OrderInfo;)V
    :try_end_2f3
    .catch Ljava/lang/Exception; {:try_start_2e9 .. :try_end_2f3} :catch_2f6

    :goto_2f3
    sput-boolean v7, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    goto :goto_2c2

    :catch_2f6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f3

    :cond_2fb
    move v1, v0

    goto/16 :goto_59
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/bbk/payment/PaymentActivity;->a()V

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/bbk/payment/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public updateTicketChkBox()V
    .registers 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getTicketCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->r:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->r:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_ticket_amount"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method
