.class public Lcom/bbk/payment/PaymentRechargeActivity;
.super Lcom/bbk/payment/BaseActivity;


# static fields
.field public static final MSG_UPDATE_DLG_HEIGHT:I = 0x1

.field public static mRechargeResult:I


# instance fields
.field private a:Lcom/bbk/payment/model/OrderInfo;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/bbk/payment/payment/VivoPaymentManager;

.field private e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private f:Landroid/content/Context;

.field private g:Lcom/bbk/payment/action/ChannelAdapter;

.field private h:Ljava/util/ArrayList;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/TextView;

.field private q:I

.field private r:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

.field private s:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x11

    sput v0, Lcom/bbk/payment/PaymentRechargeActivity;->mRechargeResult:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbk/payment/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->q:I

    new-instance v0, Lcom/bbk/payment/ad;

    invoke-direct {v0, p0}, Lcom/bbk/payment/ad;-><init>(Lcom/bbk/payment/PaymentRechargeActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->r:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    new-instance v0, Lcom/bbk/payment/ae;

    invoke-direct {v0, p0}, Lcom/bbk/payment/ae;-><init>(Lcom/bbk/payment/PaymentRechargeActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->s:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/PaymentRechargeActivity;I)I
    .registers 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_48

    :goto_4
    return v0

    :pswitch_5
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_background_icon1"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :pswitch_10
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_background_icon2"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :pswitch_1b
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_background_icon3"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :pswitch_26
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_background_icon31"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :pswitch_31
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_background_icon31"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :pswitch_3c
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

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

.method static synthetic a(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    const-string v0, "PaymentRechargeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveChannelType, paytype="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLastSelectPayChannel(I)V

    :cond_1b
    return-void
.end method

.method private a(ILandroid/os/Bundle;)V
    .registers 6

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_24

    const-string v0, "PaymentRechargeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returnPayResult result_code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",orderInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pay_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/PaymentRechargeActivity;Lcom/bbk/payment/action/ChannelAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->g:Lcom/bbk/payment/action/ChannelAdapter;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/PaymentRechargeActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/bbk/payment/PaymentRechargeActivity;)V
    .registers 5

    :try_start_0
    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_3a

    const-string v0, "PaymentRechargeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doPayment payment_type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",getTicketAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",getPrice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_card"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/CardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_62
    :goto_62
    return-void

    :cond_63
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_game_card"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/JCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gamecard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_91} :catch_92

    goto :goto_62

    :catch_92
    move-exception v0

    const-string v1, "PaymentRechargeActivity"

    const-string v2, "occur exception in starting payment"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "4000"

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_sys_error"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_b1
    :try_start_b1
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_uppay"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_109

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_alipay"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_109

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_tencent"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_109

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_weixin"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "payment_type"

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Lcom/bbk/payment/RechargeChoiceActivity;->mRechargeResult:I

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_123} :catch_92

    goto/16 :goto_62
.end method

.method static synthetic b(Lcom/bbk/payment/PaymentRechargeActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->q:I

    return-void
.end method

.method static synthetic c(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/bbk/payment/PaymentRechargeActivity;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_72

    :pswitch_4
    const-string v1, "PaymentRechargeActivity"

    const-string v2, "unsupport type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-object v0

    :pswitch_c
    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_alipay"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_1d
    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_uppay"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_2e
    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_card"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_3f
    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_game_card"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_50
    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_weixin"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_61
    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

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

.method static synthetic d(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/bbk/payment/PaymentRechargeActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/bbk/payment/PaymentRechargeActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic i(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/bbk/payment/PaymentRechargeActivity;)Lcom/bbk/payment/action/ChannelAdapter;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->g:Lcom/bbk/payment/action/ChannelAdapter;

    return-object v0
.end method

.method static synthetic k(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->m:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/bbk/payment/PaymentRechargeActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->q:I

    return v0
.end method


# virtual methods
.method public detectPayConditions(Lcom/bbk/payment/model/OrderInfo;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "payment_params"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1a6

    const-string v2, "package"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PaymentRechargeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "strPojo="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_34
    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10a

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setPackageN(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bbk/payment/PaymentRechargeActivity;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePackageName(Ljava/lang/String;)V

    if-eqz v3, :cond_5e

    const-string v1, "uid"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaymentRechargeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "strPojo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v1

    :cond_6a
    const-string v2, "PaymentRechargeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12c

    invoke-virtual {p1, v1}, Lcom/bbk/payment/model/OrderInfo;->setUserId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v1

    if-nez v1, :cond_134

    const-string v1, "0"

    :goto_96
    const-string v2, "PaymentRechargeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "visitor="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_138

    invoke-virtual {p1, v1}, Lcom/bbk/payment/model/OrderInfo;->setVisitor(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getMainToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaymentRechargeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "token="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_140

    invoke-virtual {p1, v1}, Lcom/bbk/payment/model/OrderInfo;->setToken(Ljava/lang/String;)V

    :cond_d6
    :goto_d6
    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getLoginSk()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaymentRechargeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "user key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16f

    invoke-virtual {p1, v1}, Lcom/bbk/payment/model/OrderInfo;->setSk(Ljava/lang/String;)V

    :goto_f9
    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18a

    invoke-virtual {p1, v0}, Lcom/bbk/payment/model/OrderInfo;->setAppId(Ljava/lang/String;)V

    :goto_108
    const/4 v0, 0x1

    :goto_109
    return v0

    :cond_10a
    const-string v1, "PaymentRechargeActivity"

    const-string v2, "miss param=packagename"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_111} :catch_112

    goto :goto_109

    :catch_112
    move-exception v0

    const-string v1, "PaymentRechargeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "occur exception in detect pay condition,error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108

    :cond_12c
    :try_start_12c
    const-string v1, "PaymentRechargeActivity"

    const-string v2, "miss param=userId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_109

    :cond_134
    const-string v1, "1"

    goto/16 :goto_96

    :cond_138
    const-string v1, "PaymentRechargeActivity"

    const-string v2, "miss param=visitor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_109

    :cond_140
    if-eqz v3, :cond_d6

    const-string v1, "token"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaymentRechargeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "token1="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_167

    invoke-virtual {p1, v1}, Lcom/bbk/payment/model/OrderInfo;->setToken(Ljava/lang/String;)V

    goto/16 :goto_d6

    :cond_167
    const-string v1, "PaymentRechargeActivity"

    const-string v2, "miss param=token"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_109

    :cond_16f
    if-eqz v3, :cond_177

    const-string v1, "sk"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_177
    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_182

    invoke-virtual {p1, v1}, Lcom/bbk/payment/model/OrderInfo;->setSk(Ljava/lang/String;)V

    goto/16 :goto_f9

    :cond_182
    const-string v1, "PaymentRechargeActivity"

    const-string v2, "miss param=sk"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_109

    :cond_18a
    if-eqz v3, :cond_192

    const-string v0, "appId"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_192
    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19d

    invoke-virtual {p1, v0}, Lcom/bbk/payment/model/OrderInfo;->setAppId(Ljava/lang/String;)V

    goto/16 :goto_108

    :cond_19d
    const-string v0, "PaymentRechargeActivity"

    const-string v1, "miss param=appid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_1a4} :catch_112

    goto/16 :goto_108

    :cond_1a6
    move-object v2, v1

    goto/16 :goto_28
.end method

.method public failForPay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    const-string v0, "PaymentRechargeActivity"

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

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result_code"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_result"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "pay_msg"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uid"

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blance"

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v4

    invoke-virtual {v6, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->d:Lcom/bbk/payment/payment/VivoPaymentManager;

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bbk/payment/payment/VivoPaymentManager;->rechargeResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v6}, Lcom/bbk/payment/PaymentRechargeActivity;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public initialRechargeChannels()V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "PaymentRechargeActivity"

    const-string v2, "initialRechargeChannels"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    new-instance v1, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

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

    const-string v5, "sdkVersion"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getVersionNeme()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "model"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v1, 0x4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appId"

    iget-object v5, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v5}, Lcom/bbk/payment/model/OrderInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v1, 0x5

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "packageName"

    iget-object v5, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v5}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v1, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uid"

    iget-object v5, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v5}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v1, 0x7

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "origin"

    iget-object v5, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getValOrigin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_90

    :goto_8d
    array-length v1, v2

    if-lt v0, v1, :cond_9a

    :cond_90
    new-instance v0, Lcom/bbk/payment/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bbk/payment/ak;-><init>(Lcom/bbk/payment/PaymentRechargeActivity;B)V

    invoke-virtual {v0, v2}, Lcom/bbk/payment/ak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_99
    return-void

    :cond_9a
    const-string v1, "PaymentRechargeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nameValuePairs"

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
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_ba} :catch_bd

    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :catch_bd
    move-exception v0

    const-string v1, "PaymentRechargeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send recharge channels failed, error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_99
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    const/4 v2, 0x1

    const-string v0, "PaymentRechargeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult requestCode="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",resultCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",data="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_99

    sget v0, Lcom/bbk/payment/RechargeChoiceActivity;->mRechargeResult:I

    if-eq p2, v0, :cond_5f

    const/4 v0, 0x4

    if-eq p2, v0, :cond_5f

    const-string v0, "pay_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    iget v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->q:I

    invoke-direct {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->a(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/DetectPayResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->finish()V

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    iget v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->q:I

    invoke-direct {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->a(I)V

    const-string v0, "4000"

    const-string v1, "4006"

    invoke-static {v1}, Lcom/bbk/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :cond_7f
    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "6001"

    const-string v1, "4006"

    invoke-static {v1}, Lcom/bbk/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :cond_99
    const-string v0, "9000"

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getResult_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->q:I

    invoke-direct {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->a(I)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "uid"

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result_code"

    const-string v1, "9000"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_msg"

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "bbk_pay_succ"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_result"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "blance"

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v4

    invoke-virtual {v6, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->d:Lcom/bbk/payment/payment/VivoPaymentManager;

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "9000"

    const-string v4, ""

    iget-object v5, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v5}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bbk/payment/payment/VivoPaymentManager;->rechargeResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v6}, Lcom/bbk/payment/PaymentRechargeActivity;->a(ILandroid/os/Bundle;)V

    :goto_ff
    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setResult_code(Ljava/lang/String;)V

    goto/16 :goto_5f

    :cond_107
    const-string v0, "4006"

    const-string v1, "4006"

    invoke-static {v1}, Lcom/bbk/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/bbk/payment/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->setOritation(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_activity_recharge"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/bbk/payment/payment/VivoPaymentManager;->getInstance(Landroid/content/Context;)Lcom/bbk/payment/payment/VivoPaymentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->d:Lcom/bbk/payment/payment/VivoPaymentManager;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    new-instance v0, Lcom/bbk/payment/model/OrderInfo;

    invoke-direct {v0}, Lcom/bbk/payment/model/OrderInfo;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->detectPayConditions(Lcom/bbk/payment/model/OrderInfo;)Z

    move-result v0

    if-nez v0, :cond_12a

    const-string v0, "1000"

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_invalid_param"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "loading_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "channel_list_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "retry_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "dlg_channel_list"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "title_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_submit_btn"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "error_text"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "btn_back"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentRechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "btn_submit"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->i:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "channel_list"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->c:Landroid/widget/ListView;

    new-instance v2, Lcom/bbk/payment/af;

    invoke-direct {v2, p0}, Lcom/bbk/payment/af;-><init>(Lcom/bbk/payment/PaymentRechargeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->l:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/bbk/payment/ag;

    invoke-direct {v2, p0}, Lcom/bbk/payment/ag;-><init>(Lcom/bbk/payment/PaymentRechargeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/bbk/payment/ah;

    invoke-direct {v1, p0}, Lcom/bbk/payment/ah;-><init>(Lcom/bbk/payment/PaymentRechargeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/bbk/payment/ai;

    invoke-direct {v1, p0}, Lcom/bbk/payment/ai;-><init>(Lcom/bbk/payment/PaymentRechargeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentRechargeActivity;->initialRechargeChannels()V

    return-void

    :cond_12a
    sput-boolean v2, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    sput-boolean v2, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getVisitor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Lcom/vivo/sdkplugin/TempNoticeDialog;

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity;->f:Landroid/content/Context;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/bbk/payment/PaymentRechargeActivity;->r:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    iget-object v4, p0, Lcom/bbk/payment/PaymentRechargeActivity;->s:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/sdkplugin/TempNoticeDialog;-><init>(Landroid/content/Context;ILcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->show()V

    goto/16 :goto_4e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    const-string v0, "6001"

    const-string v1, "6001"

    invoke-static {v1}, Lcom/bbk/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/PaymentRechargeActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1, p2}, Lcom/bbk/payment/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method
