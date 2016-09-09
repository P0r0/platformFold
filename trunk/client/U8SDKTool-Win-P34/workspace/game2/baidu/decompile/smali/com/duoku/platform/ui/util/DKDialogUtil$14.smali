.class Lcom/duoku/platform/ui/util/DKDialogUtil$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;Lcom/duoku/platform/DkExitListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/util/DKDialogUtil;

.field private final synthetic b:Landroid/app/Dialog;

.field private final synthetic c:Lcom/duoku/platform/DkExitListener;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;Lcom/duoku/platform/DkExitListener;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$14;->a:Lcom/duoku/platform/ui/util/DKDialogUtil;

    iput-object p2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$14;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$14;->c:Lcom/duoku/platform/DkExitListener;

    .line 1564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$14;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1571
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$14;->c:Lcom/duoku/platform/DkExitListener;

    invoke-interface {v0}, Lcom/duoku/platform/DkExitListener;->exitGame()V

    .line 1572
    return-void
.end method
