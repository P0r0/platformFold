.class final Lcom/baidu/bdgame/sdk/obf/bu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bu;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/s;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/s;)I
    .registers 8

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/s;->g()J

    move-result-wide v0

    .line 334
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/s;->g()J

    move-result-wide v2

    .line 335
    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    .line 336
    const/4 v0, -0x1

    .line 340
    :goto_d
    return v0

    .line 337
    :cond_e
    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 338
    const/4 v0, 0x1

    goto :goto_d

    .line 340
    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 329
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/s;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/baidu/bdgame/sdk/obf/s;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bu$2;->a(Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/s;)I

    move-result v0

    return v0
.end method
