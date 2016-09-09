.class public Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->b:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->c:Z

    return-void
.end method


# virtual methods
.method public addMsgItem(Ljava/util/ArrayList;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_9

    return-void

    :cond_9
    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getObject()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;

    if-nez p2, :cond_63

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->a:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "greet_item"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/vivo/sdkplugin/adapter/a;

    invoke-direct {v2}, Lcom/vivo/sdkplugin/adapter/a;-><init>()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "action_text"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "action_check"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/a;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "action_image"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_63
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/sdkplugin/adapter/a;

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->c:Z

    if-eqz v2, :cond_97

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/a;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->a:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "floatview_item_36"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_96
    :goto_96
    return-object p2

    :cond_97
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->c:Z

    if-eqz v2, :cond_c5

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1002"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/a;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->a:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "floatview_item_34"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_96

    :cond_c5
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->c:Z

    if-eqz v2, :cond_f3

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1003"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/a;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->a:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "floatview_item28"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_96

    :cond_f3
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->c:Z

    if-eqz v2, :cond_122

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1004"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_122

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/a;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->a:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "floatview_item_26"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_96

    :cond_122
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->c:Z

    if-eqz v2, :cond_96

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1005"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->getname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/a;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->a:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "floatview_item_24"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_96
.end method

.method public setObject(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method
