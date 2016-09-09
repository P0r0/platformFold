.class public Lcom/baidu/mtjstatsdk/cp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mtjstatsdk/cq;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/cp;->b:J

    .line 27
    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/cp;->c:J

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mtjstatsdk/cp;->d:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/cp;->a:Ljava/util/List;

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mtjstatsdk/cp;->a(J)V

    .line 83
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/cp;->b:J

    return-wide v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 183
    iput p1, p0, Lcom/baidu/mtjstatsdk/cp;->d:I

    .line 184
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/baidu/mtjstatsdk/cp;->b:J

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .registers 14

    .prologue
    .line 91
    new-instance v1, Lcom/baidu/mtjstatsdk/cq;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mtjstatsdk/cq;-><init>(Lcom/baidu/mtjstatsdk/cp;Ljava/lang/String;JJ)V

    .line 92
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/cp;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 133
    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/cp;->b:J

    .line 134
    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/cp;->c:J

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mtjstatsdk/cp;->d:I

    .line 136
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/cp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mtjstatsdk/cp;->a(J)V

    .line 138
    return-void
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/baidu/mtjstatsdk/cp;->c:J

    .line 114
    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .registers 11

    .prologue
    const-wide/16 v2, 0x0

    .line 146
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 148
    :try_start_7
    const-string v0, "s"

    iget-wide v6, p0, Lcom/baidu/mtjstatsdk/cp;->b:J

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 149
    const-string v0, "e"

    iget-wide v6, p0, Lcom/baidu/mtjstatsdk/cp;->c:J

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 150
    const-string v0, "i"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    const-string v0, "c"

    iget v1, p0, Lcom/baidu/mtjstatsdk/cp;->d:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 155
    const/4 v0, 0x0

    move v4, v0

    :goto_2c
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/cp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_7b

    .line 157
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 160
    const-string v1, "n"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/cp;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/cq;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/cq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "d"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/cp;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/cq;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/cq;->b()J

    move-result-wide v8

    invoke-virtual {v7, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 162
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/cp;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/cq;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/cq;->c()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/baidu/mtjstatsdk/cp;->b:J

    sub-long/2addr v0, v8

    .line 163
    cmp-long v8, v0, v2

    if-gez v8, :cond_6f

    move-wide v0, v2

    .line 165
    :cond_6f
    const-string v8, "ps"

    invoke-virtual {v7, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 167
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 155
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2c

    .line 169
    :cond_7b
    const-string v0, "p"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_80} :catch_81

    .line 175
    :goto_80
    return-object v5

    .line 171
    :catch_81
    move-exception v0

    .line 172
    const-string v0, "statsdk"

    const-string v1, "StatSession.constructJSONObject() failed"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method public d()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lcom/baidu/mtjstatsdk/cp;->d:I

    return v0
.end method
