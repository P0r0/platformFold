.class Lcom/alipay/sdk/app/H5PayActivity$MyWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5PayActivity$MyWebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5PayActivity$MyWebViewClient;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alipay/sdk/app/H5PayActivity$MyWebViewClient$1;->a:Lcom/alipay/sdk/app/H5PayActivity$MyWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$MyWebViewClient$1;->a:Lcom/alipay/sdk/app/H5PayActivity$MyWebViewClient;

    iget-object v0, v0, Lcom/alipay/sdk/app/H5PayActivity$MyWebViewClient;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    .line 236
    return-void
.end method
