.class final Lcom/vivo/sdkplugin/activity/eo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    const/4 v3, 0x4

    const-string v0, "SubAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------sub list:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;I)V

    :goto_38
    return-void

    :cond_39
    if-nez p3, :cond_96

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setIsDefaultAccount(Z)V

    :goto_45
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/adapter/SubAccount;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Lcom/vivo/sdkplugin/adapter/SubAccount;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->c(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Lcom/vivo/sdkplugin/adapter/SubAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->isFootView()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-nez v0, :cond_a1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    const-class v2, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "subCount"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->d(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->e(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_38

    :cond_96
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setIsDefaultAccount(Z)V

    goto :goto_45

    :cond_a1
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->f(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    goto :goto_38

    :cond_a7
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eo;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountActivity;I)V

    goto :goto_38
.end method
