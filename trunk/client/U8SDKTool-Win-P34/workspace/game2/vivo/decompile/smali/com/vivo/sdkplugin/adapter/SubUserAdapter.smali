.class public Lcom/vivo/sdkplugin/adapter/SubUserAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/ArrayList;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->c:Z

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

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

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->b:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDrawableId(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    const-string v1, "drawable"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSubCount()I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->e:I

    return v0
.end method

.method public getSubMax()I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->d:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/adapter/SubAccount;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->isFootView()Z

    move-result v3

    const-string v1, "SubUserAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "position: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isFootView: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " subCount\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u3000subMax\uff1a\u3000"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isEdit\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->c:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " msgItem\uff1a "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_16f

    new-instance v2, Lcom/vivo/sdkplugin/adapter/h;

    invoke-direct {v2}, Lcom/vivo/sdkplugin/adapter/h;-><init>()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "layout"

    const-string v6, "vivo_sub_edit_item_view"

    invoke-static {v4, v5, v6}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "id"

    const-string v5, "sub_account_icon"

    invoke-static {v1, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/h;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "id"

    const-string v5, "sub_account_id"

    invoke-static {v1, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/h;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "id"

    const-string v5, "loginmsg"

    invoke-static {v1, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/h;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "id"

    const-string v5, "sub_account_rename"

    invoke-static {v1, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "id"

    const-string v5, "arrow_image"

    invoke-static {v1, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/h;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "id"

    const-string v5, "user_layout"

    invoke-static {v1, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/h;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "id"

    const-string v5, "vivo_sub_foot_layout"

    invoke-static {v1, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/h;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "id"

    const-string v5, "vivo_foot_line"

    invoke-static {v1, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/h;->i:Landroid/view/View;

    const-string v1, "sub_account_level"

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/h;->d:Landroid/widget/TextView;

    const-string v1, "sub_account_role"

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vivo/sdkplugin/adapter/h;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_151
    if-eqz v3, :cond_176

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/h;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/h;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_15d
    const/4 v0, 0x1

    if-le p1, v0, :cond_213

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_213

    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/h;->i:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_16e
    return-object p2

    :cond_16f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/sdkplugin/adapter/h;

    goto :goto_151

    :cond_176
    if-nez p1, :cond_1e2

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/h;->e:Landroid/widget/ImageView;

    const-string v3, "vivo_sub_icon_blue"

    invoke-virtual {p0, v3}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->getDrawableId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_183
    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->isIslastlogin()Z

    move-result v2

    if-eqz v2, :cond_1ee

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/h;->f:Landroid/widget/ImageView;

    const-string v3, "vivo_sub_user_select"

    invoke-virtual {p0, v3}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->getDrawableId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_194
    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/h;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/h;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/h;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMnickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMlastlogintime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1fa

    iget-object v3, v1, Lcom/vivo/sdkplugin/adapter/h;->b:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/vivo/sdkplugin/Utils/VivoDateUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1c2
    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getSubrole()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_202

    iget-object v3, v1, Lcom/vivo/sdkplugin/adapter/h;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1d1
    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getSublevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20a

    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/h;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15d

    :cond_1e2
    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/h;->e:Landroid/widget/ImageView;

    const-string v3, "vivo_sub_icon_red"

    invoke-virtual {p0, v3}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->getDrawableId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_183

    :cond_1ee
    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/h;->f:Landroid/widget/ImageView;

    const-string v3, "vivo_sub_user_unselect"

    invoke-virtual {p0, v3}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->getDrawableId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_194

    :cond_1fa
    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/h;->b:Landroid/widget/TextView;

    const-string v3, "\u4ece\u672a\u4f7f\u7528"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c2

    :cond_202
    iget-object v2, v1, Lcom/vivo/sdkplugin/adapter/h;->c:Landroid/widget/TextView;

    const-string v3, "\u672a\u83b7\u53d6\u5230\u89d2\u8272\u4fe1\u606f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d1

    :cond_20a
    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/h;->d:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15d

    :cond_213
    iget-object v0, v1, Lcom/vivo/sdkplugin/adapter/h;->i:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_16e
.end method

.method public getViewId(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->a:Landroid/app/Activity;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public setEdit(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->c:Z

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSubCount(I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->e:I

    return-void
.end method

.method public setSubMax(I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->d:I

    return-void
.end method
