.class final Lcom/vivo/sdkplugin/n;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/PopupMenu;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/PopupMenu;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/PopupMenu;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/n;-><init>(Lcom/vivo/sdkplugin/PopupMenu;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-static {v0}, Lcom/vivo/sdkplugin/PopupMenu;->c(Lcom/vivo/sdkplugin/PopupMenu;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-static {v0}, Lcom/vivo/sdkplugin/PopupMenu;->c(Lcom/vivo/sdkplugin/PopupMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    iget-object v0, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-static {v0}, Lcom/vivo/sdkplugin/PopupMenu;->c(Lcom/vivo/sdkplugin/PopupMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-static {v0}, Lcom/vivo/sdkplugin/PopupMenu;->c(Lcom/vivo/sdkplugin/PopupMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/16 v7, 0x8

    const/4 v6, 0x0

    if-nez p2, :cond_e1

    iget-object v0, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    iget-object v0, v0, Lcom/vivo/sdkplugin/PopupMenu;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-static {v1}, Lcom/vivo/sdkplugin/PopupMenu;->b(Lcom/vivo/sdkplugin/PopupMenu;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "vivo_menu_list_item"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/vivo/sdkplugin/o;

    invoke-direct {v1}, Lcom/vivo/sdkplugin/o;-><init>()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    const-string v2, "user_name"

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/PopupMenu;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/vivo/sdkplugin/o;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    const-string v2, "last_logon_time"

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/PopupMenu;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/vivo/sdkplugin/o;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    const-string v2, "account_layout"

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/PopupMenu;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/vivo/sdkplugin/o;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    const-string v2, "del_his_account_btn"

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/PopupMenu;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/vivo/sdkplugin/o;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    const-string v2, "his_user_line"

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/PopupMenu;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/vivo/sdkplugin/o;->e:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_72
    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/model/MAccountInfo;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getLoginTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e9

    iget-object v2, v1, Lcom/vivo/sdkplugin/o;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/vivo/sdkplugin/o;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/vivo/sdkplugin/Utils/VivoDateUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_94
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/n;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_104

    iget-object v2, v1, Lcom/vivo/sdkplugin/o;->e:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_a1
    iget-object v2, v1, Lcom/vivo/sdkplugin/o;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/o;->a:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/o;->b:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/o;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    const-string v3, "del_his_account_btn"

    invoke-virtual {v2, v3}, Lcom/vivo/sdkplugin/PopupMenu;->getIdByName(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/o;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    iget-object v2, v2, Lcom/vivo/sdkplugin/PopupMenu;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/vivo/sdkplugin/o;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/n;->a:Lcom/vivo/sdkplugin/PopupMenu;

    iget-object v1, v1, Lcom/vivo/sdkplugin/PopupMenu;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_e1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/o;

    move-object v1, v0

    goto :goto_72

    :cond_e9
    iget-object v2, v1, Lcom/vivo/sdkplugin/o;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getLoginTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v1, Lcom/vivo/sdkplugin/o;->d:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoDateUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_94

    :cond_104
    iget-object v2, v1, Lcom/vivo/sdkplugin/o;->e:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a1
.end method
