.class final Lcom/baidu/bdgame/sdk/obf/gb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/et;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gb;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gb;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gb$1;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 6

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$1;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->a(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x21

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$1;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->b(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jz;->a(J)V

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$1;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->c(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jz;->b(J)V

    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$1;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->d(Lcom/baidu/bdgame/sdk/obf/gb;)V

    .line 72
    return-void
.end method
