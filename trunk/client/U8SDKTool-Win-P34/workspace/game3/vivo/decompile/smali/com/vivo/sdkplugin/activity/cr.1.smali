.class final Lcom/vivo/sdkplugin/activity/cr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/PopupMenu$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/cp;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/cp;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Ljava/lang/Boolean;I)V
    .registers 9

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------onItemSelected()----------\r\n delete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3000index:\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->v(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/model/MAccountInfo;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->v(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/model/MAccountInfo;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getPwd()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->v(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/model/MAccountInfo;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getVisitor()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PLUGIN_LoginActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "------account"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pwd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " visitor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_116

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->delelteAccountInfo(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->N(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->p(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->p(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->q(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_d0
    if-nez p2, :cond_f1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAutoLogin(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->clearSpAccount(Ljava/lang/String;)V

    :cond_f1
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->e(Lcom/vivo/sdkplugin/activity/LoginActivity;Z)V

    :cond_fb
    :goto_fb
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->O(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->L(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/PopupMenu;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_116
    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cr;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fb
.end method
