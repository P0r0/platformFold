.class Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$FastRegAction;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V
    .registers 2

    .prologue
    .line 3064
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3067
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3068
    const/4 v0, 0x0

    .line 3069
    .local v0, "sendSuccess":Z
    const-string v1, "android.permission.SEND_SMS"

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/sapi2/utils/SapiUtils;->checkRequestPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3070
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->f(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->getFastRegChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/sapi2/utils/SapiUtils;->sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3073
    :cond_32
    if-eqz v0, :cond_51

    .line 3074
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->d(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->g(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3075
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->b(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Z)Z

    .line 3076
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->h(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    .line 3080
    :goto_50
    return-void

    .line 3078
    :cond_51
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->i(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    goto :goto_50
.end method
