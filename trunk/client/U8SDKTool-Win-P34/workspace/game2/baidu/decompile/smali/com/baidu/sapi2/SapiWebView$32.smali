.class Lcom/baidu/sapi2/SapiWebView$32;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 3360
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$32;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3363
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$32;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->i(Lcom/baidu/sapi2/SapiWebView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$32;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->i(Lcom/baidu/sapi2/SapiWebView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3365
    :try_start_14
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$32;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->i(Lcom/baidu/sapi2/SapiWebView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1d} :catch_1e

    .line 3370
    :cond_1d
    :goto_1d
    return-void

    .line 3366
    :catch_1e
    move-exception v0

    .line 3367
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method
