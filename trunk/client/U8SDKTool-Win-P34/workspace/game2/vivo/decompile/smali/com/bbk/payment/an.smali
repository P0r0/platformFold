.class final Lcom/bbk/payment/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/RechargeChoiceActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/RechargeChoiceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-virtual {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "widget10"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "10"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-virtual {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "widget50"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "50"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-virtual {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "widget100"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_71

    iget-object v0, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "100"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-virtual {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "widget500"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8f

    iget-object v0, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "500"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_8f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-virtual {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "widget1000"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_ae

    iget-object v0, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    :cond_ae
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-virtual {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "widget2000"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/bbk/payment/an;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "2000"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d
.end method
