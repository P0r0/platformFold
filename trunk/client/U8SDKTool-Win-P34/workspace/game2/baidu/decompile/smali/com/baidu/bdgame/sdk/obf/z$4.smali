.class final Lcom/baidu/bdgame/sdk/obf/z$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/z;->c(Lcom/baidu/bdgame/sdk/obf/ax;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ax;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/z;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/z;Lcom/baidu/bdgame/sdk/obf/ax;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 215
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/z$4;->c:Lcom/baidu/bdgame/sdk/obf/z;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/z$4;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/z$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 215
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/z$4;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 7

    .prologue
    .line 219
    if-nez p1, :cond_10

    .line 220
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/z$4;->c:Lcom/baidu/bdgame/sdk/obf/z;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/z$4;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/z$4;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/z;->a(Lcom/baidu/bdgame/sdk/obf/z;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_f
    return-void

    .line 222
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/z$4;->c:Lcom/baidu/bdgame/sdk/obf/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/z;->a(Lcom/baidu/bdgame/sdk/obf/z;Z)V

    goto :goto_f
.end method
