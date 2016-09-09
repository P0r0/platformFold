.class final Lcom/unionpay/sdk/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/sdk/ao;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/sdk/ab;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;)V
    .registers 8

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "isSessionOnly"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "occurTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "activityPaused"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v0, p0, Lcom/unionpay/sdk/ab;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/sdk/r;->b(Landroid/content/Context;)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    const-string v1, "activityIdle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/unionpay/sdk/ab;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/sdk/r;->c(Landroid/content/Context;)V

    goto :goto_2a
.end method
