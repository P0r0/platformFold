.class Lcom/baidu/balance/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/baidu/balance/WithdrawBalanceToBankActivity;


# direct methods
.method constructor <init>(Lcom/baidu/balance/WithdrawBalanceToBankActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/balance/r;->a:Lcom/baidu/balance/WithdrawBalanceToBankActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x3

    if-le v3, v4, :cond_33

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/balance/r;->a:Lcom/baidu/balance/WithdrawBalanceToBankActivity;

    invoke-static {v1}, Lcom/baidu/balance/WithdrawBalanceToBankActivity;->a(Lcom/baidu/balance/WithdrawBalanceToBankActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/balance/r;->a:Lcom/baidu/balance/WithdrawBalanceToBankActivity;

    invoke-static {v1}, Lcom/baidu/balance/WithdrawBalanceToBankActivity;->a(Lcom/baidu/balance/WithdrawBalanceToBankActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_33
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/StringUtils;->parseFloat(Ljava/lang/String;)F
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_3a} :catch_59

    move-result v1

    :goto_3b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5f

    iget-object v1, p0, Lcom/baidu/balance/r;->a:Lcom/baidu/balance/WithdrawBalanceToBankActivity;

    invoke-static {v1}, Lcom/baidu/balance/WithdrawBalanceToBankActivity;->b(Lcom/baidu/balance/WithdrawBalanceToBankActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/baidu/balance/r;->a:Lcom/baidu/balance/WithdrawBalanceToBankActivity;

    invoke-static {v1, v0}, Lcom/baidu/balance/WithdrawBalanceToBankActivity;->a(Lcom/baidu/balance/WithdrawBalanceToBankActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_58
    return-void

    :catch_59
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v1, v2

    goto :goto_3b

    :cond_5f
    iget-object v0, p0, Lcom/baidu/balance/r;->a:Lcom/baidu/balance/WithdrawBalanceToBankActivity;

    invoke-static {v0}, Lcom/baidu/balance/WithdrawBalanceToBankActivity;->b(Lcom/baidu/balance/WithdrawBalanceToBankActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_58
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
