.class public Lcom/bbk/payment/SelectMoreChannelActivity;
.super Lcom/bbk/payment/BaseActivity;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bbk/payment/action/ChannelAdapter;

.field private c:Lcom/bbk/payment/model/OrderInfo;

.field private d:Ljava/util/ArrayList;

.field private e:Landroid/widget/Button;

.field private f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private g:Lcom/bbk/payment/PaymentActivityController;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/ListView;

.field private n:Landroid/widget/TextView;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbk/payment/BaseActivity;-><init>()V

    new-instance v0, Lcom/bbk/payment/model/OrderInfo;

    invoke-direct {v0}, Lcom/bbk/payment/model/OrderInfo;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->p:I

    new-instance v0, Lcom/bbk/payment/as;

    invoke-direct {v0, p0}, Lcom/bbk/payment/as;-><init>(Lcom/bbk/payment/SelectMoreChannelActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->q:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/SelectMoreChannelActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    const-string v0, "SelectMoreChannelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveChannelType, paytype="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLastSelectPayChannel(I)V

    :cond_1b
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pay_msg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/SelectMoreChannelActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->p:I

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/SelectMoreChannelActivity;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/bbk/payment/SelectMoreChannelActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/SelectMoreChannelActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/bbk/payment/SelectMoreChannelActivity;)Lcom/bbk/payment/model/OrderInfo;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    return-object v0
.end method

.method static synthetic c(Lcom/bbk/payment/SelectMoreChannelActivity;)Lcom/bbk/payment/action/ChannelAdapter;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->b:Lcom/bbk/payment/action/ChannelAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/bbk/payment/SelectMoreChannelActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->p:I

    return v0
.end method

.method static synthetic e(Lcom/bbk/payment/SelectMoreChannelActivity;)V
    .registers 7

    :try_start_0
    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_3a

    const-string v0, "SelectMoreChannelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doPayment payment_type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",getTicketAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",getPrice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_vcoin_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    const-string v1, "payorder_click_recharge"

    iget-object v2, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bbk/payment/provider/PaymentUsageUtils;->getPayTypeByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getTicketCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->getShprefsTicketCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setTicketHasChanged(Ljava/lang/String;)V

    :goto_7c
    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_card"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/CardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/SelectMoreChannelActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_a4
    :goto_a4
    return-void

    :cond_a5
    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setTicketHasChanged(Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ac} :catch_ad

    goto :goto_7c

    :catch_ad
    move-exception v0

    const-string v1, "SelectMoreChannelActivity"

    const-string v2, "occur exception in starting payment"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    const-string v1, "4000"

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_pay_sys_error"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bbk/payment/SelectMoreChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bbk/payment/SelectMoreChannelActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    :cond_cd
    :try_start_cd
    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_game_card"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/JCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gamecard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/SelectMoreChannelActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a4

    :cond_fc
    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_uppay"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_154

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_alipay"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_154

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_tencent"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_154

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_weixin"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    :cond_154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setRemainderBlance(J)V

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setRemainderBlanceY(J)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "payment_type"

    iget-object v2, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "test"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v1, Lcom/bbk/payment/RechargeChoiceActivity;->mRechargeResult:I

    invoke-virtual {p0, v0, v1}, Lcom/bbk/payment/SelectMoreChannelActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_a4

    :cond_1a5
    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_vcoin_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->q:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, p0, v1, v2}, Lcom/bbk/payment/payment/PaymentGW;->payment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_1c3} :catch_ad

    goto/16 :goto_a4
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    invoke-super {p0, p1, p2, p3}, Lcom/bbk/payment/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SelectMoreChannelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult, resultCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SelectMoreChannelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_78

    const-string v0, "pay_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SelectMoreChannelActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay_result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5c

    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    iget v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->p:I

    invoke-direct {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->a(I)V

    :cond_5c
    :goto_5c
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3}, Lcom/bbk/payment/SelectMoreChannelActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->finish()V

    return-void

    :cond_64
    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->p:I

    invoke-direct {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->a(I)V

    goto :goto_5c

    :cond_78
    sget v0, Lcom/bbk/payment/TicketActivity;->mBackResult:I

    if-eq v0, p1, :cond_5c

    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getResult_code()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    const-string v0, "9000"

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getResult_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->p:I

    invoke-direct {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->a(I)V

    goto :goto_5c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/bbk/payment/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->setOritation(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_activity_recharge"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->setContentView(I)V

    const-string v0, "SelectMoreChannelActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    new-instance v0, Lcom/bbk/payment/PaymentActivityController;

    invoke-direct {v0, p0}, Lcom/bbk/payment/PaymentActivityController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->g:Lcom/bbk/payment/PaymentActivityController;

    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bbk/payment/payment/VivoPaymentManager;->getInstance(Landroid/content/Context;)Lcom/bbk/payment/payment/VivoPaymentManager;

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orderInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/model/OrderInfo;

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    if-nez v0, :cond_1fb

    new-instance v0, Lcom/bbk/payment/model/OrderInfo;

    invoke-direct {v0}, Lcom/bbk/payment/model/OrderInfo;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->g:Lcom/bbk/payment/PaymentActivityController;

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1}, Lcom/bbk/payment/PaymentActivityController;->detectPayConditions(Lcom/bbk/payment/model/OrderInfo;)Z

    move-result v0

    :goto_5e
    if-nez v0, :cond_74

    const/4 v0, -0x1

    const-string v1, "1000"

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_pay_invalid_param"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/bbk/payment/SelectMoreChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/bbk/payment/SelectMoreChannelActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_74
    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "label_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "loading_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "channel_list_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "dlg_channel_list"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "title_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_submit_btn"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "error_text"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->findViewById(I)Landroid/view/View;

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "btn_back"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "btn_submit"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/SelectMoreChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/SelectMoreChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "channel_list"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/SelectMoreChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->n:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    const-string v5, "bbk_title_select_paymethod"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    const-string v4, "bbk_recharge_and_pay"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v4

    iget-object v3, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v3, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->c:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->e:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/bbk/payment/action/ChannelAdapter;

    iget-object v2, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->d:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/bbk/payment/action/ChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->b:Lcom/bbk/payment/action/ChannelAdapter;

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->m:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->b:Lcom/bbk/payment/action/ChannelAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1dc

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->a:Landroid/content/Context;

    const-string v6, "bbk_channel_item_height"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1dc
    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->h:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Lcom/bbk/payment/at;

    invoke-direct {v1, p0}, Lcom/bbk/payment/at;-><init>(Lcom/bbk/payment/SelectMoreChannelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/SelectMoreChannelActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/bbk/payment/au;

    invoke-direct {v1, p0}, Lcom/bbk/payment/au;-><init>(Lcom/bbk/payment/SelectMoreChannelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1fb
    move v0, v2

    goto/16 :goto_5e
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/bbk/payment/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/bbk/payment/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/bbk/payment/BaseActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/bbk/payment/BaseActivity;->onStop()V

    return-void
.end method
