.class final Lcom/unionpay/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/ab;


# instance fields
.field final synthetic a:Lcom/unionpay/UPPayWapActivity;


# direct methods
.method constructor <init>(Lcom/unionpay/UPPayWapActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/v;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/unionpay/ac;)V
    .registers 13

    const/4 v8, 0x0

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_61

    :try_start_10
    const-string v0, "url"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_43

    :try_start_18
    const-string v1, "app"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_20} :catch_74

    :try_start_20
    const-string v2, "title"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_28} :catch_7c

    :try_start_28
    const-string v3, "desp"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_83

    :try_start_30
    const-string v4, "md5"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_89

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_3d
    :try_start_3d
    iget-object v0, p0, Lcom/unionpay/v;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-static/range {v0 .. v5}, Lcom/unionpay/UPPayAssistEx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    :goto_42
    return-void

    :catch_43
    move-exception v0

    move-object v9, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v9

    :goto_49
    if-eqz p2, :cond_5b

    iget-object v6, p0, Lcom/unionpay/v;->a:Lcom/unionpay/UPPayWapActivity;

    const-string v6, "1"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v6, v0, v7}, Lcom/unionpay/UPPayWapActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/unionpay/ac;->a(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5b} :catch_61

    :cond_5b
    move-object v9, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v4

    move-object v4, v9

    goto :goto_3d

    :catch_61
    move-exception v0

    if-eqz p2, :cond_42

    iget-object v1, p0, Lcom/unionpay/v;->a:Lcom/unionpay/UPPayWapActivity;

    const-string v1, "1"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v8}, Lcom/unionpay/UPPayWapActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/unionpay/ac;->a(Ljava/lang/String;)V

    goto :goto_42

    :catch_74
    move-exception v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v9

    goto :goto_49

    :catch_7c
    move-exception v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v9

    goto :goto_49

    :catch_83
    move-exception v3

    move-object v9, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v9

    goto :goto_49

    :catch_89
    move-exception v4

    move-object v9, v4

    move-object v4, v0

    move-object v0, v9

    goto :goto_49
.end method
