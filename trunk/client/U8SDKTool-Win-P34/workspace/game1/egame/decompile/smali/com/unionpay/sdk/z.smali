.class final Lcom/unionpay/sdk/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    iput p1, p0, Lcom/unionpay/sdk/z;->a:I

    iput-object p2, p0, Lcom/unionpay/sdk/z;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    sget-boolean v0, Lcom/unionpay/sdk/r;->b:Z

    if-eqz v0, :cond_42

    new-instance v0, Lcom/unionpay/sdk/r$a;

    invoke-direct {v0}, Lcom/unionpay/sdk/r$a;-><init>()V

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "apiType"

    iget v3, p0, Lcom/unionpay/sdk/z;->a:I

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

    const-string v2, "pageName"

    iget-object v3, p0, Lcom/unionpay/sdk/z;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/unionpay/sdk/aw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/sdk/aj;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/r;->c:Z
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_42} :catch_43

    :cond_42
    :goto_42
    return-void

    :catch_43
    move-exception v0

    invoke-static {v0}, Lcom/unionpay/sdk/al;->a(Ljava/lang/Throwable;)V

    goto :goto_42
.end method
