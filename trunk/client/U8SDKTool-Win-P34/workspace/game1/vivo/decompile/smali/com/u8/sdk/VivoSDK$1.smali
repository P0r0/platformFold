.class Lcom/u8/sdk/VivoSDK$1;
.super Ljava/lang/Object;
.source "VivoSDK.java"

# interfaces
.implements Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/VivoSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/VivoSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/VivoSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/VivoSDK$1;->this$0:Lcom/u8/sdk/VivoSDK;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "transNo"    # Ljava/lang/String;
    .param p2, "pay_result"    # Z
    .param p3, "result_code"    # Ljava/lang/String;
    .param p4, "pay_msg"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v2, "Vivo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 77
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "\u652f\u4ed8\u7ed3\u679c"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "\u4ea4\u6613\u7f16\u53f7="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    const-string v5, ", \u4ea4\u6613\u7ed3\u679c="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_b8

    const-string v2, "\u6210\u529f"

    :goto_4f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",\u72b6\u6001\u7801="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\uff0c\u72b6\u6001\u63cf\u8ff0="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v3, v4, v2}, Lcom/u8/sdk/UtilTool;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/u8/sdk/VivoSDK$1;->this$0:Lcom/u8/sdk/VivoSDK;

    # getter for: Lcom/u8/sdk/VivoSDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/u8/sdk/VivoSDK;->access$0(Lcom/u8/sdk/VivoSDK;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 84
    iget-object v2, p0, Lcom/u8/sdk/VivoSDK$1;->this$0:Lcom/u8/sdk/VivoSDK;

    # getter for: Lcom/u8/sdk/VivoSDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/u8/sdk/VivoSDK;->access$0(Lcom/u8/sdk/VivoSDK;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/PayParams;

    .line 85
    .local v0, "product":Lcom/u8/sdk/PayParams;
    new-instance v1, Lcom/u8/sdk/PayResult;

    invoke-direct {v1}, Lcom/u8/sdk/PayResult;-><init>()V

    .line 86
    .local v1, "result":Lcom/u8/sdk/PayResult;
    invoke-virtual {v0}, Lcom/u8/sdk/PayParams;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayResult;->setProductID(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayResult;->setProductName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayResult;->setOrderID(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayResult;->setExtension(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/u8/sdk/U8SDK;->onPayResult(Lcom/u8/sdk/PayResult;)V

    .line 91
    iget-object v2, p0, Lcom/u8/sdk/VivoSDK$1;->this$0:Lcom/u8/sdk/VivoSDK;

    # getter for: Lcom/u8/sdk/VivoSDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/u8/sdk/VivoSDK;->access$0(Lcom/u8/sdk/VivoSDK;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v0    # "product":Lcom/u8/sdk/PayParams;
    .end local v1    # "result":Lcom/u8/sdk/PayResult;
    :cond_b7
    return-void

    .line 79
    :cond_b8
    const-string v2, "\u5931\u8d25"

    goto :goto_4f
.end method
