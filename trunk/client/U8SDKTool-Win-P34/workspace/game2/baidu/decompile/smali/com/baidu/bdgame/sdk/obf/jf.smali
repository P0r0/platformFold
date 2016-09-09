.class public Lcom/baidu/bdgame/sdk/obf/jf;
.super Lcom/baidu/bdgame/sdk/obf/kz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kz",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/jd;

.field private b:Ljava/lang/String;

.field private f:Lcom/baidu/bdgame/sdk/obf/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 26
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/jf;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/jf;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jf;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/jf;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v1, 0x16b

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(S)V

    .line 35
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->b(I)V

    .line 36
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/jf;->f:Lcom/baidu/bdgame/sdk/obf/ec;

    .line 37
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/jf;->b:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/jf;->a:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 39
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/jf;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/jf;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jf;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/jf;-><init>(Landroid/content/Context;)V

    .line 47
    const/16 v1, 0x17e

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(S)V

    .line 48
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->b(I)V

    .line 49
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/jf;->f:Lcom/baidu/bdgame/sdk/obf/ec;

    .line 50
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/jf;->b:Ljava/lang/String;

    .line 51
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/jf;->a:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 52
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 77
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->p:Ljava/lang/String;

    .line 79
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v1, "BankOrderSerial"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jf;->a:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v1, "PayID"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jf;->f:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ec;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
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
    .line 58
    if-nez p2, :cond_2

    .line 61
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
