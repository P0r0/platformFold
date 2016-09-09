.class final Lcom/baidu/bdgame/sdk/obf/ng$1;
.super Lcom/baidu/bdgame/sdk/obf/ng$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ng;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ng;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ng;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ng$1;->a:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ng$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ng;)V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng$1;->a:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v1

    const/16 v0, 0xce

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v2

    if-nez p1, :cond_1f

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v2, v0}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 173
    if-nez p1, :cond_21

    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng$1;->a:Lcom/baidu/bdgame/sdk/obf/ng;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/ng;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    :goto_1e
    return-void

    .line 170
    :cond_1f
    const/4 v0, 0x0

    goto :goto_f

    .line 176
    :cond_21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng$1;->a:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ng;->a(Lcom/baidu/bdgame/sdk/obf/ng;)V

    .line 179
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 180
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng$1;->a:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ng$1;->a:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_sso_login_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    goto :goto_1e

    .line 182
    :cond_42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng$1;->a:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1e
.end method
