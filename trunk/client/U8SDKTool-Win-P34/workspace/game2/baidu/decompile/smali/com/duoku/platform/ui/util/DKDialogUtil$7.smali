.class Lcom/duoku/platform/ui/util/DKDialogUtil$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;Ljava/util/List;ILcom/duoku/platform/DkExitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/util/DKDialogUtil;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$7;->a:Lcom/duoku/platform/ui/util/DKDialogUtil;

    iput-object p2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$7;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$7;->c:Ljava/util/List;

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 1325
    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$7;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$7;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1326
    return-void
.end method
