.class final Lcom/baidu/bdgame/sdk/obf/ng$3;
.super Lcom/baidu/bdgame/sdk/obf/ng$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ng;->a(Lcom/baidu/bdgame/sdk/obf/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/s;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ng;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ng;Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 3

    .prologue
    .line 231
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ng$3;->b:Lcom/baidu/bdgame/sdk/obf/ng;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ng$3;->a:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ng$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ng;)V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 236
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng$3;->b:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v1

    const/16 v0, 0xca

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v2

    if-nez p1, :cond_2b

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v2, v0}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 239
    if-nez p1, :cond_3e

    .line 240
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng$3;->a:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v0

    if-nez v0, :cond_2d

    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng$3;->b:Lcom/baidu/bdgame/sdk/obf/ng;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/ng;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 261
    :goto_2a
    return-void

    .line 236
    :cond_2b
    const/4 v0, 0x0

    goto :goto_f

    .line 244
    :cond_2d
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nl;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ng$3;->b:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ng;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/nl;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nl;->a()V

    goto :goto_2a

    .line 247
    :cond_3e
    const v0, 0x8d04

    if-ne p1, v0, :cond_58

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/av;

    if-eqz v0, :cond_58

    .line 249
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/w;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ng$3;->b:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ng;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/av;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/w;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/av;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/w;->a()V

    goto :goto_2a

    .line 253
    :cond_58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng$3;->b:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ng;->a(Lcom/baidu/bdgame/sdk/obf/ng;)V

    .line 255
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 256
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng$3;->b:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ng$3;->b:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    goto :goto_2a

    .line 258
    :cond_79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng$3;->b:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2a
.end method
