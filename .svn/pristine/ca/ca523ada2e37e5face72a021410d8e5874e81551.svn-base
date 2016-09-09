.class final Lcom/alipay/sdk/app/H5PayActivity$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/H5PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5PayActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/sdk/app/H5PayActivity;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/sdk/app/H5PayActivity;B)V
    .registers 3

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/H5PayActivity$a;-><init>(Lcom/alipay/sdk/app/H5PayActivity;)V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 318
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5PayActivity;->f(Lcom/alipay/sdk/app/H5PayActivity;)V

    .line 330
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5PayActivity;->e(Lcom/alipay/sdk/app/H5PayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-static {v1}, Lcom/alipay/sdk/app/H5PayActivity;->d(Lcom/alipay/sdk/app/H5PayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    .prologue
    .line 322
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5PayActivity;->c(Lcom/alipay/sdk/app/H5PayActivity;)V

    .line 323
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5PayActivity;->e(Lcom/alipay/sdk/app/H5PayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-static {v1}, Lcom/alipay/sdk/app/H5PayActivity;->d(Lcom/alipay/sdk/app/H5PayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 325
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5PayActivity;->a(Lcom/alipay/sdk/app/H5PayActivity;)Z

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5PayActivity;->b(Lcom/alipay/sdk/app/H5PayActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 194
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 195
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/H5PayActivity;->a(Lcom/alipay/sdk/app/H5PayActivity;Z)Z

    .line 227
    :goto_11
    return-void

    .line 199
    :cond_12
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    new-instance v1, Lcom/alipay/sdk/app/h;

    invoke-direct {v1, p0, p2}, Lcom/alipay/sdk/app/h;-><init>(Lcom/alipay/sdk/app/H5PayActivity$a;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/app/H5PayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 232
    const-string v2, "alipays://platformapi/startApp?"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 314
    :goto_a
    return v0

    .line 235
    :cond_b
    const-string v0, "sdklite://h5quit"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "http://m.alipay.com/?action=h5quit"

    .line 236
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 237
    :cond_1b
    invoke-static {}, Lcom/alipay/sdk/app/m;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/m;->a:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    move v0, v1

    .line 239
    goto :goto_a

    .line 242
    :cond_28
    const-string v0, "sdklite://h5quit?result="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 244
    :try_start_30
    const-string v0, "sdklite://h5quit?result="

    .line 245
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 246
    add-int/lit8 v0, v0, 0x18

    .line 244
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v2, "&end_code="

    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 249
    add-int/lit8 v2, v2, 0xa

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 251
    sget-object v0, Lcom/alipay/sdk/app/n;->a:Lcom/alipay/sdk/app/n;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->a()I

    move-result v0

    if-eq v2, v0, :cond_5c

    sget-object v0, Lcom/alipay/sdk/app/n;->f:Lcom/alipay/sdk/app/n;

    .line 252
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->a()I

    move-result v0

    if-ne v2, v0, :cond_d8

    .line 253
    :cond_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    invoke-static {p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v4, "sdklite://h5quit?result="

    .line 259
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 261
    add-int/lit8 v4, v4, 0x18

    const-string v5, "&end_code="

    .line 263
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 257
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v4, "&return_url=\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 266
    const-string v4, "&return_url=\""

    .line 267
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 268
    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 270
    const-string v5, "&return_url=\""

    .line 271
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 273
    add-int/lit8 v5, v5, 0xd

    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&return_url=\""

    .line 276
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\"&"

    .line 279
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 277
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\"&"

    .line 281
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_b9
    invoke-static {v2}, Lcom/alipay/sdk/app/n;->a(I)Lcom/alipay/sdk/app/n;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Lcom/alipay/sdk/app/n;->a()I

    move-result v3

    .line 290
    invoke-virtual {v2}, Lcom/alipay/sdk/app/n;->b()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-static {v3, v2, v0}, Lcom/alipay/sdk/app/m;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/m;->a:Ljava/lang/String;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_cb} :catch_f3

    .line 302
    :goto_cb
    new-instance v0, Lcom/alipay/sdk/app/k;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/k;-><init>(Lcom/alipay/sdk/app/H5PayActivity$a;)V

    .line 308
    iget-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-virtual {v2, v0}, Lcom/alipay/sdk/app/H5PayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v1

    .line 310
    goto/16 :goto_a

    .line 293
    :cond_d8
    :try_start_d8
    sget-object v0, Lcom/alipay/sdk/app/n;->b:Lcom/alipay/sdk/app/n;

    .line 294
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->a()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/app/n;->a(I)Lcom/alipay/sdk/app/n;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->a()I

    move-result v2

    .line 297
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    .line 295
    invoke-static {v2, v0, v3}, Lcom/alipay/sdk/app/m;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/m;->a:Ljava/lang/String;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_f2} :catch_f3

    goto :goto_cb

    .line 300
    :catch_f3
    move-exception v0

    invoke-static {}, Lcom/alipay/sdk/app/m;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/m;->a:Ljava/lang/String;

    goto :goto_cb

    .line 313
    :cond_fb
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    .line 314
    goto/16 :goto_a
.end method
