.class public Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/ArrayList;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->b:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->c:Z

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
    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/adapter/SubAccount;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->b:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/adapter/SubAccount;

    if-nez p2, :cond_b1

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "layout"

    const-string v4, "vivo_subaccount_listview_item"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/vivo/sdkplugin/adapter/c;

    invoke-direct {v2}, Lcom/vivo/sdkplugin/adapter/c;-><init>()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "add_sub_account_id"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "sub_account_id"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/c;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "loginmsg"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "sub_account_rename"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "arrow_image"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/c;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "vivo_listview_item_dotted_line_image"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/c;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_b1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/sdkplugin/adapter/c;

    const-string v2, "ViewHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ViewHolder"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "msgItem.getmShowAddButton()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getmShowAddButton()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "position"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getCount()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->c:Z

    if-eqz v2, :cond_124

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getmShowAddButton()Z

    move-result v2

    if-nez v2, :cond_124

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/c;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6e38\u620fID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMnickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMlastlogintime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_123
    return-object p2

    :cond_124
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->c:Z

    if-eqz v2, :cond_162

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getmShowAddButton()Z

    move-result v2

    if-eqz v2, :cond_162

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/c;->b:Landroid/widget/TextView;

    const-string v2, "\u65b0\u5efa\u6e38\u620fID"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/c;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "vivo_account_addsubaccount_btn"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_123

    :cond_162
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->c:Z

    if-nez v2, :cond_1a0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getmShowAddButton()Z

    move-result v2

    if-nez v2, :cond_1a0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1a0

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/c;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6e38\u620fID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMnickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMlastlogintime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_123

    :cond_1a0
    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/c;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6e38\u620fID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMnickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMlastlogintime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_123
.end method

.method public setObject(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/HjStrategyAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method
