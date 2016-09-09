.class public Lcom/baidu/bdgame/sdk/obf/hl;
.super Lcom/baidu/bdgame/sdk/obf/hy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/hy",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/hp;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:S = 0x184s


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
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/hy;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/hl;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/hl;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hl;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/hl;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 25
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hl;->b(I)V

    .line 26
    const/16 v1, 0x184

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hl;->a(S)V

    .line 27
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/la;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ky",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/hp;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 36
    if-eqz p2, :cond_4

    .line 58
    :goto_3
    return v0

    .line 39
    :cond_4
    const-string v1, "Status"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    .line 40
    if-nez v1, :cond_16

    .line 41
    const-string v0, "Status"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/hl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    goto :goto_3

    .line 44
    :cond_16
    const-string v2, "CashOrderSerial"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v3, "Parameter"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    const-string v4, "JumpInfo"

    invoke-static {p4, v4}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    new-instance v5, Lcom/baidu/bdgame/sdk/obf/ho;

    invoke-direct {v5}, Lcom/baidu/bdgame/sdk/obf/ho;-><init>()V

    .line 49
    invoke-virtual {v5, v2}, Lcom/baidu/bdgame/sdk/obf/ho;->b(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5, v3}, Lcom/baidu/bdgame/sdk/obf/ho;->a(Ljava/lang/String;)V

    .line 52
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/hp;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/hp;-><init>()V

    .line 53
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/hp;->a(I)V

    .line 54
    invoke-virtual {v2, v4}, Lcom/baidu/bdgame/sdk/obf/hp;->a(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, v5}, Lcom/baidu/bdgame/sdk/obf/hp;->a(Lcom/baidu/bdgame/sdk/obf/ho;)V

    .line 57
    iput-object v2, p3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    goto :goto_3
.end method
