.class public Lcom/baidu/balance/beans/c;
.super Lcom/baidu/wallet/core/beans/BaseBean;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/beans/BaseBean;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/baidu/balance/beans/c;->a:I

    return-void
.end method

.method public execBean()V
    .registers 2

    const-class v0, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse;

    invoke-virtual {p0, v0}, Lcom/baidu/balance/beans/c;->execBean(Ljava/lang/Class;)V

    return-void
.end method

.method public generateRequestParam()Ljava/util/List;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v2, "pn"

    iget v3, p0, Lcom/baidu/balance/beans/c;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getBeanId()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public getHttpMethod()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/balance/beans/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/core/DebugConfig;->getWalletHttpsHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/_u/wap/cashback_query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method