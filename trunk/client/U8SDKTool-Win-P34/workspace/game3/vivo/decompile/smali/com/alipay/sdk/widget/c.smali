.class final Lcom/alipay/sdk/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/a;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    iget-object v0, v0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 62
    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    iget-object v0, v0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1b
    .catchall {:try_start_1 .. :try_end_16} :catchall_21

    .line 65
    :cond_16
    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    iput-object v2, v0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    .line 66
    :goto_1a
    return-void

    .line 65
    :catch_1b
    move-exception v0

    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    iput-object v2, v0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    goto :goto_1a

    :catchall_21
    move-exception v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    iput-object v2, v1, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    throw v0
.end method
