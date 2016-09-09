.class Lcom/duoku/platform/view/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 7

    .prologue
    .line 118
    const-string v0, "StartView"

    const-string v1, "StartView======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 8

    .prologue
    .line 68
    check-cast p2, Lcom/duoku/platform/bean/f;

    .line 69
    invoke-virtual {p2}, Lcom/duoku/platform/bean/f;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 76
    sget-object v0, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/util/q;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/util/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3f

    .line 88
    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 90
    new-instance v1, Lcom/duoku/platform/view/g$b;

    invoke-direct {v1}, Lcom/duoku/platform/view/g$b;-><init>()V

    .line 91
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/view/g$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    :cond_3e
    return-void

    .line 82
    :cond_3f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/e;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_4e

    .line 85
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_4e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 113
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 107
    return-void
.end method
