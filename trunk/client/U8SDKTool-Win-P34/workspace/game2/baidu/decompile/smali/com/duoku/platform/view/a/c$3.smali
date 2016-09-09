.class Lcom/duoku/platform/view/a/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/c;
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
    iput-object p1, p0, Lcom/duoku/platform/view/a/c$3;->a:Lcom/duoku/platform/view/a/c;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 461
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    .line 462
    return-void
.end method
