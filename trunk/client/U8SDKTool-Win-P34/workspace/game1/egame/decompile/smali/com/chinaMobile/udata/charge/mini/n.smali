.class final Lcom/chinaMobile/udata/charge/mini/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/chinaMobile/udata/charge/mini/a;


# direct methods
.method constructor <init>(Lcom/chinaMobile/udata/charge/mini/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/chinaMobile/udata/charge/mini/n;->b:Lcom/chinaMobile/udata/charge/mini/a;

    iput-object p2, p0, Lcom/chinaMobile/udata/charge/mini/n;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/n;->b:Lcom/chinaMobile/udata/charge/mini/a;

    iget-object v0, v0, Lcom/chinaMobile/udata/charge/mini/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/n;->b:Lcom/chinaMobile/udata/charge/mini/a;

    iget-object v0, v0, Lcom/chinaMobile/udata/charge/mini/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_1e
    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/n;->a:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u53cd\u9988\u4fe1\u606f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/n;->b:Lcom/chinaMobile/udata/charge/mini/a;

    iget-object v0, v0, Lcom/chinaMobile/udata/charge/mini/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/n;->b:Lcom/chinaMobile/udata/charge/mini/a;

    iget-object v0, v0, Lcom/chinaMobile/udata/charge/mini/a;->b:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/n;->b:Lcom/chinaMobile/udata/charge/mini/a;

    iget-object v0, v0, Lcom/chinaMobile/udata/charge/mini/a;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_59

    const-string v3, "\u5e74\u9f84"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    :cond_59
    const-string v1, ""

    :cond_5b
    if-eqz v0, :cond_65

    const-string v3, "\u6027\u522b"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    :cond_65
    const-string v0, ""

    :cond_67
    iget-object v3, p0, Lcom/chinaMobile/udata/charge/mini/n;->a:Landroid/content/Context;

    invoke-static {v3, v1, v0, v2}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->sendFeedbackMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method
