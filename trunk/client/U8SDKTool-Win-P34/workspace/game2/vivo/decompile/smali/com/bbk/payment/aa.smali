.class final Lcom/bbk/payment/aa;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActivity;


# direct methods
.method private constructor <init>(Lcom/bbk/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbk/payment/PaymentActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbk/payment/aa;-><init>(Lcom/bbk/payment/PaymentActivity;)V

    return-void
.end method

.method private varargs a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 6

    new-instance v1, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-direct {v1, v0}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v2, "https://pay.vivo.com.cn/vcoin/init"

    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {v1, v2, p1}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_27

    move-result-object v0

    :goto_e
    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_26

    const-string v1, "PaymentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground ----------------------resultInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-object v0

    :catch_27
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lorg/apache/http/NameValuePair;

    invoke-direct {p0, p1}, Lcom/bbk/payment/aa;->a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 14

    const/16 v11, 0x8

    const/4 v1, 0x0

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_361

    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "respCode"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "respMsg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "200"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32c

    const-string v0, "payChannels"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "channelActivities"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->h(Lcom/bbk/payment/PaymentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "PaymentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "rechargeChannels.length="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_56
    array-length v0, v5

    if-lt v2, v0, :cond_254

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->h(Lcom/bbk/payment/PaymentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/bbk/payment/action/Channel;

    invoke-direct {v0}, Lcom/bbk/payment/action/Channel;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/bbk/payment/action/Channel;->init(I)Z

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->h(Lcom/bbk/payment/PaymentActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->h(Lcom/bbk/payment/PaymentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_92

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->h(Lcom/bbk/payment/PaymentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/action/Channel;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/bbk/payment/action/Channel;->setCheck(Z)V

    :cond_92
    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->d(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->f(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->g(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->e(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    const-string v2, "blance"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V

    const-string v0, "custService"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbk/payment/model/OrderInfo;->custService:Ljava/lang/String;

    const-string v0, "orderAmount"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->j(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    const-string v2, "ticketAmount"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    const-string v2, "ticketCode"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bbk/payment/PaymentActivity;->c(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->k(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bbk/payment/PaymentActivity;->d(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->l(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bbk/payment/PaymentActivity;->e(Lcom/bbk/payment/PaymentActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->l(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bbk/payment/util/UtilTool;->setShprefsTicketCode(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->h(Lcom/bbk/payment/PaymentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/action/Channel;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->h(Lcom/bbk/payment/PaymentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/action/Channel;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    new-instance v3, Lcom/bbk/payment/action/ChannelAdapter;

    iget-object v4, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v4}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v2, v5}, Lcom/bbk/payment/action/ChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-static {v0, v3}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;Lcom/bbk/payment/action/ChannelAdapter;)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->m(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->n(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/action/ChannelAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "PaymentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ticketCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v3}, Lcom/bbk/payment/PaymentActivity;->l(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->o(Lcom/bbk/payment/PaymentActivity;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "bbk_vcoin_balance"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v4}, Lcom/bbk/payment/PaymentActivity;->j(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->p(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->j(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setBlance(J)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->l(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2fa

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->q(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->r(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->o(Lcom/bbk/payment/PaymentActivity;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v3}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "bbk_dlg_margin_left_right"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v3}, Lcom/bbk/payment/PaymentActivity;->o(Lcom/bbk/payment/PaymentActivity;)Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v4}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "bbk_paychenel_margin_top"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v4}, Lcom/bbk/payment/PaymentActivity;->o(Lcom/bbk/payment/PaymentActivity;)Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v5}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "bbk_dlg_margin_left_right"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->r(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/bbk/payment/model/OrderInfo;->setTicketCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setTicketAmount(J)V

    :goto_249
    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentActivity;->updateTicketChkBox()V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->s(Lcom/bbk/payment/PaymentActivity;)V

    :goto_253
    return-void

    :cond_254
    new-instance v7, Lcom/bbk/payment/action/Channel;

    invoke-direct {v7}, Lcom/bbk/payment/action/Channel;-><init>()V

    aget-object v0, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bbk/payment/action/Channel;->init(I)Z

    move-result v0

    if-eqz v0, :cond_285

    move v0, v1

    :goto_26a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v0, v9, :cond_28a

    :goto_270
    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->i(Lcom/bbk/payment/PaymentActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getLastSelectPayChannel()I

    move-result v0

    if-ne v8, v0, :cond_2f6

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->h(Lcom/bbk/payment/PaymentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_285
    :goto_285
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_56

    :cond_28a
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "channel"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v8, v10, :cond_2f2

    const-string v0, "type"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v10, "desc"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v0}, Lcom/bbk/payment/action/Channel;->setActivityType(I)V

    invoke-virtual {v7, v9}, Lcom/bbk/payment/action/Channel;->setActivityDesc(Ljava/lang/String;)V
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a8} :catch_2a9

    goto :goto_270

    :catch_2a9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->d(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->f(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->g(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->e(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->t(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_network_error"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_253

    :cond_2f2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_26a

    :cond_2f6
    :try_start_2f6
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_285

    :cond_2fa
    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->q(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->l(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bbk/payment/model/OrderInfo;->setTicketCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->k(Lcom/bbk/payment/PaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setTicketAmount(J)V

    goto/16 :goto_249

    :cond_32c
    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->d(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->f(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->g(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->e(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->t(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_253

    :cond_361
    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->d(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->f(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->g(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->e(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->t(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActivity;->b(Lcom/bbk/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_network_error"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3aa
    .catch Ljava/lang/Exception; {:try_start_2f6 .. :try_end_3aa} :catch_2a9

    goto/16 :goto_253
.end method

.method protected final onPreExecute()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->d(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->e(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->f(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aa;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->g(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
