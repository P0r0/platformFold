.class Lcom/duoku/platform/floatview/DKFloatWebView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/floatview/DKFloatWebView;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWebView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$4;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 540
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    .line 541
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$4;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->r(Landroid/content/Context;)Z

    move-result v0

    .line 542
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWebView$4;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    :goto_2a
    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;Z)V

    .line 543
    return-void

    .line 542
    :cond_2e
    const/4 v0, 0x1

    goto :goto_2a
.end method
