.class public Lcom/bbk/payment/TicketActivity$InfoAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;

.field private synthetic c:Lcom/bbk/payment/TicketActivity;


# direct methods
.method public constructor <init>(Lcom/bbk/payment/TicketActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 7

    iput-object p1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    const-string v0, "TicketActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InfoAdapter="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mlstItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

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
    .registers 13

    const/4 v8, 0x1

    const/high16 v7, 0x42300000    # 44.0f

    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v0, "TicketActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getView["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] convertView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_15d

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v1}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_ticket_item"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/bbk/payment/av;

    invoke-direct {v1, p0}, Lcom/bbk/payment/av;-><init>(Lcom/bbk/payment/TicketActivity$InfoAdapter;)V

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "giftcertificate_state_flag_id"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbk/payment/av;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "ticket_title"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/av;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "giftcertificate_icon_invalid0"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/av;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "giftcertificate_icon_invalid1"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/av;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "giftcertificate_icon_invalid2"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/av;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "ticket_context0"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/av;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "ticket_context1"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/av;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "ticket_context2"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/av;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "ticket_unit"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/av;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "ticket_amount"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/av;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "ticket_status"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbk/payment/av;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "giftcertificate_list_item_layout"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/bbk/payment/av;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout_context_left"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/bbk/payment/av;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout_context_right"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/bbk/payment/av;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_15d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/av;

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ticketCode"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1be

    iget-object v1, v0, Lcom/bbk/payment/av;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->h(Lcom/bbk/payment/TicketActivity;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->a:Landroid/content/Context;

    const-string v4, "bbk_channel_bottom_item_height"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, v0, Lcom/bbk/payment/av;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_19f
    :goto_19f
    const-string v1, "TicketActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getView======="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", holder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1be
    iget-object v1, v0, Lcom/bbk/payment/av;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->h(Lcom/bbk/payment/TicketActivity;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->a:Landroid/content/Context;

    const-string v4, "bbk_ticket_item_height"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, v0, Lcom/bbk/payment/av;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->h(Lcom/bbk/payment/TicketActivity;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x280

    if-ne v1, v2, :cond_218

    iget-object v1, v0, Lcom/bbk/payment/av;->b:Landroid/widget/TextView;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lcom/bbk/payment/av;->i:Landroid/widget/TextView;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lcom/bbk/payment/av;->j:Landroid/widget/TextView;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lcom/bbk/payment/av;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lcom/bbk/payment/av;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lcom/bbk/payment/av;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_218
    const-string v2, "TicketActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "getView mlstItem===="

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "isAble"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "isAble"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_536

    if-nez p1, :cond_51e

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->i(Lcom/bbk/payment/TicketActivity;)Lcom/bbk/payment/model/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getTicketCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51e

    iget-object v1, v0, Lcom/bbk/payment/av;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "giftcertificate_item_valid_flag"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_ticket_status_context1"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_291
    iget-object v1, v0, Lcom/bbk/payment/av;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v1, v0, Lcom/bbk/payment/av;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v1, v0, Lcom/bbk/payment/av;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->h(Lcom/bbk/payment/TicketActivity;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_ticket_unit_enable_textcolor"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->h(Lcom/bbk/payment/TicketActivity;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_ticket_amount_enable_textcolor"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2d1
    iget-object v1, v0, Lcom/bbk/payment/av;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ticket_title"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_310

    iget-object v2, v0, Lcom/bbk/payment/av;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "ticket_title"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_310
    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ticket_context0"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36b

    iget-object v2, v0, Lcom/bbk/payment/av;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "ticket_context0"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ticket_state0"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36b

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ticket_state0"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36b

    iget-object v1, v0, Lcom/bbk/payment/av;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_36b
    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ticket_context1"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3c6

    iget-object v2, v0, Lcom/bbk/payment/av;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "ticket_context1"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ticket_state1"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3c6

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ticket_state1"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c6

    iget-object v1, v0, Lcom/bbk/payment/av;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3c6
    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ticket_context2"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_482

    iget-object v2, v0, Lcom/bbk/payment/av;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "ticket_context2"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ticket_state2"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_482

    const-string v2, "TicketActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "state2="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a6

    iget-object v1, v0, Lcom/bbk/payment/av;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_ticket_limit"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_giftcertificate_item_invalid"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->h(Lcom/bbk/payment/TicketActivity;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_channel_activity_type_textcolor"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->h(Lcom/bbk/payment/TicketActivity;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_channel_activity_type_textsize"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_482
    :goto_482
    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ticket_status"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4b2

    iget-object v2, v0, Lcom/bbk/payment/av;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "ticket_status"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4b2
    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ticket_amount"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19f

    iget-object v2, v0, Lcom/bbk/payment/av;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "ticket_amount"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "TicketActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getView getText().length===="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/bbk/payment/av;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ticket_amount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bbk/payment/av;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19f

    :cond_51e
    iget-object v1, v0, Lcom/bbk/payment/av;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_ticket_status_context2"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_291

    :cond_536
    if-eqz p1, :cond_53d

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->j(Lcom/bbk/payment/TicketActivity;)I

    :cond_53d
    iget-object v1, v0, Lcom/bbk/payment/av;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "giftcertificate_item_invalid_flag"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v1, v0, Lcom/bbk/payment/av;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v1, v0, Lcom/bbk/payment/av;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->h(Lcom/bbk/payment/TicketActivity;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_ticket_unit_disable_textcolor"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->h(Lcom/bbk/payment/TicketActivity;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_ticket_amount_disable_textcolor"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_ticket_status_context3"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2d1

    :cond_5a6
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_482

    iget-object v1, v0, Lcom/bbk/payment/av;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_ticket_will_expire"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_ticket_time_will_expire"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->h(Lcom/bbk/payment/TicketActivity;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_TextColorWhite"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/bbk/payment/av;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->h(Lcom/bbk/payment/TicketActivity;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->c:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_ticket_time_textsize"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_482
.end method

.method public isEnabled(I)Z
    .registers 5

    const-string v1, "0"

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity$InfoAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "isAble"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    :goto_17
    return v0

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_17
.end method
