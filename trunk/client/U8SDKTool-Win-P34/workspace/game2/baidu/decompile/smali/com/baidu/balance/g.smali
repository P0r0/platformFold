.class Lcom/baidu/balance/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/base/widget/PullToRefreshBase$OnRefreshListener;


# instance fields
.field final synthetic a:Lcom/baidu/balance/CashBackAccumulateActivity;


# direct methods
.method constructor <init>(Lcom/baidu/balance/CashBackAccumulateActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/balance/g;->a:Lcom/baidu/balance/CashBackAccumulateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/balance/g;->a:Lcom/baidu/balance/CashBackAccumulateActivity;

    invoke-static {v0, v2}, Lcom/baidu/balance/CashBackAccumulateActivity;->a(Lcom/baidu/balance/CashBackAccumulateActivity;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated. onRefresh. curr page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/balance/g;->a:Lcom/baidu/balance/CashBackAccumulateActivity;

    invoke-static {v1}, Lcom/baidu/balance/CashBackAccumulateActivity;->b(Lcom/baidu/balance/CashBackAccumulateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/balance/g;->a:Lcom/baidu/balance/CashBackAccumulateActivity;

    invoke-static {v0, v2}, Lcom/baidu/balance/CashBackAccumulateActivity;->a(Lcom/baidu/balance/CashBackAccumulateActivity;Z)V

    return-void
.end method

.method public onPullUpToRefresh(Lcom/baidu/wallet/base/widget/PullToRefreshBase;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated. onRefresh. curr page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/balance/g;->a:Lcom/baidu/balance/CashBackAccumulateActivity;

    invoke-static {v1}, Lcom/baidu/balance/CashBackAccumulateActivity;->b(Lcom/baidu/balance/CashBackAccumulateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/balance/g;->a:Lcom/baidu/balance/CashBackAccumulateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/balance/CashBackAccumulateActivity;->a(Lcom/baidu/balance/CashBackAccumulateActivity;Z)V

    return-void
.end method
