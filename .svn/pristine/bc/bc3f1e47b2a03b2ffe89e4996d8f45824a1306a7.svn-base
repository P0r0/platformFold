.class Lcom/baidu/sapi2/SapiWebView$20;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Lcom/baidu/sapi2/plugin/SSOListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;Z)V
    .registers 3

    .prologue
    .line 2281
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$20;->b:Lcom/baidu/sapi2/SapiWebView;

    iput-boolean p2, p0, Lcom/baidu/sapi2/SapiWebView$20;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 2309
    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiWebView$20;->a:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$20;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    .line 2310
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$20;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2312
    :cond_19
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 2285
    const-string v3, "access_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2286
    .local v0, "accesToken":Ljava/lang/String;
    const-string v3, "uid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2287
    .local v1, "osuid":Ljava/lang/String;
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v3

    sget-object v4, Lcom/baidu/sapi2/utils/enums/SocialType;->SINA_WEIBO:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v3, v4, v0, v1}, Lcom/baidu/sapi2/SapiAccountService;->a(Lcom/baidu/sapi2/utils/enums/SocialType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2289
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$20;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v3, v2}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 2290
    return-void
.end method

.method public onError(Lcom/baidu/sapi2/plugin/SSOError;)V
    .registers 5
    .param p1, "e"    # Lcom/baidu/sapi2/plugin/SSOError;

    .prologue
    .line 2303
    invoke-static {p1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 2304
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$20;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/sapi2/plugin/SSOError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2305
    return-void
.end method

.method public onJumpNormal()V
    .registers 3

    .prologue
    .line 2294
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$20;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->w(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 2295
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2296
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->SINA_WEIBO:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2297
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$20;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->w(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2299
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1e
    return-void
.end method
