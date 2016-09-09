.class Lcom/duoku/platform/view/StickyListHeadersListView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/StickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/StickyListHeadersListView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/StickyListHeadersListView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/StickyListHeadersListView$3;->a:Lcom/duoku/platform/view/StickyListHeadersListView;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    .prologue
    .line 90
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView$3;->a:Lcom/duoku/platform/view/StickyListHeadersListView;

    invoke-static {v0}, Lcom/duoku/platform/view/StickyListHeadersListView;->c(Lcom/duoku/platform/view/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 91
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView$3;->a:Lcom/duoku/platform/view/StickyListHeadersListView;

    invoke-static {v0}, Lcom/duoku/platform/view/StickyListHeadersListView;->c(Lcom/duoku/platform/view/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 94
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1c

    .line 95
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView$3;->a:Lcom/duoku/platform/view/StickyListHeadersListView;

    invoke-static {v0, p2}, Lcom/duoku/platform/view/StickyListHeadersListView;->a(Lcom/duoku/platform/view/StickyListHeadersListView;I)V

    .line 97
    :cond_1c
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView$3;->a:Lcom/duoku/platform/view/StickyListHeadersListView;

    invoke-static {v0}, Lcom/duoku/platform/view/StickyListHeadersListView;->c(Lcom/duoku/platform/view/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 82
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView$3;->a:Lcom/duoku/platform/view/StickyListHeadersListView;

    invoke-static {v0}, Lcom/duoku/platform/view/StickyListHeadersListView;->c(Lcom/duoku/platform/view/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 85
    :cond_11
    return-void
.end method
