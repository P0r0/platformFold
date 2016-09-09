.class Lcom/u8/sdk/CombinePaySDK$1;
.super Ljava/lang/Object;
.source "CombinePaySDK.java"

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$IPayCallback;


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
    iput-object p1, p0, Lcom/u8/sdk/CombinePaySDK$1;->this$0:Lcom/u8/sdk/CombinePaySDK;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "resultCode"    # I
    .param p2, "billingIndex"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 49
    iget-object v3, p0, Lcom/u8/sdk/CombinePaySDK$1;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 50
    iget-object v3, p0, Lcom/u8/sdk/CombinePaySDK$1;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/PayParams;

    .line 51
    .local v1, "product":Lcom/u8/sdk/PayParams;
    const-string v2, ""

    .line 52
    .local v2, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_bc

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8d2d\u4e70\u9053\u5177\uff1a["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \u53d6\u6d88\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    :goto_36
    iget-object v3, p0, Lcom/u8/sdk/CombinePaySDK$1;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v3

    .line 77
    const/4 v4, 0x0

    .line 76
    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 79
    .end local v1    # "product":Lcom/u8/sdk/PayParams;
    .end local v2    # "result":Ljava/lang/String;
    :cond_4f
    return-void

    .line 54
    .restart local v1    # "product":Lcom/u8/sdk/PayParams;
    .restart local v2    # "result":Ljava/lang/String;
    :pswitch_50
    const-string v3, "10"

    .line 55
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 56
    const-string v2, "\u77ed\u4fe1\u8ba1\u8d39\u8d85\u65f6"

    .line 57
    goto :goto_36

    .line 58
    :cond_5f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8d2d\u4e70\u9053\u5177\uff1a["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \u6210\u529f\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v0, Lcom/u8/sdk/PayResult;

    invoke-direct {v0}, Lcom/u8/sdk/PayResult;-><init>()V

    .line 60
    .local v0, "payResult":Lcom/u8/sdk/PayResult;
    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/PayResult;->setProductID(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/PayResult;->setProductName(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/PayResult;->setOrderID(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/PayResult;->setExtension(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/u8/sdk/U8SDK;->onPayResult(Lcom/u8/sdk/PayResult;)V

    goto :goto_36

    .line 68
    .end local v0    # "payResult":Lcom/u8/sdk/PayResult;
    :pswitch_a1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8d2d\u4e70\u9053\u5177\uff1a["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \u5931\u8d25\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    goto/16 :goto_36

    .line 52
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_50
        :pswitch_a1
    .end packed-switch
.end method
