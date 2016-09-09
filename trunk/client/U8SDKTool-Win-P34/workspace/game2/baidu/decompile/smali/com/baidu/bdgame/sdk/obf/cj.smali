.class public Lcom/baidu/bdgame/sdk/obf/cj;
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
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ci;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 31
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->l:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/util/List;)Lcom/baidu/bdgame/sdk/obf/cj;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ci;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/cj;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cj;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/cj;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cj;->a(S)V

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cj;->b(I)V

    .line 38
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/cj;->a:Ljava/util/List;

    .line 40
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cj;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 65
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 66
    const-string v0, "VER"

    const-string v2, "1.0.0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 70
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 71
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ks;->c()Z

    move-result v4

    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ci;

    .line 73
    instance-of v6, v0, Lcom/baidu/bdgame/sdk/obf/ch;

    if-eqz v6, :cond_3f

    if-eqz v4, :cond_46

    .line 74
    :cond_3f
    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/ci;->a(Ljava/text/SimpleDateFormat;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 76
    :cond_46
    const-string v6, "BaiduPlatformSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tag in request. PerformanceTag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    instance-of v8, v0, Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/ci;->b(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 79
    :cond_6f
    const-string v0, "TAGLIST"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    return-object v1
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
    .registers 7
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
    const/4 v1, 0x0

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z

    .line 48
    if-nez p2, :cond_c

    .line 49
    const-string v0, "ok"

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 56
    :cond_a
    :goto_a
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_c
    const v0, 0x9ca4

    if-ne p2, v0, :cond_a

    .line 51
    sput-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->j:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/at;->a(Ljava/lang/String;)V

    goto :goto_a
.end method
