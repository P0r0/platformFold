.class public Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getData()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDrawableId(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->a:Landroid/app/Activity;

    const-string v1, "drawable"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/adapter/SubAccount;

    const-string v1, "SubUserEditAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "position: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgItem\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_cd

    new-instance v2, Lcom/vivo/sdkplugin/adapter/i;

    invoke-direct {v2}, Lcom/vivo/sdkplugin/adapter/i;-><init>()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "vivo_subaccount_edit_item_view"

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "subedititem_nickname"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/i;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "subedititem_edit_btn"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "subedititem_edit_icon"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/i;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "subedititem_foot_line"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/i;->c:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_a9
    if-nez p1, :cond_d4

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/i;->b:Landroid/widget/ImageView;

    const-string v3, "vivo_sub_icon_blue"

    invoke-virtual {p0, v3}, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->getDrawableId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_b6
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_e0

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/i;->c:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_c3
    iget-object v1, v1, Lcom/vivo/sdkplugin/adapter/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMnickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_cd
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/sdkplugin/adapter/i;

    goto :goto_a9

    :cond_d4
    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/i;->b:Landroid/widget/ImageView;

    const-string v3, "vivo_sub_icon_red"

    invoke-virtual {p0, v3}, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->getDrawableId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_b6

    :cond_e0
    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/i;->c:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c3
.end method

.method public getViewId(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->a:Landroid/app/Activity;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method
