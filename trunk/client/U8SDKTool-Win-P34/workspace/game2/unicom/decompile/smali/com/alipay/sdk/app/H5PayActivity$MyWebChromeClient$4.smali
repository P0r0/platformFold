.class Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient$4;
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
    .line 308
    iput-object p1, p0, Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient$4;->b:Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient;

    iput-object p2, p0, Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient$4;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient$4;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 314
    return-void
.end method
