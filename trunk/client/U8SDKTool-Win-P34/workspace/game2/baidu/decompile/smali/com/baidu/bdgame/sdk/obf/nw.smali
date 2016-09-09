.class public Lcom/baidu/bdgame/sdk/obf/nw;
.super Lcom/duoku/platform/view/a;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field final b:Landroid/widget/SectionIndexer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/duoku/platform/view/i;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/view/a;-><init>(Landroid/content/Context;Lcom/duoku/platform/view/i;)V

    .line 19
    check-cast p2, Landroid/widget/SectionIndexer;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/nw;->b:Landroid/widget/SectionIndexer;

    .line 20
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nw;->b:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nw;->b:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nw;->b:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
