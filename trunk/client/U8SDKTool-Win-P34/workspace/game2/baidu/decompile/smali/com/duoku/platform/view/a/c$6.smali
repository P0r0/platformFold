.class Lcom/duoku/platform/view/a/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/c;->a(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/duoku/platform/view/a/c$6;->a:Lcom/duoku/platform/view/a/c;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$6;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->h(Lcom/duoku/platform/view/a/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$6;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->j(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$6;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->a(Lcom/duoku/platform/view/a/c;)V

    .line 430
    return-void
.end method
