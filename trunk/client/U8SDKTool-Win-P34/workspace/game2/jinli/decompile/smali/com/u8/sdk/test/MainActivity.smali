.class public Lcom/u8/sdk/test/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/u8/sdk/test/MainActivity$LoginGameTask;,
        Lcom/u8/sdk/test/MainActivity$OrderTask;
    }
.end annotation


# static fields
.field public static application:Landroid/app/Application;


# instance fields
.field btn_login:Landroid/widget/Button;

.field private loadingActivity:Landroid/app/ProgressDialog;

.field textView_account:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/u8/sdk/test/MainActivity;->loadingActivity:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/test/MainActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/u8/sdk/test/MainActivity;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/u8/sdk/test/MainActivity;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/u8/sdk/test/MainActivity;->hideProgressDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2(Lcom/u8/sdk/test/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/u8/sdk/test/MainActivity;->pay()V

    return-void
.end method

.method static synthetic access$3(Lcom/u8/sdk/test/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/u8/sdk/test/MainActivity;->login()V

    return-void
.end method

.method private hideProgressDialog(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity;->loadingActivity:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/u8/sdk/test/MainActivity;->loadingActivity:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private login()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/test/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/u8/sdk/test/MainActivity$8;-><init>(Lcom/u8/sdk/test/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pay()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/test/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/u8/sdk/test/MainActivity$9;-><init>(Lcom/u8/sdk/test/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity;->loadingActivity:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/u8/sdk/test/MainActivity;->loadingActivity:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity;->loadingActivity:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/u8/sdk/test/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/u8/sdk/test/MainActivity$11;-><init>(Lcom/u8/sdk/test/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public exit()V
    .locals 3

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v1

    const-string v2, "exit"

    invoke-virtual {v1, v2}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/test/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/u8/sdk/test/MainActivity$5;-><init>(Lcom/u8/sdk/test/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9000\u51fa\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u4e3b\u516c\uff0c\u73b0\u5728\u8fd8\u65e9\uff0c\u8981\u4e0d\u8981\u518d\u73a9\u4e00\u4f1a\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u597d\u5427"

    new-instance v2, Lcom/u8/sdk/test/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/u8/sdk/test/MainActivity$6;-><init>(Lcom/u8/sdk/test/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u4e00\u4f1a\u518d\u73a9"

    new-instance v2, Lcom/u8/sdk/test/MainActivity$7;

    invoke-direct {v2, p0}, Lcom/u8/sdk/test/MainActivity$7;-><init>(Lcom/u8/sdk/test/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public isSupportExit()Z
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/u8/sdk/U8SDK;->onActivityResult(IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "U8SDK"

    const-string v1, "OnBackPressed."

    invoke-static {v0, v1}, Lcom/u8/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onBackPressed()V

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8User;->exit()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/u8/sdk/test/MainActivity;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v3, 0x7f030000

    invoke-virtual {p0, v3}, Lcom/u8/sdk/test/MainActivity;->setContentView(I)V

    const-string v3, "CurrThread-Name::"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/u8/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v3, 0x7f080000

    invoke-virtual {p0, v3}, Lcom/u8/sdk/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/u8/sdk/test/MainActivity;->textView_account:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/u8/sdk/test/MainActivity;->textView_account:Landroid/widget/TextView;

    const-string v4, "\u672a\u767b\u5f55"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f080003

    invoke-virtual {p0, v3}, Lcom/u8/sdk/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/u8/sdk/test/MainActivity;->btn_login:Landroid/widget/Button;

    const v3, 0x7f080002

    invoke-virtual {p0, v3}, Lcom/u8/sdk/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/u8/sdk/test/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/u8/sdk/test/MainActivity$1;-><init>(Lcom/u8/sdk/test/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/u8/sdk/test/MainActivity;->btn_login:Landroid/widget/Button;

    const-string v4, "\u767b  \u5f55"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/u8/sdk/test/MainActivity;->btn_login:Landroid/widget/Button;

    new-instance v4, Lcom/u8/sdk/test/MainActivity$2;

    invoke-direct {v4, p0}, Lcom/u8/sdk/test/MainActivity$2;-><init>(Lcom/u8/sdk/test/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f080001

    invoke-virtual {p0, v3}, Lcom/u8/sdk/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/u8/sdk/test/MainActivity$3;

    invoke-direct {v3, p0}, Lcom/u8/sdk/test/MainActivity$3;-><init>(Lcom/u8/sdk/test/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    new-instance v4, Lcom/u8/sdk/test/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/u8/sdk/test/MainActivity$4;-><init>(Lcom/u8/sdk/test/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/u8/sdk/U8SDK;->setSDKListener(Lcom/u8/sdk/IU8SDKListener;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/u8/sdk/U8SDK;->init(Landroid/app/Activity;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/u8/sdk/U8SDK;->onCreate()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/u8/sdk/test/MainActivity;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/u8/sdk/plugin/U8Push;->getInstance()Lcom/u8/sdk/plugin/U8Push;

    move-result-object v3

    invoke-virtual {v3}, Lcom/u8/sdk/plugin/U8Push;->startPush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onGotOrder(Lcom/u8/sdk/PayParams;Lcom/u8/sdk/test/order/U8Order;)V
    .locals 2

    const-string v0, "UniSDK"

    const-string v1, "Get Order Success"

    invoke-static {v0, v1}, Lcom/u8/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/test/MainActivity$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/u8/sdk/test/MainActivity$10;-><init>(Lcom/u8/sdk/test/MainActivity;Lcom/u8/sdk/test/order/U8Order;Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "U8SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnKeyDown:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/u8/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8User;->exit()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/u8/sdk/test/MainActivity;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public onLoginGameSuccess(Lcom/u8/sdk/test/order/U8Account;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "\u767b\u5f55\u6e38\u620f\u670d\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity;->btn_login:Landroid/widget/Button;

    const-string v1, "\u5207\u6362\u5e10\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity;->textView_account:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/u8/sdk/test/order/U8Account;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/U8SDK;->onNewIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/u8/sdk/U8SDK;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestart()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onRestart()V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onResume()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onStart()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onStop()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
