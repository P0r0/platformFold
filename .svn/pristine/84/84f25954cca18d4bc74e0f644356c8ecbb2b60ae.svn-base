.class public Lcom/baidu/bdgame/sdk/obf/aq;
.super Lcom/baidu/bdgame/sdk/obf/am;
.source "SourceFile"


# static fields
.field private static final a:S = 0x32s


# instance fields
.field private b:Lcom/baidu/bdgame/sdk/obf/av;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/am;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/av;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/aq;
    .registers 6

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/aq;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/aq;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 34
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/aq;->b(I)V

    .line 35
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/aq;->a(S)V

    .line 36
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/aq;->b:Lcom/baidu/bdgame/sdk/obf/av;

    .line 37
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/aq;->f:Ljava/lang/String;

    .line 38
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ax;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;
    .registers 10
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/am;->a(Lcom/baidu/bdgame/sdk/obf/ax;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;

    .line 54
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ky;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ky;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    const-string v1, "AccountID"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 58
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 59
    const-string v1, "AccountID"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/aq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 117
    :cond_29
    :goto_29
    return-object v0

    .line 63
    :cond_2a
    const-string v2, "AutoLoginSign"

    invoke-static {p2, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 65
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 66
    const-string v1, "AutoLoginSign"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/aq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_29

    .line 70
    :cond_45
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/ag;-><init>()V

    .line 72
    const-string v4, "AccountIDType"

    invoke-static {p2, v4}, Lcom/baidu/bdgame/sdk/obf/ly;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v4

    .line 73
    if-nez v4, :cond_61

    .line 74
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 75
    const-string v1, "AccountIDType"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/aq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_29

    .line 78
    :cond_61
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 79
    packed-switch v4, :pswitch_data_96

    .line 86
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 87
    const-string v1, "AccountIDType"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/aq;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_29

    .line 83
    :pswitch_77
    invoke-virtual {v3, v4}, Lcom/baidu/bdgame/sdk/obf/ag;->a(I)V

    .line 91
    invoke-virtual {v3, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/ag;->b(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, v3}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Lcom/baidu/bdgame/sdk/obf/ag;)V

    .line 96
    if-ne v4, v6, :cond_8e

    .line 98
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/aq;->b:Lcom/baidu/bdgame/sdk/obf/av;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/av;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/ax;->i(Ljava/lang/String;)V

    .line 102
    :cond_8e
    if-nez v4, :cond_29

    .line 104
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/aq;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Ljava/lang/String;)V

    goto :goto_29

    .line 79
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_77
        :pswitch_77
    .end packed-switch
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aq;->f:Ljava/lang/String;

    if-nez v0, :cond_20

    const-string v0, ""

    :goto_b
    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aq;->f:Ljava/lang/String;

    .line 46
    const-string v0, "BDUSS"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/aq;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v0, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/aq;->b:Lcom/baidu/bdgame/sdk/obf/av;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/av;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    return-object v1

    .line 45
    :cond_20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aq;->f:Ljava/lang/String;

    goto :goto_b
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .registers 10
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
    .line 149
    invoke-super/range {p0 .. p5}, Lcom/baidu/bdgame/sdk/obf/am;->a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 151
    check-cast p4, Lcom/baidu/bdgame/sdk/obf/ax;

    .line 153
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/av;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/av;-><init>()V

    .line 154
    invoke-virtual {p4}, Lcom/baidu/bdgame/sdk/obf/ax;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p4}, Lcom/baidu/bdgame/sdk/obf/ax;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->b(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p4}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(I)V

    .line 160
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/aw;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/aw;-><init>()V

    .line 161
    const-string v2, "AlertMessageTitle"

    invoke-static {p5, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/aw;->a(Ljava/lang/String;)V

    .line 162
    const-string v2, "AlertMessageBody"

    invoke-static {p5, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/aw;->b(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Lcom/baidu/bdgame/sdk/obf/aw;)V

    .line 166
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/av;->c()I

    move-result v1

    if-nez v1, :cond_56

    .line 168
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/aq;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/aq;->b:Lcom/baidu/bdgame/sdk/obf/av;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/av;->c()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/aq;->b:Lcom/baidu/bdgame/sdk/obf/av;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/av;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 173
    :cond_56
    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public bridge synthetic a(Z)V
    .registers 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/am;->a(Z)V

    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
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
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 123
    packed-switch p2, :pswitch_data_3c

    .line 142
    :goto_4
    return v3

    .line 126
    :pswitch_5
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/av;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/av;-><init>()V

    .line 127
    const-string v1, "AccessToken"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/aq;->b:Lcom/baidu/bdgame/sdk/obf/av;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/av;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->b(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/av;->a(I)V

    .line 131
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/aw;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/aw;-><init>()V

    .line 132
    const-string v2, "AlertMessageTitle"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/aw;->a(Ljava/lang/String;)V

    .line 133
    const-string v2, "AlertMessageBody"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/aw;->b(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Lcom/baidu/bdgame/sdk/obf/aw;)V

    .line 136
    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_4

    .line 123
    :pswitch_data_3c
    .packed-switch 0x891c
        :pswitch_5
    .end packed-switch
.end method
