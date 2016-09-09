.class final Lcom/vivo/sdkplugin/activity/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/av;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 7

    if-nez p2, :cond_41

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/av;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/av;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->k(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/av;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/av;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/av;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;ZLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/av;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/av;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->l(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/av;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->k(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;ILandroid/widget/EditText;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/av;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    :cond_41
    return-void
.end method
