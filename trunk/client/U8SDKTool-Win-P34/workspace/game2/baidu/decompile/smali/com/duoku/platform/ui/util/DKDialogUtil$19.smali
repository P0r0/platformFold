.class Lcom/duoku/platform/ui/util/DKDialogUtil$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/app/Activity;Ljava/util/List;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/util/DKDialogUtil;

.field private final synthetic b:Landroid/widget/ListView;

.field private final synthetic c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/widget/ListView;Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$19;->a:Lcom/duoku/platform/ui/util/DKDialogUtil;

    iput-object p2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$19;->b:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$19;->c:Landroid/widget/TextView;

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 957
    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$19;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$19;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 958
    return-void
.end method
