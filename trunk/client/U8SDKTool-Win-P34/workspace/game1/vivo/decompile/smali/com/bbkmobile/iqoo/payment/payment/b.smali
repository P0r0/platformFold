.class final Lcom/bbkmobile/iqoo/payment/payment/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;


# direct methods
.method constructor <init>(Lcom/bbkmobile/iqoo/payment/payment/PaymentType;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/payment/b;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NETWORK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/payment/b;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    iget-object v1, v1, Lcom/bbkmobile/iqoo/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/b;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbkmobile/iqoo/payment/payment/PaymentType;->backup_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
