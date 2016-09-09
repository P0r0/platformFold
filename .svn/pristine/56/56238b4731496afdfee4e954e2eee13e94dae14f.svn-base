.class final Lcom/alipay/sdk/app/H5AuthActivity$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/H5AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5AuthActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/sdk/app/H5AuthActivity;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/sdk/app/H5AuthActivity;B)V
    .registers 3

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/H5AuthActivity$a;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5AuthActivity;->f(Lcom/alipay/sdk/app/H5AuthActivity;)V

    .line 297
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5AuthActivity;->e(Lcom/alipay/sdk/app/H5AuthActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-static {v1}, Lcom/alipay/sdk/app/H5AuthActivity;->d(Lcom/alipay/sdk/app/H5AuthActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5AuthActivity;->c(Lcom/alipay/sdk/app/H5AuthActivity;)V

    .line 290
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5AuthActivity;->e(Lcom/alipay/sdk/app/H5AuthActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-static {v1}, Lcom/alipay/sdk/app/H5AuthActivity;->d(Lcom/alipay/sdk/app/H5AuthActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 292
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5AuthActivity;->a(Lcom/alipay/sdk/app/H5AuthActivity;)Z

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5AuthActivity;->b(Lcom/alipay/sdk/app/H5AuthActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 191
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 192
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/H5AuthActivity;->a(Lcom/alipay/sdk/app/H5AuthActivity;Z)Z

    .line 223
    :goto_11
    return-void

    .line 196
    :cond_12
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    new-instance v1, Lcom/alipay/sdk/app/c;

    invoke-direct {v1, p0, p2}, Lcom/alipay/sdk/app/c;-><init>(Lcom/alipay/sdk/app/H5AuthActivity$a;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/app/H5AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 228
    const-string v0, "sdklite://h5quit"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "http://m.alipay.com/?action=h5quit"

    .line 229
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 230
    :cond_11
    invoke-static {}, Lcom/alipay/sdk/app/m;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/m;->a:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/H5AuthActivity;->finish()V

    .line 283
    :goto_1c
    return v4

    .line 235
    :cond_1d
    const-string v0, "sdklite://h5quit?result="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 237
    :try_start_25
    const-string v0, "sdklite://h5quit?result="

    .line 238
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 239
    add-int/lit8 v0, v0, 0x18

    .line 237
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string v1, "&end_code="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 242
    add-int/lit8 v1, v1, 0xa

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 244
    sget-object v1, Lcom/alipay/sdk/app/n;->a:Lcom/alipay/sdk/app/n;

    invoke-virtual {v1}, Lcom/alipay/sdk/app/n;->a()I

    move-result v1

    if-ne v0, v1, :cond_7c

    .line 245
    invoke-static {p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    const-string v2, "sdklite://h5quit?result="

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 251
    add-int/lit8 v2, v2, 0x18

    const-string v3, "&end_code="

    .line 253
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 247
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {v0}, Lcom/alipay/sdk/app/n;->a(I)Lcom/alipay/sdk/app/n;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->a()I

    move-result v2

    .line 259
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->b()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v2, v0, v1}, Lcom/alipay/sdk/app/m;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/m;->a:Ljava/lang/String;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_71} :catch_97

    .line 271
    :goto_71
    new-instance v0, Lcom/alipay/sdk/app/f;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/f;-><init>(Lcom/alipay/sdk/app/H5AuthActivity$a;)V

    .line 277
    iget-object v1, p0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/app/H5AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1c

    .line 262
    :cond_7c
    :try_start_7c
    sget-object v0, Lcom/alipay/sdk/app/n;->b:Lcom/alipay/sdk/app/n;

    .line 263
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->a()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/app/n;->a(I)Lcom/alipay/sdk/app/n;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->a()I

    move-result v1

    .line 266
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 264
    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/m;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/m;->a:Ljava/lang/String;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_96} :catch_97

    goto :goto_71

    .line 269
    :catch_97
    move-exception v0

    invoke-static {}, Lcom/alipay/sdk/app/m;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/m;->a:Ljava/lang/String;

    goto :goto_71

    .line 282
    :cond_9f
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1c
.end method
