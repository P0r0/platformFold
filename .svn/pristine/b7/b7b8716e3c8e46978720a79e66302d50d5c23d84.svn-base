.class public Lcom/baidu/mtjstatsdk/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/cl;->a:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/baidu/mtjstatsdk/cl;->b:I

    .line 23
    iput-object p3, p0, Lcom/baidu/mtjstatsdk/cl;->d:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/baidu/mtjstatsdk/cl;->e:I

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/cl;->c:J

    .line 26
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 31
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    const-string v1, "i"

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/cl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v1, "n"

    iget v2, p0, Lcom/baidu/mtjstatsdk/cl;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    const-string v1, "v"

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/cl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v1, "l"

    iget v2, p0, Lcom/baidu/mtjstatsdk/cl;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string v1, "t"

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/cl;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_28} :catch_29

    .line 44
    :goto_28
    return-object v0

    .line 40
    :catch_29
    move-exception v0

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 44
    const/4 v0, 0x0

    goto :goto_28
.end method
