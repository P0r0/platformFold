.class public Lcom/bbk/payment/action/ChannelAdapter;
.super Landroid/widget/BaseAdapter;


# static fields
.field public static final TYPE_PAY_CHANNEL:I = 0x2

.field public static final TYPE_RECHARGE_CHANNEL:I = 0x1

.field public static final TYPE_SELECT_MORE_PAY_TYPE:I = 0x3


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;

.field private d:Landroid/content/res/Resources;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 6

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->e:I

    const-string v0, "ChannelAdapter"

    const-string v1, "ChannelAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/bbk/payment/action/ChannelAdapter;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    iput p3, p0, Lcom/bbk/payment/action/ChannelAdapter;->e:I

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->d:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/action/ChannelAdapter;I)V
    .registers 6

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/action/Channel;

    if-ne v1, p1, :cond_1d

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/bbk/payment/action/Channel;->setCheck(Z)V

    :goto_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1d
    invoke-virtual {v0, v2}, Lcom/bbk/payment/action/Channel;->setCheck(Z)V

    goto :goto_19
.end method


# virtual methods
.method public getCount()I
    .registers 4

    const-string v0, "ChannelAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mChannelList.size()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/action/ChannelAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectChannel()I
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_e
    return v0

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/action/Channel;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Channel;->isCheck()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/bbk/payment/action/Channel;->getId()I

    move-result v0

    goto :goto_e
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    const-string v0, "ChannelAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getView, position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_15d

    new-instance v1, Lcom/bbk/payment/action/g;

    invoke-direct {v1, p0, v7}, Lcom/bbk/payment/action/g;-><init>(Lcom/bbk/payment/action/ChannelAdapter;B)V

    iget v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->e:I

    if-eq v0, v11, :cond_29

    iget v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->e:I

    if-ne v0, v9, :cond_148

    :cond_29
    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->b:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v3, "bbk_channel_item"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v2, "icon"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbk/payment/action/g;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v2, "title"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/action/g;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v2, "activityType"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/action/g;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v2, "activityDesc"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/action/g;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v2, "isCheck"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/bbk/payment/action/g;->e:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v2, "content_layout"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/bbk/payment/action/g;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_9c
    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/action/Channel;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Channel;->getId()I

    move-result v3

    if-ne v3, v9, :cond_166

    iget-object v1, v2, Lcom/bbk/payment/action/g;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v5, "bbk_alipay"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->d:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v6, "bbk_alipay"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ca
    :goto_ca
    invoke-virtual {v0}, Lcom/bbk/payment/action/Channel;->getActivityType()I

    move-result v1

    if-ne v1, v9, :cond_239

    iget-object v1, v2, Lcom/bbk/payment/action/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v6, "bbk_caction_type_reduce"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Channel;->getActivityDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_fa
    const/16 v1, 0x3e8

    if-ne v3, v1, :cond_2a1

    iget-object v1, v2, Lcom/bbk/payment/action/g;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->d:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v6, "bbk_channel_bottom_item_height"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_11b
    iget-object v1, v2, Lcom/bbk/payment/action/g;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Channel;->isCheck()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v2, Lcom/bbk/payment/action/g;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/bbk/payment/action/f;

    invoke-direct {v1, p0, v3, p1}, Lcom/bbk/payment/action/f;-><init>(Lcom/bbk/payment/action/ChannelAdapter;II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->e:I

    if-ne v0, v10, :cond_147

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v9, :cond_2c0

    iget-object v0, v2, Lcom/bbk/payment/action/g;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v2, "bbk_dlg_bg"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_147
    :goto_147
    return-object p2

    :cond_148
    iget v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->e:I

    if-ne v0, v10, :cond_38

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->b:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v3, "bbk_pay_item"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_38

    :cond_15d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/action/g;

    move-object v2, v0

    goto/16 :goto_9c

    :cond_166
    if-ne v3, v10, :cond_18a

    iget-object v1, v2, Lcom/bbk/payment/action/g;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v5, "bbk_uppay"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->d:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v6, "bbk_uppay"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ca

    :cond_18a
    const/4 v1, 0x4

    if-ne v3, v1, :cond_1af

    iget-object v1, v2, Lcom/bbk/payment/action/g;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v5, "bbk_card"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->d:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v6, "bbk_card"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ca

    :cond_1af
    const/4 v1, 0x5

    if-ne v3, v1, :cond_1d4

    iget-object v1, v2, Lcom/bbk/payment/action/g;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v5, "bbk_game_card"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->d:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v6, "bbk_game_card"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ca

    :cond_1d4
    const/4 v1, 0x7

    if-ne v3, v1, :cond_1f9

    iget-object v1, v2, Lcom/bbk/payment/action/g;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v5, "bbk_weixin"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->d:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v6, "bbk_weixin"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ca

    :cond_1f9
    if-ne v3, v8, :cond_21d

    iget-object v1, v2, Lcom/bbk/payment/action/g;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v5, "bbk_tencent"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->d:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v6, "bbk_tencent"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ca

    :cond_21d
    const/16 v1, 0x3e8

    if-ne v3, v1, :cond_ca

    iget-object v1, v2, Lcom/bbk/payment/action/g;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->b:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ca

    :cond_239
    if-ne v1, v10, :cond_267

    iget-object v1, v2, Lcom/bbk/payment/action/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v6, "bbk_caction_type_red_package"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Channel;->getActivityDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fa

    :cond_267
    if-ne v1, v11, :cond_295

    iget-object v1, v2, Lcom/bbk/payment/action/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v6, "bbk_caction_type_action"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Channel;->getActivityDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fa

    :cond_295
    iget-object v1, v2, Lcom/bbk/payment/action/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_fa

    :cond_2a1
    iget-object v1, v2, Lcom/bbk/payment/action/g;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v2, Lcom/bbk/payment/action/g;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/bbk/payment/action/ChannelAdapter;->d:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v6, "bbk_channel_item_height"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_11b

    :cond_2c0
    if-nez p1, :cond_2d1

    iget-object v0, v2, Lcom/bbk/payment/action/g;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v2, "bbk_listitem_top_round"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_147

    :cond_2d1
    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_147

    iget-object v0, v2, Lcom/bbk/payment/action/g;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/bbk/payment/action/ChannelAdapter;->a:Landroid/content/Context;

    const-string v2, "bbk_listitem_bottom_round"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_147
.end method
