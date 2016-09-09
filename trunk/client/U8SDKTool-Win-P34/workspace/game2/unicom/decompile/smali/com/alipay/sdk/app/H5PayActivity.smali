.class public Lcom/alipay/sdk/app/H5PayActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient;,
        Lcom/alipay/sdk/app/H5PayActivity$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "sdklite://h5quit?result="

.field private static final b:Ljava/lang/String; = "sdklite://h5quit"

.field private static final c:Ljava/lang/String; = "http://m.alipay.com/?action=h5quit"

.field private static final d:Ljava/lang/String; = "&end_code="


# instance fields
.field private e:Landroid/webkit/WebView;

.field private f:Lcom/alipay/sdk/widget/Loading;

.field private g:Landroid/os/Handler;

.field private h:Z

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->g:Landroid/os/Handler;

    .line 357
    new-instance v0, Lcom/alipay/sdk/app/H5PayActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/H5PayActivity$1;-><init>(Lcom/alipay/sdk/app/H5PayActivity;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->i:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 160
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    .line 162
    monitor-enter v1

    .line 164
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8
    .catchall {:try_start_3 .. :try_end_6} :catchall_d

    .line 168
    :goto_6
    :try_start_6
    monitor-exit v1

    .line 169
    return-void

    .line 165
    :catch_8
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 168
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/H5PayActivity;)V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5PayActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/H5PayActivity;Z)Z
    .registers 2

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/alipay/sdk/app/H5PayActivity;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/sdk/app/H5PayActivity;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Lcom/alipay/sdk/widget/Loading;

    if-nez v0, :cond_b

    .line 367
    new-instance v0, Lcom/alipay/sdk/widget/Loading;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/Loading;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Lcom/alipay/sdk/widget/Loading;

    .line 368
    :cond_b
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Lcom/alipay/sdk/widget/Loading;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->b()V

    .line 369
    return-void
.end method

.method static synthetic c(Lcom/alipay/sdk/app/H5PayActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Lcom/alipay/sdk/widget/Loading;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Lcom/alipay/sdk/widget/Loading;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 373
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Lcom/alipay/sdk/widget/Loading;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    .line 374
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Lcom/alipay/sdk/widget/Loading;

    .line 375
    return-void
.end method

.method static synthetic d(Lcom/alipay/sdk/app/H5PayActivity;)V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5PayActivity;->c()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5PayActivity;->a()V

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 157
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 136
    iget-boolean v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->h:Z

    if-eqz v0, :cond_26

    .line 137
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->d:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/Result;->a(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    .line 151
    :cond_26
    :goto_26
    return-void

    .line 146
    :cond_27
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->c:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/Result;->a(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    goto :goto_26
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 58
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    if-nez v0, :cond_1c

    .line 60
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    .line 131
    :cond_1b
    :goto_1b
    return-void

    .line 63
    :cond_1c
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Lcom/alipay/sdk/util/Utils;->c(Ljava/lang/String;)Z

    move-result v2

    .line 65
    if-nez v2, :cond_2c

    .line 66
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    goto :goto_1b

    .line 70
    :cond_2c
    const-string v2, "cookie"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 72
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 75
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 80
    :cond_4d
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 84
    invoke-virtual {p0, v0, v2}, Lcom/alipay/sdk/app/H5PayActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    .line 87
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 88
    iget-object v3, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 89
    iget-object v3, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/sdk/util/Utils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 97
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 98
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 99
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 100
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 101
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 102
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 103
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 104
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/sdk/app/H5PayActivity$MyWebViewClient;

    invoke-direct {v2, p0, v6}, Lcom/alipay/sdk/app/H5PayActivity$MyWebViewClient;-><init>(Lcom/alipay/sdk/app/H5PayActivity;Lcom/alipay/sdk/app/H5PayActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient;

    invoke-direct {v2, p0, v6}, Lcom/alipay/sdk/app/H5PayActivity$MyWebChromeClient;-><init>(Lcom/alipay/sdk/app/H5PayActivity;Lcom/alipay/sdk/app/H5PayActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 109
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_ff

    .line 113
    :try_start_d1
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDomStorageEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_ff

    .line 116
    iget-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_ff} :catch_122

    .line 123
    :cond_ff
    :goto_ff
    :try_start_ff
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_1b

    .line 126
    iget-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "searchBoxJavaBridge_"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_11d} :catch_11f

    goto/16 :goto_1b

    .line 129
    :catch_11f
    move-exception v0

    goto/16 :goto_1b

    .line 118
    :catch_122
    move-exception v0

    goto :goto_ff
.end method
