.class public Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;
.super Ljava/lang/Object;
.source "H5PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bestpay/app/H5PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PayJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/app/H5PayActivity;


# direct methods
.method constructor <init>(Lcom/bestpay/app/H5PayActivity;)V
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method

.method static synthetic access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;

    return-object v0
.end method


# virtual methods
.method public callResult(Ljava/lang/String;)V
    .registers 8
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 293
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "callResult:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v0, "data":Landroid/content/Intent;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 296
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/bestpay/db/ResultInfo;

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bestpay/db/ResultInfo;

    .line 297
    .local v2, "info":Lcom/bestpay/db/ResultInfo;
    const-string v3, "result"

    invoke-virtual {v2}, Lcom/bestpay/db/ResultInfo;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v3, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;

    invoke-virtual {v2}, Lcom/bestpay/db/ResultInfo;->getResultCode()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/bestpay/app/H5PayActivity;->setResult(ILandroid/content/Intent;)V

    .line 299
    iget-object v3, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;

    invoke-virtual {v3}, Lcom/bestpay/app/H5PayActivity;->finish()V

    .line 300
    return-void
.end method

.method public callback(Ljava/lang/String;)V
    .registers 5
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;

    iput-object p1, v0, Lcom/bestpay/app/H5PayActivity;->jsonTo:Ljava/lang/String;

    .line 261
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callback:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 264
    const-string v1, "\u662f\u5426\u9000\u51fa\u4ed8\u6b3e?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 265
    const-string v1, "\u662f"

    .line 266
    new-instance v2, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$1;

    invoke-direct {v2, p0}, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$1;-><init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 282
    const-string v1, "\u5426"

    .line 283
    new-instance v2, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$2;

    invoke-direct {v2, p0}, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$2;-><init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 289
    return-void
.end method

.method public cancel()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 306
    const-string v1, "\u662f\u5426\u9000\u51fa\u4ed8\u6b3e?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 307
    const-string v1, "\u662f"

    .line 308
    new-instance v2, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$3;

    invoke-direct {v2, p0}, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$3;-><init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V

    .line 307
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 318
    const-string v1, "\u5426"

    .line 319
    new-instance v2, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$4;

    invoke-direct {v2, p0}, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$4;-><init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V

    .line 318
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 324
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 325
    return-void
.end method

.method public cancel_error()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;

    invoke-virtual {v0}, Lcom/bestpay/app/H5PayActivity;->finish()V

    .line 330
    return-void
.end method

.method public goback()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity;->access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$5;

    invoke-direct {v1, p0}, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$5;-><init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 346
    return-void
.end method

.method public saveAccount(Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 242
    invoke-static {p1}, Lcom/bestpay/util/JsonUtils;->jsonToAccount(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 243
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/bestpay/db/AccountInfo;>;"
    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 244
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_17

    .line 256
    :cond_16
    return-void

    .line 244
    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bestpay/db/AccountInfo;

    .line 245
    .local v0, "info":Lcom/bestpay/db/AccountInfo;
    iget-object v3, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/bestpay/app/H5PayActivity;->access$0(Lcom/bestpay/app/H5PayActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bestpay/db/BestPayDao;->getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPayDao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bestpay/db/BestPayDao;->uptOrInsert(Lcom/bestpay/db/AccountInfo;)V

    goto :goto_10
.end method
