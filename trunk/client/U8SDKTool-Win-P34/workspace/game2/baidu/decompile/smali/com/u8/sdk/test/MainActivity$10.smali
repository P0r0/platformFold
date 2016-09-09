.class Lcom/u8/sdk/test/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/test/MainActivity;->onGotOrder(Lcom/u8/sdk/PayParams;Lcom/u8/sdk/test/order/U8Order;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/test/MainActivity;

.field private final synthetic val$order:Lcom/u8/sdk/test/order/U8Order;

.field private final synthetic val$params:Lcom/u8/sdk/PayParams;


# direct methods
.method constructor <init>(Lcom/u8/sdk/test/MainActivity;Lcom/u8/sdk/test/order/U8Order;Lcom/u8/sdk/PayParams;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/test/MainActivity$10;->this$0:Lcom/u8/sdk/test/MainActivity;

    iput-object p2, p0, Lcom/u8/sdk/test/MainActivity$10;->val$order:Lcom/u8/sdk/test/order/U8Order;

    iput-object p3, p0, Lcom/u8/sdk/test/MainActivity$10;->val$params:Lcom/u8/sdk/PayParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity$10;->val$order:Lcom/u8/sdk/test/order/U8Order;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/test/order/U8Order;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/u8/sdk/test/order/U8Order;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/u8/sdk/test/MainActivity$10;->this$0:Lcom/u8/sdk/test/MainActivity;

    const-string v2, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25\uff0c\u968f\u673a\u751f\u6210\u6d4b\u8bd5\u8ba2\u5355\u53f7"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/u8/sdk/test/MainActivity$10;->this$0:Lcom/u8/sdk/test/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8ba2\u5355\u53f7:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/u8/sdk/test/order/U8Order;->getOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/u8/sdk/test/MainActivity$10;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v0}, Lcom/u8/sdk/test/order/U8Order;->getOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setOrderID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/u8/sdk/test/MainActivity$10;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v0}, Lcom/u8/sdk/test/order/U8Order;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setExtension(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/u8/sdk/plugin/U8Pay;->getInstance()Lcom/u8/sdk/plugin/U8Pay;

    move-result-object v1

    iget-object v2, p0, Lcom/u8/sdk/test/MainActivity$10;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v1, v2}, Lcom/u8/sdk/plugin/U8Pay;->pay(Lcom/u8/sdk/PayParams;)V

    return-void
.end method
