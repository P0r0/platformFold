.class Lcom/duoku/platform/view/a$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a$1;->a:Lcom/duoku/platform/view/a;

    .line 39
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/duoku/platform/view/a$1;->a:Lcom/duoku/platform/view/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a;->c(Lcom/duoku/platform/view/a;)V

    .line 50
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoku/platform/view/a$1;->a:Lcom/duoku/platform/view/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a;->a(Lcom/duoku/platform/view/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object v0, p0, Lcom/duoku/platform/view/a$1;->a:Lcom/duoku/platform/view/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a;->b(Lcom/duoku/platform/view/a;)V

    .line 45
    return-void
.end method
