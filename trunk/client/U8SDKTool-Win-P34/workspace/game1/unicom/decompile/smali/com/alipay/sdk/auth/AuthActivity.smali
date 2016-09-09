.class public Lcom/alipay/sdk/auth/AuthActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "params"

.field static final b:Ljava/lang/String; = "redirectUri"


# instance fields
.field private c:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "redirectUri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->d:Ljava/lang/String;

    .line 99
    new-instance v1, Lcom/alipay/sdk/data/InteractionData;

    invoke-direct {v1}, Lcom/alipay/sdk/data/InteractionData;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/alipay/sdk/data/FrameUtils;->a(Lcom/alipay/sdk/data/InteractionData;Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/alipay/sdk/data/Request;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/alipay/sdk/data/Request;->f()Lcom/alipay/sdk/data/Envelope;

    move-result-object v1

    const-string v2, "com.alipay.mobilecashier"

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->c(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/alipay/sdk/data/Request;->f()Lcom/alipay/sdk/data/Envelope;

    move-result-object v1

    const-string v2, "com.alipay.mcpay"

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lcom/alipay/sdk/data/Request;->f()Lcom/alipay/sdk/data/Envelope;

    move-result-object v1

    const-string v2, "4.0.0"

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->e(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/alipay/sdk/data/Request;->f()Lcom/alipay/sdk/data/Envelope;

    move-result-object v1

    const-string v2, "/cashier/main"

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->d(Ljava/lang/String;)V

    .line 105
    new-instance v1, Lcom/alipay/sdk/net/RequestWrapper;

    new-instance v2, Lcom/alipay/sdk/data/InteractionData;

    invoke-direct {v2}, Lcom/alipay/sdk/data/InteractionData;-><init>()V

    invoke-direct {v1, v2}, Lcom/alipay/sdk/net/RequestWrapper;-><init>(Lcom/alipay/sdk/data/InteractionData;)V

    .line 108
    const/4 v2, 0x0

    :try_start_5c
    invoke-virtual {v1, p0, v0, v2}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Z)Lcom/alipay/sdk/protocol/FrameData;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/alipay/sdk/protocol/FrameData;->d()Lorg/json/JSONObject;

    move-result-object v0

    .line 110
    invoke-direct {p0, v0}, Lcom/alipay/sdk/auth/AuthActivity;->a(Lorg/json/JSONObject;)V
    :try_end_67
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_5c .. :try_end_67} :catch_68
    .catch Lcom/alipay/sdk/exception/FailOperatingException; {:try_start_5c .. :try_end_67} :catch_72
    .catch Lcom/alipay/sdk/exception/AppErrorException; {:try_start_5c .. :try_end_67} :catch_7c
    .catch Lcom/alipay/sdk/exception/UnZipException; {:try_start_5c .. :try_end_67} :catch_86

    .line 145
    :goto_67
    return-void

    .line 111
    :catch_68
    move-exception v0

    .line 112
    new-instance v0, Lcom/alipay/sdk/auth/AuthActivity$2;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/auth/AuthActivity$2;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/auth/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_67

    .line 120
    :catch_72
    move-exception v0

    .line 121
    new-instance v0, Lcom/alipay/sdk/auth/AuthActivity$3;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/auth/AuthActivity$3;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/auth/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_67

    .line 128
    :catch_7c
    move-exception v0

    .line 129
    new-instance v0, Lcom/alipay/sdk/auth/AuthActivity$4;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/auth/AuthActivity$4;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/auth/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_67

    .line 136
    :catch_86
    move-exception v0

    .line 137
    new-instance v0, Lcom/alipay/sdk/auth/AuthActivity$5;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/auth/AuthActivity$5;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/auth/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_67
.end method

.method private a(Lb/a;)V
    .registers 6

    .prologue
    .line 340
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 367
    :cond_6
    :goto_6
    return-void

    .line 345
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Lb/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 348
    const-string v1, "AlipayJSBridge._invokeJS(%s)"

    .line 349
    const-string v1, "AlipayJSBridge._invokeJS(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 351
    new-instance v1, Lcom/alipay/sdk/auth/AuthActivity$14;

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/auth/AuthActivity$14;-><init>(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0, v1}, Lcom/alipay/sdk/auth/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_21} :catch_22

    goto :goto_6

    .line 363
    :catch_22
    move-exception v0

    .line 365
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;)V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alipay/sdk/auth/AuthActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;Lb/a;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/sdk/auth/AuthActivity;->a(Lb/a;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/sdk/auth/AuthActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 179
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    .line 180
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/alipay/sdk/util/Utils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 183
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 184
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 185
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 187
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 188
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 210
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 211
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/sdk/auth/AuthActivity$7;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/auth/AuthActivity$7;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 228
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/sdk/auth/AuthActivity$8;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/auth/AuthActivity$8;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 250
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/sdk/auth/AuthActivity$9;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/auth/AuthActivity$9;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 262
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/auth/AuthActivity;->setContentView(Landroid/view/View;)V

    .line 263
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/FailOperatingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    const-string v0, "form"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "onload"

    invoke-static {v0, v2}, Lcom/alipay/sdk/protocol/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v0

    .line 150
    if-nez v0, :cond_15

    .line 151
    new-instance v0, Lcom/alipay/sdk/exception/FailOperatingException;

    invoke-direct {v0}, Lcom/alipay/sdk/exception/FailOperatingException;-><init>()V

    throw v0

    .line 153
    :cond_15
    invoke-static {v0}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v2

    .line 155
    array-length v3, v2

    move v0, v1

    :goto_1b
    if-ge v0, v3, :cond_36

    aget-object v4, v2, v0

    .line 156
    sget-object v5, Lcom/alipay/sdk/protocol/ActionType;->a:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v4, v5, :cond_40

    .line 157
    invoke-virtual {v4}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    aget-object v0, v0, v1

    .line 160
    invoke-static {v0}, Lcom/alipay/sdk/util/Utils;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 161
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    .line 176
    :cond_36
    :goto_36
    return-void

    .line 164
    :cond_37
    new-instance v1, Lcom/alipay/sdk/auth/AuthActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/auth/AuthActivity$6;-><init>(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/sdk/auth/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_36

    .line 155
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method static synthetic b(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/sdk/auth/AuthActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 282
    :cond_7
    :goto_7
    return v0

    .line 271
    :cond_8
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 275
    const-string v0, "SDKLite://h5quit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 276
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?resultCode=150"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 279
    :cond_3b
    invoke-static {p0, p1}, Lcom/alipay/sdk/auth/AuthHelper;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 281
    :cond_3e
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    .line 282
    const/4 v0, 0x1

    goto :goto_7
.end method

.method static synthetic c(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/sdk/auth/AuthActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 286
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 287
    const-string v1, "\u4e0d\u80fd\u8fde\u63a5\u5230\u670d\u52a1\u5668\uff0c\u662f\u5426\u91cd\u8bd5\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 288
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alipay/sdk/auth/AuthActivity$10;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/auth/AuthActivity$10;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/alipay/sdk/auth/AuthActivity$11;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/auth/AuthActivity$11;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 310
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 313
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 314
    const-string v1, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 315
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alipay/sdk/auth/AuthActivity$12;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/auth/AuthActivity$12;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 323
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 324
    return-void
.end method

.method static synthetic d(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/sdk/auth/AuthActivity;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/sdk/auth/AuthActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 327
    new-instance v0, Lb/c;

    new-instance v1, Lcom/alipay/sdk/auth/AuthActivity$13;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/auth/AuthActivity$13;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-direct {v0, p0, v1}, Lb/c;-><init>(Landroid/content/Context;Lb/b;)V

    .line 335
    invoke-virtual {v0, p1}, Lb/c;->a(Ljava/lang/String;)V

    .line 336
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_11

    .line 65
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    .line 88
    :goto_10
    return-void

    .line 68
    :cond_11
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 69
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/data/MspConfig;->b()Lcom/alipay/sdk/data/MspConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/sdk/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/sdk/data/MspConfig;)V

    .line 71
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 73
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 78
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/sdk/auth/AuthActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/auth/AuthActivity$1;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_10
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 94
    return-void
.end method
