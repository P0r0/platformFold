.class final Lcom/vivo/sdkplugin/activity/cf;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private synthetic b:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cf;->b:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/vivo/sdkplugin/activity/cf;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    return-void

    :cond_f
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cf;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cf;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/cf;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/cf;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/activity/cg;

    if-nez p2, :cond_53

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cf;->b:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cf;->b:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout"

    const-string v4, "game_info_more_category_grid_item"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/vivo/sdkplugin/activity/ch;

    invoke-direct {v2}, Lcom/vivo/sdkplugin/activity/ch;-><init>()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cf;->b:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "category_item"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/activity/ch;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_44
    iget-object v2, v1, Lcom/vivo/sdkplugin/activity/ch;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vivo/sdkplugin/activity/cg;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/ch;->a:Landroid/widget/TextView;

    iget-boolean v0, v0, Lcom/vivo/sdkplugin/activity/cg;->a:Z

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-object p2

    :cond_53
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/sdkplugin/activity/ch;

    goto :goto_44
.end method
