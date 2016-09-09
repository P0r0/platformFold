.class final Lcom/vivo/sdkplugin/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "AccountAssistWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v.getId()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "webview_backward_portrait_layout"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_40

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "webview_backward_land_layout"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5f

    :cond_40
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u653b\u7565"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_54
    :goto_54
    return-void

    :cond_55
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$0(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/Utils/VivoWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->goBack()V

    goto :goto_54

    :cond_5f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "webview_forward_portrait_layout"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_87

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "webview_forward_land_layout"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a5

    :cond_87
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u653b\u7565"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$0(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/Utils/VivoWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->goForward()V

    goto :goto_54

    :cond_a5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "webview_refresh_portrait_layout"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_cd

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "webview_refresh_land_layout"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_fd

    :cond_cd
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u653b\u7565"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # invokes: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->requestStrategyDetail()V
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$6(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    goto/16 :goto_54

    :cond_e8
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$0(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/Utils/VivoWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;
    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$0(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/Utils/VivoWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_54

    :cond_fd
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "webview_home_portrait_layout"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_125

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "webview_home_land_layout"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_54

    :cond_125
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u653b\u7565"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # invokes: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->requestStrategyDetail()V
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$6(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    goto/16 :goto_54

    :cond_140
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/d;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mWebView:Lcom/vivo/sdkplugin/Utils/VivoWebView;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$0(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Lcom/vivo/sdkplugin/Utils/VivoWebView;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_54
.end method
