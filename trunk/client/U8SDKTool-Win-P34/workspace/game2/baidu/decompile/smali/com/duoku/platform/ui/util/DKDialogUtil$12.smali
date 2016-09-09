.class Lcom/duoku/platform/ui/util/DKDialogUtil$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Ljava/lang/String;Lcom/duoku/platform/view/user/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/util/DKDialogUtil;

.field private final synthetic b:Lcom/duoku/platform/view/user/a;

.field private final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Lcom/duoku/platform/view/user/a;Landroid/app/Dialog;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$12;->a:Lcom/duoku/platform/ui/util/DKDialogUtil;

    iput-object p2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$12;->b:Lcom/duoku/platform/view/user/a;

    iput-object p3, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$12;->c:Landroid/app/Dialog;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 675
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$12;->b:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->a:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 676
    new-instance v0, Lcom/duoku/platform/view/user/f;

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$12;->b:Lcom/duoku/platform/view/user/a;

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$12;->a:Lcom/duoku/platform/ui/util/DKDialogUtil;

    invoke-static {v2}, Lcom/duoku/platform/ui/util/DKDialogUtil;->b(Lcom/duoku/platform/ui/util/DKDialogUtil;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/view/user/f;-><init>(Lcom/duoku/platform/view/user/a;Landroid/content/Context;I)V

    .line 677
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$12;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 678
    return-void
.end method
