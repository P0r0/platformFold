.class final Lcom/vivo/sdkplugin/activity/bO;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bO;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bO;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a:Lcom/vivo/sdkplugin/Utils/FooterListView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    const-string v1, "VivoGame.GameInfoMoreActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " postion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bO;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_78

    const-string v1, "VivoGame.GameInfoMoreActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " postion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/bO;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v3, v3, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bO;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;

    iget-object v0, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->id:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bO;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v2, v2, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->d:Landroid/content/Context;

    const-class v3, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "tab"

    const-string v2, "\u653b\u7565"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bO;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_78
    return-void
.end method
