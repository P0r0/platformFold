.class Lcom/duoku/platform/floatview/DKFloatWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/floatview/DKFloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWindow;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 265
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->b(Lcom/duoku/platform/floatview/DKFloatWindow;)Lcom/duoku/platform/floatview/DKFloatWindow$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 266
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->c(Lcom/duoku/platform/floatview/DKFloatWindow;)Lcom/duoku/platform/view/common/b;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->c(Lcom/duoku/platform/floatview/DKFloatWindow;)Lcom/duoku/platform/view/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 268
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->c(Lcom/duoku/platform/floatview/DKFloatWindow;)Lcom/duoku/platform/view/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/common/b;->b()V

    .line 269
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;Lcom/duoku/platform/view/common/b;)V

    .line 270
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Z)V

    .line 271
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "71"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cp_bigbubble_close_click"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    :cond_4e
    return-void
.end method
