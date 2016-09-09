.class final Lcom/bbk/payment/I;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActionActivity;

.field private final synthetic b:Landroid/widget/CheckBox;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActionActivity;Landroid/widget/CheckBox;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bbk/payment/I;->a:Lcom/bbk/payment/PaymentActionActivity;

    iput-object p2, p0, Lcom/bbk/payment/I;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/bbk/payment/I;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    iget-object v0, p0, Lcom/bbk/payment/I;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/bbk/payment/I;->a:Lcom/bbk/payment/PaymentActionActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bbk/payment/I;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/I;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActionActivity;->a(Lcom/bbk/payment/PaymentActionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/util/UtilTool;->setShprefsAtionRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bbk/payment/I;->a:Lcom/bbk/payment/PaymentActionActivity;

    const-string v1, "popups_noshow"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/bbk/payment/I;->a:Lcom/bbk/payment/PaymentActionActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bbk/payment/I;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/I;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActionActivity;->a(Lcom/bbk/payment/PaymentActionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/util/UtilTool;->setShprefsAtionRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bbk/payment/I;->a:Lcom/bbk/payment/PaymentActionActivity;

    const-string v1, "popups_noshow"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method
