.class final Lcom/bbk/payment/E;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaySuccActivity;


# direct methods
.method private constructor <init>(Lcom/bbk/payment/PaySuccActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/E;->a:Lcom/bbk/payment/PaySuccActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbk/payment/PaySuccActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbk/payment/E;-><init>(Lcom/bbk/payment/PaySuccActivity;)V

    return-void
.end method

.method private varargs a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 6

    const-string v0, "PaySuccActivity"

    const-string v1, "-------doInBackground()--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v0, p0, Lcom/bbk/payment/E;->a:Lcom/bbk/payment/PaySuccActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaySuccActivity;->a(Lcom/bbk/payment/PaySuccActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v2, "https://pay.vivo.com.cn/vcoin/game/follow"

    const/4 v0, 0x0

    :try_start_15
    invoke-virtual {v1, v2, p1}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_32

    move-result-object v0

    :goto_19
    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_31

    const-string v1, "PaySuccActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CommitGameNoticeTask, doInBackground, resultInfo="

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

    invoke-direct {p0, p1}, Lcom/bbk/payment/E;->a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_43

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v0, p0, Lcom/bbk/payment/E;->a:Lcom/bbk/payment/PaySuccActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaySuccActivity;->b(Lcom/bbk/payment/PaySuccActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameFollowChecked(I)V

    :goto_21
    return-void

    :cond_22
    const-string v1, "PaySuccActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CommitGameNotice fail, respCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_37

    goto :goto_21

    :catch_37
    move-exception v0

    const-string v1, "PaySuccActivity"

    const-string v2, "CommitGameNotice fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21

    :cond_43
    :try_start_43
    const-string v0, "PaySuccActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CommitGameNotice fail, result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_57} :catch_37

    goto :goto_21
.end method

.method protected final onPreExecute()V
    .registers 3

    const-string v0, "PaySuccActivity"

    const-string v1, "-------onPreExecute()--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
