.class public Lcom/baidu/bdgame/sdk/obf/bc;
.super Lcom/baidu/bdgame/sdk/obf/am;
.source "SourceFile"


# static fields
.field private static final a:S = 0x1fs


# instance fields
.field private b:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/am;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/bc;
    .registers 5

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bc;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 36
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bc;->b(I)V

    .line 37
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bc;->a(S)V

    .line 38
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/bc;->b:Lorg/json/JSONObject;

    .line 39
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ax;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/ax;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/ky",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/am;->a(Lcom/baidu/bdgame/sdk/obf/ax;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;

    .line 51
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ky;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ky;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    const-string v1, "AccountID"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 55
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 56
    const-string v1, "AccountID"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/bc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 93
    :cond_29
    :goto_29
    return-object v0

    .line 60
    :cond_2a
    const-string v2, "AutoLoginSign"

    invoke-static {p2, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 62
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 63
    const-string v1, "AutoLoginSign"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/bc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_29

    .line 67
    :cond_45
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/ag;-><init>()V

    .line 68
    invoke-virtual {v3, v4}, Lcom/baidu/bdgame/sdk/obf/ag;->a(I)V

    .line 69
    invoke-virtual {v3, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/ag;->b(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1, v3}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Lcom/baidu/bdgame/sdk/obf/ag;)V

    .line 81
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bc;->g()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bc;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/la;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_6b

    .line 83
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Ljava/lang/String;)V

    .line 87
    :cond_6b
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bc;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/baidu/bdgame/sdk/obf/ab;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 88
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bc;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_token_invalid"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_29
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bc;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public bridge synthetic a(Z)V
    .registers 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/am;->a(Z)V

    return-void
.end method
