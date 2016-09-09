.class final Lcom/unionpay/sdk/am;
.super Ljava/lang/Object;


# direct methods
.method static a()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const-string v1, "unionpaypref_longtime"

    const-string v2, "unionpayaes_key"

    invoke-static {v0, v1, v2}, Lcom/unionpay/sdk/an;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method static a(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const-string v1, "unionpaypref_longtime"

    const-string v2, "unionpayisAppQuiting"

    invoke-static {v0, v1, v2, p0}, Lcom/unionpay/sdk/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static b()J
    .registers 3

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const-string v1, "unionpaypref_longtime"

    const-string v2, "unionpaypref.init.key"

    invoke-static {v0, v1, v2}, Lcom/unionpay/sdk/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_6
.end method

.method static c()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const-string v1, "unionpaypref_longtime"

    const-string v2, "unionpayisAppQuiting"

    invoke-static {v0, v1, v2}, Lcom/unionpay/sdk/an;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
