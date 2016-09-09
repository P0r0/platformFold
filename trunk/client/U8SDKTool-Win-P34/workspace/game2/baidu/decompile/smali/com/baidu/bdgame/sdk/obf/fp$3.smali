.class final Lcom/baidu/bdgame/sdk/obf/fp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/kf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fp;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fp;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fp;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fp$3;->a:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 135
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fp$3;->a:Lcom/baidu/bdgame/sdk/obf/fp;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fp$3;->a:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fp;->c(Lcom/baidu/bdgame/sdk/obf/fp;)Lcom/baidu/bdgame/sdk/obf/ik;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_c
    invoke-virtual {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/fp;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 135
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fp$3;->a:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fp;->c(Lcom/baidu/bdgame/sdk/obf/fp;)Lcom/baidu/bdgame/sdk/obf/ik;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ik;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
