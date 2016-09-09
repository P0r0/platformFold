.class public Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getData()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public getDrawableId(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    const-string v1, "drawable"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    const-string v1, "VivoFootRefreshAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "position: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_10f

    new-instance v2, Lcom/bbk/payment/dealRecord/h;

    invoke-direct {v2}, Lcom/bbk/payment/dealRecord/h;-><init>()V

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "vivo_deal_record_item_view"

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "game_name"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/bbk/payment/dealRecord/h;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "deal_time"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/bbk/payment/dealRecord/h;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "game_deal_money"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/bbk/payment/dealRecord/h;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "game_deal_img"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/bbk/payment/dealRecord/h;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_b0
    iget-object v2, v1, Lcom/bbk/payment/dealRecord/h;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/bbk/payment/dealRecord/h;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    iget-object v2, v1, Lcom/bbk/payment/dealRecord/h;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/bbk/payment/dealRecord/h;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    const-string v4, "color"

    const-string v5, "deal_pay_type"

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/bbk/payment/dealRecord/h;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    const-string v2, "drawable"

    const-string v3, "vivo_deal_item_right_blue_img"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_10e
    return-object p2

    :cond_10f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbk/payment/dealRecord/h;

    goto :goto_b0

    :cond_116
    iget-object v2, v1, Lcom/bbk/payment/dealRecord/h;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/bbk/payment/dealRecord/h;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    const-string v4, "color"

    const-string v5, "deal_recharge_type"

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/bbk/payment/dealRecord/h;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    const-string v2, "drawable"

    const-string v3, "vivo_deal_item_right_red_img"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_10e
.end method

.method public getViewId(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->a:Landroid/app/Activity;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->notifyDataSetChanged()V

    return-void
.end method
