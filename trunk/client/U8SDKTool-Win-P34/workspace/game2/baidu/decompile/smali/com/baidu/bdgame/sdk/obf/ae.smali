.class public Lcom/baidu/bdgame/sdk/obf/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ae;
    .registers 4

    .prologue
    .line 29
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ae;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ae;-><init>()V

    .line 31
    const-string v2, "realNameAuthVer"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/bdgame/sdk/obf/ae;->a:I

    .line 32
    const-string v2, "state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ae;->b:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 37
    :goto_1a
    return-object v0

    .line 34
    :catch_1b
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ae;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 52
    :goto_9
    return-object v0

    .line 45
    :cond_a
    :try_start_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const-string v2, "realNameAuthVer"

    iget v3, p0, Lcom/baidu/bdgame/sdk/obf/ae;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v2, "state"

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ae;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_20} :catch_22

    move-result-object v0

    goto :goto_9

    .line 49
    :catch_22
    move-exception v1

    .line 50
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 60
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ae;->a:I

    .line 61
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ae;->a:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ae;->b:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ae;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ae;->c:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ae;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ae;->d:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ae;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ae;->e:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ae;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ae;->f:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ae;->f:Ljava/lang/String;

    return-object v0
.end method
