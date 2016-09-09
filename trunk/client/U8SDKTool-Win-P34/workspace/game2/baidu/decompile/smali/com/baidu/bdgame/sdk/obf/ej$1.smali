.class final Lcom/baidu/bdgame/sdk/obf/ej$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ej;->l()V
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
        "Lcom/baidu/bdgame/sdk/obf/hp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ej;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ej;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej$1;->a:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hp;)V
    .registers 7

    .prologue
    .line 115
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fastQuery .. onCallback resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$1;->a:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/ej;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->O()V

    .line 119
    if-nez p1, :cond_2d

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$1;->a:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/hp;)V

    .line 131
    :goto_2c
    return-void

    .line 122
    :cond_2d
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 123
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej$1;->a:Lcom/baidu/bdgame/sdk/obf/ej;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    if-eqz p3, :cond_3f

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/hp;->c()Lcom/baidu/bdgame/sdk/obf/ho;

    move-result-object v0

    if-nez v0, :cond_45

    :cond_3f
    const-string v0, ""

    :goto_41
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_45
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/hp;->c()Lcom/baidu/bdgame/sdk/obf/ho;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ho;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 126
    :cond_4e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$1;->a:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/ej;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    goto :goto_2c
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 110
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/hp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ej$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hp;)V

    return-void
.end method
