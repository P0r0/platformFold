.class public Lcom/baidu/bdgame/sdk/obf/jj;
.super Lcom/baidu/bdgame/sdk/obf/hy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/hy",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ji;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

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
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/hy;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/jj;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/fc;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/jj;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 35
    const/16 v0, 0x16a

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/jj;->a(S)V

    .line 36
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/jj;->b(I)V

    .line 37
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ec;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/fc;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/bdgame/sdk/obf/jj;->a:Ljava/lang/String;

    .line 38
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/jj;->a(I)V

    .line 39
    return-object v1
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
    .line 55
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/hy;->a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    const-string v1, "BankId"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v1, "CardNo"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "CardPwd"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jj;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->b:Ljava/lang/String;

    .line 46
    return-void
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
            "Lcom/baidu/bdgame/sdk/obf/ji;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 66
    if-eqz p2, :cond_4

    .line 78
    :goto_3
    return v0

    .line 69
    :cond_4
    const-string v1, "CashOrderSerial"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 71
    const-string v0, "CashOrderSerial"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    goto :goto_3

    .line 74
    :cond_1a
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ji;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ji;-><init>()V

    .line 75
    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/ji;->a(Ljava/lang/String;)V

    .line 77
    iput-object v2, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->f:Ljava/lang/String;

    .line 50
    return-void
.end method
