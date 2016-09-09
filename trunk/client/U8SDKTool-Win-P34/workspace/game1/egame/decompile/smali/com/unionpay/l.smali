.class final Lcom/unionpay/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/ab;


# instance fields
.field final synthetic a:Lcom/unionpay/UPPayWapActivity;


# direct methods
.method constructor <init>(Lcom/unionpay/UPPayWapActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/l;->a:Lcom/unionpay/UPPayWapActivity;

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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_6b

    :try_start_a
    const-string v0, "url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_55

    :try_start_12
    const-string v1, "title"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_7e

    :goto_1a
    :try_start_1a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "waptype"

    const-string v4, "new_page"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wapurl"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "waptitle"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/unionpay/l;->a:Lcom/unionpay/UPPayWapActivity;

    const-class v2, Lcom/unionpay/UPPayWapActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/unionpay/l;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-virtual {v1, v0}, Lcom/unionpay/UPPayWapActivity;->startActivity(Landroid/content/Intent;)V

    if-eqz p2, :cond_54

    iget-object v0, p0, Lcom/unionpay/l;->a:Lcom/unionpay/UPPayWapActivity;

    const-string v0, "0"

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/unionpay/UPPayWapActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/unionpay/ac;->a(Ljava/lang/String;)V

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception v0

    :goto_56
    if-eqz p2, :cond_68

    iget-object v3, p0, Lcom/unionpay/l;->a:Lcom/unionpay/UPPayWapActivity;

    const-string v3, "1"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/unionpay/UPPayWapActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/unionpay/ac;->a(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_68} :catch_6b

    :cond_68
    move-object v0, v1

    move-object v1, v2

    goto :goto_1a

    :catch_6b
    move-exception v0

    if-eqz p2, :cond_54

    iget-object v1, p0, Lcom/unionpay/l;->a:Lcom/unionpay/UPPayWapActivity;

    const-string v1, "1"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/unionpay/UPPayWapActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/unionpay/ac;->a(Ljava/lang/String;)V

    goto :goto_54

    :catch_7e
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_56
.end method
