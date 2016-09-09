.class public Lcom/baidu/mtjstatsdk/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 8

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/ck;->a:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/baidu/mtjstatsdk/ck;->b:I

    .line 25
    iput p3, p0, Lcom/baidu/mtjstatsdk/ck;->c:I

    .line 26
    iput-object p4, p0, Lcom/baidu/mtjstatsdk/ck;->e:Ljava/lang/String;

    .line 27
    iput p5, p0, Lcom/baidu/mtjstatsdk/ck;->f:I

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/ck;->d:J

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 33
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    const-string v1, "i"

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/ck;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v1, "n"

    iget v2, p0, Lcom/baidu/mtjstatsdk/ck;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string v1, "p"

    iget v2, p0, Lcom/baidu/mtjstatsdk/ck;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string v1, "v"

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/ck;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v1, "l"

    iget v2, p0, Lcom/baidu/mtjstatsdk/ck;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string v1, "t"

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/ck;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2f} :catch_30

    .line 47
    :goto_2f
    return-object v0

    .line 43
    :catch_30
    move-exception v0

    .line 44
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    const/4 v0, 0x0

    goto :goto_2f
.end method
