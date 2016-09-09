.class final Lcom/baidu/bdgame/sdk/obf/fx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fx;->m()V
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
        "Lcom/baidu/bdgame/sdk/obf/ga;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fx;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fx;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ga;)V
    .registers 9

    .prologue
    .line 100
    const-class v0, Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestOrder .. onCallback resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->O()V

    .line 102
    if-nez p1, :cond_92

    if-eqz p3, :cond_92

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/ga;

    .line 104
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ga;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/fx;->k:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/fx;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mobileqq/openpay/api/OpenApiFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;Lcom/tencent/mobileqq/openpay/api/IOpenApi;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->b(Lcom/baidu/bdgame/sdk/obf/fx;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->i()V

    .line 123
    :goto_56
    return-void

    .line 109
    :cond_57
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->e:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_paycenter_paychannel_error_qq"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->c(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ga;

    move-result-object v0

    if-nez v0, :cond_87

    const-string v0, ""

    :goto_83
    invoke-static {v1, v2, v3, v0}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->c(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_83

    .line 114
    :cond_92
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 115
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->c(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ga;

    move-result-object v0

    if-nez v0, :cond_aa

    const-string v0, ""

    :goto_a6
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/fx;->b(Lcom/baidu/bdgame/sdk/obf/fx;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_aa
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->c(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a6

    .line 117
    :cond_b5
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$1;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd8

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto/16 :goto_56
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 96
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fx$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ga;)V

    return-void
.end method
