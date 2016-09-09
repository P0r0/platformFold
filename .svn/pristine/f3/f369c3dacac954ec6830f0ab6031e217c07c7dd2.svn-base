.class public Lcom/baidu/bdgame/sdk/obf/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ci$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ci;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;

.field private f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(I)V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ci;->a:I

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->b:J

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->c:J

    .line 48
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->d:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->f:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static b(I)Lcom/baidu/bdgame/sdk/obf/ci;
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ci;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ci;-><init>(I)V

    .line 54
    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/ci;)I
    .registers 7

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->b:J

    .line 131
    iget-wide v2, p1, Lcom/baidu/bdgame/sdk/obf/ci;->b:J

    .line 132
    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ci;
    .registers 7

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    .line 69
    :cond_b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    const-string v1, "StatusDesc"

    if-nez p2, :cond_13

    const-string p2, ""

    :cond_13
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    const-string v1, "PayID"

    if-nez p3, :cond_1e

    const-string p3, ""

    :cond_1e
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ci$1;->a:[I

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kk;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    .line 91
    :goto_2c
    return-object p0

    .line 73
    :pswitch_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    const-string v1, "StatusCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2c

    .line 88
    :catch_36
    move-exception v0

    goto :goto_2c

    .line 76
    :pswitch_38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    const-string v1, "StatusCode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2c

    .line 79
    :pswitch_41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    const-string v1, "StatusCode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2c

    .line 82
    :pswitch_4a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    const-string v1, "StatusCode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2c

    .line 85
    :pswitch_53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    const-string v1, "StatusCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5b} :catch_36

    goto :goto_2c

    .line 71
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_38
        :pswitch_41
        :pswitch_4a
        :pswitch_53
    .end packed-switch
.end method

.method public a(Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ci;
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    .line 59
    return-object p0
.end method

.method public a(Ljava/text/SimpleDateFormat;)Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 97
    :try_start_5
    const-string v1, "ID"

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/ci;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v1, "TIME"

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/ci;->b:J

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/le;->b(J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ci;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 101
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ci;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_33
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_6a

    .line 109
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 111
    const-string v2, "ExtendJson"

    const-string v3, "utf-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/lg;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v2, "BaiduPlatformSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extendJson: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6a} :catch_6b

    .line 119
    :cond_6a
    :goto_6a
    return-object v0

    .line 115
    :catch_6b
    move-exception v1

    goto :goto_6a
.end method

.method public b(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    if-nez v0, :cond_3b

    const-string v0, "null"

    .line 124
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/ci;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/ci;->c:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_3b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/ci;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ci;->a(Lcom/baidu/bdgame/sdk/obf/ci;)I

    move-result v0

    return v0
.end method
