.class final Lcom/unionpay/sdk/al;
.super Ljava/lang/Object;


# direct methods
.method static a(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v0, :cond_9

    const-string v0, "unionpayLog"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-boolean v0, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v0, :cond_9

    const-string v0, "unionpayLog"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void
.end method

.method static a(Ljava/lang/Throwable;)V
    .registers 2

    sget-boolean v0, Lcom/unionpay/sdk/r;->a:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    return-void
.end method

.method static varargs a([Ljava/lang/String;)V
    .registers 6

    sget-boolean v0, Lcom/unionpay/sdk/r;->a:Z

    if-eqz v0, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1a

    aget-object v3, p0, v0

    const-string v4, "\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    const-string v0, "unionpayLog"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method static b(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v0, :cond_9

    const-string v0, "unionpayLog"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method static varargs b([Ljava/lang/String;)V
    .registers 6

    sget-boolean v0, Lcom/unionpay/sdk/r;->a:Z

    if-eqz v0, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1a

    aget-object v3, p0, v0

    const-string v4, "\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    const-string v0, "unionpayLog"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method
