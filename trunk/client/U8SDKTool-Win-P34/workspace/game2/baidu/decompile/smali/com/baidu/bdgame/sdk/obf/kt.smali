.class public Lcom/baidu/bdgame/sdk/obf/kt;
.super Lcom/baidu/bdgame/sdk/obf/kz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kz",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ko;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:S = 0x17s


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/kt;
    .registers 4

    .prologue
    .line 25
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kt;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kt;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 26
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kt;->b(I)V

    .line 27
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kt;->a(S)V

    .line 29
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 56
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    .line 58
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/la;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ky",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ko;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z

    .line 39
    if-nez p2, :cond_26

    .line 40
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kt;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/baidu/bdgame/sdk/obf/ko;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;

    move-result-object v0

    .line 41
    iget-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_1f

    .line 42
    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kt;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    .line 50
    :goto_1e
    return v0

    .line 46
    :cond_1f
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ko;

    invoke-direct {v0, p4}, Lcom/baidu/bdgame/sdk/obf/ko;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    .line 50
    :cond_26
    const/4 v0, 0x1

    goto :goto_1e
.end method
