.class Lcom/duoku/platform/view/a/c$9;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/c;->e(Lcom/duoku/platform/ui/entity/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/c;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/c;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/c$9;->a:Lcom/duoku/platform/view/a/c;

    .line 939
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    .prologue
    .line 945
    const/16 v0, 0x1e

    if-lt p2, v0, :cond_21

    iget-object v0, p0, Lcom/duoku/platform/view/a/c$9;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->w(Lcom/duoku/platform/view/a/c;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 947
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$9;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->x(Lcom/duoku/platform/view/a/c;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$9;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->j(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 950
    :cond_21
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 951
    return-void
.end method
