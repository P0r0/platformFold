.class public Lcom/bbk/payment/PaymentActionDetailsInit;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getSdkVerCode()I

    move-result v0

    iput v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->g:I

    iput-object p2, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->d:Ljava/lang/String;

    :try_start_27
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionDetailsInit;->actionDetailsPairs()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getSdkVerCode()I

    move-result v0

    iput v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->g:I

    iput-object p2, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->c:Ljava/lang/String;

    :try_start_27
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionDetailsInit;->actionDetailsPairs()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method static synthetic a(Lcom/bbk/payment/PaymentActionDetailsInit;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/bbk/payment/PaymentActionDetailsInit;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/bbk/payment/PaymentActionDetailsInit;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/bbk/payment/PaymentActionDetailsInit;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/bbk/payment/PaymentActionDetailsInit;)I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->g:I

    return v0
.end method


# virtual methods
.method public actionDetailsPairs()V
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x7

    :try_start_9
    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "2.0.2"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "appId"

    iget-object v6, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->b:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "packageName"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    new-instance v1, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v3, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getApkPluginStarted()Z

    move-result v1

    iget-object v3, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->checkIfAPKExits(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_93

    if-eqz v1, :cond_93

    const-string v1, "PaymentActionDetailsInit"

    const-string v3, "origin apk"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "origin"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    :goto_77
    const/4 v1, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uid"

    iget-object v5, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_8a

    :goto_87
    array-length v1, v2

    if-lt v0, v1, :cond_c1

    :cond_8a
    new-instance v0, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;

    invoke-direct {v0, p0}, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;-><init>(Lcom/bbk/payment/PaymentActionDetailsInit;)V

    invoke-virtual {v0, v2}, Lcom/bbk/payment/PaymentActionDetailsInit$InitialActionDetailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_93
    const/4 v1, 0x5

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "origin"

    iget-object v5, p0, Lcom/bbk/payment/PaymentActionDetailsInit;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getValOrigin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_a3} :catch_a4

    goto :goto_77

    :catch_a4
    move-exception v0

    const-string v1, "PaymentActionDetailsInit"

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

    :cond_c1
    :try_start_c1
    const-string v1, "PaymentActionDetailsInit"

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
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_e1} :catch_a4

    add-int/lit8 v0, v0, 0x1

    goto :goto_87
.end method
