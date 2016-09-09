.class Lcom/alipay/sdk/widget/Loading$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/Loading;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/Loading;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/sdk/widget/Loading$2;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$2;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 64
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$2;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-static {v0}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 65
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$2;->a:Lcom/alipay/sdk/widget/Loading;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 69
    :cond_17
    :goto_17
    return-void

    .line 67
    :catch_18
    move-exception v0

    goto :goto_17
.end method
