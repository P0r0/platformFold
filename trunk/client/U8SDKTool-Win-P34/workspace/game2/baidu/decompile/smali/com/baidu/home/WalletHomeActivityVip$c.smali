.class Lcom/baidu/home/WalletHomeActivityVip$c;
.super Lcom/baidu/home/WalletHomeActivityVip$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/home/WalletHomeActivityVip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/home/WalletHomeActivityVip;


# direct methods
.method public constructor <init>(Lcom/baidu/home/WalletHomeActivityVip;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/home/WalletHomeActivityVip$c;->a:Lcom/baidu/home/WalletHomeActivityVip;

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/home/WalletHomeActivityVip$b;-><init>(Lcom/baidu/home/WalletHomeActivityVip;Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private a(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;Ljava/lang/String;)V
    .registers 13

    const/4 v5, 0x1

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/home/WalletHomeActivityVip$c;->b(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;)I

    move-result v0

    if-gez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    aget-object v0, v0, v3

    iget-object v6, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;->list:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;

    const-string v0, "wallet_home_banner_vip"

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->b()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/home/WalletHomeActivityVip$c;->a(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wallet_home_banner_gallery"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wallet_home_banner_indicators"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v2

    const-string v7, "wallet_home_banner_close"

    invoke-static {v2, v7}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v4, Lcom/baidu/home/f;

    invoke-direct {v4, p0}, Lcom/baidu/home/f;-><init>(Lcom/baidu/home/WalletHomeActivityVip$c;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/wallet/core/utils/DisplayUtils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v4

    mul-int/lit16 v7, v4, 0x87

    div-int/lit16 v7, v7, 0x2d0

    if-nez v2, :cond_c0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_70
    invoke-virtual {v0, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6, p2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->setFocusConfigInfo([Lcom/baidu/home/datamodel/HomeCfgResponseVip$BannerItem;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v2

    const-string v4, "wallet_home_indicators"

    invoke-static {v2, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/baidu/wallet/core/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/baidu/wallet/core/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v8, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    array-length v2, v6

    if-le v2, v5, :cond_d4

    move v2, v3

    :goto_99
    array-length v4, v6

    if-ge v2, v4, :cond_c7

    new-instance v9, Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v9, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundResource(I)V

    if-nez v2, :cond_c5

    move v4, v5

    :goto_ab
    invoke-virtual {v9, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v4

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v4, v9}, Lcom/baidu/wallet/core/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    :cond_c0
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_70

    :cond_c5
    move v4, v3

    goto :goto_ab

    :cond_c7
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_ca
    new-instance v2, Lcom/baidu/home/g;

    invoke-direct {v2, p0, v1}, Lcom/baidu/home/g;-><init>(Lcom/baidu/home/WalletHomeActivityVip$c;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->setCurrFocusImagePos(Lcom/baidu/home/ui/widget/FocusImageViewGroup$a;)V

    goto/16 :goto_a

    :cond_d4
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ca
.end method

.method private b(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;)I
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/baidu/home/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    if-ne v3, v1, :cond_30

    invoke-static {}, Lcom/baidu/home/WalletHomeActivityVip;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": banner is closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    return v0

    :cond_30
    invoke-virtual {p0, p1}, Lcom/baidu/home/WalletHomeActivityVip$c;->a(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    if-eqz v1, :cond_2f

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    array-length v1, v1

    if-lez v1, :cond_2f

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;->list:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;

    if-eqz v1, :cond_2f

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;->list:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;

    if-eqz v1, :cond_58

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;->list:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;

    array-length v1, v1

    if-eqz v1, :cond_2f

    :cond_58
    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;->group_pos:I

    goto :goto_2f
.end method


# virtual methods
.method protected a(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;)V
    .registers 8

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_3b

    if-eqz v1, :cond_3b

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->link_addr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, ""

    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->link_addr:Ljava/lang/String;

    const-wide/16 v4, 0x200

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v0, "newHomePageBScanC"

    :cond_22
    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->link_addr:Ljava/lang/String;

    const-wide/16 v4, 0x800

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v0, "newHomePageQRCode"

    :cond_32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {v1, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public a(Lcom/baidu/home/datamodel/HomeCfgResponseVip;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/home/WalletHomeActivityVip$c;->b(Lcom/baidu/home/datamodel/HomeCfgResponseVip;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->b()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->paycode3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    invoke-virtual {p0, v1}, Lcom/baidu/home/WalletHomeActivityVip$c;->a(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->banner3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    invoke-direct {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip$c;->b(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;)I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->banner3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->android_prefix:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/home/WalletHomeActivityVip$c;->a(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;Ljava/lang/String;)V

    goto :goto_8

    :cond_28
    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->banner3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    invoke-direct {p0, v1}, Lcom/baidu/home/WalletHomeActivityVip$c;->b(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;)I

    move-result v1

    if-ltz v1, :cond_37

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->banner3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->android_prefix:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/baidu/home/WalletHomeActivityVip$c;->a(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;Ljava/lang/String;)V

    :cond_37
    new-instance v2, Lcom/baidu/home/ui/widget/GridLayout;

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/baidu/home/ui/widget/GridLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/baidu/home/ui/widget/GridLayout;->setColumnCount(I)V

    invoke-virtual {v2, v3}, Lcom/baidu/home/ui/widget/GridLayout;->setHorizontalSpacing(I)V

    invoke-virtual {v2, v3}, Lcom/baidu/home/ui/widget/GridLayout;->setVerticalSpacing(I)V

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v3, "bd_wallet_home_inner_separator"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/home/ui/widget/GridLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v3, "bd_wallet_home_item_normal_bg"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/home/ui/widget/GridLayout;->setEmptyAreaColor(I)V

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->b()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v1, "wallet_home_outer_horizontal_seperator"

    invoke-virtual {p0, v1}, Lcom/baidu/home/WalletHomeActivityVip$c;->a(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->paycode3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    aget-object v1, v1, v0

    iget-object v3, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;->list:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;

    move v1, v0

    :goto_79
    array-length v0, v3

    if-ge v1, v0, :cond_8

    aget-object v4, v3, v1

    const-string v0, "wallet_home_o2o_item_vip"

    invoke-virtual {p0, v0, v2, v4}, Lcom/baidu/home/WalletHomeActivityVip$c;->a(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v6, "wallet_home_o2o_img"

    invoke-static {v0, v6}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/NetImageView;

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v6

    const-string v7, "wallet_home_img_logo"

    invoke-static {v6, v7}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageResource(I)V

    iget-object v0, v4, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->logo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v6, "wallet_home_o2o_img"

    invoke-static {v0, v6}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/NetImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->android_prefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->logo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageUrl(Ljava/lang/String;)V

    :cond_d1
    iget-object v0, v4, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ee

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v6, "wallet_home_o2o_txt"

    invoke-static {v0, v6}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, v4, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ee
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_79
.end method
