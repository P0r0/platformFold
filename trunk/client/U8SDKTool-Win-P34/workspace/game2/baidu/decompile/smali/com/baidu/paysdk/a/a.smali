.class public Lcom/baidu/paysdk/a/a;
.super Lcom/baidu/paysdk/a/b;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/baidu/paysdk/a/b;-><init>()V

    sget-object v0, Lcom/baidu/paysdk/a/a;->n:Ljava/lang/String;

    const-string v1, "init Controller : \u4e3b\u52a8\u7ed1\u5361\u7684\u4e1a\u52a1\u63a7\u5236"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/baidu/paysdk/a/b;->a()V

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    if-eqz v0, :cond_b2

    const-string v0, "1"

    iget-object v3, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->valid_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/a/a;->f:Z

    const-string v0, "1"

    iget-object v3, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->true_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-virtual {p0}, Lcom/baidu/paysdk/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e0

    move v0, v1

    :goto_5a
    iput-boolean v0, p0, Lcom/baidu/paysdk/a/a;->g:Z

    const-string v0, "1"

    iget-object v3, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->valid_date:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/a/a;->h:Z

    const-string v0, "1"

    iget-object v3, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->certificate_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e3

    :cond_9c
    :goto_9c
    iput-boolean v1, p0, Lcom/baidu/paysdk/a/a;->i:Z

    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/a/a;->j:Z

    :cond_b2
    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    iget-object v1, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/ui/BindCardBaseActivity;->updateBankTitleInfo(Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;)V

    :goto_cb
    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/BindCardBaseActivity;->updateProtocolFields()V

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    iget-boolean v1, p0, Lcom/baidu/paysdk/a/a;->f:Z

    iget-boolean v2, p0, Lcom/baidu/paysdk/a/a;->h:Z

    iget-boolean v3, p0, Lcom/baidu/paysdk/a/a;->g:Z

    iget-boolean v4, p0, Lcom/baidu/paysdk/a/a;->i:Z

    iget-boolean v5, p0, Lcom/baidu/paysdk/a/a;->j:Z

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/paysdk/ui/BindCardBaseActivity;->updateCardElement(ZZZZZ)V

    :cond_df
    return-void

    :cond_e0
    move v0, v2

    goto/16 :goto_5a

    :cond_e3
    move v1, v2

    goto :goto_9c

    :cond_e5
    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->d:Lcom/baidu/paysdk/ui/BindCardBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/ui/BindCardBaseActivity;->updateBankTitleInfo(Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;)V

    goto :goto_cb
.end method

.method protected varargs a([Ljava/lang/String;)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->a:Lcom/baidu/paysdk/beans/l;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/beans/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->a:Lcom/baidu/paysdk/beans/l;

    const-string v1, "bind_card"

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/l;->a(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/baidu/paysdk/a/b;->a([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs b([Ljava/lang/String;)V
    .registers 8

    const-string v1, ""

    const-string v0, ""

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getUserId()Ljava/lang/String;

    move-result-object v0

    :cond_1e
    array-length v2, p1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_72

    invoke-virtual {p0}, Lcom/baidu/paysdk/a/a;->k()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmCvv(Ljava/lang/String;)V

    :cond_30
    invoke-virtual {p0}, Lcom/baidu/paysdk/a/a;->l()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmValidDate(Ljava/lang/String;)V

    :cond_46
    invoke-virtual {p0}, Lcom/baidu/paysdk/a/a;->j()Z

    move-result v2

    if-eqz v2, :cond_76

    iget-object v1, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmName(Ljava/lang/String;)V

    :goto_54
    invoke-virtual {p0}, Lcom/baidu/paysdk/a/a;->m()Z

    move-result v1

    if-eqz v1, :cond_7c

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmIdCard(Ljava/lang/String;)V

    :goto_62
    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmPhone(Ljava/lang/String;)V

    :cond_72
    invoke-super {p0, p1}, Lcom/baidu/paysdk/a/b;->b([Ljava/lang/String;)V

    return-void

    :cond_76
    iget-object v2, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v2, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmName(Ljava/lang/String;)V

    goto :goto_54

    :cond_7c
    iget-object v1, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1, v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmIdCard(Ljava/lang/String;)V

    goto :goto_62
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->getOneCentsDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/baidu/paysdk/a/a;->e:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->getOneCentsDesc()Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    invoke-super {p0}, Lcom/baidu/paysdk/a/b;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method
