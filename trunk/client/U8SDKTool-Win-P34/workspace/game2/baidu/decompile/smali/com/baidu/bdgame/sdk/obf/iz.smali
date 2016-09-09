.class public Lcom/baidu/bdgame/sdk/obf/iz;
.super Lcom/baidu/bdgame/sdk/obf/hy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/hy",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ja;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/hy;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/iz;
    .registers 4

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/iz;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 30
    const/16 v1, 0x171

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iz;->a(S)V

    .line 31
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iz;->b(I)V

    .line 32
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iz;->a(I)V

    .line 33
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/hy;->a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;

    move-result-object v0

    .line 60
    const-string v1, "MergePayment"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v1, "CpRate"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/la;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ky",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ja;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 40
    if-eqz p2, :cond_4

    .line 52
    :goto_3
    return v0

    .line 43
    :cond_4
    const-string v1, "CashOrderSerial"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 45
    const-string v0, "CashOrderSerial"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/iz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    goto :goto_3

    .line 49
    :cond_1a
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ja;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ja;-><init>()V

    .line 50
    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/ja;->a(Ljava/lang/String;)V

    .line 51
    iput-object v2, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_3
.end method
