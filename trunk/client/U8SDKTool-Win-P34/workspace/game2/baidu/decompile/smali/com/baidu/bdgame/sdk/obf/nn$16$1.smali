.class final Lcom/baidu/bdgame/sdk/obf/nn$16$1;
.super Lcom/baidu/bdgame/sdk/obf/bx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/nn$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/nn$16;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/nn$16;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 278
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nn$16$1;->a:Lcom/baidu/bdgame/sdk/obf/nn$16;

    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/bx;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$16$1;->a:Lcom/baidu/bdgame/sdk/obf/nn$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/nn$16;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->k(Lcom/baidu/bdgame/sdk/obf/nn;)V

    .line 290
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$16$1;->a:Lcom/baidu/bdgame/sdk/obf/nn$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/nn$16;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->m()V

    .line 291
    return-void
.end method

.method protected a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 282
    invoke-static {p1, p3}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn$16$1;->a:Lcom/baidu/bdgame/sdk/obf/nn$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/nn$16;->a:Lcom/baidu/bdgame/sdk/obf/nn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nn;->m()V

    .line 284
    return-void
.end method