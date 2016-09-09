.class final Lcom/unionpay/sdk/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/sdk/w;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    const-string v0, "onResume(Context, appId, partnerid) being called!"

    invoke-static {v0}, Lcom/unionpay/sdk/al;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/unionpay/sdk/r$a;

    invoke-direct {v0}, Lcom/unionpay/sdk/r$a;-><init>()V

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "context"

    iget-object v3, p0, Lcom/unionpay/sdk/w;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "occurTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v2, "isSessionOnly"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/sdk/aj;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    return-void

    :catch_45
    move-exception v0

    sget-boolean v1, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v1, :cond_44

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_44
.end method
