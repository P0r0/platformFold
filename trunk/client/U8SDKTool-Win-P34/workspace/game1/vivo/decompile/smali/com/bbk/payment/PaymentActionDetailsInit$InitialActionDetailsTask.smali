.class public Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActionDetailsInit;


# direct methods
.method protected constructor <init>(Lcom/bbk/payment/PaymentActionDetailsInit;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->a:Lcom/bbk/payment/PaymentActionDetailsInit;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lorg/apache/http/NameValuePair;

    invoke-virtual {p0, p1}, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->doInBackground([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    new-instance v0, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->a:Lcom/bbk/payment/PaymentActionDetailsInit;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActionDetailsInit;->a(Lcom/bbk/payment/PaymentActionDetailsInit;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v2, "https://pay.vivo.com.cn/vcoin/queryActivity"

    :try_start_e
    invoke-virtual {v0, v2, p1}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_27

    move-result-object v0

    :try_start_12
    const-string v1, "PaymentActionDetailsInit"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---------------doInBackground11=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_43

    :goto_26
    return-object v0

    :catch_27
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2b
    const-string v2, "PaymentActionDetailsInit"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-------doInBackground=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    :catch_43
    move-exception v1

    goto :goto_2b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_ae

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_b5

    move-result-object v1

    :try_start_d
    const-string v2, "vcoineventpoint"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/bbk/payment/model/OrderInfo;->vcoineventpoint:Z

    const-string v2, "payChannels"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bbk/payment/model/OrderInfo;->payChannel:Ljava/lang/String;

    const-string v2, "custService"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbk/payment/model/OrderInfo;->custService:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_af

    :goto_25
    :try_start_25
    const-string v0, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "201"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    :cond_35
    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->a:Lcom/bbk/payment/PaymentActionDetailsInit;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActionDetailsInit;->a(Lcom/bbk/payment/PaymentActionDetailsInit;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getApkPluginStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->a:Lcom/bbk/payment/PaymentActionDetailsInit;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActionDetailsInit;->a(Lcom/bbk/payment/PaymentActionDetailsInit;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->checkIfAPKExits(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ba

    if-eqz v0, :cond_ba

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.vivo.sdkplugin"

    const-string v3, "com.bbk.payment.PaymentActionActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_63
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "actionRecord"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appId"

    iget-object v2, p0, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->a:Lcom/bbk/payment/PaymentActionDetailsInit;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActionDetailsInit;->b(Lcom/bbk/payment/PaymentActionDetailsInit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uid"

    iget-object v2, p0, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->a:Lcom/bbk/payment/PaymentActionDetailsInit;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActionDetailsInit;->c(Lcom/bbk/payment/PaymentActionDetailsInit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "gamePackageName"

    iget-object v2, p0, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->a:Lcom/bbk/payment/PaymentActionDetailsInit;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActionDetailsInit;->d(Lcom/bbk/payment/PaymentActionDetailsInit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sdkVersionCode"

    iget-object v2, p0, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->a:Lcom/bbk/payment/PaymentActionDetailsInit;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActionDetailsInit;->e(Lcom/bbk/payment/PaymentActionDetailsInit;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->a:Lcom/bbk/payment/PaymentActionDetailsInit;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActionDetailsInit;->a(Lcom/bbk/payment/PaymentActionDetailsInit;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->isGameOnForeground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->a:Lcom/bbk/payment/PaymentActionDetailsInit;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActionDetailsInit;->a(Lcom/bbk/payment/PaymentActionDetailsInit;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_ae
    :goto_ae
    return-void

    :catch_af
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_b3} :catch_b5

    goto/16 :goto_25

    :catch_b5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ae

    :cond_ba
    :try_start_ba
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->a:Lcom/bbk/payment/PaymentActionDetailsInit;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActionDetailsInit;->a(Lcom/bbk/payment/PaymentActionDetailsInit;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bbk/payment/PaymentActionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_63

    :cond_c8
    const-string v0, "PaymentActionDetailsInit"

    const-string v1, "game is note onForeground, do not show action activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_cf} :catch_b5

    goto :goto_ae
.end method

.method protected onPreExecute()V
    .registers 1

    return-void
.end method
