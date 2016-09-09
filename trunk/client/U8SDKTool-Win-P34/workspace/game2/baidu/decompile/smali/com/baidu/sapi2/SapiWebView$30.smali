.class Lcom/baidu/sapi2/SapiWebView$30;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/shell/response/SocialResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiAccount;

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiAccount;)V
    .registers 3

    .prologue
    .line 2941
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$30;->b:Lcom/baidu/sapi2/SapiWebView;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$30;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2945
    :try_start_0
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$30;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$30;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/shell/listener/AuthorizationListener;->beforeSuccess(Lcom/baidu/sapi2/SapiAccount;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_22

    .line 2949
    :goto_b
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$30;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 2950
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$30;->b:Lcom/baidu/sapi2/SapiWebView;

    sget-object v2, Lcom/baidu/sapi2/utils/enums/AccountType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/AccountType;

    invoke-static {v1, v2}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/utils/enums/AccountType;)V

    .line 2951
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$30;->b:Lcom/baidu/sapi2/SapiWebView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SocialResponse;)Lcom/baidu/sapi2/shell/response/SocialResponse;

    .line 2952
    return-void

    .line 2946
    :catch_22
    move-exception v0

    .line 2947
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_b
.end method
