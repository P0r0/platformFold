.class final Lcom/chinaMobile/udata/charge/mini/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/chinaMobile/udata/charge/mini/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/chinaMobile/udata/charge/mini/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/chinaMobile/udata/charge/mini/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/chinaMobile/udata/charge/mini/c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/chinaMobile/udata/charge/mini/c;->b:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :try_start_16
    const-string v3, "pid"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "protocolVersion"

    const-string v4, "3.1.4"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdkVersion"

    const-string v4, "3.2.1.2"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cid"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    iget-object v3, p0, Lcom/chinaMobile/udata/charge/mini/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/chinaMobile/udata/charge/mini/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appKey"

    iget-object v3, p0, Lcom/chinaMobile/udata/charge/mini/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/chinaMobile/udata/charge/mini/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packageName"

    iget-object v3, p0, Lcom/chinaMobile/udata/charge/mini/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/chinaMobile/udata/charge/mini/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "versionCode"

    iget-object v3, p0, Lcom/chinaMobile/udata/charge/mini/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/chinaMobile/udata/charge/mini/h;->o(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "versionName"

    iget-object v3, p0, Lcom/chinaMobile/udata/charge/mini/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/chinaMobile/udata/charge/mini/h;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sendTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "userAge"

    iget-object v3, p0, Lcom/chinaMobile/udata/charge/mini/c;->c:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "userSex"

    iget-object v3, p0, Lcom/chinaMobile/udata/charge/mini/c;->d:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "userFeedback"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/c;->a:Landroid/content/Context;

    const-string v2, "http://da.mmarket.com/mmsdk/mmsdk?func=mmsdk:feedback"

    # invokes: Lcom/chinaMobile/udata/charge/mini/MobileAgent;->HttpPostData(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I
    invoke-static {v0, v2, v1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->access$200(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    if-ne v0, v6, :cond_a5

    const-string v0, "MobileAgent"

    const-string v1, "send feedback success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_a5} :catch_a6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_a5} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_a5} :catch_b0

    :cond_a5
    :goto_a5
    return-void

    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a5

    :catch_ab
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_a5

    :catch_b0
    move-exception v0

    goto :goto_a5
.end method
