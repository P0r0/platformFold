.class final Lcom/bbkmobile/iqoo/payment/payment/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;


# direct methods
.method constructor <init>(Lcom/bbkmobile/iqoo/payment/payment/PaymentType;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/payment/c;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/c;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbkmobile/iqoo/payment/payment/PaymentType;->backup_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
