.class final Lcom/baidu/bdgame/sdk/obf/bn$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bn$4;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bn$4;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bn$4;)V
    .registers 2

    .prologue
    .line 263
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bn$4$2;->a:Lcom/baidu/bdgame/sdk/obf/bn$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 268
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn$4$2;->a:Lcom/baidu/bdgame/sdk/obf/bn$4;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bn$4;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bn;->e(Lcom/baidu/bdgame/sdk/obf/bn;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v1

    const/16 v0, 0xcc

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v2

    if-nez p1, :cond_40

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v2, v0}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 272
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn$4$2;->a:Lcom/baidu/bdgame/sdk/obf/bn$4;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bn$4;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bn;->e(Lcom/baidu/bdgame/sdk/obf/bn;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->m()V

    .line 273
    if-nez p1, :cond_42

    .line 275
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nl;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bn$4$2;->a:Lcom/baidu/bdgame/sdk/obf/bn$4;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/bn$4;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bn;->e(Lcom/baidu/bdgame/sdk/obf/bn;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/nl;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nl;->a()V

    .line 289
    :goto_3f
    return-void

    .line 268
    :cond_40
    const/4 v0, 0x0

    goto :goto_15

    .line 277
    :cond_42
    const v0, 0x8534

    if-ne p1, v0, :cond_62

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/av;

    if-eqz v0, :cond_62

    .line 279
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/w;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bn$4$2;->a:Lcom/baidu/bdgame/sdk/obf/bn$4;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/bn$4;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bn;->e(Lcom/baidu/bdgame/sdk/obf/bn;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/av;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/w;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/av;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/w;->a()V

    goto :goto_3f

    .line 281
    :cond_62
    const v0, 0x8535

    if-ne p1, v0, :cond_82

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/av;

    if-eqz v0, :cond_82

    .line 283
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/w;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bn$4$2;->a:Lcom/baidu/bdgame/sdk/obf/bn$4;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/bn$4;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bn;->e(Lcom/baidu/bdgame/sdk/obf/bn;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/av;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/w;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/av;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/w;->c()V

    goto :goto_3f

    .line 286
    :cond_82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn$4$2;->a:Lcom/baidu/bdgame/sdk/obf/bn$4;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bn$4;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bn;->e(Lcom/baidu/bdgame/sdk/obf/bn;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn$4$2;->a:Lcom/baidu/bdgame/sdk/obf/bn$4;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bn$4;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bn;->k(Lcom/baidu/bdgame/sdk/obf/bn;)V

    goto :goto_3f
.end method
