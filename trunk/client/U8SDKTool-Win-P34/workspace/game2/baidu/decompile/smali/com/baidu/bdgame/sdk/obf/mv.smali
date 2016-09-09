.class public abstract Lcom/baidu/bdgame/sdk/obf/mv;
.super Lcom/baidu/bdgame/sdk/obf/mq;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/mu$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/mv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/baidu/bdgame/sdk/obf/mq;",
        "Lcom/baidu/bdgame/sdk/obf/mu$a;"
    }
.end annotation


# instance fields
.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field

.field private k:Lcom/baidu/bdgame/sdk/obf/mv$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mq;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mv;->j:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/view/View;
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .prologue
    .line 157
    .line 159
    if-nez p2, :cond_18

    .line 160
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->a()Landroid/view/View;

    move-result-object p2

    .line 161
    invoke-virtual {p0, p2}, Lcom/baidu/bdgame/sdk/obf/mv;->a(Landroid/view/View;)Lcom/baidu/bdgame/sdk/obf/mu;

    move-result-object v0

    .line 162
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    :goto_d
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/mu;->a(I)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mv;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/mv;->a(ILjava/lang/Object;Lcom/baidu/bdgame/sdk/obf/mu;)V

    .line 169
    return-object p2

    .line 164
    :cond_18
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/mu;

    .line 165
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/mv;->a(Lcom/baidu/bdgame/sdk/obf/mu;)V

    goto :goto_d
.end method

.method protected abstract a(Landroid/view/View;)Lcom/baidu/bdgame/sdk/obf/mu;
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mv;->k:Lcom/baidu/bdgame/sdk/obf/mv$a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mv;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 193
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mv;->k:Lcom/baidu/bdgame/sdk/obf/mv$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mv;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mv$a;->a(Ljava/lang/Object;)V

    .line 195
    :cond_17
    return-void
.end method

.method protected abstract a(ILjava/lang/Object;Lcom/baidu/bdgame/sdk/obf/mu;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;",
            "Lcom/baidu/bdgame/sdk/obf/mu;",
            ")V"
        }
    .end annotation
.end method

.method public a(Landroid/view/View;II)V
    .registers 4

    .prologue
    .line 207
    return-void
.end method

.method protected a(Landroid/view/View;IZ)V
    .registers 4

    .prologue
    .line 202
    return-void
.end method

.method protected abstract a(Lcom/baidu/bdgame/sdk/obf/mu;)V
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/mv$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/mv$a",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mv;->k:Lcom/baidu/bdgame/sdk/obf/mv$a;

    .line 186
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end method

.method public c(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mv;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 61
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->getCount()I

    move-result v1

    if-nez v1, :cond_10

    .line 62
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/mv;->a(Z)V

    .line 65
    :cond_10
    if-eqz v0, :cond_15

    .line 66
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->notifyDataSetChanged()V

    .line 68
    :cond_15
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->isEmpty()Z

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mv;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    if-eqz v0, :cond_f

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/mv;->a(Z)V

    .line 84
    :cond_f
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method protected e(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mv;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_b

    .line 92
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mv;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    :cond_b
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->e()V

    .line 96
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mv;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 97
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->h()V

    .line 105
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->notifyDataSetChanged()V

    .line 106
    return-void

    .line 99
    :cond_1b
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->f()V

    .line 100
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->getCount()I

    move-result v0

    if-nez v0, :cond_17

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/mv;->a(Z)V

    goto :goto_17
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mv;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/baidu/bdgame/sdk/obf/mv;, "Lcom/baidu/bdgame/sdk/obf/mv<TK;TV;>;"
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mv;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 37
    .local p0, "this":Lcom/baidu/bdgame/sdk/obf/mv;, "Lcom/baidu/bdgame/sdk/obf/mv<TK;TV;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .registers 3
    .param p1, "section"    # I

    .prologue
    .line 211
    .local p0, "this":Lcom/baidu/bdgame/sdk/obf/mv;, "Lcom/baidu/bdgame/sdk/obf/mv<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 216
    .local p0, "this":Lcom/baidu/bdgame/sdk/obf/mv;, "Lcom/baidu/bdgame/sdk/obf/mv<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method protected j()V
    .registers 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->isEmpty()Z

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mv;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 46
    if-nez v0, :cond_12

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/mv;->a(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->notifyDataSetChanged()V

    .line 51
    :cond_12
    return-void
.end method

.method protected k()V
    .registers 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mv;->g()V

    .line 113
    return-void
.end method
