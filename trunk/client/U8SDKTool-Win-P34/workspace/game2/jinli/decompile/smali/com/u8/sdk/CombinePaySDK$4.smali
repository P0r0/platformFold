.class Lcom/u8/sdk/CombinePaySDK$4;
.super Ljava/lang/Object;
.source "CombinePaySDK.java"

# interfaces
.implements Lcn/egame/terminal/paysdk/EgamePayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/CombinePaySDK;->egamePay(Lcom/u8/sdk/PayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final dialog:Landroid/app/AlertDialog$Builder;

.field final synthetic this$0:Lcom/u8/sdk/CombinePaySDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/CombinePaySDK;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/CombinePaySDK$4;->this$0:Lcom/u8/sdk/CombinePaySDK;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/u8/sdk/CombinePaySDK$4;->dialog:Landroid/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public payCancel(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "toolsAlias"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    .local v0, "code":Ljava/lang/String;
    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK$4;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 269
    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK$4;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/PayParams;

    .line 270
    .local v1, "product":Lcom/u8/sdk/PayParams;
    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK$4;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9053\u5177"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 272
    const-string v4, "\u652f\u4ed8\u53d6\u6d88"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 273
    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK$4;->dialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 275
    .end local v1    # "product":Lcom/u8/sdk/PayParams;
    :cond_43
    return-void
.end method

.method public payFailed(Ljava/util/Map;I)V
    .registers 8
    .param p2, "errorInt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "toolsAlias"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, "code":Ljava/lang/String;
    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK$4;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 255
    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK$4;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/PayParams;

    .line 256
    .local v1, "product":Lcom/u8/sdk/PayParams;
    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK$4;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9053\u5177"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 258
    const-string v4, "\u652f\u4ed8\u5931\u8d25 \u9519\u8bef\u4ee3\u7801:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 259
    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK$4;->dialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 261
    .end local v1    # "product":Lcom/u8/sdk/PayParams;
    :cond_47
    return-void
.end method

.method public paySuccess(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "toolsAlias"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    .local v0, "code":Ljava/lang/String;
    iget-object v3, p0, Lcom/u8/sdk/CombinePaySDK$4;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 237
    iget-object v3, p0, Lcom/u8/sdk/CombinePaySDK$4;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/u8/sdk/PayParams;

    .line 238
    .local v2, "product":Lcom/u8/sdk/PayParams;
    new-instance v1, Lcom/u8/sdk/PayResult;

    invoke-direct {v1}, Lcom/u8/sdk/PayResult;-><init>()V

    .line 239
    .local v1, "payResult":Lcom/u8/sdk/PayResult;
    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayResult;->setProductID(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayResult;->setProductName(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayResult;->setOrderID(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayResult;->setExtension(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/u8/sdk/U8SDK;->onPayResult(Lcom/u8/sdk/PayResult;)V

    .line 244
    iget-object v3, p0, Lcom/u8/sdk/CombinePaySDK$4;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u9053\u5177"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 245
    iget-object v3, p0, Lcom/u8/sdk/CombinePaySDK$4;->dialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 247
    .end local v1    # "payResult":Lcom/u8/sdk/PayResult;
    .end local v2    # "product":Lcom/u8/sdk/PayParams;
    :cond_6b
    return-void
.end method
