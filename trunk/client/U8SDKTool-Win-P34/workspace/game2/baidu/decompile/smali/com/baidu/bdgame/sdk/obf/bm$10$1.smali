.class final Lcom/baidu/bdgame/sdk/obf/bm$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bm$10;->a(Lcom/baidu/sapi2/result/FastRegResult;)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bm$10;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bm$10;)V
    .registers 2

    .prologue
    .line 764
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bm$10$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 769
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$10$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$10;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$10;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v3

    const/16 v0, 0xd0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v4

    if-nez p1, :cond_56

    move v0, v1

    :goto_17
    invoke-virtual {v4, v0}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 772
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$10$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$10;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$10;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->m()V

    .line 773
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$10$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$10;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$10;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    if-nez p1, :cond_58

    :goto_2f
    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Lcom/baidu/bdgame/sdk/obf/bm;Z)V

    .line 774
    if-eqz p1, :cond_55

    .line 775
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$10$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$10;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$10;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bm$10$1;->a:Lcom/baidu/bdgame/sdk/obf/bm$10;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/bm$10;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_fail_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 777
    :cond_55
    return-void

    :cond_56
    move v0, v2

    .line 769
    goto :goto_17

    :cond_58
    move v1, v2

    .line 773
    goto :goto_2f
.end method
