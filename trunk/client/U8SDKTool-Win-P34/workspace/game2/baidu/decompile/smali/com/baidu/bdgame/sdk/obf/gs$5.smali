.class final Lcom/baidu/bdgame/sdk/obf/gs$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gs;->b(Lcom/baidu/bdgame/sdk/obf/jg;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/jg;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/gs;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gs;Lcom/baidu/bdgame/sdk/obf/jg;)V
    .registers 3

    .prologue
    .line 353
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gs$5;->b:Lcom/baidu/bdgame/sdk/obf/gs;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/gs$5;->a:Lcom/baidu/bdgame/sdk/obf/jg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 353
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gs$5;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 6

    .prologue
    .line 358
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gs$5;->b:Lcom/baidu/bdgame/sdk/obf/gs;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gs;->i(Lcom/baidu/bdgame/sdk/obf/gs;)Lcom/baidu/bdgame/sdk/obf/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gv;->O()V

    .line 359
    if-nez p1, :cond_1c

    .line 360
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gs$5;->b:Lcom/baidu/bdgame/sdk/obf/gs;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gs$5;->a:Lcom/baidu/bdgame/sdk/obf/jg;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gs;->b(Lcom/baidu/bdgame/sdk/obf/gs;Lcom/baidu/bdgame/sdk/obf/jg;)V

    .line 361
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gs$5;->b:Lcom/baidu/bdgame/sdk/obf/gs;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gs;->i(Lcom/baidu/bdgame/sdk/obf/gs;)Lcom/baidu/bdgame/sdk/obf/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gv;->o()V

    .line 365
    :goto_1b
    return-void

    .line 363
    :cond_1c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gs$5;->b:Lcom/baidu/bdgame/sdk/obf/gs;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gs;->i(Lcom/baidu/bdgame/sdk/obf/gs;)Lcom/baidu/bdgame/sdk/obf/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gv;->f()V

    goto :goto_1b
.end method
