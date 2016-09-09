.class final Lcom/unionpay/mobile/android/pro/views/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/views/a;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/a;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9a

    :cond_6
    :goto_6
    :pswitch_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :pswitch_8
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/a;->a(Lcom/unionpay/mobile/android/pro/views/a;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x7d6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_6

    const-string v2, "success"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/views/a;->b(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/hce/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/hce/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/hce/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_35
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_3a} :catch_51

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/views/a;->d(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/views/a;->d(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v2

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/pro/views/a;->b(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V

    move v0, v1

    goto :goto_7

    :catch_51
    move-exception v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v3}, Lcom/unionpay/mobile/android/pro/views/a;->c(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v3

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/pro/views/a;->a(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    goto :goto_7

    :cond_64
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/a;->e(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->a()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/views/a;->f(Lcom/unionpay/mobile/android/pro/views/a;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unionpay/mobile/android/pro/views/a;->a(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_6

    :cond_7c
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/a;->g(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pro/views/a;->c(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_8b
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/a;->h(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pro/views/a;->d(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_data_9a
    .packed-switch 0x7d4
        :pswitch_8
        :pswitch_6
        :pswitch_8b
    .end packed-switch
.end method
