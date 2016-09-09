.class Lcom/baidu/sapi2/SapiWebView$24$1;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView$24;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$24;)V
    .registers 2

    .prologue
    .line 2478
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$24$1;->a:Lcom/baidu/sapi2/SapiWebView$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2482
    :try_start_0
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$24$1;->a:Lcom/baidu/sapi2/SapiWebView$24;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$24$1;->a:Lcom/baidu/sapi2/SapiWebView$24;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "\u52a0\u8f7d\u4e2d..."

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    .line 2487
    :goto_17
    return-void

    .line 2484
    :catch_18
    move-exception v0

    .line 2485
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_17
.end method
