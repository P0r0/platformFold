.class Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsPromptResult;

.field final synthetic b:Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsPromptResult;)V
    .registers 3

    .prologue
    .line 345
    iput-object p1, p0, Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient$5;->b:Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient;

    iput-object p2, p0, Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient$5;->a:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient$5;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 351
    return-void
.end method
