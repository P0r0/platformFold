.class public abstract Lcom/duoku/platform/ui/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<TT;>;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;"
    }
.end annotation


# instance fields
.field a:Z

.field protected b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duoku/platform/download/apapter/AbstractListAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/ui/a;->a:Z

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<TT;>;>;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/a;->a(Z)V

    .line 102
    iget-object v0, p0, Lcom/duoku/platform/ui/a;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0, p2}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->setData(Ljava/util/List;)V

    .line 104
    return-void
.end method

.method protected a(Z)V
    .registers 2

    .prologue
    .line 117
    return-void
.end method

.method public a()Z
    .registers 4

    .prologue
    .line 23
    const/4 v0, 0x1

    .line 25
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 27
    const/4 v0, 0x0

    .line 28
    const-string v1, "\u8bf7\u68c0\u67e5\u60a8\u7684SD\u5361"

    invoke-static {v1}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 31
    :cond_13
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 88
    return-void
.end method

.method public onItemButtonClick(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 129
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 71
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    check-cast p1, Landroid/support/v4/content/Loader;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/duoku/platform/ui/a;->a(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/a;->a(Z)V

    .line 112
    iget-object v0, p0, Lcom/duoku/platform/ui/a;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->setData(Ljava/util/List;)V

    .line 113
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 66
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method
