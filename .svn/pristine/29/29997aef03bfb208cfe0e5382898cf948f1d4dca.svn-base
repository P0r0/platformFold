.class public Lcom/baidu/bdgame/sdk/obf/hk;
.super Lcom/baidu/bdgame/sdk/obf/hy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/hy",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/hm;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:S = 0x183s


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/hy;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/hk;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/hk;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hk;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/hk;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 26
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hk;->b(I)V

    .line 27
    const/16 v1, 0x183

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hk;->a(S)V

    .line 28
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
    .line 34
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/hy;->a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;

    move-result-object v0

    .line 35
    const-string v1, "SdkPackageName"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/hk;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
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
            "Lcom/baidu/bdgame/sdk/obf/hm;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 43
    if-eqz p2, :cond_4

    .line 61
    :goto_3
    return v0

    .line 47
    :cond_4
    const-string v1, "Status"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    .line 48
    if-nez v1, :cond_16

    .line 49
    const-string v0, "Status"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/hk;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    goto :goto_3

    .line 52
    :cond_16
    const-string v2, "CashOrderSerial"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    const-string v3, "JumpInfo"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    new-instance v4, Lcom/baidu/bdgame/sdk/obf/hm;

    invoke-direct {v4}, Lcom/baidu/bdgame/sdk/obf/hm;-><init>()V

    .line 56
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/baidu/bdgame/sdk/obf/hm;->a(I)V

    .line 57
    invoke-virtual {v4, v2}, Lcom/baidu/bdgame/sdk/obf/hm;->a(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4, v3}, Lcom/baidu/bdgame/sdk/obf/hm;->b(Ljava/lang/String;)V

    .line 60
    iput-object v4, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_3
.end method
