.class public abstract Lcom/baidu/paysdk/ui/PayBaseActivity;
.super Lcom/baidu/wallet/core/beans/BeanActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/ui/PayBaseActivity$PayType;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE:I = 0x3e8


# instance fields
.field private a:Lcom/baidu/paysdk/beans/q;

.field private b:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

.field private c:Z

.field private d:Landroid/os/CountDownTimer;

.field private e:J

.field protected isOneKeyPay:Z

.field protected mErrorContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isOneKeyPay:Z

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->e:J

    return-void
.end method

.method static synthetic a(Lcom/baidu/paysdk/ui/PayBaseActivity;J)J
    .registers 4

    iput-wide p1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->e:J

    return-wide p1
.end method

.method private a()V
    .registers 7

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-boolean v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isOneKeyPay:Z

    if-eqz v1, :cond_63

    const-string v1, "onekeyPayAcceptSuccess"

    if-eqz v0, :cond_60

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_16
    invoke-static {p0, v1, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->a:Lcom/baidu/paysdk/beans/q;

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/16 v1, 0xc

    const-string v2, "PayBaseActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/q;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->a:Lcom/baidu/paysdk/beans/q;

    :cond_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->c:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->a:Lcom/baidu/paysdk/beans/q;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/q;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->a:Lcom/baidu/paysdk/beans/q;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/q;->execBean()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    :cond_46
    new-instance v0, Lcom/baidu/paysdk/ui/ar;

    iget-wide v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_74

    iget-wide v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->e:J

    :goto_52
    const-wide/16 v4, 0xbb8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/paysdk/ui/ar;-><init>(Lcom/baidu/paysdk/ui/PayBaseActivity;JJ)V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    :cond_60
    const-string v0, ""

    goto :goto_16

    :cond_63
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bindPayAcceptSuccess"

    if-eqz v0, :cond_71

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_6d
    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_71
    const-string v0, ""

    goto :goto_6d

    :cond_74
    const-wide/16 v2, 0x4e20

    goto :goto_52
.end method

.method static synthetic a(Lcom/baidu/paysdk/ui/PayBaseActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/paysdk/ui/PayBaseActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/paysdk/ui/PayBaseActivity;)Lcom/baidu/paysdk/beans/q;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->a:Lcom/baidu/paysdk/beans/q;

    return-object v0
.end method


# virtual methods
.method protected handleErrorContent()V
    .registers 1

    return-void
.end method

.method public handleFailure(IILjava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_73

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->c:Z

    const/4 v1, -0x1

    if-lt p2, v1, :cond_3f

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    :cond_19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "ebpay_pay_fail"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_29
    new-instance v1, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    invoke-direct {v1}, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;-><init>()V

    iput-object p3, v1, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->mErrorMsg:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v2

    iget-boolean v3, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isOneKeyPay:Z

    if-nez v3, :cond_39

    const/4 v0, 0x1

    :cond_39
    const-string v3, "pay_result_from_pay"

    invoke-virtual {v2, p0, v1, v0, v3}, Lcom/baidu/wallet/base/controllers/PayController;->payPaying(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;ZLjava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3e

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const-string v0, "queryPayResultFail"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_3e

    :cond_73
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/wallet/core/beans/BeanActivity;->handleFailure(IILjava/lang/String;)V

    goto :goto_3e
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 10

    const/16 v2, 0x107

    const/4 v1, 0x0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_9

    if-ne p1, v2, :cond_4f

    :cond_9
    check-cast p2, Lcom/baidu/paysdk/datamodel/PayResponse;

    if-eqz p2, :cond_44

    invoke-virtual {p2}, Lcom/baidu/paysdk/datamodel/PayResponse;->checkResponseValidity()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->b:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/PayQueryRequest;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->b:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    :cond_1e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->b:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/PayResponse;->bank_no:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayQueryRequest;->mBankNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->b:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/PayResponse;->order_no:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayQueryRequest;->mOrderNo:Ljava/lang/String;

    if-ne p1, v2, :cond_48

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->b:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    const-string v1, "get_credit_pay_android_result"

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayQueryRequest;->mName:Ljava/lang/String;

    :goto_32
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->b:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayQueryRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->b:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->a()V

    :cond_44
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->stopCountDown()V

    :cond_47
    :goto_47
    return-void

    :cond_48
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->b:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    const-string v1, "get_easypay_trans_state_android"

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayQueryRequest;->mName:Ljava/lang/String;

    goto :goto_32

    :cond_4f
    const/16 v0, 0xc

    if-ne p1, v0, :cond_47

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->c:Z

    check-cast p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;

    if-eqz p2, :cond_e8

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->trans_state:Ljava/lang/String;

    if-eqz v0, :cond_e8

    const-string v0, "0"

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->trans_state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######. query ok = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    invoke-direct {v2}, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;-><init>()V

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->notify:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->notify:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->score_tip:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->score_tip:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->paytype_desc:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->paytype_desc:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->coupon_msg:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->coupon_msg:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->coupon_find_prompt:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->coupon_find_prompt:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->business:Lcom/baidu/paysdk/datamodel/QueryPayResponse$Business;

    if-eqz v0, :cond_b6

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->business:Lcom/baidu/paysdk/datamodel/QueryPayResponse$Business;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/QueryPayResponse$Business;->stream_recharge_msg:Ljava/lang/String;

    if-eqz v0, :cond_aa

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->business:Lcom/baidu/paysdk/datamodel/QueryPayResponse$Business;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/QueryPayResponse$Business;->stream_recharge_msg:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->stream_recharge_msg:Ljava/lang/String;

    :cond_aa
    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->business:Lcom/baidu/paysdk/datamodel/QueryPayResponse$Business;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/QueryPayResponse$Business;->expected_time:Ljava/lang/String;

    if-eqz v0, :cond_b6

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->business:Lcom/baidu/paysdk/datamodel/QueryPayResponse$Business;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/QueryPayResponse$Business;->expected_time:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->expected_time:Ljava/lang/String;

    :cond_b6
    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->total_amount:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->total_amount:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->cash_amount:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->cash_amount:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->discount_amount:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->discount_amount:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->pay_detail_info:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->pay_detail_info:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->paytype_info:[[Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->paytype_info:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_d3
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v3

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isOneKeyPay:Z

    if-nez v0, :cond_e6

    const/4 v0, 0x1

    :goto_dc
    const-string v4, "pay_result_from_pay"

    invoke-virtual {v3, p0, v2, v0, v4}, Lcom/baidu/wallet/base/controllers/PayController;->paySucess(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;ZLjava/lang/String;)V

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    goto/16 :goto_47

    :cond_e6
    move v0, v1

    goto :goto_dc

    :cond_e8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeAmount===="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_47

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const-string v0, "queryPayResultFail"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto/16 :goto_47
.end method

.method protected onBeanExecFailureWithErrContent(IILjava/lang/String;Ljava/lang/Object;)V
    .registers 9

    const/4 v3, 0x0

    const/16 v0, 0x3c8c

    if-ne p2, v0, :cond_27

    if-eqz p4, :cond_27

    instance-of v0, p4, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    if-eqz v0, :cond_27

    const-string v0, "paybaseCardUpdateErrorContent"

    const-string v1, ""

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->getHandlerFailureData(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mDialogMsg:Ljava/lang/String;

    check-cast p4, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    iput-object p4, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mErrorContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    invoke-static {p0, v3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const/16 v0, 0x22

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    const v0, 0x139c0

    if-eq p2, v0, :cond_3b

    const v0, 0x139c1

    if-eq p2, v0, :cond_3b

    const v0, 0x139c6

    if-eq p2, v0, :cond_3b

    const v0, 0x139c7

    if-ne p2, v0, :cond_61

    :cond_3b
    const-string v0, "paybaseCannotCouponErrorContent"

    const-string v1, ""

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->getHandlerFailureData(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-static {p0, v3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    instance-of v0, p4, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    if-eqz v0, :cond_26

    check-cast p4, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    iput-object p4, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mErrorContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iput-object p3, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mDialogMsg:Ljava/lang/String;

    const/16 v0, 0x23

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_26

    :cond_61
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/wallet/core/beans/BeanActivity;->onBeanExecFailureWithErrContent(IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_26
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_15

    const-string v0, "mCardInfoUpdateContent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_15

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    if-eqz v1, :cond_15

    check-cast v0, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mErrorContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    :cond_15
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->setFlagPaySdk()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onDestroy()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->d:Landroid/os/CountDownTimer;

    :cond_f
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onPause()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_10

    invoke-static {}, Lcom/baidu/wallet/core/utils/NFCUtil;->getInstance()Lcom/baidu/wallet/core/utils/NFCUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/core/utils/NFCUtil;->disableForegroundDispatch(Landroid/app/Activity;)V

    :cond_10
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 6

    const/4 v1, 0x0

    const/16 v0, 0x12

    if-ne p1, v0, :cond_5c

    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    invoke-virtual {p2, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v1, "ebpay_confirm_abandon_balance_charge"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    :goto_27
    const-string v1, "ebpay_cancel"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/baidu/paysdk/ui/as;

    invoke-direct {v2, p0}, Lcom/baidu/paysdk/ui/as;-><init>(Lcom/baidu/paysdk/ui/PayBaseActivity;)V

    invoke-virtual {p2, v1, v2}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    const-string v1, "ebpay_abandon_pay"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_e2

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v0

    if-eqz v0, :cond_e2

    const-string v0, "ebpay_abandon_balance_charge"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :goto_49
    new-instance v1, Lcom/baidu/paysdk/ui/at;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/at;-><init>(Lcom/baidu/paysdk/ui/PayBaseActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    :goto_51
    return-void

    :cond_52
    const-string v1, "ebpay_confirm_abandon_pay"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    goto :goto_27

    :cond_5c
    const/16 v0, 0x16

    if-ne p1, v0, :cond_80

    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    const-string v0, "ebpay_accept"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "ebpay_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/au;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/au;-><init>(Lcom/baidu/paysdk/ui/PayBaseActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/baidu/wallet/base/widget/PromptDialog;->hideNegativeButton()V

    goto :goto_51

    :cond_80
    const/16 v0, 0x22

    if-ne p1, v0, :cond_ae

    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->showCloseBtn(Z)V

    invoke-virtual {p2, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "ebpay_use_other_paytype"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/av;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/av;-><init>(Lcom/baidu/paysdk/ui/PayBaseActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    const-string v0, "ebpay_wallet_continue_pay"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/aw;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/aw;-><init>(Lcom/baidu/paysdk/ui/PayBaseActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    goto :goto_51

    :cond_ae
    const/16 v0, 0x23

    if-ne p1, v0, :cond_dd

    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->showCloseBtn(Z)V

    invoke-virtual {p2, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "ebpay_use_other_paytype"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/ui/ax;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/ax;-><init>(Lcom/baidu/paysdk/ui/PayBaseActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string v0, "bd_wallet_pay_by_order_price"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/ui/ay;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/ay;-><init>(Lcom/baidu/paysdk/ui/PayBaseActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_51

    :cond_dd
    invoke-super {p0, p1, p2}, Lcom/baidu/wallet/core/beans/BeanActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto/16 :goto_51

    :cond_e2
    move v0, v1

    goto/16 :goto_49
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onResume()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_10

    invoke-static {}, Lcom/baidu/wallet/core/utils/NFCUtil;->getInstance()Lcom/baidu/wallet/core/utils/NFCUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/core/utils/NFCUtil;->enableForegroundDispatch(Landroid/app/Activity;)V

    :cond_10
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mErrorContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    if-eqz v0, :cond_b

    const-string v0, "mCardInfoUpdateContent"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mErrorContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_b
    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected stopCountDown()V
    .registers 1

    return-void
.end method
