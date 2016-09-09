.class Lcom/baidu/sapi2/SapiWebView$RenRenWebviewInterpreter;
.super Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenRenWebviewInterpreter"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$RenRenWebviewInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 4
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 1668
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$RenRenWebviewInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->w(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 1669
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1670
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->RENREN:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1671
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$RenRenWebviewInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->w(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1673
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1e
    const/4 v1, 0x0

    return-object v1
.end method
