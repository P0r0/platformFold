.class final Lcom/baidu/bdgame/sdk/obf/kl$2;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/kl;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/kl;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/kl;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kl$2;->a:Lcom/baidu/bdgame/sdk/obf/kl;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kl$2;->a:Lcom/baidu/bdgame/sdk/obf/kl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kl;->e(Lcom/baidu/bdgame/sdk/obf/kl;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 120
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kl$2;->a:Lcom/baidu/bdgame/sdk/obf/kl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kl;->f(Lcom/baidu/bdgame/sdk/obf/kl;)Lcom/baidu/bdgame/sdk/obf/kl$a;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kl$2;->a:Lcom/baidu/bdgame/sdk/obf/kl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kl;->f(Lcom/baidu/bdgame/sdk/obf/kl;)Lcom/baidu/bdgame/sdk/obf/kl$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/baidu/bdgame/sdk/obf/kl$a;->a(Ljava/lang/String;)V

    .line 128
    :cond_14
    return-void
.end method
