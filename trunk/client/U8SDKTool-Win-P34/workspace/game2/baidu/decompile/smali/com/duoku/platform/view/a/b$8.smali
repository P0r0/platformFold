.class Lcom/duoku/platform/view/a/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/b;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/b$8;->a:Lcom/duoku/platform/view/a/b;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/duoku/platform/view/a/b$8;->a:Lcom/duoku/platform/view/a/b;

    invoke-static {v0}, Lcom/duoku/platform/view/a/b;->q(Lcom/duoku/platform/view/a/b;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/duoku/platform/view/a/b$8;->a:Lcom/duoku/platform/view/a/b;

    invoke-static {v0}, Lcom/duoku/platform/view/a/b;->r(Lcom/duoku/platform/view/a/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/duoku/platform/view/a/b$8;->a:Lcom/duoku/platform/view/a/b;

    invoke-static {v0}, Lcom/duoku/platform/view/a/b;->s(Lcom/duoku/platform/view/a/b;)V

    .line 291
    return-void
.end method
