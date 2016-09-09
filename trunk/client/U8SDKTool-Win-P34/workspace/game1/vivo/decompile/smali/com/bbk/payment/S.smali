.class final Lcom/bbk/payment/S;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/S;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bbk/payment/S;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->i(Lcom/bbk/payment/PaymentActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPaytipsLastCloseTime(J)V

    iget-object v0, p0, Lcom/bbk/payment/S;->a:Lcom/bbk/payment/PaymentActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentActivity;->v(Lcom/bbk/payment/PaymentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
