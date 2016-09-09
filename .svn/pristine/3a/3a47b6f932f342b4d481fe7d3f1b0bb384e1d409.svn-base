.class public Lcom/baidu/bdgame/sdk/obf/gd;
.super Lcom/baidu/bdgame/sdk/obf/hy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/hy",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/gf;",
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
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/hy;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/gd;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/gd;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gd;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/gd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 36
    const/16 v1, 0x182

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gd;->a(S)V

    .line 37
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gd;->b(I)V

    .line 38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gd;->a(I)V

    .line 39
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/gd;->a:Ljava/lang/String;

    .line 40
    iput-object p4, v0, Lcom/baidu/bdgame/sdk/obf/gd;->b:Ljava/lang/String;

    .line 41
    iput-object p5, v0, Lcom/baidu/bdgame/sdk/obf/gd;->f:Ljava/lang/String;

    .line 42
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
    .line 48
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/hy;->a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    const-string v1, "WeiXinPlugInSDKVersion"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v1, "WeiXinPlugInVersion"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v1, "WeiXinVersion"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gd;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/la;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ky",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/gf;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "CashOrderSerial"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "Parameter"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v2, "UpgradeUrl"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    const-string v3, "UpgradeVersion"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/ly;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    .line 64
    new-instance v4, Lcom/baidu/bdgame/sdk/obf/gf;

    invoke-direct {v4}, Lcom/baidu/bdgame/sdk/obf/gf;-><init>()V

    .line 65
    invoke-virtual {v4, v0}, Lcom/baidu/bdgame/sdk/obf/gf;->a(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v4, v1}, Lcom/baidu/bdgame/sdk/obf/gf;->b(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, v2}, Lcom/baidu/bdgame/sdk/obf/gf;->c(Ljava/lang/String;)V

    .line 68
    if-eqz v3, :cond_2f

    .line 69
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/baidu/bdgame/sdk/obf/gf;->a(I)V

    .line 72
    :cond_2f
    iput-object v4, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    return v0
.end method
