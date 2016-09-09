.class public Lcom/baidu/mtjstatsdk/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/baidu/mtjstatsdk/cm;->a:I

    .line 18
    iput-object p2, p0, Lcom/baidu/mtjstatsdk/cm;->b:Ljava/lang/String;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/cm;->c:J

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 25
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    const-string v1, "l"

    iget v2, p0, Lcom/baidu/mtjstatsdk/cm;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    const-string v1, "v"

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/cm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v1, "s"

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/cm;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 36
    :goto_1a
    return-object v0

    .line 32
    :catch_1b
    move-exception v0

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 36
    const/4 v0, 0x0

    goto :goto_1a
.end method
