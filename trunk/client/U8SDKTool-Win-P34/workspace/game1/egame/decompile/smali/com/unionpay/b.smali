.class final Lcom/unionpay/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c8

    :cond_5
    :goto_5
    const/4 v0, 0x1

    return v0

    :pswitch_7
    :try_start_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_95

    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "sign"

    invoke-static {v1, v0}, Lcom/unionpay/utils/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_ac

    move-result-object v2

    const/4 v0, 0x0

    :try_start_1b
    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_ac

    move-result v0

    :goto_23
    :try_start_23
    new-instance v3, Ljava/lang/String;

    const-string v4, "configs"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/utils/UPUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2}, Lcom/unionpay/utils/UPUtils;->forConfig(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "configs"

    invoke-static {v1, v0, v2}, Lcom/unionpay/utils/UPUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mode"

    invoke-static {v0, v1, v2}, Lcom/unionpay/utils/UPUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "or"

    invoke-static {v0, v1, v2}, Lcom/unionpay/utils/UPUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->i()Z

    move-result v0

    if-nez v0, :cond_95

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v1, "sort"

    invoke-static {v0, v1}, Lcom/unionpay/UPPayAssistEx;->a(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/UPPayAssistEx;->a(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_95} :catch_ac

    :cond_95
    :goto_95
    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->i()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->j()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->k()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/unionpay/UPPayAssistEx;->a(Landroid/content/Context;Lorg/json/JSONArray;I)V

    goto/16 :goto_5

    :catch_ac
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_95

    :pswitch_b1
    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->l()Z

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->j()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->k()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/unionpay/UPPayAssistEx;->a(Landroid/content/Context;Lorg/json/JSONArray;I)V

    goto/16 :goto_5

    :catch_c5
    move-exception v3

    goto/16 :goto_23

    :pswitch_data_c8
    .packed-switch 0x3e9
        :pswitch_b1
        :pswitch_7
    .end packed-switch
.end method
