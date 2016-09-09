.class public final Lcom/alipay/sdk/protocol/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/sdk/protocol/c;)Lcom/alipay/sdk/protocol/c;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/alipay/sdk/protocol/e;

    invoke-direct {v0}, Lcom/alipay/sdk/protocol/e;-><init>()V

    .line 19
    invoke-static {p0}, Lcom/alipay/sdk/protocol/e;->a(Lcom/alipay/sdk/protocol/c;)Lcom/alipay/sdk/protocol/h;

    move-result-object v0

    .line 20
    if-nez v0, :cond_c6

    .line 23
    :goto_b
    iget-object v1, p0, Lcom/alipay/sdk/protocol/c;->b:Lcom/alipay/sdk/data/f;

    iget-object v2, p0, Lcom/alipay/sdk/protocol/c;->c:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alipay/sdk/protocol/c;->a:Lcom/alipay/sdk/data/e;

    iget-object v0, v0, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    iget-object v3, p0, Lcom/alipay/sdk/protocol/c;->b:Lcom/alipay/sdk/data/f;

    iget-object v3, v3, Lcom/alipay/sdk/data/f;->l:Lcom/alipay/sdk/data/a;

    iget-object v4, v3, Lcom/alipay/sdk/data/a;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    iget-object v4, v0, Lcom/alipay/sdk/data/a;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/sdk/data/a;->c:Ljava/lang/String;

    :cond_23
    iget-object v4, v3, Lcom/alipay/sdk/data/a;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, v0, Lcom/alipay/sdk/data/a;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/sdk/data/a;->d:Ljava/lang/String;

    :cond_2f
    iget-object v4, v3, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v0, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    :cond_3b
    iget-object v4, v3, Lcom/alipay/sdk/data/a;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_47

    iget-object v0, v0, Lcom/alipay/sdk/data/a;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/sdk/data/a;->a:Ljava/lang/String;

    :cond_47
    const-string v0, "session"

    const-string v3, "reflected_data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_9c

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "session = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ""

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/sdk/protocol/c;->b:Lcom/alipay/sdk/data/f;

    iput-object v3, v0, Lcom/alipay/sdk/data/f;->i:Lorg/json/JSONObject;

    :cond_69
    :goto_69
    const-string v0, "end_code"

    const-string v3, "0"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/sdk/data/f;->f:Ljava/lang/String;

    const-string v0, "user_id"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/sdk/data/f;->j:Ljava/lang/String;

    const-string v0, "result"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_83
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_83 .. :try_end_8e} :catch_c4

    move-result-object v0

    :goto_8f
    iput-object v0, v1, Lcom/alipay/sdk/data/f;->g:Ljava/lang/String;

    const-string v0, "memo"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/sdk/data/f;->h:Ljava/lang/String;

    .line 25
    return-object p0

    .line 23
    :cond_9c
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_a7
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/alipay/sdk/tid/b;->a()Lcom/alipay/sdk/tid/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_bf

    const-string v4, "tid"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_bf
    iput-object v3, v1, Lcom/alipay/sdk/data/f;->i:Lorg/json/JSONObject;
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_a7 .. :try_end_c1} :catch_c2

    goto :goto_69

    :catch_c2
    move-exception v0

    goto :goto_69

    :catch_c4
    move-exception v3

    goto :goto_8f

    :cond_c6
    move-object p0, v0

    goto/16 :goto_b
.end method
