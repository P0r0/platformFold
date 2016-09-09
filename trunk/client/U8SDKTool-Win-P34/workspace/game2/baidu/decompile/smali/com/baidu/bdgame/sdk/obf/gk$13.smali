.class final Lcom/baidu/bdgame/sdk/obf/gk$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gk;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/o",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/jg;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gk;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gk;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gk$13;->a:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 184
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gk$13;->a(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$13;->a:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->g(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->O()V

    .line 190
    if-nez p1, :cond_24

    .line 191
    if-eqz p3, :cond_1e

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 193
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$13;->a:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Lcom/baidu/bdgame/sdk/obf/gk;Ljava/util/List;)Ljava/util/List;

    .line 194
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$13;->a:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->h(Lcom/baidu/bdgame/sdk/obf/gk;)V

    .line 203
    :goto_1d
    return-void

    .line 197
    :cond_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$13;->a:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->e(Lcom/baidu/bdgame/sdk/obf/gk;)V

    goto :goto_1d

    .line 200
    :cond_24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$13;->a:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->g(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    goto :goto_1d
.end method
