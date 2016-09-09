.class final Lcom/bbk/payment/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/bbk/payment/CardActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/CardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/g;->a:Lcom/bbk/payment/CardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/bbk/payment/g;->a:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->v(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/bbk/payment/g;->a:Lcom/bbk/payment/CardActivity;

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->v(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11
.end method
