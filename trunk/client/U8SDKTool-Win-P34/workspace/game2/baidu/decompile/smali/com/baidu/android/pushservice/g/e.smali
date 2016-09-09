.class Lcom/baidu/android/pushservice/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/g/k;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/g/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/android/pushservice/g/d;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/g/d;Lcom/baidu/android/pushservice/g/a;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/e;->c:Lcom/baidu/android/pushservice/g/d;

    iput-object p2, p0, Lcom/baidu/android/pushservice/g/e;->a:Lcom/baidu/android/pushservice/g/a;

    iput-object p3, p0, Lcom/baidu/android/pushservice/g/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4e

    const-string v0, "channel_id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "user_id"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/pushservice/g/e;->a:Lcom/baidu/android/pushservice/g/a;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/baidu/android/pushservice/g/e;->c:Lcom/baidu/android/pushservice/g/d;

    invoke-static {v2}, Lcom/baidu/android/pushservice/g/d;->a(Lcom/baidu/android/pushservice/g/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/baidu/android/pushservice/util/q;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_54

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    :try_start_2d
    const-string v2, "type"

    const-string v3, "bind_light"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "pushToken"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "api_key"

    iget-object v2, p0, Lcom/baidu/android/pushservice/g/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_45} :catch_4f

    :goto_45
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/g/e;->a:Lcom/baidu/android/pushservice/g/a;

    invoke-interface {v1, p1, v0}, Lcom/baidu/android/pushservice/g/a;->a(ILjava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_45

    :cond_54
    :try_start_54
    const-string v0, "error"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "api_key"

    iget-object v2, p0, Lcom/baidu/android/pushservice/g/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const-string v2, "error_msg"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_6b} :catch_75

    :goto_6b
    iget-object v0, p0, Lcom/baidu/android/pushservice/g/e;->a:Lcom/baidu/android/pushservice/g/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/baidu/android/pushservice/g/a;->a(ILjava/lang/String;)V

    goto :goto_4e

    :catch_75
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6b
.end method
