.class final Lcom/bbk/payment/C;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/JCardActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/JCardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "JCardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curSee="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v2}, Lcom/bbk/payment/JCardActivity;->f(Lcom/bbk/payment/JCardActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v0}, Lcom/bbk/payment/JCardActivity;->e(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JCardActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "passwd="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v1}, Lcom/bbk/payment/JCardActivity;->f(Lcom/bbk/payment/JCardActivity;)Z

    move-result v1

    if-nez v1, :cond_8b

    iget-object v1, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v1}, Lcom/bbk/payment/JCardActivity;->e(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v1}, Lcom/bbk/payment/JCardActivity;->e(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v1}, Lcom/bbk/payment/JCardActivity;->e(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v0}, Lcom/bbk/payment/JCardActivity;->g(Lcom/bbk/payment/JCardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v1}, Lcom/bbk/payment/JCardActivity;->h(Lcom/bbk/payment/JCardActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bbk_btn_password_eye_nosee"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_7c
    iget-object v1, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    iget-object v0, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v0}, Lcom/bbk/payment/JCardActivity;->f(Lcom/bbk/payment/JCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/4 v0, 0x0

    :goto_87
    invoke-static {v1, v0}, Lcom/bbk/payment/JCardActivity;->a(Lcom/bbk/payment/JCardActivity;Z)V

    return-void

    :cond_8b
    iget-object v1, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v1}, Lcom/bbk/payment/JCardActivity;->e(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v1}, Lcom/bbk/payment/JCardActivity;->e(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v1}, Lcom/bbk/payment/JCardActivity;->e(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v0}, Lcom/bbk/payment/JCardActivity;->g(Lcom/bbk/payment/JCardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/C;->a:Lcom/bbk/payment/JCardActivity;

    invoke-static {v1}, Lcom/bbk/payment/JCardActivity;->h(Lcom/bbk/payment/JCardActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bbk_btn_password_eye_see"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7c

    :cond_c4
    const/4 v0, 0x1

    goto :goto_87
.end method
