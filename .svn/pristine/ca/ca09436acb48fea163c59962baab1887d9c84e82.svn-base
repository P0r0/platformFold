.class public Lcom/youju/statistics/c/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/f;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/f;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youju/statistics/c/a/f;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/f;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youju/statistics/c/a/f;->c:J

    return-void
.end method

.method private c(J)J
    .registers 7

    iget-wide v0, p0, Lcom/youju/statistics/c/a/f;->d:J

    invoke-static {v0, v1}, Lcom/youju/statistics/a/n;->c(J)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    const-wide/16 v0, 0x1

    :cond_f
    return-wide v0
.end method

.method public static d(Ljava/lang/String;)Lcom/youju/statistics/c/a/f;
    .registers 7

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Lcom/youju/statistics/c/a/f;

    invoke-direct {v1}, Lcom/youju/statistics/c/a/f;-><init>()V

    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/youju/statistics/c/a/f;->c(Ljava/lang/String;)V

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/youju/statistics/c/a/f;->a(Ljava/lang/String;)V

    const-string v3, "start_time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/youju/statistics/c/a/f;->a(J)V

    const-string v3, "session_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/youju/statistics/c/a/f;->b(Ljava/lang/String;)V

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/youju/statistics/c/a/f;->b(J)V
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_3f} :catch_41

    move-object v0, v1

    goto :goto_7

    :catch_41
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/youju/statistics/c/a/o;
    .registers 8

    new-instance v0, Lcom/youju/statistics/c/a/o;

    invoke-direct {v0}, Lcom/youju/statistics/c/a/o;-><init>()V

    const-string v1, "newPage"

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/o;->f(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/youju/statistics/c/a/f;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/a/o;->a(J)V

    iget-object v1, p0, Lcom/youju/statistics/c/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/o;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "activity"

    iget-object v3, p0, Lcom/youju/statistics/c/a/f;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "name"

    iget-object v3, p0, Lcom/youju/statistics/c/a/f;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "start_time"

    iget-wide v4, p0, Lcom/youju/statistics/c/a/f;->c:J

    invoke-static {v4, v5}, Lcom/youju/statistics/a/n;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duration"

    iget-wide v4, p0, Lcom/youju/statistics/c/a/f;->d:J

    invoke-direct {p0, v4, v5}, Lcom/youju/statistics/c/a/f;->c(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/youju/statistics/a/n;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/o;->h(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/youju/statistics/a/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/o;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/youju/statistics/c/b/h;->a(Landroid/content/Context;)Lcom/youju/statistics/c/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youju/statistics/c/b/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/o;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/youju/statistics/c/b/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/o;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/youju/statistics/c/a/f;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/youju/statistics/c/a/f;->a:Ljava/lang/String;

    goto :goto_6
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .registers 6

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-wide p1, p0, Lcom/youju/statistics/c/a/f;->d:J

    goto :goto_6
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/youju/statistics/c/a/f;->b:Ljava/lang/String;

    goto :goto_6
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/youju/statistics/c/a/f;->e:Ljava/lang/String;

    goto :goto_6
.end method

.method public d()Ljava/lang/String;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "name"

    iget-object v2, p0, Lcom/youju/statistics/c/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "start_time"

    iget-wide v2, p0, Lcom/youju/statistics/c/a/f;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "activity"

    iget-object v2, p0, Lcom/youju/statistics/c/a/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "session_id"

    iget-object v2, p0, Lcom/youju/statistics/c/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "duration"

    iget-wide v2, p0, Lcom/youju/statistics/c/a/f;->d:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_2d

    :goto_28
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_28
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/f;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
