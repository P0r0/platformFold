.class final Lcom/vivo/sdkplugin/activity/eL;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eL;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    const-string v0, "SubAccountEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------sub list:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eL;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eL;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eL;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;I)V

    :goto_37
    return-void

    :cond_38
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eL;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eL;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/adapter/SubAccount;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;Lcom/vivo/sdkplugin/adapter/SubAccount;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eL;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eL;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->c(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "position"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "subAccount"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eL;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->d(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)Lcom/vivo/sdkplugin/adapter/SubAccount;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eL;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_37
.end method
