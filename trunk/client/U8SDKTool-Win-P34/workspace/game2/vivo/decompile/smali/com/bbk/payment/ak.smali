.class final Lcom/bbk/payment/ak;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentRechargeActivity;


# direct methods
.method private constructor <init>(Lcom/bbk/payment/PaymentRechargeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbk/payment/PaymentRechargeActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbk/payment/ak;-><init>(Lcom/bbk/payment/PaymentRechargeActivity;)V

    return-void
.end method

.method private varargs a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 6

    new-instance v1, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->a(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v2, "https://pay.vivo.com.cn/vcoin/paychannels"

    const/4 v0, 0x0

    :try_start_e
    invoke-virtual {v1, v2, p1}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_2b

    move-result-object v0

    :goto_12
    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_2a

    const-string v1, "PaymentRechargeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground, resultInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-object v0

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lorg/apache/http/NameValuePair;

    invoke-direct {p0, p1}, Lcom/bbk/payment/ak;->a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 13

    const/16 v10, 0x8

    const/4 v1, 0x0

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_280

    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "respCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "respMsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "200"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24b

    const-string v2, "payChannels"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "channelActivities"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->g(Lcom/bbk/payment/PaymentRechargeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "PaymentRechargeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "rechargeChannels.length="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_56
    array-length v0, v4

    if-lt v2, v0, :cond_15a

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->g(Lcom/bbk/payment/PaymentRechargeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->g(Lcom/bbk/payment/PaymentRechargeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7f

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->g(Lcom/bbk/payment/PaymentRechargeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/action/Channel;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/bbk/payment/action/Channel;->setCheck(Z)V

    :cond_7f
    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->g(Lcom/bbk/payment/PaymentRechargeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_200

    new-instance v0, Lcom/bbk/payment/action/Channel;

    invoke-direct {v0}, Lcom/bbk/payment/action/Channel;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/bbk/payment/action/Channel;->init(I)Z

    iget-object v2, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentRechargeActivity;->g(Lcom/bbk/payment/PaymentRechargeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    new-instance v2, Lcom/bbk/payment/action/ChannelAdapter;

    iget-object v3, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v3}, Lcom/bbk/payment/PaymentRechargeActivity;->a(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v4}, Lcom/bbk/payment/PaymentRechargeActivity;->g(Lcom/bbk/payment/PaymentRechargeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/bbk/payment/action/ChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-static {v0, v2}, Lcom/bbk/payment/PaymentRechargeActivity;->a(Lcom/bbk/payment/PaymentRechargeActivity;Lcom/bbk/payment/action/ChannelAdapter;)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->i(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentRechargeActivity;->j(Lcom/bbk/payment/PaymentRechargeActivity;)Lcom/bbk/payment/action/ChannelAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->j(Lcom/bbk/payment/PaymentRechargeActivity;)Lcom/bbk/payment/action/ChannelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbk/payment/action/ChannelAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->g(Lcom/bbk/payment/PaymentRechargeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x4

    if-gt v0, v2, :cond_12f

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->k(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->l(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->m(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v4}, Lcom/bbk/payment/PaymentRechargeActivity;->a(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v5}, Lcom/bbk/payment/PaymentRechargeActivity;->a(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "bbk_channel_item_height"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v5}, Lcom/bbk/payment/PaymentRechargeActivity;->g(Lcom/bbk/payment/PaymentRechargeActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_12f
    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->d(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->e(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->c(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->f(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_159
    return-void

    :cond_15a
    new-instance v6, Lcom/bbk/payment/action/Channel;

    invoke-direct {v6}, Lcom/bbk/payment/action/Channel;-><init>()V

    aget-object v0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bbk/payment/action/Channel;->init(I)Z

    move-result v0

    if-eqz v0, :cond_18b

    move v0, v1

    :goto_170
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v0, v8, :cond_190

    :goto_176
    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->h(Lcom/bbk/payment/PaymentRechargeActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getLastSelectPayChannel()I

    move-result v0

    if-ne v7, v0, :cond_1fc

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->g(Lcom/bbk/payment/PaymentRechargeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18b
    :goto_18b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_56

    :cond_190
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "channel"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v7, v9, :cond_1f8

    const-string v0, "type"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v9, "desc"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0}, Lcom/bbk/payment/action/Channel;->setActivityType(I)V

    invoke-virtual {v6, v8}, Lcom/bbk/payment/action/Channel;->setActivityDesc(Ljava/lang/String;)V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1ae} :catch_1af

    goto :goto_176

    :catch_1af
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->d(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->e(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->c(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->f(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->n(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentRechargeActivity;->a(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_network_error"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_159

    :cond_1f8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_170

    :cond_1fc
    :try_start_1fc
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18b

    :cond_200
    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->d(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->e(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->c(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->f(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->n(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentRechargeActivity;->a(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_no_awalable_paytype"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_159

    :cond_24b
    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->d(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->e(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->c(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->f(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->n(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_159

    :cond_280
    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->d(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->e(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->c(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->f(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->n(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentRechargeActivity;->a(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_network_error"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2c9
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_2c9} :catch_1af

    goto/16 :goto_159
.end method

.method protected final onPreExecute()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->c(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->d(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->e(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ak;->a:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->f(Lcom/bbk/payment/PaymentRechargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
