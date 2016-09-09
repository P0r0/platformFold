.class public Lcom/baidu/bdgame/sdk/obf/ad;
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
.field private static final a:S = 0x35s


# instance fields
.field private b:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V
    .registers 4

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ad;
    .registers 7

    .prologue
    .line 31
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ad;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ad;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 32
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ad;->b(I)V

    .line 33
    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ad;->a(S)V

    .line 34
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/ad;->b:Ljava/lang/String;

    .line 35
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/ad;->f:Ljava/lang/String;

    .line 36
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/ad;->g:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v1, "RealName"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ad;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v1, "IdCard"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ad;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
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

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z

    .line 55
    if-nez p2, :cond_7b

    .line 56
    const-string v1, "IsRealNameAuth"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 58
    const-string v1, "IsRealNameAuth"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 86
    :goto_1a
    return v0

    .line 61
    :cond_1b
    const-string v2, "BaiduOauthID"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 63
    const-string v1, "BaiduOauthID"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    goto :goto_1a

    .line 66
    :cond_30
    const-string v3, "RealName"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 68
    const-string v1, "RealName"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    goto :goto_1a

    .line 71
    :cond_45
    const-string v0, "IdCard"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 73
    const-string v4, "IdCard"

    invoke-virtual {p0, v4}, Lcom/baidu/bdgame/sdk/obf/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 76
    :cond_59
    new-instance v4, Lcom/baidu/bdgame/sdk/obf/ae;

    invoke-direct {v4}, Lcom/baidu/bdgame/sdk/obf/ae;-><init>()V

    .line 77
    invoke-virtual {v4, v2}, Lcom/baidu/bdgame/sdk/obf/ae;->c(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v4, v1}, Lcom/baidu/bdgame/sdk/obf/ae;->b(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4, v3}, Lcom/baidu/bdgame/sdk/obf/ae;->e(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4, v0}, Lcom/baidu/bdgame/sdk/obf/ae;->f(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ad;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mf;->l(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/baidu/bdgame/sdk/obf/ae;->a(I)V

    .line 83
    const-string v0, "ok"

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 84
    iput-object v4, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 86
    :cond_7b
    const/4 v0, 0x1

    goto :goto_1a
.end method
