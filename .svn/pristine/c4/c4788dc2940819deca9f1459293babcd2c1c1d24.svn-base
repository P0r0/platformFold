.class public Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field public mList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "HjStrategyListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HjStrategyList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->a:Landroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .registers 4

    const-string v0, "HjStrategyListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---getCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    const-string v0, "HjStrategyListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----getView()------- position:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_65

    new-instance v1, Lcom/vivo/sdkplugin/adapter/d;

    invoke-direct {v1, v6}, Lcom/vivo/sdkplugin/adapter/d;-><init>(B)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->b:Landroid/view/LayoutInflater;

    const-string v2, "data_item_layout"

    iget-object v3, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->a:Landroid/content/Context;

    const-string v4, "layout"

    invoke-static {v3, v4, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string v0, "huanju_item_title"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/adapter/d;->a(Lcom/vivo/sdkplugin/adapter/d;Landroid/widget/TextView;)V

    const-string v0, "huanju_item_time"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/adapter/d;->b(Lcom/vivo/sdkplugin/adapter/d;Landroid/widget/TextView;)V

    const-string v0, "huanju_item_number"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/adapter/d;->c(Lcom/vivo/sdkplugin/adapter/d;Landroid/widget/TextView;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_65
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/adapter/d;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;

    const-string v2, "HjStrategyListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HjInfoListItem\uff1a "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item.source\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " holder\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vivo/sdkplugin/adapter/d;->a(Lcom/vivo/sdkplugin/adapter/d;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v2, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->ctime:J

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/Utility;->getSimpleDateString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/vivo/sdkplugin/adapter/d;->b(Lcom/vivo/sdkplugin/adapter/d;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v2, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->vcnt:J

    const-wide/16 v4, 0x258

    cmp-long v1, v2, v4

    if-gez v1, :cond_da

    const-string v1, "500+"

    :goto_bd
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d9

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d9

    invoke-static {v0}, Lcom/vivo/sdkplugin/adapter/d;->c(Lcom/vivo/sdkplugin/adapter/d;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/vivo/sdkplugin/adapter/d;->c(Lcom/vivo/sdkplugin/adapter/d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d9
    return-object p2

    :cond_da
    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "+"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_bd
.end method

.method public setData(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->mList:Ljava/util/List;

    return-void
.end method
