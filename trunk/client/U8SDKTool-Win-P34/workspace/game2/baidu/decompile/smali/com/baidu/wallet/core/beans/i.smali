.class public abstract Lcom/baidu/wallet/core/beans/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/beans/i$b;,
        Lcom/baidu/wallet/core/beans/i$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/wallet/core/beans/i$a;

.field protected mContext:Landroid/content/Context;

.field protected mResponseBack:Z

.field protected mRestTemplate:Lcom/baidu/apollon/restnet/a;

.field protected mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

.field protected mTimeout:J

.field protected timeoutTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/wallet/core/beans/i;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iput-object v2, p0, Lcom/baidu/wallet/core/beans/i;->mContext:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/beans/i;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/wallet/core/beans/i;->mRestTemplate:Lcom/baidu/apollon/restnet/a;

    iput-object v2, p0, Lcom/baidu/wallet/core/beans/i;->timeoutTimer:Ljava/util/Timer;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/wallet/core/beans/i;->mTimeout:J

    iput-object v2, p0, Lcom/baidu/wallet/core/beans/i;->b:Lcom/baidu/wallet/core/beans/i$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/beans/i;->mResponseBack:Z

    iput-object p1, p0, Lcom/baidu/wallet/core/beans/i;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/core/beans/i;)Lcom/baidu/wallet/core/beans/i$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->b:Lcom/baidu/wallet/core/beans/i$a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 4

    if-nez p2, :cond_7

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/i;->getAuthLevel()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/i;->isLbsPayBean()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/core/beans/i;->b(Landroid/content/Context;Ljava/util/List;)V

    :cond_16
    return-object p2
.end method

.method private b(Landroid/content/Context;Ljava/util/List;)V
    .registers 8

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v1, "from"

    const-string v2, "JT"

    invoke-direct {v0, v1, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/i;->getEncode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gbk"

    if-ne v0, v1, :cond_f3

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v1, "_ie"

    const-string v2, "gbk"

    invoke-direct {v0, v1, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v1, "ie"

    const-string v2, "gbk"

    invoke-direct {v0, v1, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2c
    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v1, "ua"

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v1, "imei"

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v1, "imsi"

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5b
    const-string v0, "wime"

    const-string v2, "phone_number"

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cuid_1"

    const-string v2, "phone_number"

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/paysdk/PayUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_79} :catch_10d

    :goto_79
    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "wcp"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/Base64Utils;->encode([B)[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pay/SafePay;->getpwProxy()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_120

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    invoke-virtual {v0}, Lcom/baidu/apollon/restnet/RestNameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "key"

    if-ne v0, v4, :cond_a1

    const/4 v0, 0x1

    :goto_b6
    if-nez v0, :cond_c2

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v1, "key"

    invoke-direct {v0, v1, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c2
    invoke-static {p1}, Lcom/baidu/paysdk/PayUtils;->getCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_113

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "atbc"

    invoke-direct {v1, v2, v0}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_de
    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/i;->isSign()Z

    move-result v0

    if-eqz v0, :cond_f2

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v1, "sign"

    invoke-static {p2}, Lcom/baidu/paysdk/PayUtils;->genAPIsig(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f2
    return-void

    :cond_f3
    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v1, "_ie"

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v1, "ie"

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    :catch_10d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_79

    :cond_113
    new-instance v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v1, "atbc"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_de

    :cond_120
    move v0, v1

    goto :goto_b6
.end method


# virtual methods
.method public destroyBean()V
    .registers 5

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/baidu/wallet/core/beans/i;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    const-string v0, "BeanTaskManager"

    invoke-static {v0}, Lcom/baidu/wallet/core/c/a;->a(Ljava/lang/String;)Lcom/baidu/wallet/core/c/a;

    move-result-object v0

    const-string v1, "NetworkBeanTask"

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mRestTemplate:Lcom/baidu/apollon/restnet/a;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mRestTemplate:Lcom/baidu/apollon/restnet/a;

    invoke-virtual {v0, v3}, Lcom/baidu/apollon/restnet/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mRestTemplate:Lcom/baidu/apollon/restnet/a;

    invoke-virtual {v0, v3}, Lcom/baidu/apollon/restnet/a;->a(Lcom/baidu/apollon/restnet/b/g;)V

    :cond_1e
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->timeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->timeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_27
    return-void
.end method

.method public abstract execBean()V
.end method

.method public execBean(Ljava/lang/Class;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/wallet/core/beans/i;->execBean(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public execBean(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 12

    const-wide/16 v2, 0x0

    new-instance v8, Lcom/baidu/wallet/core/beans/j;

    invoke-direct {v8, p0, p1, p2}, Lcom/baidu/wallet/core/beans/j;-><init>(Lcom/baidu/wallet/core/beans/i;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/i;->getBeanId()I

    move-result v1

    const/4 v2, -0x8

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/i;->mContext:Landroid/content/Context;

    const-string v4, "ebpay_no_network"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    const-string v0, "BeanTaskManager"

    invoke-static {v0}, Lcom/baidu/wallet/core/c/a;->a(Ljava/lang/String;)Lcom/baidu/wallet/core/c/a;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BeanTask_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/i;->getBeanId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/beans/i;->a:Ljava/lang/String;

    new-instance v0, Lcom/baidu/wallet/core/c/a$c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/baidu/wallet/core/beans/i;->a:Ljava/lang/String;

    move-wide v4, v2

    invoke-direct/range {v0 .. v8}, Lcom/baidu/wallet/core/c/a$c;-><init>(Lcom/baidu/wallet/core/c/a;JJZLjava/lang/String;Ljava/lang/Runnable;)V

    const-string v2, "NetworkBeanTask"

    invoke-virtual {v1, v0, v2}, Lcom/baidu/wallet/core/c/a;->a(Lcom/baidu/wallet/core/c/a$c;Ljava/lang/String;)Z

    goto :goto_25
.end method

.method protected abstract executeAndHandleResponse(Ljava/lang/Class;Ljava/lang/Class;)V
.end method

.method public abstract generateRequestParam()Ljava/util/List;
.end method

.method public getAuthLevel()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public abstract getBeanId()I
.end method

.method public getEncode()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getHttpMethod()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected getRequestParams()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/i;->generateRequestParam()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/wallet/core/beans/i;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method protected handleCommonErrors(Ljava/lang/Exception;)V
    .registers 7

    const/16 v4, -0xf

    const-string v0, "NetworkBean"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execBean. exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/baidu/apollon/restnet/RestRuntimeException;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v0, :cond_47

    move-object v0, p1

    check-cast v0, Lcom/baidu/apollon/restnet/RestRuntimeException;

    const-class v1, Ljava/net/SocketTimeoutException;

    invoke-virtual {v0, v1}, Lcom/baidu/apollon/restnet/RestRuntimeException;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/i;->getBeanId()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/i;->mContext:Landroid/content/Context;

    const-string v3, "ebpay_no_network"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v4, v2}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->b:Lcom/baidu/wallet/core/beans/i$a;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->b:Lcom/baidu/wallet/core/beans/i$a;

    invoke-interface {v0}, Lcom/baidu/wallet/core/beans/i$a;->a()V

    :cond_47
    :goto_47
    return-void

    :cond_48
    check-cast p1, Lcom/baidu/apollon/restnet/RestRuntimeException;

    const-class v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {p1, v0}, Lcom/baidu/apollon/restnet/RestRuntimeException;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/i;->getBeanId()I

    move-result v1

    const/16 v2, -0x10

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/i;->mContext:Landroid/content/Context;

    const-string v4, "ebpay_ssl"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto :goto_47

    :cond_66
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/i;->getBeanId()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/i;->mContext:Landroid/content/Context;

    const-string v3, "ebpay_resolve_error"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v4, v2}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto :goto_47

    :cond_78
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/i;->getBeanId()I

    move-result v1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/i;->mContext:Landroid/content/Context;

    const-string v4, "ebpay_resolve_error"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto :goto_47

    :cond_93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method protected handleResponseHeaders(Lcom/baidu/apollon/restnet/http/a;)V
    .registers 10

    const/4 v2, 0x0

    const-string v0, "token"

    invoke-virtual {p1, v0}, Lcom/baidu/apollon/restnet/http/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/i;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->setBfbToken(Ljava/lang/String;)V

    :cond_16
    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lcom/baidu/apollon/restnet/http/a;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c5

    move v1, v2

    :goto_1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    :try_start_2c
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    if-lez v0, :cond_73

    const-string v0, "token"

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getBfbToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/baidu/wallet/base/datamodel/AccountManager;->setBfbToken(Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    :cond_73
    array-length v0, v4

    if-lez v0, :cond_6f

    const-string v0, "AB_EXPERIMENT"

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v2

    :goto_97
    array-length v6, v5

    if-ge v0, v6, :cond_6f

    aget-object v6, v5, v0

    const-string v7, "max-age"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c2

    aget-object v0, v5, v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    if-lez v5, :cond_6f

    invoke-static {}, Lcom/baidu/wallet/base/stastics/ABTestUtil;->getInstance()Lcom/baidu/wallet/base/stastics/ABTestUtil;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-virtual {v5, v4, v0}, Lcom/baidu/wallet/base/stastics/ABTestUtil;->setABCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_bc} :catch_bd

    goto :goto_6f

    :catch_bd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6f

    :cond_c2
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    :cond_c5
    return-void
.end method

.method protected isLbsPayBean()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSign()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract prepareRestTemplate()V
.end method

.method public setConnectionTimeOut(Lcom/baidu/wallet/core/beans/i$a;J)V
    .registers 6

    const-wide/16 v0, 0x3e8

    cmp-long v0, p2, v0

    if-lez v0, :cond_e

    const-wide/16 v0, 0x7530

    cmp-long v0, p2, v0

    if-gez v0, :cond_e

    iput-wide p2, p0, Lcom/baidu/wallet/core/beans/i;->mTimeout:J

    :cond_e
    iput-object p1, p0, Lcom/baidu/wallet/core/beans/i;->b:Lcom/baidu/wallet/core/beans/i$a;

    return-void
.end method

.method public setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/beans/i;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    return-void
.end method
