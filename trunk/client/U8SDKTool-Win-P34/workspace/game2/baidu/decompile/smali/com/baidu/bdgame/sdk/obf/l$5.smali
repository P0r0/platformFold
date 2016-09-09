.class final Lcom/baidu/bdgame/sdk/obf/l$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
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
        "Lcom/baidu/bdgame/sdk/obf/il;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/o;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/l;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/l;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 3

    .prologue
    .line 447
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/l$5;->b:Lcom/baidu/bdgame/sdk/obf/l;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/l$5;->a:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/il;)V
    .registers 6

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 453
    if-eqz p3, :cond_7

    .line 454
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/il;->e()Lcom/baidu/platformsdk/OrderStatus;

    move-result-object v0

    .line 456
    :cond_7
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/l$5;->a:Lcom/baidu/bdgame/sdk/obf/o;

    if-eqz v1, :cond_10

    .line 457
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/l$5;->a:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-interface {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 459
    :cond_10
    return-void
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 447
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/il;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/l$5;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/il;)V

    return-void
.end method
