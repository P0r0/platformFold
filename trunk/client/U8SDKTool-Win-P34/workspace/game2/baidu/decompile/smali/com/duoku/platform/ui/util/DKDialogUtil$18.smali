.class Lcom/duoku/platform/ui/util/DKDialogUtil$18;
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

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$18;->a:Lcom/duoku/platform/ui/util/DKDialogUtil;

    iput-object p2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$18;->b:Landroid/app/Dialog;

    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 947
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$18;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 948
    return-void
.end method
