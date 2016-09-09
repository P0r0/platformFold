.class public Lcom/baidu/mtjstatsdk/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:D

.field private d:I

.field private e:I

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I

.field private i:J

.field private j:I


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v2, p0, Lcom/baidu/mtjstatsdk/cj;->f:Z

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/cj;->g:Ljava/lang/String;

    .line 24
    iput v2, p0, Lcom/baidu/mtjstatsdk/cj;->h:I

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/cj;->i:J

    .line 28
    iput v2, p0, Lcom/baidu/mtjstatsdk/cj;->j:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DIILjava/lang/String;I)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v2, p0, Lcom/baidu/mtjstatsdk/cj;->f:Z

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/cj;->g:Ljava/lang/String;

    .line 24
    iput v2, p0, Lcom/baidu/mtjstatsdk/cj;->h:I

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/cj;->i:J

    .line 28
    iput v2, p0, Lcom/baidu/mtjstatsdk/cj;->j:I

    .line 35
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/cj;->a:Ljava/lang/String;

    .line 36
    if-nez p2, :cond_18

    const-string p2, ""

    :cond_18
    iput-object p2, p0, Lcom/baidu/mtjstatsdk/cj;->b:Ljava/lang/String;

    .line 37
    iput-wide p3, p0, Lcom/baidu/mtjstatsdk/cj;->c:D

    .line 38
    iput p5, p0, Lcom/baidu/mtjstatsdk/cj;->d:I

    .line 39
    iput p6, p0, Lcom/baidu/mtjstatsdk/cj;->e:I

    .line 40
    iput-object p7, p0, Lcom/baidu/mtjstatsdk/cj;->g:Ljava/lang/String;

    .line 41
    iput p8, p0, Lcom/baidu/mtjstatsdk/cj;->h:I

    .line 42
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/baidu/mtjstatsdk/cj;
    .registers 15

    .prologue
    const/4 v1, 0x1

    .line 78
    :try_start_1
    const-string v0, "o"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v0, "i"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 81
    const-string v0, "va"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 82
    const-string v0, "p"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 83
    const-string v0, "r"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 84
    const-string v0, "l"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 85
    const-string v0, "v"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 86
    const-string v0, "t"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 87
    const-string v0, "c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 89
    new-instance v0, Lcom/baidu/mtjstatsdk/cj;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/cj;-><init>()V

    .line 90
    iput-object v2, v0, Lcom/baidu/mtjstatsdk/cj;->a:Ljava/lang/String;

    .line 91
    iput-object v3, v0, Lcom/baidu/mtjstatsdk/cj;->b:Ljava/lang/String;

    .line 92
    iput-wide v4, v0, Lcom/baidu/mtjstatsdk/cj;->c:D

    .line 93
    iput v6, v0, Lcom/baidu/mtjstatsdk/cj;->d:I

    .line 94
    iput v7, v0, Lcom/baidu/mtjstatsdk/cj;->e:I

    .line 95
    if-ne v8, v1, :cond_59

    :goto_4e
    iput-boolean v1, v0, Lcom/baidu/mtjstatsdk/cj;->f:Z

    .line 96
    iput v9, v0, Lcom/baidu/mtjstatsdk/cj;->h:I

    .line 97
    iput-object v10, v0, Lcom/baidu/mtjstatsdk/cj;->g:Ljava/lang/String;

    .line 98
    iput-wide v12, v0, Lcom/baidu/mtjstatsdk/cj;->i:J

    .line 99
    iput v11, v0, Lcom/baidu/mtjstatsdk/cj;->j:I
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_58} :catch_5b

    .line 106
    :goto_58
    return-object v0

    .line 95
    :cond_59
    const/4 v1, 0x0

    goto :goto_4e

    .line 102
    :catch_5b
    move-exception v0

    .line 103
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    const/4 v0, 0x0

    goto :goto_58
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/cj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mtjstatsdk/cj;->f:Z

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/cj;->i:J

    .line 51
    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    const-string v1, "o"

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/cj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "i"

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/cj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v1, "a"

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/cj;->c:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 60
    const-string v1, "va"

    iget v2, p0, Lcom/baidu/mtjstatsdk/cj;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    const-string v1, "p"

    iget v2, p0, Lcom/baidu/mtjstatsdk/cj;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v2, "r"

    iget-boolean v1, p0, Lcom/baidu/mtjstatsdk/cj;->f:Z

    if-eqz v1, :cond_4f

    const/4 v1, 0x1

    :goto_2f
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string v1, "l"

    iget v2, p0, Lcom/baidu/mtjstatsdk/cj;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v1, "v"

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/cj;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v1, "t"

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/cj;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 66
    const-string v1, "c"

    iget v2, p0, Lcom/baidu/mtjstatsdk/cj;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4e} :catch_51

    .line 73
    :goto_4e
    return-object v0

    .line 62
    :cond_4f
    const/4 v1, 0x0

    goto :goto_2f

    .line 69
    :catch_51
    move-exception v0

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    const/4 v0, 0x0

    goto :goto_4e
.end method
