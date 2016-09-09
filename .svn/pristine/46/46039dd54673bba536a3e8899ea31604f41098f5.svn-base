.class public Lcom/baidu/paysdk/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/paysdk/a/h;


# instance fields
.field protected a:Lcom/baidu/paysdk/beans/l;

.field protected b:Lcom/baidu/paysdk/beans/d;

.field protected c:Lcom/baidu/paysdk/beans/r;

.field protected d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

.field protected e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field private o:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/paysdk/a/b;->o:I

    iput-boolean v1, p0, Lcom/baidu/paysdk/a/b;->f:Z

    iput-boolean v1, p0, Lcom/baidu/paysdk/a/b;->g:Z

    iput-boolean v1, p0, Lcom/baidu/paysdk/a/b;->h:Z

    iput-boolean v1, p0, Lcom/baidu/paysdk/a/b;->i:Z

    iput-boolean v1, p0, Lcom/baidu/paysdk/a/b;->j:Z

    iput-boolean v1, p0, Lcom/baidu/paysdk/a/b;->k:Z

    iput-boolean v1, p0, Lcom/baidu/paysdk/a/b;->l:Z

    iput-boolean v1, p0, Lcom/baidu/paysdk/a/b;->m:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/a/b;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    return-void
.end method

.method public a(Lcom/baidu/paysdk/ui/BindCardBaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/baidu/paysdk/a/b;->n:Ljava/lang/String;

    const-string v1, "\u6267\u884c\u67e5\u8be2\u94f6\u884c\u5361\u7684\u5f52\u5c5e\u94f6\u884c"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->c:Lcom/baidu/paysdk/beans/r;

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    const/4 v2, 0x7

    const-string v3, "BindCardBaseActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/r;

    iput-object v0, p0, Lcom/baidu/paysdk/a/b;->c:Lcom/baidu/paysdk/beans/r;

    :cond_1c
    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->c:Lcom/baidu/paysdk/beans/r;

    iget-object v1, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/r;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->c:Lcom/baidu/paysdk/beans/r;

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/beans/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    const-string v1, "@queryCardBin"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->c:Lcom/baidu/paysdk/beans/r;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/r;->execBean()V

    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public a(I)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "bd_wallet_bind_card_first"

    packed-switch p1, :pswitch_data_20

    :goto_8
    const-string v1, "ebpay_pay_checkcard"

    packed-switch p1, :pswitch_data_28

    :goto_d
    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2

    :pswitch_14
    const-string v0, "bd_wallet_bind_card_first"

    goto :goto_8

    :pswitch_17
    const-string v0, "bd_wallet_bind_card_second"

    goto :goto_8

    :pswitch_1a
    const-string v1, "ebpay_pay_checkcard"

    goto :goto_d

    :pswitch_1d
    const-string v1, "ebpay_pay_next"

    goto :goto_d

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_17
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method protected varargs b([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public varargs c([Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->b:Lcom/baidu/paysdk/beans/d;

    if-nez v0, :cond_15

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    const/4 v2, 0x5

    const-string v3, "BindCardBaseActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/d;

    iput-object v0, p0, Lcom/baidu/paysdk/a/b;->b:Lcom/baidu/paysdk/beans/d;

    :cond_15
    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->b:Lcom/baidu/paysdk/beans/d;

    iget-object v1, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/d;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    const-string v1, "@timeSms"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    const-string v1, "@cardCheck"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    const-string v1, "callCardCheck"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/a/b;->b([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->b:Lcom/baidu/paysdk/beans/d;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/d;->execBean()V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public varargs d([Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->a:Lcom/baidu/paysdk/beans/l;

    if-nez v0, :cond_15

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    const/4 v2, 0x4

    const-string v3, "BindCardBaseActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/l;

    iput-object v0, p0, Lcom/baidu/paysdk/a/b;->a:Lcom/baidu/paysdk/beans/l;

    :cond_15
    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->a:Lcom/baidu/paysdk/beans/l;

    iget-object v1, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/l;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/a/b;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    const-string v1, "@getCardInfo"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->a:Lcom/baidu/paysdk/beans/l;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/l;->execBean()V

    return-void
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .registers 2

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/paysdk/a/b;->o:I

    :goto_d
    iget v0, p0, Lcom/baidu/paysdk/a/b;->o:I

    return v0

    :cond_10
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/paysdk/a/b;->o:I

    goto :goto_d
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->a:Lcom/baidu/paysdk/beans/l;

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/a/b;->a:Lcom/baidu/paysdk/beans/l;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeBean(Lcom/baidu/wallet/core/beans/BaseBean;)V

    :cond_d
    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getFormatUserName()Ljava/lang/String;

    move-result-object v0

    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v0, ""

    :cond_1c
    return-object v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/a/b;->g:Z

    return v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/a/b;->f:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/baidu/paysdk/a/b;->l:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/a/b;->h:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/baidu/paysdk/a/b;->k:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/a/b;->i:Z

    return v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/a/b;->j:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/baidu/paysdk/a/b;->m:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public o()V
    .registers 1

    return-void
.end method

.method public p()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    const-string v1, "ebpay_card_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public r()V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/a/b;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    return-void
.end method

.method public s()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public t()Z
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/a/b;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, p0, Lcom/baidu/paysdk/a/b;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mCardInfoUpdateContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public u()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
