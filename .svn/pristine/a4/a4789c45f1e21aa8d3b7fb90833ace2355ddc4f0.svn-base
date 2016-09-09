.class Lcom/baidu/android/pushservice/g/i;
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

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/i;->c:Lcom/baidu/android/pushservice/g/d;

    iput-object p2, p0, Lcom/baidu/android/pushservice/g/i;->a:Lcom/baidu/android/pushservice/g/a;

    iput-object p3, p0, Lcom/baidu/android/pushservice/g/i;->b:Ljava/lang/String;

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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/android/pushservice/g/i;->a:Lcom/baidu/android/pushservice/g/a;

    if-eqz v0, :cond_37

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "type"

    const-string v3, "subscribe_service"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "api_key"

    iget-object v3, p0, Lcom/baidu/android/pushservice/g/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_38

    if-eqz p2, :cond_58

    const-string v0, "error_msg"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_53

    :goto_29
    :try_start_29
    const-string v1, "error_msg"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2e
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_48

    move-result-object v0

    :goto_32
    iget-object v1, p0, Lcom/baidu/android/pushservice/g/i;->a:Lcom/baidu/android/pushservice/g/a;

    invoke-interface {v1, p1, v0}, Lcom/baidu/android/pushservice/g/a;->e(ILjava/lang/String;)V

    :cond_37
    return-void

    :cond_38
    if-eqz p2, :cond_56

    :try_start_3a
    const-string v0, "details"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_42} :catch_53

    :goto_42
    :try_start_42
    const-string v1, "tag"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_48

    goto :goto_2e

    :catch_48
    move-exception v1

    :goto_49
    iget-object v1, p0, Lcom/baidu/android/pushservice/g/i;->a:Lcom/baidu/android/pushservice/g/a;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/baidu/android/pushservice/g/a;->e(ILjava/lang/String;)V

    goto :goto_32

    :catch_53
    move-exception v0

    move-object v0, v1

    goto :goto_49

    :cond_56
    move-object v0, v1

    goto :goto_42

    :cond_58
    move-object v0, v1

    goto :goto_29
.end method
