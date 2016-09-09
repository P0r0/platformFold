.class public final Lcom/duoku/platform/view/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/g$a;,
        Lcom/duoku/platform/view/g$b;
    }
.end annotation


# direct methods
.method public static a()V
    .registers 5

    .prologue
    .line 61
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/f/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_GET_LOGO_URL:Ljava/lang/String;

    const/16 v3, 0x2b

    new-instance v4, Lcom/duoku/platform/view/g$1;

    invoke-direct {v4}, Lcom/duoku/platform/view/g$1;-><init>()V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 132
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Lcom/duoku/platform/view/g;->a()V

    .line 50
    invoke-static {}, Lcom/duoku/platform/view/g;->b()V

    .line 51
    invoke-static {p0}, Lcom/duoku/platform/view/g;->b(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/bean/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2a

    .line 276
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 278
    new-instance v1, Lcom/duoku/platform/view/g$a;

    invoke-direct {v1}, Lcom/duoku/platform/view/g$a;-><init>()V

    .line 279
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/view/g$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 282
    :cond_29
    return-void

    .line 270
    :cond_2a
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_39

    .line 273
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method public static b()V
    .registers 5

    .prologue
    .line 140
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/f/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_GET_AD_URL:Ljava/lang/String;

    const/16 v3, 0x2c

    new-instance v4, Lcom/duoku/platform/view/g$2;

    invoke-direct {v4}, Lcom/duoku/platform/view/g$2;-><init>()V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 177
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 186
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/f/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_GET_BACK_AD_URL:Ljava/lang/String;

    const/16 v3, 0x259

    new-instance v4, Lcom/duoku/platform/view/g$3;

    invoke-direct {v4, p0}, Lcom/duoku/platform/view/g$3;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 262
    return-void
.end method
