.class final Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;


# direct methods
.method constructor <init>(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$3;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 2

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$3;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->b(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnHideListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$3;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->b(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnHideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnHideListener;->onHide()V

    :cond_11
    return-void
.end method
