.class final Lcom/baidu/bdgame/sdk/obf/bm$26$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bm$26$1;->a(Landroid/content/Context;)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bm$26$1;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bm$26$1;)V
    .registers 2

    .prologue
    .line 365
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bm$26$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$26$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v2

    const/16 v0, 0xcc

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v3

    if-nez p1, :cond_55

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 373
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$26$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->m()V

    .line 374
    if-nez p1, :cond_57

    .line 375
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$26$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    .line 376
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bm$26$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26$1;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/bm$26$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/bm$26;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v2

    const-string v3, "bdp_passport_login"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/baidu/bdgame/sdk/obf/cs;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 385
    :goto_54
    return-void

    :cond_55
    move v0, v1

    .line 370
    goto :goto_18

    .line 378
    :cond_57
    const v0, 0x8ca5

    if-ne p1, v0, :cond_7e

    .line 379
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$26$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->d(Lcom/baidu/bdgame/sdk/obf/bm;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$26$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->m(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->b(Ljava/lang/String;)V

    .line 382
    :cond_7e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$26$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$26$1$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$26;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$26;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->n(Lcom/baidu/bdgame/sdk/obf/bm;)V

    goto :goto_54
.end method
