.class final Lcom/bbkmobile/iqoo/payment/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/i;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdateDialogDismiss()V
    .registers 3

    const-string v0, "PaymentActivity"

    const-string v1, "onUpdateDialogDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/i;->a:Lcom/bbkmobile/iqoo/payment/PaymentActivity;

    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/PaymentActivity;->a(Lcom/bbkmobile/iqoo/payment/PaymentActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setIsSinglePay(Z)V

    return-void
.end method

.method public final showUpdateDialog(Z)V
    .registers 5

    const-string v0, "PaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isShow="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
