.class final Lcom/bbk/payment/R;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/R;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bbk/payment/R;->a:Lcom/bbk/payment/PaymentActivity;

    iget-object v1, p0, Lcom/bbk/payment/R;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActivity;->a(Lcom/bbk/payment/PaymentActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbk/payment/PaymentActivity;->initialPayPairs(Lcom/bbk/payment/model/OrderInfo;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method
