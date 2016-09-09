.class public Lcom/unionpay/tsmservice/SessionKeyReExchange;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/unionpay/tsmservice/UPTsmAddon;

.field private b:I

.field private c:Lcom/unionpay/tsmservice/request/RequestParams;

.field private d:Lcom/unionpay/tsmservice/ITsmCallback;

.field private e:Lcom/unionpay/tsmservice/ITsmProgressCallback;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/unionpay/tsmservice/UPTsmAddon;ILcom/unionpay/tsmservice/ITsmCallback;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/unionpay/tsmservice/SessionKeyReExchange;-><init>(Lcom/unionpay/tsmservice/UPTsmAddon;ILcom/unionpay/tsmservice/request/RequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/unionpay/tsmservice/UPTsmAddon;ILcom/unionpay/tsmservice/request/RequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/tsmservice/SessionKeyReExchange;-><init>(Lcom/unionpay/tsmservice/UPTsmAddon;ILcom/unionpay/tsmservice/request/RequestParams;Lcom/unionpay/tsmservice/ITsmCallback;Lcom/unionpay/tsmservice/ITsmProgressCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/unionpay/tsmservice/UPTsmAddon;ILcom/unionpay/tsmservice/request/RequestParams;Lcom/unionpay/tsmservice/ITsmCallback;Lcom/unionpay/tsmservice/ITsmProgressCallback;)V
    .registers 13

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/unionpay/tsmservice/SessionKeyReExchange;-><init>(Lcom/unionpay/tsmservice/UPTsmAddon;ILcom/unionpay/tsmservice/request/RequestParams;Lcom/unionpay/tsmservice/ITsmCallback;Lcom/unionpay/tsmservice/ITsmProgressCallback;I)V

    return-void
.end method

.method public constructor <init>(Lcom/unionpay/tsmservice/UPTsmAddon;ILcom/unionpay/tsmservice/request/RequestParams;Lcom/unionpay/tsmservice/ITsmCallback;Lcom/unionpay/tsmservice/ITsmProgressCallback;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->b:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->f:I

    iput-object p1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iput p2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->b:I

    iput-object p3, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    iput-object p4, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    iput-object p5, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->e:Lcom/unionpay/tsmservice/ITsmProgressCallback;

    iput p6, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->f:I

    return-void
.end method


# virtual methods
.method public reExchangeKey()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getPubKey(I[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    move v0, v1

    :goto_f
    return v0

    :cond_10
    aget-object v1, v2, v0

    invoke-static {}, Lcom/unionpay/tsmservice/utils/IUPJniInterface;->mSK()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/unionpay/tsmservice/utils/IUPJniInterface;->rER(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-virtual {v3, v1, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->exchangeKey(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_24

    move v0, v1

    goto :goto_f

    :cond_24
    aget-object v1, v2, v0

    invoke-static {v1}, Lcom/unionpay/tsmservice/utils/IUPJniInterface;->dMG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/tsmservice/utils/IUPJniInterface;->sSK(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-virtual {v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/unionpay/tsmservice/utils/IUPJniInterface;->uSKT(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    iget v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->b:I

    packed-switch v1, :pswitch_data_1ea

    goto :goto_f

    :pswitch_42
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/InitRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->init(Lcom/unionpay/tsmservice/request/InitRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto :goto_f

    :pswitch_4f
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetAssociatedAppRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getAssociatedApp(Lcom/unionpay/tsmservice/request/GetAssociatedAppRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto :goto_f

    :pswitch_5c
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/AppDownloadApplyRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->appDownloadApply(Lcom/unionpay/tsmservice/request/AppDownloadApplyRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto :goto_f

    :pswitch_69
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/AppDeleteRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    iget-object v3, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->e:Lcom/unionpay/tsmservice/ITsmProgressCallback;

    invoke-virtual {v1, v0, v2, v3}, Lcom/unionpay/tsmservice/UPTsmAddon;->appDelete(Lcom/unionpay/tsmservice/request/AppDeleteRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;Lcom/unionpay/tsmservice/ITsmProgressCallback;)I

    move-result v0

    goto :goto_f

    :pswitch_78
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetSMSAuthCodeRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getSMSAuthCode(Lcom/unionpay/tsmservice/request/GetSMSAuthCodeRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto :goto_f

    :pswitch_85
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetAppDetailRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getAppDetail(Lcom/unionpay/tsmservice/request/GetAppDetailRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_93
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetTransElementsRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getTransElements(Lcom/unionpay/tsmservice/request/GetTransElementsRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_a1
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/AppDownloadRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    iget-object v3, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->e:Lcom/unionpay/tsmservice/ITsmProgressCallback;

    invoke-virtual {v1, v0, v2, v3}, Lcom/unionpay/tsmservice/UPTsmAddon;->appDownload(Lcom/unionpay/tsmservice/request/AppDownloadRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;Lcom/unionpay/tsmservice/ITsmProgressCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_b1
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/AppDataUpdateRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    iget-object v3, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->e:Lcom/unionpay/tsmservice/ITsmProgressCallback;

    invoke-virtual {v1, v0, v2, v3}, Lcom/unionpay/tsmservice/UPTsmAddon;->appDataUpdate(Lcom/unionpay/tsmservice/request/AppDataUpdateRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;Lcom/unionpay/tsmservice/ITsmProgressCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_c1
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/ECashTopUpRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->eCashTopUp(Lcom/unionpay/tsmservice/request/ECashTopUpRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_cf
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetTransRecordRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getTransRecord(Lcom/unionpay/tsmservice/request/GetTransRecordRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_dd
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetAccountInfoRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getAccountInfo(Lcom/unionpay/tsmservice/request/GetAccountInfoRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_eb
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetAccountBalanceRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getAccountBalance(Lcom/unionpay/tsmservice/request/GetAccountBalanceRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_f9
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetCardInfoRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getCardInfo(Lcom/unionpay/tsmservice/request/GetCardInfoRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_107
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/SetDefaultCardRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->setDefaultCard(Lcom/unionpay/tsmservice/request/SetDefaultCardRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_115
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->openChannel(Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_123
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->sendApdu(Lcom/unionpay/tsmservice/request/SendApduRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_131
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->closeChannel(Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_13f
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/HideAppApplyRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->hideAppApply(Lcom/unionpay/tsmservice/request/HideAppApplyRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_14d
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetSeIdRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getSeId(Lcom/unionpay/tsmservice/request/GetSeIdRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_15b
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetDefaultCardRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getDefaultCard(Lcom/unionpay/tsmservice/request/GetDefaultCardRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_169
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getSEAppList(Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_177
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetAppListRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getAppList(Lcom/unionpay/tsmservice/request/GetAppListRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_185
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetAppStatusRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getAppStatus(Lcom/unionpay/tsmservice/request/GetAppStatusRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_193
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/AppLockRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->appLock(Lcom/unionpay/tsmservice/request/AppLockRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_1a1
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/AppUnlockRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->appUnlock(Lcom/unionpay/tsmservice/request/AppUnlockRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_1af
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/EncryptDataRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->encryptData(Lcom/unionpay/tsmservice/request/EncryptDataRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_1bd
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/ExecuteCmdRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    iget-object v3, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->e:Lcom/unionpay/tsmservice/ITsmProgressCallback;

    invoke-virtual {v1, v0, v2, v3}, Lcom/unionpay/tsmservice/UPTsmAddon;->executeCmd(Lcom/unionpay/tsmservice/request/ExecuteCmdRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;Lcom/unionpay/tsmservice/ITsmProgressCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_1cd
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getCardInfoBySamsungPay(Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_1db
    iget-object v0, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->c:Lcom/unionpay/tsmservice/request/RequestParams;

    check-cast v0, Lcom/unionpay/tsmservice/request/CheckSSamsungPayRequestParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/tsmservice/SessionKeyReExchange;->d:Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->checkSSamsungPay(Lcom/unionpay/tsmservice/request/CheckSSamsungPayRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    goto/16 :goto_f

    nop

    :pswitch_data_1ea
    .packed-switch 0x0
        :pswitch_42
        :pswitch_4f
        :pswitch_177
        :pswitch_169
        :pswitch_85
        :pswitch_185
        :pswitch_f9
        :pswitch_dd
        :pswitch_eb
        :pswitch_93
        :pswitch_cf
        :pswitch_78
        :pswitch_14d
        :pswitch_15b
        :pswitch_107
        :pswitch_5c
        :pswitch_a1
        :pswitch_69
        :pswitch_b1
        :pswitch_c1
        :pswitch_115
        :pswitch_131
        :pswitch_123
        :pswitch_1af
        :pswitch_13f
        :pswitch_1bd
        :pswitch_193
        :pswitch_1a1
        :pswitch_1cd
        :pswitch_1db
    .end packed-switch
.end method
