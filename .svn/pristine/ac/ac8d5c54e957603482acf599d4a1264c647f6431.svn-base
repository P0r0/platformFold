.class public Lcom/baidu/sapi2/SapiWebView$DefaultHuaweiHandler;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultHuaweiHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method public constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 2243
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$DefaultHuaweiHandler;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleHuaweiLoginFailure()V
    .registers 4

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$DefaultHuaweiHandler;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672a\u767b\u5f55\u534e\u4e3a\u5e10\u53f7"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2248
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$DefaultHuaweiHandler;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    .line 2249
    return-void
.end method
