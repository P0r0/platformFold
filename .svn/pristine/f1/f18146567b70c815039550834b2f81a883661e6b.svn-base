.class Lcom/baidu/bdgame/sdk/obf/am;
.super Lcom/baidu/bdgame/sdk/obf/kz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kz",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V
    .registers 5

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/am;->a:Z

    .line 25
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/la;Lcom/baidu/bdgame/sdk/obf/ax;)V
    .registers 4

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/am;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/baidu/bdgame/sdk/obf/la;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;)V

    .line 171
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ax;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;
    .registers 4
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
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 176
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    .line 178
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .registers 7
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
    .line 165
    const-string v0, "ok"

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 166
    iput-object p4, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/am;->a:Z

    .line 147
    return-void
.end method

.method protected final a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
    .registers 16
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
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z

    .line 33
    if-eqz p2, :cond_11

    .line 34
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/am;->b(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    .line 140
    :goto_e
    return v0

    :cond_f
    move v0, v6

    .line 37
    goto :goto_e

    .line 40
    :cond_11
    const-string v0, "Uid"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 42
    const-string v0, "Uid"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 43
    goto :goto_e

    .line 46
    :cond_27
    const-string v2, "UserName"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string v3, "DisplayName"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    const-string v4, "HasPhoneNum"

    invoke-static {p4, v4}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 51
    const-string v0, "HasPhoneNum"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 52
    goto :goto_e

    .line 55
    :cond_49
    const-string v4, "AccessToken"

    invoke-static {p4, v4}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 57
    const-string v0, "AccessToken"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 58
    goto :goto_e

    .line 61
    :cond_5f
    const-string v4, "Baidu_AccessToken"

    invoke-static {p4, v4}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 63
    const-string v0, "Baidu_AccessToken"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 64
    goto :goto_e

    .line 67
    :cond_75
    const-string v4, "BaiduOauthID"

    invoke-static {p4, v4}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 68
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 69
    const-string v0, "BaiduOauthID"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 70
    goto :goto_e

    .line 73
    :cond_8b
    const-string v4, "Ueda"

    invoke-static {p4, v4}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 75
    new-instance v4, Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-direct {v4}, Lcom/baidu/bdgame/sdk/obf/ax;-><init>()V

    .line 78
    invoke-virtual {v4, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->c(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4, v2}, Lcom/baidu/bdgame/sdk/obf/ax;->d(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4, v3}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Ljava/lang/String;)V

    .line 82
    :try_start_9f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d2

    move v0, v1

    .line 83
    :goto_a6
    invoke-virtual {v4, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->b(Z)V
    :try_end_a9
    .catch Ljava/lang/NumberFormatException; {:try_start_9f .. :try_end_a9} :catch_d4

    .line 88
    invoke-virtual {v4, v7}, Lcom/baidu/bdgame/sdk/obf/ax;->f(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4, v8}, Lcom/baidu/bdgame/sdk/obf/ax;->g(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v4, v9}, Lcom/baidu/bdgame/sdk/obf/ax;->b(Ljava/lang/String;)V

    .line 91
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 92
    invoke-virtual {v4, v10}, Lcom/baidu/bdgame/sdk/obf/ax;->h(Ljava/lang/String;)V

    .line 96
    :cond_bb
    const-string v0, "IsGuest"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 98
    const-string v0, "IsGuest"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 99
    goto/16 :goto_e

    :cond_d2
    move v0, v6

    .line 82
    goto :goto_a6

    .line 84
    :catch_d4
    move-exception v0

    .line 85
    const-string v0, "HasPhoneNum"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 86
    goto/16 :goto_e

    .line 102
    :cond_e0
    :try_start_e0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_ff

    move v0, v1

    .line 103
    :goto_e7
    invoke-virtual {v4, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->c(Z)V
    :try_end_ea
    .catch Ljava/lang/NumberFormatException; {:try_start_e0 .. :try_end_ea} :catch_101

    .line 110
    invoke-virtual {p0, v4, p4}, Lcom/baidu/bdgame/sdk/obf/am;->a(Lcom/baidu/bdgame/sdk/obf/ax;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;

    move-result-object v2

    .line 111
    iget-object v0, v2, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10d

    .line 112
    iget-object v0, v2, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 113
    goto/16 :goto_e

    :cond_ff
    move v0, v6

    .line 102
    goto :goto_e7

    .line 104
    :catch_101
    move-exception v0

    .line 105
    const-string v0, "IsGuest"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 106
    goto/16 :goto_e

    .line 116
    :cond_10d
    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_139

    .line 117
    const-string v0, "HasEmail_91"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 119
    const-string v0, "HasEmail_91"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 120
    goto/16 :goto_e

    .line 123
    :cond_12f
    :try_start_12f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_152

    move v0, v1

    .line 124
    :goto_136
    invoke-virtual {v4, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Z)V
    :try_end_139
    .catch Ljava/lang/NumberFormatException; {:try_start_12f .. :try_end_139} :catch_154

    .line 132
    :cond_139
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/am;->a:Z

    if-eqz v0, :cond_147

    .line 135
    invoke-direct {p0, p1, v4}, Lcom/baidu/bdgame/sdk/obf/am;->a(Lcom/baidu/bdgame/sdk/obf/la;Lcom/baidu/bdgame/sdk/obf/ax;)V

    .line 136
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/am;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/baidu/bdgame/sdk/obf/la;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;)V

    :cond_147
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/am;->a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Ljava/lang/Object;Lorg/json/JSONObject;)V

    move v0, v6

    .line 140
    goto/16 :goto_e

    :cond_152
    move v0, v6

    .line 123
    goto :goto_136

    .line 125
    :catch_154
    move-exception v0

    .line 126
    const-string v0, "HasEmail_91"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 127
    goto/16 :goto_e
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
    .registers 6
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
    .line 157
    const/4 v0, 0x1

    return v0
.end method
