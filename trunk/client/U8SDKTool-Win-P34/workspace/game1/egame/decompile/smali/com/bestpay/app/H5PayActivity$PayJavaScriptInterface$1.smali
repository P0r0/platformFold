.class Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$1;
.super Ljava/lang/Object;
.source "H5PayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->callback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$1;->this$1:Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v0, "data":Landroid/content/Intent;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 272
    .local v1, "gson":Lcom/google/gson/Gson;
    iget-object v3, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$1;->this$1:Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;

    # getter for: Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;
    invoke-static {v3}, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/bestpay/app/H5PayActivity;->jsonTo:Ljava/lang/String;

    .line 273
    const-class v4, Lcom/bestpay/db/ResultInfo;

    .line 272
    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bestpay/db/ResultInfo;

    .line 275
    .local v2, "info":Lcom/bestpay/db/ResultInfo;
    const-string v3, "TAg"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u70b9\u51fb\u8fd4\u56de"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bestpay/db/ResultInfo;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v3, "result"

    invoke-virtual {v2}, Lcom/bestpay/db/ResultInfo;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object v3, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$1;->this$1:Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;

    # getter for: Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;
    invoke-static {v3}, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;

    move-result-object v3

    invoke-virtual {v2}, Lcom/bestpay/db/ResultInfo;->getResultCode()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/bestpay/app/H5PayActivity;->setResult(ILandroid/content/Intent;)V

    .line 279
    iget-object v3, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$1;->this$1:Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;

    # getter for: Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;
    invoke-static {v3}, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bestpay/app/H5PayActivity;->finish()V

    .line 280
    return-void
.end method
