.class final Lcom/bbk/payment/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/bbk/payment/RechargeChoiceActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/RechargeChoiceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/ap;->a:Lcom/bbk/payment/RechargeChoiceActivity;

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
    .registers 11

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    if-le v0, v5, :cond_4c

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/bbk/payment/ap;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/ap;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4c
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bbk/payment/ap;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/ap;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    :cond_81
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_c1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    iget-object v0, p0, Lcom/bbk/payment/ap;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {p1, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/ap;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_c1
    return-void
.end method
