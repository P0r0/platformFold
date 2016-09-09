.class final Lcom/baidu/bdgame/sdk/obf/bu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bu;->a(Ljava/util/List;)V
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
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/s;)I
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 310
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/s;->e()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/s;->e()Z

    move-result v2

    if-nez v2, :cond_f

    .line 322
    :cond_e
    :goto_e
    return v0

    .line 312
    :cond_f
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/s;->e()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/s;->e()Z

    move-result v2

    if-eqz v2, :cond_1d

    move v0, v1

    .line 313
    goto :goto_e

    .line 315
    :cond_1d
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/s;->g()J

    move-result-wide v2

    .line 316
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/s;->g()J

    move-result-wide v4

    .line 317
    cmp-long v6, v2, v4

    if-gtz v6, :cond_e

    .line 319
    cmp-long v0, v2, v4

    if-gez v0, :cond_2f

    move v0, v1

    .line 320
    goto :goto_e

    .line 322
    :cond_2f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 304
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/s;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/baidu/bdgame/sdk/obf/s;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bu$1;->a(Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/s;)I

    move-result v0

    return v0
.end method
