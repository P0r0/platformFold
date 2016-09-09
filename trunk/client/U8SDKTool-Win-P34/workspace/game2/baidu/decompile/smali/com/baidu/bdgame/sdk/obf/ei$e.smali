.class Lcom/baidu/bdgame/sdk/obf/ei$e;
.super Lcom/baidu/bdgame/sdk/obf/ei$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/ei$g",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/jx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ei$g;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/ec;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jx;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 508
    const-string v0, "Bean91"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 509
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jx;->a:Lcom/baidu/bdgame/sdk/obf/jx;

    invoke-virtual {p4, v0}, Lcom/baidu/bdgame/sdk/obf/ec;->a(Ljava/lang/Object;)V

    .line 510
    const-string v0, "Bean91Pay"

    invoke-virtual {p4, v0}, Lcom/baidu/bdgame/sdk/obf/ec;->f(Ljava/lang/String;)V

    .line 511
    const/4 v0, 0x1

    .line 514
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
