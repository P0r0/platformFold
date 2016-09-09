.class public abstract Lcom/baidu/bdgame/sdk/obf/ai;
.super Lcom/baidu/bdgame/sdk/obf/am;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V
    .registers 5

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/am;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Z)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;Lcom/baidu/bdgame/sdk/obf/ai$1;)V
    .registers 5

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ai;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ai;
    .registers 9

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ai$1;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/ai$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ai;->b(I)V

    .line 47
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ai;->a(S)V

    .line 48
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/ai;->a:Ljava/lang/String;

    .line 49
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ai;
    .registers 9

    .prologue
    .line 53
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ai$2;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/ai$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ai;->b(I)V

    .line 66
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ai;->a(S)V

    .line 67
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/ai;->a:Ljava/lang/String;

    .line 68
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

    .line 82
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/am;->a(Lcom/baidu/bdgame/sdk/obf/ax;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;

    .line 83
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ky;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ky;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    const-string v1, "AccountID"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 87
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 88
    const-string v1, "AccountID"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ai;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 108
    :goto_29
    return-object v0

    .line 92
    :cond_2a
    const-string v2, "AutoLoginSign"

    invoke-static {p2, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 94
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 95
    const-string v1, "AutoLoginSign"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ai;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_29

    .line 99
    :cond_45
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/ag;-><init>()V

    .line 100
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/baidu/bdgame/sdk/obf/ag;->a(I)V

    .line 101
    invoke-virtual {v3, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/ag;->b(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 105
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/ax;->i(Ljava/lang/String;)V

    .line 107
    :cond_61
    invoke-virtual {p1, v3}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Lcom/baidu/bdgame/sdk/obf/ag;)V

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
    .line 77
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ai;->b(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Z)V
    .registers 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/am;->a(Z)V

    return-void
.end method

.method protected abstract b(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
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
    const/4 v2, 0x2

    .line 114
    sparse-switch p2, :sswitch_data_52

    .line 145
    :goto_4
    const/4 v0, 0x1

    return v0

    .line 117
    :sswitch_6
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 118
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 126
    :cond_17
    :sswitch_17
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/av;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/av;-><init>()V

    .line 127
    const-string v1, "AccessToken"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 129
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->b(Ljava/lang/String;)V

    .line 131
    :cond_32
    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/av;->a(I)V

    .line 133
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/aw;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/aw;-><init>()V

    .line 134
    const-string v2, "AlertMessageTitle"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/aw;->a(Ljava/lang/String;)V

    .line 135
    const-string v2, "AlertMessageBody"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/aw;->b(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Lcom/baidu/bdgame/sdk/obf/aw;)V

    .line 138
    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_4

    .line 114
    :sswitch_data_52
    .sparse-switch
        0x7d64 -> :sswitch_6
        0x7d65 -> :sswitch_17
        0xa474 -> :sswitch_6
        0xa475 -> :sswitch_17
    .end sparse-switch
.end method
