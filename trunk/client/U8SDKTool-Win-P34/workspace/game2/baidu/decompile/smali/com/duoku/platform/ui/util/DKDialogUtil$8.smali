.class Lcom/duoku/platform/ui/util/DKDialogUtil$8;
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

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:I

.field private final synthetic d:Landroid/app/Dialog;

.field private final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Ljava/util/List;ILandroid/app/Dialog;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->a:Lcom/duoku/platform/ui/util/DKDialogUtil;

    iput-object p2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->b:Ljava/util/List;

    iput p3, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->c:I

    iput-object p4, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->d:Landroid/app/Dialog;

    iput-object p5, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->e:Landroid/content/Context;

    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->b:Ljava/util/List;

    iget v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->b:Ljava/util/List;

    iget v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 1386
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1387
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "44"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 1388
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->e:Landroid/content/Context;

    const-string v2, "bd_exit_banner_click"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1390
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->e:Landroid/content/Context;

    const-class v2, Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1391
    const-string v0, "function_code"

    const/16 v2, 0x2711

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1392
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->b:Ljava/util/List;

    iget v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 1394
    const-string v2, "dk_operate_url"

    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->b:Ljava/util/List;

    iget v3, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->c:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1396
    :cond_7e
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;->e:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/duoku/platform/c/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 1399
    :cond_8c
    return-void
.end method
