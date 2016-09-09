.class final Lcom/bbk/payment/ac;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/bbk/payment/PaymentDetailsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/ac;->a:Lcom/bbk/payment/PaymentDetailsActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbk/payment/PaymentDetailsActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbk/payment/ac;-><init>(Lcom/bbk/payment/PaymentDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    iget-object v0, p0, Lcom/bbk/payment/ac;->a:Lcom/bbk/payment/PaymentDetailsActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentDetailsActivity;->b(Lcom/bbk/payment/PaymentDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/ac;->a:Lcom/bbk/payment/PaymentDetailsActivity;

    invoke-static {v0}, Lcom/bbk/payment/PaymentDetailsActivity;->a(Lcom/bbk/payment/PaymentDetailsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method
