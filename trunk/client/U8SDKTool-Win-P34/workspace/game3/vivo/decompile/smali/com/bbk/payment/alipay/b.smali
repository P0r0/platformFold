.class final Lcom/bbk/payment/alipay/b;
.super Lcom/alipay/android/app/IRemoteServiceCallback$Stub;


# instance fields
.field private synthetic a:Lcom/bbk/payment/alipay/AliSecurityPayer;


# direct methods
.method constructor <init>(Lcom/bbk/payment/alipay/AliSecurityPayer;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/alipay/b;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    invoke-direct {p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final isHideLoadingScreen()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final payEnd(ZLjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-nez p4, :cond_f

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_f
    :try_start_f
    const-string v0, "CallingPid"

    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_22

    :goto_17
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbk/payment/alipay/b;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iget-object v0, v0, Lcom/bbk/payment/alipay/AliSecurityPayer;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method
