.class final Lcom/unionpay/sdk/at;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 11

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_25

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/unionpay/sdk/ap;

    if-eqz v0, :cond_25

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unionpay/sdk/ap;

    invoke-static {v0}, Lcom/unionpay/sdk/as;->a(Lcom/unionpay/sdk/ap;)Lcom/unionpay/sdk/ap;

    invoke-static {}, Lcom/unionpay/sdk/as;->b()Lcom/unionpay/sdk/ap;

    move-result-object v0

    iget v7, v0, Lcom/unionpay/sdk/ap;->i:I

    invoke-static {}, Lcom/unionpay/sdk/as;->b()Lcom/unionpay/sdk/ap;

    move-result-object v0

    iget-object v0, v0, Lcom/unionpay/sdk/ap;->f:[B

    if-nez v0, :cond_26

    invoke-static {}, Lcom/unionpay/sdk/as;->a()Lcom/unionpay/sdk/as;

    invoke-static {}, Lcom/unionpay/sdk/as;->c()V

    :cond_25
    :goto_25
    return-void

    :cond_26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/sdk/r;->c:Z

    invoke-static {}, Lcom/unionpay/sdk/as;->a()Lcom/unionpay/sdk/as;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/sdk/as;->b()Lcom/unionpay/sdk/ap;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/sdk/ap;->a:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/sdk/as;->b()Lcom/unionpay/sdk/ap;

    move-result-object v2

    iget-object v2, v2, Lcom/unionpay/sdk/ap;->b:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/sdk/as;->b()Lcom/unionpay/sdk/ap;

    move-result-object v3

    iget-object v3, v3, Lcom/unionpay/sdk/ap;->c:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/sdk/as;->b()Lcom/unionpay/sdk/ap;

    move-result-object v4

    iget-object v4, v4, Lcom/unionpay/sdk/ap;->e:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/sdk/as;->b()Lcom/unionpay/sdk/ap;

    move-result-object v5

    iget-object v5, v5, Lcom/unionpay/sdk/ap;->f:[B

    invoke-static {}, Lcom/unionpay/sdk/as;->b()Lcom/unionpay/sdk/ap;

    move-result-object v6

    iget-object v6, v6, Lcom/unionpay/sdk/ap;->g:Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/sdk/as;->b()Lcom/unionpay/sdk/ap;

    move-result-object v8

    iget-boolean v8, v8, Lcom/unionpay/sdk/ap;->h:Z

    invoke-static/range {v0 .. v8}, Lcom/unionpay/sdk/as;->a(Lcom/unionpay/sdk/as;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Object;IZ)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5a} :catch_5b

    goto :goto_25

    :catch_5b
    move-exception v0

    goto :goto_25
.end method
