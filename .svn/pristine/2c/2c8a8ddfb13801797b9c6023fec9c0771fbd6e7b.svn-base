.class public Lcom/baidu/bdgame/sdk/obf/af;
.super Lcom/baidu/bdgame/sdk/obf/kz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kz",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ae;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:S = 0x34s


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/af;
    .registers 5

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/af;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/af;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 34
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/af;->b(I)V

    .line 35
    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/af;->a(S)V

    .line 36
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/af;->b:Ljava/lang/String;

    .line 37
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
    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/af;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
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
            "Lcom/baidu/bdgame/sdk/obf/ae;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z

    .line 54
    if-nez p2, :cond_64

    .line 55
    const-string v1, "IsRealNameAuth"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 57
    const-string v1, "IsRealNameAuth"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 80
    :goto_1a
    return v0

    .line 60
    :cond_1b
    const-string v2, "BaiduOauthID"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 62
    const-string v1, "BaiduOauthID"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    goto :goto_1a

    .line 65
    :cond_30
    const-string v3, "AuthInfo"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 67
    const-string v1, "AuthInfo"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    goto :goto_1a

    .line 71
    :cond_45
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ae;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ae;-><init>()V

    .line 72
    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/ae;->d(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/ae;->c(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ae;->b(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/af;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/mf;->l(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ae;->a(I)V

    .line 77
    const-string v1, "ok"

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 78
    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 80
    :cond_64
    const/4 v0, 0x1

    goto :goto_1a
.end method
