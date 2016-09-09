.class public Lcom/bbkmobile/iqoo/payment/PaymentActivityController;
.super Ljava/lang/Object;


# static fields
.field private static d:[Ljava/lang/String;

.field private static e:[Ljava/lang/String;

.field private static g:Lorg/json/JSONObject;


# instance fields
.field private a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;

.field private f:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V
    .registers 5

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    const-string v0, "payment_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->c:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1, v2}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->getPaymentChannalByType(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->d:[Ljava/lang/String;

    sput-object v0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->e:[Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->getPaymentChannalIconsByType(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->f:Landroid/content/res/TypedArray;

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .registers 5

    const/4 v1, 0x0

    move v0, p1

    :goto_2
    :try_start_2
    sget-object v2, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_8

    :goto_7
    return v0

    :cond_8
    sget-object v2, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->d:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_16

    move-result v2

    if-eqz v2, :cond_13

    move v0, v1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static detectMinPayAmount(ID)Z
    .registers 8

    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->g:Lorg/json/JSONObject;

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_6e

    :goto_9
    :pswitch_9
    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v1, v2, p1

    if-ltz v1, :cond_23

    const/4 v0, 0x0

    :cond_23
    :goto_23
    return v0

    :pswitch_24
    sget-object v1, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->g:Lorg/json/JSONObject;

    const-string v2, "alipay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :pswitch_2d
    sget-object v1, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->g:Lorg/json/JSONObject;

    const-string v2, "unionpay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :pswitch_36
    sget-object v1, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->g:Lorg/json/JSONObject;

    const-string v2, "tenpay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :pswitch_3f
    sget-object v1, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->g:Lorg/json/JSONObject;

    const-string v2, "cardpay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :pswitch_48
    sget-object v1, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->g:Lorg/json/JSONObject;

    const-string v2, "weixin"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4f} :catch_51

    move-result-object v1

    goto :goto_9

    :catch_51
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "PaymentActivityController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "occur exception in detect min pay amount ,error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2d
        :pswitch_36
        :pswitch_3f
        :pswitch_9
        :pswitch_9
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public detectForMinPayAmount()V
    .registers 8

    new-instance v1, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-direct {v1, v0}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-direct {v2, v0}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v3, v0, [Lorg/apache/http/NameValuePair;

    const/4 v0, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "1.0.0"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v0

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_64

    const-string v0, "865409018526878"

    :goto_2a
    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v0, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "model"

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v0

    const-string v0, "https://pay.vivo.com.cn/vivoPay/queryMinFee"

    invoke-virtual {v1, v0, v3}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->g:Lorg/json/JSONObject;

    const-string v0, "respCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->g:Lorg/json/JSONObject;

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_63

    :cond_60
    const/4 v0, 0x0

    sput-object v0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->g:Lorg/json/JSONObject;

    :cond_63
    return-void

    :cond_64
    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method

.method public detectPayConditions(Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-direct {v1, v2}, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p1}, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->detectPayParameter(Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result v0

    :goto_c
    return v0

    :catch_d
    move-exception v1

    const-string v2, "PaymentActivityController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "occur exception in detect pay condition,error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public failByUPdate()V
    .registers 6

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    const-string v1, "6000"

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-virtual {v3}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_self_update"

    invoke-static {v3, v4}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->failForPay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPayIconId(Ljava/lang/String;I)I
    .registers 5

    invoke-static {p1, p2}, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->a(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->f:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getPayType(I)Ljava/lang/String;
    .registers 5

    const-string v0, "PaymentActivityController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", payment_items.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->e:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->e:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public loadPaymentType()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->b:Landroid/content/SharedPreferences;

    const-string v2, "last_payment_type"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_1f

    move-result-object v0

    :try_start_a
    const-string v1, "PaymentActivityController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load,last_payment_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_3f

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_23
    const-string v2, "PaymentActivityController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "occur exception in load this payment type,error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    :catch_3f
    move-exception v1

    goto :goto_23
.end method

.method public savePaymentType(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    const-string v0, "PaymentActivityController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save,last_payment_type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_payment_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    const-string v1, "PaymentActivityController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "occur exception in save this payment type,error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public updateSelectItem(Ljava/lang/String;I)V
    .registers 9

    const/4 v1, 0x0

    const-string v0, "PaymentActivityController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    :goto_18
    sget-object v3, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->e:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_33

    if-ltz v2, :cond_32

    sget-object v0, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->e:[Ljava/lang/String;

    array-length v0, v0

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x1

    sget-object v3, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->e:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v4, v1

    :goto_2b
    sget-object v3, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->e:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_43

    sput-object v4, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->e:[Ljava/lang/String;

    :cond_32
    return-void

    :cond_33
    sget-object v3, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    if-eqz v0, :cond_40

    move v2, v0

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_43
    if-eq v1, v2, :cond_4e

    add-int/lit8 v3, v0, 0x1

    sget-object v5, Lcom/bbkmobile/iqoo/payment/PaymentActivityController;->e:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v0

    move v0, v3

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b
.end method
