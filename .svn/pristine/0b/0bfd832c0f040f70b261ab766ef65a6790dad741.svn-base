.class Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Lcom/baidu/sapi2/shell/callback/SapiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
        "<",
        "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V
    .registers 2

    .prologue
    .line 3196
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkFailed()V
    .registers 3

    .prologue
    .line 3221
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->u(Lcom/baidu/sapi2/SapiWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Ljava/lang/String;)V

    .line 3222
    return-void
.end method

.method public onSuccess(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
    .registers 4
    .param p1, "response"    # Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    .prologue
    .line 3200
    new-instance v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    .line 3201
    .local v0, "fastRegResponse":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    .line 3202
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    .line 3203
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    .line 3204
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    .line 3205
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    .line 3206
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    .line 3207
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    .line 3208
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    const/4 v1, 0x1

    :goto_2a
    iput-boolean v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    .line 3209
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    .line 3211
    iget-boolean v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    if-eqz v1, :cond_3e

    .line 3212
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/SapiWebView;->c(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    .line 3217
    :goto_3b
    return-void

    .line 3208
    :cond_3c
    const/4 v1, 0x0

    goto :goto_2a

    .line 3214
    :cond_3e
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    .line 3215
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    goto :goto_3b
.end method

.method public bridge synthetic onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/shell/response/SapiResponse;

    .prologue
    .line 3196
    check-cast p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    .end local p1    # "x0":Lcom/baidu/sapi2/shell/response/SapiResponse;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    return-void
.end method

.method public onSystemError(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->u(Lcom/baidu/sapi2/SapiWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Ljava/lang/String;)V

    .line 3227
    return-void
.end method
