.class Lcom/duoku/platform/ui/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b;)V
    .registers 2

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/duoku/platform/ui/b$b;->a:Lcom/duoku/platform/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1022
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b$b;->a:Lcom/duoku/platform/ui/b;

    invoke-virtual {v1}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "dialog_button_left"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_4e

    .line 1026
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b$b;->a:Lcom/duoku/platform/ui/b;

    invoke-virtual {v1}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "dialog_button_right"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4e

    .line 1028
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1029
    if-eqz v0, :cond_36

    .line 1031
    iget-object v1, p0, Lcom/duoku/platform/ui/b$b;->a:Lcom/duoku/platform/ui/b;

    invoke-static {v1, v0}, Lcom/duoku/platform/ui/b;->a(Lcom/duoku/platform/ui/b;Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 1032
    iget-object v0, p0, Lcom/duoku/platform/ui/b$b;->a:Lcom/duoku/platform/ui/b;

    invoke-static {v0}, Lcom/duoku/platform/ui/b;->a(Lcom/duoku/platform/ui/b;)V

    .line 1034
    :cond_36
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "41"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 1035
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b$b;->a:Lcom/duoku/platform/ui/b;

    invoke-static {v1}, Lcom/duoku/platform/ui/b;->b(Lcom/duoku/platform/ui/b;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cp_download_delete"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1037
    :cond_4e
    iget-object v0, p0, Lcom/duoku/platform/ui/b$b;->a:Lcom/duoku/platform/ui/b;

    invoke-static {v0}, Lcom/duoku/platform/ui/b;->c(Lcom/duoku/platform/ui/b;)V

    .line 1038
    return-void
.end method
