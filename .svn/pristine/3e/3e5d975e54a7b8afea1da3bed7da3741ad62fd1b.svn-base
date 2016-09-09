.class public Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/payment/PaymentType;


# direct methods
.method protected constructor <init>(Lcom/bbk/payment/payment/PaymentType;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/net/URL;)Ljava/lang/Integer;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbk/payment/payment/PaymentType;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    invoke-virtual {v0}, Lcom/bbk/payment/payment/PaymentHelper;->installPayPlugin()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_5e

    move-result v0

    :try_start_9
    const-string v2, "PaymentType"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "install payment plugin result="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_36

    iget-object v2, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v2, v2, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v3, v3, Lcom/bbk/payment/payment/PaymentType;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    invoke-virtual {v3}, Lcom/bbk/payment/payment/PaymentHelper;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bbk/payment/util/UtilTool;->isMobileInstallApp(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2e} :catch_59

    move-result v2

    move v3, v2

    move v2, v1

    :goto_31
    if-nez v3, :cond_36

    const/4 v1, 0x5

    if-lt v2, v1, :cond_3b

    :cond_36
    :goto_36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_3b
    const-wide/16 v4, 0x7d0

    :try_start_3d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v1, v1, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    iget-object v4, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v4, v4, Lcom/bbk/payment/payment/PaymentType;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    invoke-virtual {v4}, Lcom/bbk/payment/payment/PaymentHelper;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bbk/payment/util/UtilTool;->isMobileInstallApp(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_51} :catch_54

    move-result v1

    move v3, v1

    goto :goto_31

    :catch_54
    move-exception v1

    :try_start_55
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_31

    :catch_59
    move-exception v1

    :goto_5a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    :catch_5e
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_5a
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->doInBackground([Ljava/net/URL;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 9

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    invoke-static {v0}, Lcom/bbk/payment/payment/PaymentType;->a(Lcom/bbk/payment/payment/PaymentType;)V

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    invoke-virtual {v0}, Lcom/bbk/payment/payment/PaymentType;->closeDialog()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    goto :goto_c

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbk/payment/payment/PaymentType;->callback:Landroid/os/Handler;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v2, v2, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v3, v3, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_pay_sys_error"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#9999"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_c

    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    invoke-virtual {v0}, Lcom/bbk/payment/payment/PaymentType;->closeDialog()V

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v0, v0, Lcom/bbk/payment/payment/PaymentType;->callback:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v3, v3, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v4, v4, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_install_fail"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#2000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/util/UtilTool;->handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_8d} :catch_1a

    goto/16 :goto_c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v1, v1, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v3, v3, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    iget-object v4, p0, Lcom/bbk/payment/payment/PaymentType$InstallPluginTask;->a:Lcom/bbk/payment/payment/PaymentType;

    iget-object v4, v4, Lcom/bbk/payment/payment/PaymentType;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_initail_paying"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v6, v6}, Lcom/bbk/payment/util/UtilTool;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/bbk/payment/payment/PaymentType;->rogressDialog:Landroid/app/ProgressDialog;

    return-void
.end method
