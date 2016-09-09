.class public Lcom/baidu/bdgame/sdk/obf/je;
.super Lcom/baidu/bdgame/sdk/obf/hy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/hy",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/jd;

.field private b:Ljava/lang/String;

.field private f:Ljava/lang/String;


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

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/je;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/je;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/je;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/je;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 35
    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/je;->a(S)V

    .line 36
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/je;->b(I)V

    .line 37
    iput-object p5, v0, Lcom/baidu/bdgame/sdk/obf/je;->b:Ljava/lang/String;

    .line 38
    iput-object p4, v0, Lcom/baidu/bdgame/sdk/obf/je;->f:Ljava/lang/String;

    .line 39
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/je;->a:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/je;->a(I)V

    .line 43
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/je;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/je;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/je;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/je;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 53
    const/16 v1, 0x17d

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/je;->a(S)V

    .line 54
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/je;->b(I)V

    .line 55
    iput-object p5, v0, Lcom/baidu/bdgame/sdk/obf/je;->b:Ljava/lang/String;

    .line 56
    iput-object p4, v0, Lcom/baidu/bdgame/sdk/obf/je;->f:Ljava/lang/String;

    .line 57
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/je;->a:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 58
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
    .line 73
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/hy;->a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;

    move-result-object v0

    .line 74
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/je;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "BankOrderSerial"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/je;->a:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v1, "CashOrderSerial"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/je;->a:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v1, "ValidateCode"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/je;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/la;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ky",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 64
    if-nez p2, :cond_6

    .line 65
    const-string v0, "ok"

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 67
    :cond_6
    const/4 v0, 0x1

    return v0
.end method
