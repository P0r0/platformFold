.class public Lcom/baidu/mtjstatsdk/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/baidu/mtjstatsdk/cn;->g:Z

    .line 24
    iput v0, p0, Lcom/baidu/mtjstatsdk/cn;->h:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/baidu/mtjstatsdk/cn;->g:Z

    .line 24
    iput v0, p0, Lcom/baidu/mtjstatsdk/cn;->h:I

    .line 31
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/cn;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/baidu/mtjstatsdk/cn;->e:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/baidu/mtjstatsdk/cn;->f:I

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/cn;->b:J

    .line 35
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/baidu/mtjstatsdk/cn;
    .registers 13

    .prologue
    const/4 v1, 0x1

    .line 71
    :try_start_1
    const-string v0, "i"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v0, "s"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 73
    const-string v0, "e"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 74
    const-string v0, "r"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 75
    const-string v0, "m"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 76
    const-string v0, "v"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 77
    const-string v0, "l"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 78
    const-string v0, "c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 80
    new-instance v0, Lcom/baidu/mtjstatsdk/cn;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/cn;-><init>()V

    .line 81
    iput-object v2, v0, Lcom/baidu/mtjstatsdk/cn;->a:Ljava/lang/String;

    .line 82
    iput-wide v4, v0, Lcom/baidu/mtjstatsdk/cn;->b:J

    .line 83
    iput-wide v6, v0, Lcom/baidu/mtjstatsdk/cn;->c:J

    .line 84
    if-ne v3, v1, :cond_49

    :goto_3e
    iput-boolean v1, v0, Lcom/baidu/mtjstatsdk/cn;->g:Z

    .line 85
    iput-object v8, v0, Lcom/baidu/mtjstatsdk/cn;->d:Ljava/lang/String;

    .line 86
    iput-object v9, v0, Lcom/baidu/mtjstatsdk/cn;->e:Ljava/lang/String;

    .line 87
    iput v10, v0, Lcom/baidu/mtjstatsdk/cn;->f:I

    .line 88
    iput v11, v0, Lcom/baidu/mtjstatsdk/cn;->h:I
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_48} :catch_4b

    .line 95
    :goto_48
    return-object v0

    .line 84
    :cond_49
    const/4 v1, 0x0

    goto :goto_3e

    .line 91
    :catch_4b
    move-exception v0

    .line 92
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 95
    const/4 v0, 0x0

    goto :goto_48
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/cn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/cn;->c:J

    .line 43
    iput-boolean p1, p0, Lcom/baidu/mtjstatsdk/cn;->g:Z

    .line 44
    iput-object p2, p0, Lcom/baidu/mtjstatsdk/cn;->d:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mtjstatsdk/cn;->h:I

    .line 46
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 50
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    const-string v2, "i"

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/cn;->a:Ljava/lang/String;

    if-nez v1, :cond_4d

    const-string v1, ""

    :goto_d
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "s"

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/cn;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    const-string v1, "e"

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/cn;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    const-string v2, "r"

    iget-boolean v1, p0, Lcom/baidu/mtjstatsdk/cn;->g:Z

    if-eqz v1, :cond_50

    const/4 v1, 0x1

    :goto_25
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string v2, "m"

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/cn;->d:Ljava/lang/String;

    if-nez v1, :cond_52

    const-string v1, ""

    :goto_30
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v2, "v"

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/cn;->e:Ljava/lang/String;

    if-nez v1, :cond_55

    const-string v1, ""

    :goto_3b
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "l"

    iget v2, p0, Lcom/baidu/mtjstatsdk/cn;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string v1, "c"

    iget v2, p0, Lcom/baidu/mtjstatsdk/cn;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    :goto_4c
    return-object v0

    .line 52
    :cond_4d
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/cn;->a:Ljava/lang/String;

    goto :goto_d

    .line 55
    :cond_50
    const/4 v1, 0x0

    goto :goto_25

    .line 56
    :cond_52
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/cn;->d:Ljava/lang/String;

    goto :goto_30

    .line 57
    :cond_55
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/cn;->e:Ljava/lang/String;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_3b

    .line 62
    :catch_58
    move-exception v0

    .line 63
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 66
    const/4 v0, 0x0

    goto :goto_4c
.end method
