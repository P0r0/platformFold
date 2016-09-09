.class public Lcom/baidu/bdgame/sdk/obf/bi;
.super Lcom/baidu/bdgame/sdk/obf/am;
.source "SourceFile"


# static fields
.field private static final a:S = 0x2fs


# instance fields
.field private b:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V
    .registers 5

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/am;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/bi;->a(Z)V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/bi;
    .registers 7

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bi;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bi;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 36
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bi;->b(I)V

    .line 37
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bi;->a(S)V

    .line 38
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/bi;->b:Ljava/lang/String;

    .line 39
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/bi;->f:Ljava/lang/String;

    .line 40
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/bi;->g:Ljava/lang/String;

    .line 41
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

    const/4 v4, 0x1

    .line 63
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/am;->a(Lcom/baidu/bdgame/sdk/obf/ax;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;

    .line 64
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ky;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/baidu/bdgame/sdk/obf/ky;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    const-string v1, "AccountID"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 68
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 69
    const-string v1, "AccountID"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/bi;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 81
    :goto_29
    return-object v0

    .line 73
    :cond_2a
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ag;-><init>()V

    .line 74
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ag;->a(I)V

    .line 75
    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2, v5}, Lcom/baidu/bdgame/sdk/obf/ag;->b(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, v4}, Lcom/baidu/bdgame/sdk/obf/ax;->d(Z)V

    .line 80
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
    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    const-string v1, "ThirdPlatformType"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "OAuthParams"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bi;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bi;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 51
    const-string v1, "OAuthVersion"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bi;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :goto_22
    return-object v0

    .line 53
    :cond_23
    const-string v1, "OAuthVersion"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_22
.end method

.method public bridge synthetic a(Z)V
    .registers 2

    .prologue
    .line 19
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
    .line 87
    packed-switch p2, :pswitch_data_38

    .line 107
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 90
    :pswitch_5
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/av;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/av;-><init>()V

    .line 92
    const-string v1, "AccessToken"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->b(Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(I)V

    .line 96
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/aw;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/aw;-><init>()V

    .line 97
    const-string v2, "AlertMessageTitle"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/aw;->a(Ljava/lang/String;)V

    .line 98
    const-string v2, "AlertMessageBody"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/aw;->b(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Lcom/baidu/bdgame/sdk/obf/aw;)V

    .line 101
    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_3

    .line 87
    :pswitch_data_38
    .packed-switch 0x90ec
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
