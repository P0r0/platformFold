.class final Lcom/baidu/bdgame/sdk/obf/fx$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/et;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fx;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fx;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fx;)V
    .registers 2

    .prologue
    .line 189
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fx$3;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 6

    .prologue
    .line 193
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$3;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x34

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 195
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$3;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->e(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jz;->a(J)V

    .line 196
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$3;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->f(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jz;->b(J)V

    .line 197
    const-class v0, Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPayMoney ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$3;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->g(Lcom/baidu/bdgame/sdk/obf/fx;)V

    .line 199
    return-void
.end method