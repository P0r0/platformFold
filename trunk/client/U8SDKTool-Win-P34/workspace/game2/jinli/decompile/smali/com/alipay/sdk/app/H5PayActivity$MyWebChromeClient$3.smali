.class Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
    .registers 3

    .prologue
    .line 317
    iput-object p1, p0, Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient$3;->b:Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient;

    iput-object p2, p0, Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient$3;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient$3;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 323
    return-void
.end method
