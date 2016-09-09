.class final Lcom/bbkmobile/iqoo/payment/payment/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;


# direct methods
.method constructor <init>(Lcom/bbkmobile/iqoo/payment/payment/PaymentType;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/payment/d;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p2, v0, :cond_c

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/d;->a:Lcom/bbkmobile/iqoo/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbkmobile/iqoo/payment/payment/PaymentType;->backup_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
