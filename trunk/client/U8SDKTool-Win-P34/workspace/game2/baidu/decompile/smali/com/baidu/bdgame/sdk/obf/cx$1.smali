.class final Lcom/baidu/bdgame/sdk/obf/cx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cx;->b(I)V
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
        "Lcom/baidu/bdgame/sdk/obf/hw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cx;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cx;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cx$1;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hw;)V
    .registers 5

    .prologue
    .line 132
    if-nez p1, :cond_8

    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cx$1;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/cx;->a(Lcom/baidu/bdgame/sdk/obf/cx;Ljava/lang/Object;)V

    .line 138
    :goto_7
    return-void

    .line 135
    :cond_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cx$1;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cx;->a(Lcom/baidu/bdgame/sdk/obf/cx;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cx$1;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cx;->b(Lcom/baidu/bdgame/sdk/obf/cx;)V

    goto :goto_7
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 127
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/hw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cx$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hw;)V

    return-void
.end method
