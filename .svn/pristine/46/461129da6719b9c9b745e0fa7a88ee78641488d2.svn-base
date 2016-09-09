.class public Lcom/baidu/bdgame/sdk/obf/fz;
.super Lcom/baidu/bdgame/sdk/obf/hy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/hy",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ga;",
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
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/hy;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/fz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/fz;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/fz;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 30
    const/16 v1, 0x179

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fz;->a(S)V

    .line 31
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fz;->b(I)V

    .line 32
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/la;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ky",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ga;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    if-eqz p2, :cond_5

    .line 88
    :goto_4
    return v0

    .line 42
    :cond_5
    const-string v2, "CashOrderSerial"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 44
    const-string v0, "CashOrderSerial"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 45
    goto :goto_4

    .line 47
    :cond_1b
    const-string v3, "TokenId"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 49
    const-string v0, "TokenId"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 50
    goto :goto_4

    .line 52
    :cond_31
    const-string v4, "AppId"

    invoke-static {p4, v4}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 54
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 55
    goto :goto_4

    .line 57
    :cond_47
    const-string v5, "Nonce"

    invoke-static {p4, v5}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 59
    const-string v0, "Nonce"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 60
    goto :goto_4

    .line 62
    :cond_5d
    const-string v6, "PubAcc"

    invoke-static {p4, v6}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    const-string v7, "BargainorId"

    invoke-static {p4, v7}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 65
    const-string v0, "BargainorId"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 66
    goto :goto_4

    .line 68
    :cond_79
    const-string v8, "Sig"

    invoke-static {p4, v8}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_90

    .line 70
    const-string v0, "Sig"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 71
    goto/16 :goto_4

    .line 73
    :cond_90
    const-string v9, "SigType"

    invoke-static {p4, v9}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a7

    .line 75
    const-string v0, "SigType"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 76
    goto/16 :goto_4

    .line 78
    :cond_a7
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/ga;-><init>()V

    .line 79
    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ga;->a(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v4}, Lcom/baidu/bdgame/sdk/obf/ga;->c(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v3}, Lcom/baidu/bdgame/sdk/obf/ga;->b(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v5}, Lcom/baidu/bdgame/sdk/obf/ga;->d(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v6}, Lcom/baidu/bdgame/sdk/obf/ga;->e(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v7}, Lcom/baidu/bdgame/sdk/obf/ga;->f(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v8}, Lcom/baidu/bdgame/sdk/obf/ga;->g(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v9}, Lcom/baidu/bdgame/sdk/obf/ga;->h(Ljava/lang/String;)V

    .line 87
    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto/16 :goto_4
.end method
