.class final Lcom/unionpay/mobile/android/widgets/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/ag;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ag;->a(Lcom/unionpay/mobile/android/widgets/ag;)Lcom/unionpay/mobile/android/widgets/ag$a;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    iget-object v1, v1, Lcom/unionpay/mobile/android/widgets/ag;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/widgets/ag;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_change_phoneNO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/widgets/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ag;->a(Lcom/unionpay/mobile/android/widgets/ag;)Lcom/unionpay/mobile/android/widgets/ag$a;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    invoke-static {v1}, Lcom/unionpay/mobile/android/widgets/ag;->b(Lcom/unionpay/mobile/android/widgets/ag;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/widgets/ag$a;->e(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method
