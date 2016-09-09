.class final Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;


# direct methods
.method constructor <init>(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$4;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$4;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->c(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$4;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->d(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/os/Vibrator;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_68

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$4;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->hide()V

    :cond_25
    :goto_25
    return-void

    :cond_26
    const/16 v1, 0x14

    if-ne v0, v1, :cond_52

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$4;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->e(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v0

    if-lez v0, :cond_3a

    invoke-static {}, Lcom/unionpay/tsmservice/utils/IUPJniInterface;->dOPD()V

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$4;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->f(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$4;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->h(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnEditorListener;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$4;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->h(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnEditorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$4;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->e(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnEditorListener;->onEditorChanged(I)V

    goto :goto_25

    :cond_52
    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$4;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->e(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_25

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/tsmservice/utils/IUPJniInterface;->aPD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$4;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->g(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    goto :goto_3a

    :array_68
    .array-data 8
        0x0
        0x64
    .end array-data
.end method
