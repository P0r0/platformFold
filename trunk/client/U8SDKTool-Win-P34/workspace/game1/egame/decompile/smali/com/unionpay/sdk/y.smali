.class final Lcom/unionpay/sdk/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/unionpay/sdk/y;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/unionpay/sdk/y;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/unionpay/sdk/y;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/unionpay/sdk/y;->b:Landroid/content/Context;

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/unionpay/sdk/r;->b:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/unionpay/sdk/y;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;)V

    :cond_12
    new-instance v0, Lcom/unionpay/sdk/r$a;

    invoke-direct {v0}, Lcom/unionpay/sdk/r$a;-><init>()V

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "occurTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "throwable"

    iget-object v3, p0, Lcom/unionpay/sdk/y;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/sdk/aj;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_4

    :catch_49
    move-exception v0

    invoke-static {v0}, Lcom/unionpay/sdk/al;->a(Ljava/lang/Throwable;)V

    goto :goto_4
.end method
