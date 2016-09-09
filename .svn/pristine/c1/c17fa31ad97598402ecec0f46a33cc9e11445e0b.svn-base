.class public Lcom/bbk/payment/action/ActionAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->d:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/bbk/payment/action/ActionAdapter;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/bbk/payment/action/ActionAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/action/ActionAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemHeightMap()Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v4, 0x0

    const-string v0, "ActionAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getView, position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_ef

    new-instance v1, Lcom/bbk/payment/action/c;

    invoke-direct {v1, p0, v4}, Lcom/bbk/payment/action/c;-><init>(Lcom/bbk/payment/action/ActionAdapter;B)V

    iget-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->b:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/bbk/payment/action/ActionAdapter;->a:Landroid/content/Context;

    const-string v3, "vivo_multiaction_item"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->a:Landroid/content/Context;

    const-string v2, "title"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/action/c;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->a:Landroid/content/Context;

    const-string v2, "date"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/action/c;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->a:Landroid/content/Context;

    const-string v2, "desc"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/action/c;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->a:Landroid/content/Context;

    const-string v2, "content_layout"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/bbk/payment/action/c;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->a:Landroid/content/Context;

    const-string v2, "divider"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbk/payment/action/c;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_7e
    iget-object v0, p0, Lcom/bbk/payment/action/ActionAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/action/Action;

    iget-object v2, v1, Lcom/bbk/payment/action/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Action;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/bbk/payment/action/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Action;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/bbk/payment/action/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Action;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/bbk/payment/action/ActionAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_f7

    iget-object v2, v1, Lcom/bbk/payment/action/c;->e:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_b2
    iget-object v2, v1, Lcom/bbk/payment/action/c;->d:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/bbk/payment/action/b;

    invoke-direct {v3, p0, v0}, Lcom/bbk/payment/action/b;-><init>(Lcom/bbk/payment/action/ActionAdapter;Lcom/bbk/payment/action/Action;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/bbk/payment/action/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/TextView;->measure(II)V

    iget-object v0, v1, Lcom/bbk/payment/action/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object v2, v1, Lcom/bbk/payment/action/c;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, v1, Lcom/bbk/payment/action/c;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, v1, Lcom/bbk/payment/action/c;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/TextView;->measure(II)V

    iget-object v1, v1, Lcom/bbk/payment/action/c;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bbk/payment/action/ActionAdapter;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_ef
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/action/c;

    move-object v1, v0

    goto :goto_7e

    :cond_f7
    iget-object v2, v1, Lcom/bbk/payment/action/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b2
.end method
