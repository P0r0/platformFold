.class Lcom/baidu/bdgame/sdk/obf/ei$a;
.super Lcom/baidu/bdgame/sdk/obf/ei$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
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
    .line 268
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ei$g;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/ec;)Z
    .registers 7
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
    const/4 v0, 0x1

    .line 273
    const-string v1, "AliKuai"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 274
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/jx;->a:Lcom/baidu/bdgame/sdk/obf/jx;

    invoke-virtual {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ec;->a(Ljava/lang/Object;)V

    .line 275
    const-string v1, "AliPay"

    invoke-virtual {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ec;->f(Ljava/lang/String;)V

    .line 283
    :goto_13
    return v0

    .line 277
    :cond_14
    const-string v1, "AliFast"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 278
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/jx;->a:Lcom/baidu/bdgame/sdk/obf/jx;

    invoke-virtual {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ec;->a(Ljava/lang/Object;)V

    .line 279
    const-string v1, "AliPay"

    invoke-virtual {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ec;->f(Ljava/lang/String;)V

    goto :goto_13

    .line 283
    :cond_27
    const/4 v0, 0x0

    goto :goto_13
.end method
