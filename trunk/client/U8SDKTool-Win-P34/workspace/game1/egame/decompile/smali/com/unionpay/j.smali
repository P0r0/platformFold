.class final Lcom/unionpay/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/ab;


# instance fields
.field final synthetic a:Lcom/unionpay/UPPayWapActivity;


# direct methods
.method constructor <init>(Lcom/unionpay/UPPayWapActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/j;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/unionpay/ac;)V
    .registers 10

    const/4 v5, 0x0

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, ""
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_48

    :try_start_a
    const-string v0, "resultCode"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_32

    :try_start_12
    const-string v1, "resultData"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_5b

    :goto_1a
    :try_start_1a
    iget-object v2, p0, Lcom/unionpay/j;->a:Lcom/unionpay/UPPayWapActivity;

    iget-object v3, p0, Lcom/unionpay/j;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-static {v2, v0, v1}, Lcom/unionpay/UPPayWapActivity;->a(Lcom/unionpay/UPPayWapActivity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_31

    iget-object v0, p0, Lcom/unionpay/j;->a:Lcom/unionpay/UPPayWapActivity;

    const-string v0, "0"

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/unionpay/UPPayWapActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/unionpay/ac;->a(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    :goto_33
    if-eqz p2, :cond_45

    iget-object v3, p0, Lcom/unionpay/j;->a:Lcom/unionpay/UPPayWapActivity;

    const-string v3, "1"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/unionpay/UPPayWapActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/unionpay/ac;->a(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_45} :catch_48

    :cond_45
    move-object v0, v1

    move-object v1, v2

    goto :goto_1a

    :catch_48
    move-exception v0

    if-eqz p2, :cond_31

    iget-object v1, p0, Lcom/unionpay/j;->a:Lcom/unionpay/UPPayWapActivity;

    const-string v1, "1"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/unionpay/UPPayWapActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/unionpay/ac;->a(Ljava/lang/String;)V

    goto :goto_31

    :catch_5b
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_33
.end method
