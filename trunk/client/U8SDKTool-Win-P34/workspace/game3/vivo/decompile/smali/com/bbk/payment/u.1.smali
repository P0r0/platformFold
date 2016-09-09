.class final Lcom/bbk/payment/u;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/DetectPayResultActivity;


# direct methods
.method private constructor <init>(Lcom/bbk/payment/DetectPayResultActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/u;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbk/payment/DetectPayResultActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbk/payment/u;-><init>(Lcom/bbk/payment/DetectPayResultActivity;)V

    return-void
.end method

.method private varargs a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 6

    const-string v0, "DetectPayResultActivity"

    const-string v1, "GameNoticeTask, doInBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v0, p0, Lcom/bbk/payment/u;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->h(Lcom/bbk/payment/DetectPayResultActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v2, "https://pay.vivo.com.cn//vcoin/game/follow/query"

    const/4 v0, 0x0

    :try_start_15
    invoke-virtual {v1, v2, p1}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_32

    move-result-object v0

    :goto_19
    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_31

    const-string v1, "DetectPayResultActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GameNoticeTask, doInBackground, resultInfo="

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

    invoke-direct {p0, p1}, Lcom/bbk/payment/u;->a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x1

    const/16 v4, 0x8

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_82

    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "respCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "200"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/bbk/payment/u;->a:Lcom/bbk/payment/DetectPayResultActivity;

    const-string v3, "show"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/bbk/payment/DetectPayResultActivity;->c(Lcom/bbk/payment/DetectPayResultActivity;I)V

    iget-object v2, p0, Lcom/bbk/payment/u;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v2}, Lcom/bbk/payment/DetectPayResultActivity;->i(Lcom/bbk/payment/DetectPayResultActivity;)I

    move-result v2

    if-ne v2, v0, :cond_5a

    :goto_2d
    const-string v2, "followed"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/bbk/payment/u;->a:Lcom/bbk/payment/DetectPayResultActivity;

    const-string v2, "followed"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/bbk/payment/DetectPayResultActivity;->d(Lcom/bbk/payment/DetectPayResultActivity;I)V

    :cond_41
    const-string v0, "gameName"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/bbk/payment/u;->a:Lcom/bbk/payment/DetectPayResultActivity;

    const-string v2, "gameName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbk/payment/DetectPayResultActivity;->a(Lcom/bbk/payment/DetectPayResultActivity;Ljava/lang/String;)V

    :goto_54
    iget-object v0, p0, Lcom/bbk/payment/u;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->j(Lcom/bbk/payment/DetectPayResultActivity;)V

    :goto_59
    return-void

    :cond_5a
    const/4 v0, 0x0

    goto :goto_2d

    :cond_5c
    iget-object v0, p0, Lcom/bbk/payment/u;->a:Lcom/bbk/payment/DetectPayResultActivity;

    iget-object v1, p0, Lcom/bbk/payment/u;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-virtual {v1}, Lcom/bbk/payment/DetectPayResultActivity;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbk/payment/DetectPayResultActivity;->a(Lcom/bbk/payment/DetectPayResultActivity;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_67} :catch_68

    goto :goto_54

    :catch_68
    move-exception v0

    iget-object v1, p0, Lcom/bbk/payment/u;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v1}, Lcom/bbk/payment/DetectPayResultActivity;->k(Lcom/bbk/payment/DetectPayResultActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59

    :cond_76
    :try_start_76
    iget-object v0, p0, Lcom/bbk/payment/u;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->k(Lcom/bbk/payment/DetectPayResultActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_59

    :cond_82
    iget-object v0, p0, Lcom/bbk/payment/u;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->k(Lcom/bbk/payment/DetectPayResultActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8d} :catch_68

    goto :goto_59
.end method

.method protected final onPreExecute()V
    .registers 1

    return-void
.end method
