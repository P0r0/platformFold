.class final Lcom/baidu/bdgame/sdk/obf/fi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/fk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fi;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fi;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fi;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 8

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "money cent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->a(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->c(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jz;->a()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->e(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fi;->d(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jz;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/jz;->b(J)V

    .line 144
    :goto_4c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->h(Lcom/baidu/bdgame/sdk/obf/fi;)V

    .line 145
    return-void

    .line 141
    :cond_52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->f(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jz;->a(J)V

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$2;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->g(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jz;->b(J)V

    goto :goto_4c
.end method
