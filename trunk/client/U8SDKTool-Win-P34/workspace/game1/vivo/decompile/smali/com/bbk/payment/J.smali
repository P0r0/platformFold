.class final Lcom/bbk/payment/J;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/PaymentActionActivity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/widget/CheckBox;

.field private final synthetic d:Lcom/bbk/payment/action/Action;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentActionActivity;Ljava/lang/String;Landroid/widget/CheckBox;Lcom/bbk/payment/action/Action;)V
    .registers 5

    iput-object p1, p0, Lcom/bbk/payment/J;->a:Lcom/bbk/payment/PaymentActionActivity;

    iput-object p2, p0, Lcom/bbk/payment/J;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbk/payment/J;->c:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/bbk/payment/J;->d:Lcom/bbk/payment/action/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "PaymentActionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VivoMakeDiffUtil.getPackageName(mContext)="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/J;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActionActivity;->a(Lcom/bbk/payment/PaymentActionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/J;->a:Lcom/bbk/payment/PaymentActionActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bbk/payment/J;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/J;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActionActivity;->a(Lcom/bbk/payment/PaymentActionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/J;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/util/UtilTool;->setShprefsAtionRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/J;->a:Lcom/bbk/payment/PaymentActionActivity;

    const-class v2, Lcom/bbk/payment/PaymentDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activityId"

    iget-object v2, p0, Lcom/bbk/payment/J;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    iget-object v2, p0, Lcom/bbk/payment/J;->d:Lcom/bbk/payment/action/Action;

    invoke-virtual {v2}, Lcom/bbk/payment/action/Action;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PaymentActionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action.getAppId()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbk/payment/J;->d:Lcom/bbk/payment/action/Action;

    invoke-virtual {v3}, Lcom/bbk/payment/action/Action;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "appId"

    iget-object v2, p0, Lcom/bbk/payment/J;->d:Lcom/bbk/payment/action/Action;

    invoke-virtual {v2}, Lcom/bbk/payment/action/Action;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "gamePackageName"

    iget-object v2, p0, Lcom/bbk/payment/J;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v2}, Lcom/bbk/payment/PaymentActionActivity;->b(Lcom/bbk/payment/PaymentActionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/J;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-static {v1}, Lcom/bbk/payment/PaymentActionActivity;->c(Lcom/bbk/payment/PaymentActionActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/bbk/payment/J;->a:Lcom/bbk/payment/PaymentActionActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bbk/payment/PaymentActionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/bbk/payment/J;->a:Lcom/bbk/payment/PaymentActionActivity;

    const-string v1, "popups_click_details"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/J;->a:Lcom/bbk/payment/PaymentActionActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentActionActivity;->finish()V

    return-void
.end method
