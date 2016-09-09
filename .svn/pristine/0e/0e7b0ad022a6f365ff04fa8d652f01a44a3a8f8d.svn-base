.class final Lcom/bbk/payment/dealRecord/e;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;


# direct methods
.method private constructor <init>(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbk/payment/dealRecord/e;-><init>(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V

    return-void
.end method

.method private varargs a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 6

    const-string v0, "VivoDealRecordActivity"

    const-string v1, "-------doInBackground()--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v2, "https://pay.vivo.com.cn/vcoin/transaction/query"

    const/4 v0, 0x0

    :try_start_15
    invoke-virtual {v1, v2, p1}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_32

    move-result-object v0

    :goto_19
    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_31

    const-string v1, "VivoDealRecordActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground ----------------------resultInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-object v0

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lorg/apache/http/NameValuePair;

    invoke-direct {p0, p1}, Lcom/bbk/payment/dealRecord/e;->a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v2}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->b(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V

    const-string v2, "VivoDealRecordActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-------onPostExecute()--------result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1d
    iget-object v2, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    iget-object v2, v2, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->rogressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    iget-object v2, v2, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->rogressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->rogressDialog:Landroid/app/ProgressDialog;

    :cond_2f
    sget-boolean v2, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v2, :cond_47

    const-string v2, "VivoDealRecordActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPostExecute ----------------------result="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-eqz p1, :cond_153

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "respCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "200"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14c

    iget-object v3, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;Ljava/util/List;)V

    const-string v3, "transaction"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_11d

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_11d

    move v2, v1

    :goto_75
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v2, v4, :cond_b4

    :goto_7b
    iget-object v2, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v2}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->e(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)I

    move-result v2

    if-ne v2, v0, :cond_12e

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v2}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->f(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v3}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->setData(Ljava/util/List;)V

    :goto_92
    iget-object v2, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v2}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->f(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_13f

    move v2, v0

    :goto_9f
    iget-object v3, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v3}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->f(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_142

    :goto_ab
    or-int/2addr v0, v2

    if-eqz v0, :cond_145

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->d(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V

    :goto_b3
    return-void

    :cond_b4
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    invoke-direct {v5}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;-><init>()V

    const-string v6, "account"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->setAccount(Ljava/lang/String;)V

    const-string v6, "amount"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->setAmount(Ljava/lang/String;)V

    const-string v6, "desc"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->setDesc(Ljava/lang/String;)V

    const-string v6, "orderNum"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->setOrderNum(Ljava/lang/String;)V

    const-string v6, "time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->setTime(Ljava/lang/String;)V

    const-string v6, "type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->setType(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_110

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_110

    const-string v6, "ticketAmount"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->setTicketAmount(Ljava/lang/String;)V

    :cond_110
    iget-object v4, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v4}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_75

    :cond_11d
    iget-object v2, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v2}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->d(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_122} :catch_124

    goto/16 :goto_7b

    :catch_124
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->d(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V

    goto :goto_b3

    :cond_12e
    :try_start_12e
    iget-object v2, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v2}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->f(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v3}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->addData(Ljava/util/List;)V

    goto/16 :goto_92

    :cond_13f
    move v2, v1

    goto/16 :goto_9f

    :cond_142
    move v0, v1

    goto/16 :goto_ab

    :cond_145
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->g(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V

    goto/16 :goto_b3

    :cond_14c
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->d(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V

    goto/16 :goto_b3

    :cond_153
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->d(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_158} :catch_124

    goto/16 :goto_b3
.end method

.method protected final onPreExecute()V
    .registers 8

    const/4 v6, 0x0

    const-string v0, "VivoDealRecordActivity"

    const-string v1, "-------onPreExecute()--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v1}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v3}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/dealRecord/e;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v4}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "vivo_loading_string"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v6, v6}, Lcom/bbk/payment/util/UtilTool;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->rogressDialog:Landroid/app/ProgressDialog;

    return-void
.end method
