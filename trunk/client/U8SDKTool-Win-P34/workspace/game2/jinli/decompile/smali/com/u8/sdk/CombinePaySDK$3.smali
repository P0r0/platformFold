.class Lcom/u8/sdk/CombinePaySDK$3;
.super Ljava/lang/Object;
.source "CombinePaySDK.java"

# interfaces
.implements Lmm/purchasesdk/OnPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/CombinePaySDK;->initSDK(Lcom/u8/sdk/SDKParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/CombinePaySDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/CombinePaySDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/CombinePaySDK$3;->this$0:Lcom/u8/sdk/CombinePaySDK;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterApply()V
    .registers 1

    .prologue
    .line 205
    return-void
.end method

.method public onAfterDownload()V
    .registers 1

    .prologue
    .line 203
    return-void
.end method

.method public onBeforeApply()V
    .registers 1

    .prologue
    .line 200
    return-void
.end method

.method public onBeforeDownload()V
    .registers 1

    .prologue
    .line 197
    return-void
.end method

.method public onBillingFinish(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 13
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "arg1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "\u8ba2\u8d2d\u7ed3\u679c\uff1a\u8ba2\u8d2d\u6210\u529f"

    .line 153
    .local v6, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 155
    .local v1, "orderID":Ljava/lang/String;
    const/4 v4, 0x0

    .line 157
    .local v4, "paycode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 159
    .local v0, "leftday":Ljava/lang/String;
    const/4 v7, 0x0

    .line 160
    .local v7, "tradeID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 161
    .local v2, "ordertype":Ljava/lang/String;
    iget-object v8, p0, Lcom/u8/sdk/CombinePaySDK$3;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/u8/sdk/PayParams;

    .line 162
    .local v5, "product":Lcom/u8/sdk/PayParams;
    if-eqz p2, :cond_3d

    .line 164
    const-string v8, "LeftDay"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "leftday":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 165
    .restart local v0    # "leftday":Ljava/lang/String;
    const-string v8, "OrderId"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "orderID":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 166
    .restart local v1    # "orderID":Ljava/lang/String;
    const-string v8, "Paycode"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "paycode":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 167
    .restart local v4    # "paycode":Ljava/lang/String;
    const-string v8, "TradeID"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "tradeID":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 168
    .restart local v7    # "tradeID":Ljava/lang/String;
    const-string v8, "OrderType"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ordertype":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 171
    .restart local v2    # "ordertype":Ljava/lang/String;
    :cond_3d
    const-string v8, "1030000"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_55

    const-string v8, "1020000"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_55

    .line 172
    const-string v8, "1090003"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 173
    :cond_55
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u8d2d\u4e70\u9053\u5177\uff1a["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] \u6210\u529f\uff01"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 174
    iget-object v8, p0, Lcom/u8/sdk/CombinePaySDK$3;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 176
    new-instance v3, Lcom/u8/sdk/PayResult;

    invoke-direct {v3}, Lcom/u8/sdk/PayResult;-><init>()V

    .line 177
    .local v3, "payResult":Lcom/u8/sdk/PayResult;
    invoke-virtual {v5}, Lcom/u8/sdk/PayParams;->getProductId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/u8/sdk/PayResult;->setProductID(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v5}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/u8/sdk/PayResult;->setProductName(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v5}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/u8/sdk/PayResult;->setOrderID(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v5}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/u8/sdk/PayResult;->setExtension(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/u8/sdk/U8SDK;->onPayResult(Lcom/u8/sdk/PayResult;)V

    .line 182
    iget-object v8, p0, Lcom/u8/sdk/CombinePaySDK$3;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v3    # "payResult":Lcom/u8/sdk/PayResult;
    :cond_ab
    :goto_ab
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v8

    invoke-virtual {v8}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v8

    .line 193
    const/4 v9, 0x0

    .line 192
    invoke-static {v8, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 193
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 194
    return-void

    .line 190
    :cond_bc
    const-string v6, "\u8ba2\u8d2d\u5931\u8d25"

    goto :goto_ab
.end method

.method public onInitFinish(Ljava/lang/String;)V
    .registers 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 146
    return-void
.end method

.method public onQueryFinish(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 3
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "arg1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public onUnsubscribeFinish(Ljava/lang/String;)V
    .registers 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 140
    return-void
.end method
