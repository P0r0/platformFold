.class public Lcom/baidu/bdgame/sdk/obf/ao;
.super Lcom/baidu/bdgame/sdk/obf/am;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 29
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/am;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ao;
    .registers 7

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ao;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ao;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ao;->a(S)V

    .line 35
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ao;->b(I)V

    .line 37
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/ao;->a:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/ao;->b:Ljava/lang/String;

    .line 39
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/ao;->f:Ljava/lang/String;

    .line 40
    iput-object p4, v0, Lcom/baidu/bdgame/sdk/obf/ao;->g:Ljava/lang/String;

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/bdgame/sdk/obf/ao;->h:Z

    .line 44
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ao;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ao;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ao;-><init>(Landroid/content/Context;)V

    .line 49
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ao;->a(S)V

    .line 50
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ao;->b(I)V

    .line 52
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/ao;->a:Ljava/lang/String;

    .line 53
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/ao;->b:Ljava/lang/String;

    .line 54
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/ao;->f:Ljava/lang/String;

    .line 55
    iput-object p4, v0, Lcom/baidu/bdgame/sdk/obf/ao;->g:Ljava/lang/String;

    .line 57
    iput-boolean v2, v0, Lcom/baidu/bdgame/sdk/obf/ao;->h:Z

    .line 60
    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/ao;->a(Z)V

    .line 62
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ax;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;
    .registers 7
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
    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/am;->a(Lcom/baidu/bdgame/sdk/obf/ax;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;

    .line 69
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ky;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ky;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    const-string v1, "AccountID"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 72
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 73
    const-string v1, "AccountID"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ao;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 93
    :goto_29
    return-object v0

    .line 77
    :cond_2a
    const-string v2, "AutoLoginSign"

    invoke-static {p2, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 79
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 80
    const-string v1, "AutoLoginSign"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ao;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_29

    .line 84
    :cond_45
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ag;-><init>()V

    .line 85
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ag;->a(I)V

    .line 86
    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Ljava/lang/String;)V

    .line 88
    const-string v1, ""

    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->b(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ao;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/ax;->i(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, v2}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Lcom/baidu/bdgame/sdk/obf/ag;)V

    goto :goto_29
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 128
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ao;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v1, "BindUserName"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ao;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v1, "BindCode"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ao;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v1, "PassWord"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ao;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/la;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ky",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-super/range {p0 .. p5}, Lcom/baidu/bdgame/sdk/obf/am;->a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 103
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ao;->h:Z

    if-nez v0, :cond_43

    .line 104
    check-cast p4, Lcom/baidu/bdgame/sdk/obf/ax;

    .line 106
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/av;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/av;-><init>()V

    .line 107
    invoke-virtual {p4}, Lcom/baidu/bdgame/sdk/obf/ax;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p4}, Lcom/baidu/bdgame/sdk/obf/ax;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->b(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p4}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(I)V

    .line 113
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/aw;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/aw;-><init>()V

    .line 114
    const-string v2, "AlertMessageTitle"

    invoke-static {p5, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/aw;->a(Ljava/lang/String;)V

    .line 115
    const-string v2, "AlertMessageBody"

    invoke-static {p5, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/aw;->b(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Lcom/baidu/bdgame/sdk/obf/aw;)V

    .line 119
    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 122
    :cond_43
    return-void
.end method

.method public bridge synthetic a(Z)V
    .registers 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/am;->a(Z)V

    return-void
.end method
