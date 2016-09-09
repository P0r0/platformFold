.class final Lcom/alipay/sdk/authjs/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/authjs/a;

.field final synthetic b:Lcom/alipay/sdk/authjs/d;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V
    .registers 3

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/sdk/authjs/e;->b:Lcom/alipay/sdk/authjs/d;

    iput-object p2, p0, Lcom/alipay/sdk/authjs/e;->a:Lcom/alipay/sdk/authjs/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 89
    iget-object v1, p0, Lcom/alipay/sdk/authjs/e;->b:Lcom/alipay/sdk/authjs/d;

    iget-object v2, p0, Lcom/alipay/sdk/authjs/e;->a:Lcom/alipay/sdk/authjs/a;

    if-eqz v2, :cond_3b

    const-string v0, "toast"

    iget-object v3, v2, Lcom/alipay/sdk/authjs/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, v2, Lcom/alipay/sdk/authjs/a;->m:Lorg/json/JSONObject;

    const-string v3, "content"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "duration"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x1

    const/16 v5, 0x9c4

    if-ge v4, v5, :cond_24

    const/4 v0, 0x0

    :cond_24
    iget-object v4, v1, Lcom/alipay/sdk/authjs/d;->b:Landroid/content/Context;

    invoke-static {v4, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/alipay/sdk/authjs/f;

    invoke-direct {v4, v1, v2}, Lcom/alipay/sdk/authjs/f;-><init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_3b
    sget-object v0, Lcom/alipay/sdk/authjs/a$a;->a:Lcom/alipay/sdk/authjs/a$a;

    .line 90
    sget-object v1, Lcom/alipay/sdk/authjs/a$a;->a:Lcom/alipay/sdk/authjs/a$a;

    if-eq v0, v1, :cond_4a

    .line 92
    :try_start_41
    iget-object v1, p0, Lcom/alipay/sdk/authjs/e;->b:Lcom/alipay/sdk/authjs/d;

    iget-object v2, p0, Lcom/alipay/sdk/authjs/e;->a:Lcom/alipay/sdk/authjs/a;

    iget-object v2, v2, Lcom/alipay/sdk/authjs/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/sdk/authjs/d;->a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_4a} :catch_4b

    .line 96
    :cond_4a
    :goto_4a
    return-void

    :catch_4b
    move-exception v0

    goto :goto_4a
.end method
