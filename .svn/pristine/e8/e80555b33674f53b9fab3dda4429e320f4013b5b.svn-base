.class Lcom/baidu/balance/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/balance/BalanceTransActivity;


# direct methods
.method constructor <init>(Lcom/baidu/balance/BalanceTransActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/balance/b;->a:Lcom/baidu/balance/BalanceTransActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/baidu/balance/b;->a:Lcom/baidu/balance/BalanceTransActivity;

    invoke-static {v0}, Lcom/baidu/balance/BalanceTransActivity;->a(Lcom/baidu/balance/BalanceTransActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/baidu/balance/b;->a:Lcom/baidu/balance/BalanceTransActivity;

    invoke-static {v0, v2}, Lcom/baidu/balance/BalanceTransActivity;->a(Lcom/baidu/balance/BalanceTransActivity;Z)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/baidu/balance/b;->a:Lcom/baidu/balance/BalanceTransActivity;

    invoke-static {v0}, Lcom/baidu/balance/BalanceTransActivity;->a(Lcom/baidu/balance/BalanceTransActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lcom/baidu/balance/b;->a:Lcom/baidu/balance/BalanceTransActivity;

    invoke-static {v0, v2}, Lcom/baidu/balance/BalanceTransActivity;->b(Lcom/baidu/balance/BalanceTransActivity;Z)V

    goto :goto_f

    :cond_1e
    iget-object v0, p0, Lcom/baidu/balance/b;->a:Lcom/baidu/balance/BalanceTransActivity;

    invoke-static {v0}, Lcom/baidu/balance/BalanceTransActivity;->b(Lcom/baidu/balance/BalanceTransActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/balance/b;->a:Lcom/baidu/balance/BalanceTransActivity;

    invoke-static {v0}, Lcom/baidu/balance/BalanceTransActivity;->c(Lcom/baidu/balance/BalanceTransActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->finish()V

    goto :goto_f
.end method
