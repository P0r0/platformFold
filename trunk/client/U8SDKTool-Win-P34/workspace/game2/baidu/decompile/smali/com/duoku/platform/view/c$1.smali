.class Lcom/duoku/platform/view/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/c;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/c;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/c$1;->a:Lcom/duoku/platform/view/c;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoku/platform/view/c$1;->a:Lcom/duoku/platform/view/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/duoku/platform/view/c;->h:Z

    .line 44
    return-void
.end method
