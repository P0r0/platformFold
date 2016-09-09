.class final Lcom/unionpay/mobile/android/widgets/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/ai;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/ai;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/al;->a:Lcom/unionpay/mobile/android/widgets/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/al;->a:Lcom/unionpay/mobile/android/widgets/ai;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/al;->a:Lcom/unionpay/mobile/android/widgets/ai;

    iget-object v2, v2, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/al;->a:Lcom/unionpay/mobile/android/widgets/ai;

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/widgets/ai;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/al;->a:Lcom/unionpay/mobile/android/widgets/ai;

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/widgets/ai;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/unionpay/mobile/android/utils/o;->h:[Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/al;->a:Lcom/unionpay/mobile/android/widgets/ai;

    const-string v8, "type"

    invoke-static {v7, v0, v8}, Lcom/unionpay/mobile/android/widgets/ai;->a(Lcom/unionpay/mobile/android/widgets/ai;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/al;->a:Lcom/unionpay/mobile/android/widgets/ai;

    const-string v8, "label"

    invoke-static {v7, v0, p3, v8}, Lcom/unionpay/mobile/android/widgets/ai;->a(Lcom/unionpay/mobile/android/widgets/ai;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/unionpay/mobile/android/widgets/ai;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/al;->a:Lcom/unionpay/mobile/android/widgets/ai;

    invoke-static {v1, v0, p3}, Lcom/unionpay/mobile/android/widgets/ai;->a(Lcom/unionpay/mobile/android/widgets/ai;II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/al;->a:Lcom/unionpay/mobile/android/widgets/ai;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ai;->a(Lcom/unionpay/mobile/android/widgets/ai;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/al;->a:Lcom/unionpay/mobile/android/widgets/ai;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ai;->a(Lcom/unionpay/mobile/android/widgets/ai;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_68
    return-void
.end method
