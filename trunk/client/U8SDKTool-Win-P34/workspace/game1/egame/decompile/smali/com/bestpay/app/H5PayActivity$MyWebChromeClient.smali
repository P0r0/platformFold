.class public Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "H5PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bestpay/app/H5PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/app/H5PayActivity;


# direct methods
.method public constructor <init>(Lcom/bestpay/app/H5PayActivity;)V
    .registers 2

    .prologue
    .line 448
    iput-object p1, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;->this$0:Lcom/bestpay/app/H5PayActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 450
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 9
    .param p1, "paramWebView"    # Landroid/webkit/WebView;
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramString2"    # Ljava/lang/String;
    .param p4, "paramJsResult"    # Landroid/webkit/JsResult;

    .prologue
    .line 466
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 467
    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;->this$0:Lcom/bestpay/app/H5PayActivity;

    .line 466
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 469
    .local v0, "localBuilder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 470
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 471
    const-string v2, "\u786e\u5b9a"

    .line 472
    new-instance v3, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$1;

    invoke-direct {v3, p0, p4}, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$1;-><init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    .line 471
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 479
    const-string v2, "\u53d6\u6d88"

    .line 480
    new-instance v3, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$2;

    invoke-direct {v3, p0, p4}, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$2;-><init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    .line 479
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 486
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 487
    const/4 v1, 0x1

    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 9
    .param p1, "paramWebView"    # Landroid/webkit/WebView;
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramString2"    # Ljava/lang/String;
    .param p4, "paramJsResult"    # Landroid/webkit/JsResult;

    .prologue
    .line 492
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 493
    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;->this$0:Lcom/bestpay/app/H5PayActivity;

    .line 492
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 495
    .local v0, "localBuilder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 496
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 497
    const-string v2, "\u786e\u5b9a"

    .line 498
    new-instance v3, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$3;

    invoke-direct {v3, p0, p4}, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$3;-><init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    .line 497
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 505
    const-string v2, "\u53d6\u6d88"

    .line 506
    new-instance v3, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$4;

    invoke-direct {v3, p0, p4}, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$4;-><init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    .line 505
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 512
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 513
    const/4 v1, 0x1

    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 10
    .param p1, "paramWebView"    # Landroid/webkit/WebView;
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramString2"    # Ljava/lang/String;
    .param p4, "paramString3"    # Ljava/lang/String;
    .param p5, "paramJsPromptResult"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 519
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 520
    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;->this$0:Lcom/bestpay/app/H5PayActivity;

    .line 519
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 522
    .local v0, "localBuilder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 523
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 524
    const-string v2, "\u786e\u5b9a"

    .line 525
    new-instance v3, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$5;

    invoke-direct {v3, p0, p5}, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$5;-><init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsPromptResult;)V

    .line 524
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 532
    const-string v2, "\u53d6\u6d88"

    .line 533
    new-instance v3, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$6;

    invoke-direct {v3, p0, p5}, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$6;-><init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsPromptResult;)V

    .line 532
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 539
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 541
    const/4 v1, 0x1

    return v1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v1, 0x8

    .line 454
    const/16 v0, 0x64

    if-ne p2, v0, :cond_13

    .line 455
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity;->access$3(Lcom/bestpay/app/H5PayActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 461
    :goto_f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 462
    return-void

    .line 457
    :cond_13
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity;->access$3(Lcom/bestpay/app/H5PayActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_29

    .line 458
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity;->access$3(Lcom/bestpay/app/H5PayActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 459
    :cond_29
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity;->access$3(Lcom/bestpay/app/H5PayActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_f
.end method
