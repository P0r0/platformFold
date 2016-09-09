.class public Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;

.field private synthetic c:Lcom/bbk/payment/PaymentRechargeActivity;


# direct methods
.method public constructor <init>(Lcom/bbk/payment/PaymentRechargeActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->c:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5

    const-string v0, "PaymentRechargeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getItem="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->b:Ljava/util/ArrayList;

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

    const/16 v6, 0x8

    const/4 v2, 0x0

    if-nez p2, :cond_16d

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->c:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v1}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "bbk_select_item"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/bbk/payment/aj;

    invoke-direct {v1, p0}, Lcom/bbk/payment/aj;-><init>(Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->c:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "ItemText"

    invoke-static {v0, v3}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/aj;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->c:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "ItemImage"

    invoke-static {v0, v3}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbk/payment/aj;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->c:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "mChannelType"

    invoke-static {v0, v3}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/aj;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->c:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "mChannelDesc"

    invoke-static {v0, v3}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/aj;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->c:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "mCTypeBackground"

    invoke-static {v0, v3}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbk/payment/aj;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->c:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "BackgroundId"

    invoke-static {v0, v3}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/bbk/payment/aj;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/aj;

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "ItemImage"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1be

    iget-object v3, v0, Lcom/bbk/payment/aj;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "ItemText"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/bbk/payment/aj;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/bbk/payment/aj;->c:Landroid/widget/ImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "ItemImage"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "type"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d8

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_115
    if-lez v1, :cond_1ac

    iget-object v3, v0, Lcom/bbk/payment/aj;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v0, Lcom/bbk/payment/aj;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16e

    iget-object v1, v0, Lcom/bbk/payment/aj;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->c:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_caction_type_reduce"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13f
    :goto_13f
    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "desc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_162

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_162

    iget-object v2, v0, Lcom/bbk/payment/aj;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_162
    :goto_162
    iget-object v0, v0, Lcom/bbk/payment/aj;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->c:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-static {v1, p1}, Lcom/bbk/payment/PaymentRechargeActivity;->a(Lcom/bbk/payment/PaymentRechargeActivity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_16d
    return-object p2

    :cond_16e
    const/4 v2, 0x2

    if-ne v1, v2, :cond_18d

    iget-object v1, v0, Lcom/bbk/payment/aj;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->c:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_caction_type_red_package"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13f

    :cond_18d
    const/4 v2, 0x3

    if-ne v1, v2, :cond_13f

    iget-object v1, v0, Lcom/bbk/payment/aj;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/PaymentRechargeActivity$InfoAdapter;->c:Lcom/bbk/payment/PaymentRechargeActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/PaymentRechargeActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_caction_type_action"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13f

    :cond_1ac
    iget-object v1, v0, Lcom/bbk/payment/aj;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbk/payment/aj;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbk/payment/aj;->e:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_162

    :cond_1be
    iget-object v1, v0, Lcom/bbk/payment/aj;->c:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbk/payment/aj;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v1, v0, Lcom/bbk/payment/aj;->b:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/bbk/payment/aj;->e:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_162

    :cond_1d8
    move v1, v2

    goto/16 :goto_115
.end method

.method public notifyDataSetChanged()V
    .registers 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
