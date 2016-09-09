.class Lcom/baidu/sapi2/SapiWebView$29;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiAccount;

.field final synthetic b:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

.field final synthetic c:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiAccount;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
    .registers 4

    .prologue
    .line 2902
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$29;->c:Lcom/baidu/sapi2/SapiWebView;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$29;->a:Lcom/baidu/sapi2/SapiAccount;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiWebView$29;->b:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2906
    :try_start_0
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$29;->c:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$29;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/shell/listener/AuthorizationListener;->beforeSuccess(Lcom/baidu/sapi2/SapiAccount;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_1e

    .line 2910
    :goto_b
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$29;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 2911
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$29;->c:Lcom/baidu/sapi2/SapiWebView;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$29;->b:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    iget-object v2, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->accountType:Lcom/baidu/sapi2/utils/enums/AccountType;

    invoke-static {v1, v2}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/utils/enums/AccountType;)V

    .line 2912
    return-void

    .line 2907
    :catch_1e
    move-exception v0

    .line 2908
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_b
.end method
