.class final Lcom/bbk/payment/B;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/JCardActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/JCardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/B;->a:Lcom/bbk/payment/JCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbk/payment/B;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v0}, Lcom/bbk/payment/JCardActivity;->e(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
