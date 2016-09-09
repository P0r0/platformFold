.class public abstract Lcom/baidu/wallet/core/beans/BaseBean;
.super Lcom/baidu/wallet/core/beans/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/beans/i;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    invoke-static {p1, p2}, Lcom/baidu/wallet/core/utils/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method protected executeAndHandleResponse(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 8

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getHttpMethod()I

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRestTemplate:Lcom/baidu/apollon/restnet/a;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getRequestParams()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getEncode()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isString(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-class v0, Lcom/baidu/wallet/core/beans/BeanResponseString;

    :goto_20
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/apollon/restnet/a;->b(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Lcom/baidu/apollon/restnet/http/c;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/wallet/core/beans/BaseBean;->handleResponse(Ljava/lang/Class;Ljava/lang/Class;Lcom/baidu/apollon/restnet/http/c;)V

    return-void

    :cond_28
    const-class v0, Lcom/baidu/wallet/core/beans/BeanResponseBase;

    goto :goto_20

    :cond_2b
    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getHttpMethod()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRestTemplate:Lcom/baidu/apollon/restnet/a;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getRequestParams()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getEncode()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isString(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-class v0, Lcom/baidu/wallet/core/beans/BeanResponseString;

    :goto_48
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/apollon/restnet/a;->d(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Lcom/baidu/apollon/restnet/http/c;

    move-result-object v0

    goto :goto_24

    :cond_4d
    const-class v0, Lcom/baidu/wallet/core/beans/BeanResponseBase;

    goto :goto_48
.end method

.method public handleResponse(Ljava/lang/Class;Ljava/lang/Class;Lcom/baidu/apollon/restnet/http/c;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v5, -0x4

    if-eqz p3, :cond_129

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v0, :cond_129

    invoke-virtual {p3}, Lcom/baidu/apollon/restnet/http/c;->b()Lcom/baidu/apollon/restnet/http/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/beans/BaseBean;->handleResponseHeaders(Lcom/baidu/apollon/restnet/http/a;)V

    invoke-virtual {p3}, Lcom/baidu/apollon/restnet/http/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/beans/BeanResponseBase;

    if-eqz v0, :cond_116

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getServerReturnValue(Ljava/lang/Class;)I

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseErrContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    if-eqz p2, :cond_50

    invoke-static {}, Lcom/baidu/wallet/core/eventbus/EventBus;->getInstance()Lcom/baidu/wallet/core/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/baidu/wallet/core/eventbus/EventBus$Event;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "ev_bean_execut_err_content"

    new-instance v5, Lcom/baidu/wallet/core/beans/g;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v6

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseErrContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/baidu/wallet/core/beans/BaseBean;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v5, v6, v1, v7, v0}, Lcom/baidu/wallet/core/beans/g;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, v2, v4, v5}, Lcom/baidu/wallet/core/eventbus/EventBus$Event;-><init>(Lcom/baidu/wallet/core/eventbus/EventBus;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/baidu/wallet/core/eventbus/EventBus;->post(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    iget-object v2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v3

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v1, v0}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto :goto_4f

    :cond_5e
    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_71

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->setBfbToken(Ljava/lang/String;)V

    :cond_71
    const-string v1, "BeasBean"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execBean. ret       . rsp class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_107

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isString(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v2

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseConstent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v4, v0}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecSuccess(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_4f

    :cond_9f
    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseConstent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/baidu/wallet/core/beans/BaseBean;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-string v1, "BeasBean"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execBean. ret ok. real response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_f4

    move-object v1, v2

    check-cast v1, Lcom/baidu/wallet/core/beans/IBeanResponse;

    invoke-interface {v1}, Lcom/baidu/wallet/core/beans/IBeanResponse;->checkResponseValidity()Z

    move-result v1

    if-eqz v1, :cond_e1

    move-object v1, v2

    check-cast v1, Lcom/baidu/wallet/core/beans/IBeanResponse;

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    invoke-interface {v1, v3}, Lcom/baidu/wallet/core/beans/IBeanResponse;->storeResponse(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v3

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v2, v0}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecSuccess(ILjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4f

    :cond_e1
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v3, "ebpay_resolve_error"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v5, v2}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto/16 :goto_4f

    :cond_f4
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v3, "ebpay_resolve_error"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v5, v2}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto/16 :goto_4f

    :cond_107
    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v2

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v4, v0}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecSuccess(ILjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4f

    :cond_116
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v3, "ebpay_resolve_error"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v5, v2}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto/16 :goto_4f

    :cond_129
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v3, "ebpay_resolve_error"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v5, v2}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto/16 :goto_4f
.end method

.method protected prepareRestTemplate()V
    .registers 5

    new-instance v0, Lcom/baidu/apollon/restnet/a;

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v2, "Apache-HttpClient/Android"

    const-string v3, "pay bean http request"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/apollon/restnet/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRestTemplate:Lcom/baidu/apollon/restnet/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/baidu/wallet/core/beans/h;

    invoke-direct {v1}, Lcom/baidu/wallet/core/beans/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRestTemplate:Lcom/baidu/apollon/restnet/a;

    invoke-virtual {v1, v0}, Lcom/baidu/apollon/restnet/a;->a(Ljava/util/List;)V

    new-instance v0, Lcom/baidu/apollon/restnet/a/c;

    invoke-direct {v0}, Lcom/baidu/apollon/restnet/a/c;-><init>()V

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRestTemplate:Lcom/baidu/apollon/restnet/a;

    invoke-virtual {v1, v0}, Lcom/baidu/apollon/restnet/a;->a(Lcom/baidu/apollon/restnet/a/a;)V

    return-void
.end method
