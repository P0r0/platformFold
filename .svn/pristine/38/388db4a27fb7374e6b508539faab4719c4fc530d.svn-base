.class public Lcom/baidu/home/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/support/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/baidu/paysdk/storage/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-static {p0, v1}, Lcom/baidu/home/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/baidu/home/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {p0}, Lcom/baidu/home/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p0}, Lcom/baidu/home/a/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    :try_start_20
    invoke-static {v0}, Lcom/baidu/wallet/core/utils/support/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_30

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2b} :catch_2c

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_30
    const-string v0, ""

    goto :goto_2b
.end method
