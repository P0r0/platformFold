.class Lcom/duoku/platform/ui/util/DKDialogUtil$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

.field private final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Ljava/util/List;ILandroid/content/Context;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->a:Lcom/duoku/platform/ui/util/DKDialogUtil;

    iput-object p2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->b:Ljava/util/List;

    iput p3, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->c:I

    iput-object p4, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->d:Landroid/content/Context;

    .line 1428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 1490
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .prologue
    .line 1485
    return-void
.end method

.method public onPageSelected(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1433
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->a:Lcom/duoku/platform/ui/util/DKDialogUtil;

    iput p1, v0, Lcom/duoku/platform/ui/util/DKDialogUtil;->b:I

    .line 1434
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_10

    .line 1479
    return-void

    .line 1437
    :cond_10
    if-ne p1, v1, :cond_9f

    .line 1440
    iget v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->c:I

    if-ne v0, v4, :cond_45

    .line 1442
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v2, "43"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 1443
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->d:Landroid/content/Context;

    const-string v3, "bd_exit_banner"

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1464
    :cond_2a
    :goto_2a
    iget v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->c:I

    if-ne v0, v4, :cond_8b

    .line 1466
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->d:Landroid/content/Context;

    const-string v3, "dk_back_dot_selected_red"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1434
    :goto_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1447
    :cond_45
    if-nez p1, :cond_5c

    .line 1449
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v2, "45"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 1450
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->d:Landroid/content/Context;

    const-string v3, "bd_exit_game_page1"

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2a

    .line 1452
    :cond_5c
    if-ne p1, v4, :cond_73

    .line 1454
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v2, "46"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 1455
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->d:Landroid/content/Context;

    const-string v3, "bd_exit_game_page2"

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2a

    .line 1457
    :cond_73
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2a

    .line 1459
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v2, "47"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 1460
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->d:Landroid/content/Context;

    const-string v3, "bd_exit_game_page3"

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2a

    .line 1470
    :cond_8b
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->d:Landroid/content/Context;

    const-string v3, "dk_back_dot_selected"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_41

    .line 1475
    :cond_9f
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$9;->d:Landroid/content/Context;

    const-string v3, "dk_back_dot_normal"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_41
.end method
