.class public final Lcom/unionpay/utils/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONArray;I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_f

    if-ltz p1, :cond_f

    :try_start_b
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v0

    :cond_f
    :goto_f
    return-object v0

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    invoke-static {p0, p1}, Lcom/unionpay/utils/f;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :try_start_8
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    :cond_c
    :goto_c
    return-object v0

    :catch_d
    move-exception v1

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/unionpay/utils/f;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/unionpay/utils/f;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_7
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_a} :catch_c

    move-result v0

    :cond_b
    :goto_b
    return v0

    :catch_c
    move-exception v1

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/unionpay/utils/f;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/unionpay/utils/f;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_7
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    :cond_b
    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/unionpay/utils/f;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method
