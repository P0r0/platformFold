.class public Lcom/baidu/bdgame/sdk/obf/ah;
.super Lcom/baidu/bdgame/sdk/obf/am;
.source "SourceFile"


# static fields
.field private static final a:S = 0x2es


# instance fields
.field private b:Ljava/lang/String;

.field private f:Lcom/baidu/bdgame/sdk/obf/ag;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/am;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ag;)Lcom/baidu/bdgame/sdk/obf/ah;
    .registers 6

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ah;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ah;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 36
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ah;->b(I)V

    .line 37
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ah;->a(S)V

    .line 38
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/ah;->b:Ljava/lang/String;

    .line 39
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/ah;->f:Lcom/baidu/bdgame/sdk/obf/ag;

    .line 42
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v1

    if-eqz v1, :cond_22

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ah;->a(Z)V

    .line 45
    :cond_22
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ax;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;
    .registers 9
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
    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/am;->a(Lcom/baidu/bdgame/sdk/obf/ax;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;

    .line 61
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ky;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ky;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    const-string v1, "AccountID"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 65
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 66
    const-string v1, "AccountID"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ah;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 106
    :cond_29
    :goto_29
    return-object v0

    .line 70
    :cond_2a
    const-string v2, "AutoLoginSign"

    invoke-static {p2, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 72
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 73
    const-string v1, "AutoLoginSign"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ah;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_29

    .line 77
    :cond_45
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/ag;-><init>()V

    .line 78
    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ah;->f:Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/bdgame/sdk/obf/ag;->a(I)V

    .line 79
    invoke-virtual {v3, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/ag;->b(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ah;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/ax;->i(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1, v3}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Lcom/baidu/bdgame/sdk/obf/ag;)V

    .line 93
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ah;->g()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ah;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/la;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_76

    .line 95
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Ljava/lang/String;)V

    .line 99
    :cond_76
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ah;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/baidu/bdgame/sdk/obf/ab;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 101
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ah;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_token_invalid"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

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
    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    const-string v1, "AccountIDType"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ah;->f:Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "AccountIDValue"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ah;->f:Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ag;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "AutoLoginSign"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ah;->f:Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ag;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    return-object v0
.end method

.method public bridge synthetic a(Z)V
    .registers 2

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/am;->a(Z)V

    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
    .registers 8
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
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 112
    sparse-switch p2, :sswitch_data_5e

    .line 143
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 114
    :sswitch_5
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ah;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ah;->f:Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)V

    goto :goto_3

    .line 119
    :sswitch_f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ah;->f:Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v0

    if-nez v0, :cond_1b

    .line 121
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_3

    .line 125
    :cond_1b
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ah;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ah;->f:Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)V

    .line 127
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/av;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/av;-><init>()V

    .line 128
    const-string v1, "AccessToken"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->b(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ah;->f:Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(I)V

    .line 132
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/aw;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/aw;-><init>()V

    .line 133
    const-string v2, "AlertMessageTitle"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/aw;->a(Ljava/lang/String;)V

    .line 134
    const-string v2, "AlertMessageBody"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/aw;->b(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Lcom/baidu/bdgame/sdk/obf/aw;)V

    .line 137
    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_3

    .line 112
    nop

    :sswitch_data_5e
    .sparse-switch
        0x8ca5 -> :sswitch_5
        0x8d04 -> :sswitch_f
    .end sparse-switch
.end method
