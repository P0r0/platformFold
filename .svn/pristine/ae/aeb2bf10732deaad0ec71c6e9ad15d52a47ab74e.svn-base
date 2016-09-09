.class Lcom/duoku/platform/ui/util/DKDialogUtil$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;Ljava/util/List;ILcom/duoku/platform/DkExitListener;)V
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
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$6;->a:Lcom/duoku/platform/ui/util/DKDialogUtil;

    iput-object p2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$6;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$6;->c:Lcom/duoku/platform/DkExitListener;

    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$6;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1297
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$6;->c:Lcom/duoku/platform/DkExitListener;

    invoke-interface {v0}, Lcom/duoku/platform/DkExitListener;->exitGame()V

    .line 1298
    return-void
.end method
