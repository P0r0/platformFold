.class Lcom/u8/sdk/CombinePaySDK$2;
.super Ljava/lang/Object;
.source "CombinePaySDK.java"

# interfaces
.implements Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;


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
    iput-object p1, p0, Lcom/u8/sdk/CombinePaySDK$2;->this$0:Lcom/u8/sdk/CombinePaySDK;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PayResult(Ljava/lang/String;IILjava/lang/String;)V
    .registers 11
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "flag2"    # I
    .param p4, "error"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "paycode":Ljava/lang/String;
    iget-object v4, p0, Lcom/u8/sdk/CombinePaySDK$2;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 95
    const-string v3, ""

    .line 96
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/u8/sdk/CombinePaySDK$2;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/u8/sdk/PayParams;

    .line 97
    .local v2, "product":Lcom/u8/sdk/PayParams;
    packed-switch p2, :pswitch_data_b8

    .line 118
    :goto_27
    iget-object v4, p0, Lcom/u8/sdk/CombinePaySDK$2;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v4

    .line 120
    const/4 v5, 0x0

    .line 119
    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 123
    .end local v2    # "product":Lcom/u8/sdk/PayParams;
    .end local v3    # "result":Ljava/lang/String;
    :cond_40
    return-void

    .line 99
    .restart local v2    # "product":Lcom/u8/sdk/PayParams;
    .restart local v3    # "result":Ljava/lang/String;
    :pswitch_41
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8d2d\u4e70\u9053\u5177\uff1a["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] \u6210\u529f\uff01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    new-instance v0, Lcom/u8/sdk/PayResult;

    invoke-direct {v0}, Lcom/u8/sdk/PayResult;-><init>()V

    .line 101
    .local v0, "payResult":Lcom/u8/sdk/PayResult;
    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/u8/sdk/PayResult;->setProductID(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/u8/sdk/PayResult;->setProductName(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/u8/sdk/PayResult;->setOrderID(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/u8/sdk/PayResult;->setExtension(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/u8/sdk/U8SDK;->onPayResult(Lcom/u8/sdk/PayResult;)V

    goto :goto_27

    .line 108
    .end local v0    # "payResult":Lcom/u8/sdk/PayResult;
    :pswitch_83
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8d2d\u4e70\u9053\u5177\uff1a["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] \u5931\u8d25\uff01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    goto :goto_27

    .line 111
    :pswitch_9d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8d2d\u4e70\u9053\u5177\uff1a["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] \u53d6\u6d88\uff01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    goto/16 :goto_27

    .line 97
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_41
        :pswitch_83
        :pswitch_9d
    .end packed-switch
.end method
