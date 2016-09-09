.class final Lcom/bbk/payment/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/RechargeChoiceActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/RechargeChoiceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/al;)Lcom/bbk/payment/RechargeChoiceActivity;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->a(Lcom/bbk/payment/RechargeChoiceActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/bbk/payment/am;

    invoke-direct {v1, p0}, Lcom/bbk/payment/am;-><init>(Lcom/bbk/payment/al;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbk/payment/RechargeChoiceActivity;->a(Lcom/bbk/payment/RechargeChoiceActivity;Z)V

    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    iget-object v1, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-virtual {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_uppay"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->c(Lcom/bbk/payment/RechargeChoiceActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    const-string v1, "\u5145\u503c\u91d1\u989d\u4e0d\u80fd\u5c0f\u4e8e1\u5143"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :cond_61
    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    const-string v1, "\u5145\u503c\u91d1\u989d\u5fc5\u987b\u5927\u4e8e0\u5143"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :cond_6d
    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    iget-object v1, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-virtual {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_uppay"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->c(Lcom/bbk/payment/RechargeChoiceActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_b4

    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    const-string v1, "\u5145\u503c\u91d1\u989d\u4e0d\u80fd\u5c0f\u4e8e1\u5143"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    :cond_b4
    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->b(Lcom/bbk/payment/RechargeChoiceActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_fb

    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    iget-object v1, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-virtual {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_uppay"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bbk/payment/RechargeChoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v1}, Lcom/bbk/payment/RechargeChoiceActivity;->c(Lcom/bbk/payment/RechargeChoiceActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fb

    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    const-string v1, "\u5145\u503c\u91d1\u989d\u5fc5\u987b\u5927\u4e8e0\u5143"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    :cond_fb
    iget-object v0, p0, Lcom/bbk/payment/al;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-static {v0}, Lcom/bbk/payment/RechargeChoiceActivity;->d(Lcom/bbk/payment/RechargeChoiceActivity;)V

    goto/16 :goto_9
.end method
