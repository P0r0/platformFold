.class final Lcom/bbkmobile/iqoo/payment/alipay/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/alipay/Alipay;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bbkmobile/iqoo/payment/alipay/Alipay;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/alipay/e;->a:Lcom/bbkmobile/iqoo/payment/alipay/Alipay;

    iput-object p2, p0, Lcom/bbkmobile/iqoo/payment/alipay/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-string v0, "alipty"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/alipay/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/alipay/e;->a:Lcom/bbkmobile/iqoo/payment/alipay/Alipay;

    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/alipay/Alipay;->b(Lcom/bbkmobile/iqoo/payment/alipay/Alipay;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/alipay/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alipty"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/bbkmobile/iqoo/payment/alipay/ResultChecker;

    invoke-direct {v1, v0}, Lcom/bbkmobile/iqoo/payment/alipay/ResultChecker;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/bbkmobile/iqoo/payment/alipay/ResultChecker;->alipayResponse(Ljava/lang/String;)Lcom/bbkmobile/iqoo/payment/model/ResultInfo;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0}, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->getResult_what()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->getPay_msg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->getRes_code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/alipay/e;->a:Lcom/bbkmobile/iqoo/payment/alipay/Alipay;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/alipay/Alipay;->a(Lcom/bbkmobile/iqoo/payment/alipay/Alipay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
