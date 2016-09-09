.class final Lcom/baidu/bdgame/sdk/obf/gk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/baidu/bdgame/sdk/obf/jd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/bdgame/sdk/obf/gk;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 270
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 7

    .prologue
    .line 275
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->i(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gn;->O()V

    .line 276
    if-nez p1, :cond_67

    .line 277
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->j(Lcom/baidu/bdgame/sdk/obf/gk;)V

    .line 278
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/jd;

    .line 279
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gk$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/gk$a;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/gk$1;)V

    .line 280
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/gk$a;->a:Ljava/lang/String;

    .line 281
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/gk$a;->b:Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/gk$a;->c:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/gk$a;->d:Ljava/lang/String;

    .line 284
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/gk$a;->e:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 285
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/gk;->k(Lcom/baidu/bdgame/sdk/obf/gk;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 287
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/gk;->l(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gl;

    move-result-object v1

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/gk$a;->e:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/gl;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 304
    :goto_49
    return-void

    .line 289
    :cond_4a
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->m(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    if-nez v0, :cond_5c

    const-string v0, ""

    :goto_58
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_5c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->m(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    .line 293
    :cond_67
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 294
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->m(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    if-nez v0, :cond_7f

    const-string v0, ""

    :goto_7b
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/gk;->b(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_7f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->m(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_7b

    .line 297
    :cond_8a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->g(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    .line 300
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk$4;->e:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gk;->i(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gn;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xde

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_49
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 270
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gk$4;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/jd;)V

    return-void
.end method
