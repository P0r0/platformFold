.class Lcom/baidu/sapi2/SapiWebView$31;
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
.field final synthetic a:Lcom/baidu/sapi2/shell/response/SocialResponse;

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SocialResponse;)V
    .registers 3

    .prologue
    .line 2955
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$31;->b:Lcom/baidu/sapi2/SapiWebView;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$31;->a:Lcom/baidu/sapi2/shell/response/SocialResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$31;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$31;->a:Lcom/baidu/sapi2/shell/response/SocialResponse;

    iget v1, v1, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorCode:I

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$31;->a:Lcom/baidu/sapi2/shell/response/SocialResponse;

    iget-object v2, v2, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/shell/listener/AuthorizationListener;->onFailed(ILjava/lang/String;)V

    .line 2959
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$31;->b:Lcom/baidu/sapi2/SapiWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SocialResponse;)Lcom/baidu/sapi2/shell/response/SocialResponse;

    .line 2960
    return-void
.end method
