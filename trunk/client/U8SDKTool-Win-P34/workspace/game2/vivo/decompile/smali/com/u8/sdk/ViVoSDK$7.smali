.class Lcom/u8/sdk/ViVoSDK$7;
.super Ljava/lang/Object;
.source "ViVoSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ViVoSDK;->onGotOrder(Lcom/u8/sdk/PayParams;Lcom/u8/sdk/U8Order;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/ViVoSDK;

.field private final synthetic val$order:Lcom/u8/sdk/U8Order;

.field private final synthetic val$params:Lcom/u8/sdk/PayParams;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ViVoSDK;Lcom/u8/sdk/U8Order;Lcom/u8/sdk/PayParams;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/ViVoSDK$7;->this$0:Lcom/u8/sdk/ViVoSDK;

    iput-object p2, p0, Lcom/u8/sdk/ViVoSDK$7;->val$order:Lcom/u8/sdk/U8Order;

    iput-object p3, p0, Lcom/u8/sdk/ViVoSDK$7;->val$params:Lcom/u8/sdk/PayParams;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 296
    const-string v1, "UniSDK"

    const-string v2, "Get Order Success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$7;->val$order:Lcom/u8/sdk/U8Order;

    .line 298
    .local v0, "tempOrder":Lcom/u8/sdk/U8Order;
    if-nez v0, :cond_47

    .line 299
    new-instance v0, Lcom/u8/sdk/U8Order;

    .end local v0    # "tempOrder":Lcom/u8/sdk/U8Order;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/u8/sdk/U8Order;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .restart local v0    # "tempOrder":Lcom/u8/sdk/U8Order;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25\uff0c\u968f\u673a\u751f\u6210\u6d4b\u8bd5\u8ba2\u5355\u53f7"

    .line 301
    const/4 v3, 0x0

    .line 300
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 302
    iget-object v1, p0, Lcom/u8/sdk/ViVoSDK$7;->val$params:Lcom/u8/sdk/PayParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setOrderID(Ljava/lang/String;)V

    .line 306
    :cond_47
    if-eqz v0, :cond_7e

    .line 307
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8ba2\u5355\u53f7:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/u8/sdk/U8Order;->getOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 307
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 311
    iget-object v1, p0, Lcom/u8/sdk/ViVoSDK$7;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v0}, Lcom/u8/sdk/U8Order;->getOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setOrderID(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/u8/sdk/ViVoSDK$7;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v0}, Lcom/u8/sdk/U8Order;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setExtension(Ljava/lang/String;)V

    .line 315
    :cond_7e
    iget-object v1, p0, Lcom/u8/sdk/ViVoSDK$7;->this$0:Lcom/u8/sdk/ViVoSDK;

    iget-object v2, p0, Lcom/u8/sdk/ViVoSDK$7;->val$params:Lcom/u8/sdk/PayParams;

    # invokes: Lcom/u8/sdk/ViVoSDK;->onPay(Lcom/u8/sdk/PayParams;)V
    invoke-static {v1, v2}, Lcom/u8/sdk/ViVoSDK;->access$6(Lcom/u8/sdk/ViVoSDK;Lcom/u8/sdk/PayParams;)V

    .line 316
    return-void
.end method
