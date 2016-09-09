.class final Lcom/bbk/payment/p;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/bbk/payment/DetectPayResultActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/DetectPayResultActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/p;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    iget-object v0, p0, Lcom/bbk/payment/p;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->a(Lcom/bbk/payment/DetectPayResultActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/p;->a:Lcom/bbk/payment/DetectPayResultActivity;

    iget-object v2, p0, Lcom/bbk/payment/p;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_result_detecting_bt"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/bbk/payment/p;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v6}, Lcom/bbk/payment/DetectPayResultActivity;->b(Lcom/bbk/payment/DetectPayResultActivity;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Lcom/bbk/payment/DetectPayResultActivity;->a(Lcom/bbk/payment/DetectPayResultActivity;I)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/DetectPayResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
