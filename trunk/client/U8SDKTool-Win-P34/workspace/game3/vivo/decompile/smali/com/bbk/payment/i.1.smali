.class final Lcom/bbk/payment/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/CardActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/CardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/i;->a:Lcom/bbk/payment/CardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbk/payment/i;->a:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->n(Lcom/bbk/payment/CardActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
