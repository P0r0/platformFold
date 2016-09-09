.class public Lcom/bbkmobile/iqoo/payment/payment/PaymentType$PayFailedTask;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

.field private synthetic b:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;


# direct methods
.method public constructor <init>(Lcom/bbkmobile/iqoo/payment/payment/PaymentType;Lcom/bbkmobile/iqoo/payment/model/OrderInfo;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentType$PayFailedTask;->b:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentType$PayFailedTask;->a:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/net/URL;)Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentType$PayFailedTask;->b:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbkmobile/iqoo/payment/payment/PaymentType;->paymentHelper:Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentType$PayFailedTask;->a:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/payment/PaymentType$PayFailedTask;->b:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    iget v2, v2, Lcom/bbkmobile/iqoo/payment/payment/PaymentType;->paymentType:I

    invoke-virtual {v0, v1, v2}, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;->updatePayForFail(Lcom/bbkmobile/iqoo/payment/model/OrderInfo;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/bbkmobile/iqoo/payment/payment/PaymentType$PayFailedTask;->doInBackground([Ljava/net/URL;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5

    const-string v0, "PaymentType"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notify payment failed result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/bbkmobile/iqoo/payment/payment/PaymentType$PayFailedTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
