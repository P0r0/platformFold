.class public Lcom/baidu/paysdk/ui/widget/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/ui/widget/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/baidu/paysdk/ui/SelectPayWayActivity$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/baidu/paysdk/ui/SelectPayWayActivity$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/baidu/paysdk/ui/widget/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/paysdk/ui/widget/b;->d:Lcom/baidu/paysdk/ui/SelectPayWayActivity$a;

    iput-object p2, p0, Lcom/baidu/paysdk/ui/widget/b;->c:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/baidu/paysdk/ui/widget/b;)Lcom/baidu/paysdk/ui/SelectPayWayActivity$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->d:Lcom/baidu/paysdk/ui/SelectPayWayActivity$a;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/paysdk/ui/widget/b;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/paysdk/ui/widget/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)V
    .registers 13

    const/4 v8, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    return-void

    :cond_6
    move v4, v8

    :goto_7
    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    aget-object v6, p2, v4

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/baidu/paysdk/ui/widget/b$a;

    iget-boolean v5, p1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easypayIsEnable:Z

    const-string v0, "1"

    iget-object v2, v6, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    move v2, v5

    :goto_2e
    if-eqz v2, :cond_74

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_32
    invoke-static {v7, v0}, Lcom/baidu/wallet/core/utils/support/ViewHelper;->setAlpha(Landroid/view/View;F)V

    if-nez v2, :cond_78

    iget-object v0, v1, Lcom/baidu/paysdk/ui/widget/b$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_3c
    iget-object v3, p1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    const-string v0, "1"

    iget-object v9, v6, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_state:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, v6, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_card_msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v3, v6, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_card_msg:Ljava/lang/String;

    :cond_52
    :goto_52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, v1, Lcom/baidu/paysdk/ui/widget/b$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/baidu/paysdk/ui/widget/b$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_62
    new-instance v0, Lcom/baidu/paysdk/ui/widget/b$a;

    iget-object v5, v1, Lcom/baidu/paysdk/ui/widget/b$a;->d:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/baidu/paysdk/ui/widget/b$a;->e:Landroid/widget/TextView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/paysdk/ui/widget/b$a;-><init>(Lcom/baidu/paysdk/ui/widget/b;ZLjava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_72
    move v2, v8

    goto :goto_2e

    :cond_74
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_32

    :cond_78
    iget-object v3, v1, Lcom/baidu/paysdk/ui/widget/b$a;->d:Landroid/widget/ImageView;

    iget v0, p1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->bankCardSelectedIdx:I

    if-ne v0, v4, :cond_83

    const/4 v0, 0x1

    :goto_7f
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_3c

    :cond_83
    move v0, v8

    goto :goto_7f

    :cond_85
    iget-object v0, v6, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_card_msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    if-eqz v5, :cond_52

    iget-object v3, v6, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_card_msg:Ljava/lang/String;

    goto :goto_52

    :cond_92
    iget-object v0, v1, Lcom/baidu/paysdk/ui/widget/b$a;->e:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_62
.end method

.method public a([Lcom/baidu/wallet/base/datamodel/CardData$BondCard;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V
    .registers 12

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_10
    array-length v0, p1

    if-ge v4, v0, :cond_4

    aget-object v2, p1, v4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/widget/b;->a:Landroid/content/Context;

    const-string v3, "ebpay_layout_bank_card_item"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/baidu/paysdk/ui/widget/c;

    invoke-direct {v0, p0}, Lcom/baidu/paysdk/ui/widget/c;-><init>(Lcom/baidu/paysdk/ui/widget/b;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->a:Landroid/content/Context;

    const-string v1, "ebpay_bank_logo"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/NetImageView;

    iget-object v1, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->a:Landroid/content/Context;

    const-string v1, "ebpay_bank_desc"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/widget/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->getCardDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->a:Landroid/content/Context;

    const-string v1, "ebpay_bankcard_select"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget v0, p2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->bankCardSelectedIdx:I

    if-ne v4, v0, :cond_101

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_78
    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->a:Landroid/content/Context;

    const-string v1, "ebpay_bank_tips"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v3, p2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    const-string v0, "1"

    iget-object v1, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-boolean v0, p2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easypayIsEnable:Z

    move v1, v0

    :goto_95
    if-eqz v1, :cond_10a

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_99
    invoke-static {v7, v0}, Lcom/baidu/wallet/core/utils/support/ViewHelper;->setAlpha(Landroid/view/View;F)V

    const-string v0, "1"

    iget-object v8, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_state:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    iget-object v0, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_card_msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10e

    iget-object v3, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_card_msg:Ljava/lang/String;

    :cond_b0
    :goto_b0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11b

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_bd
    if-nez v1, :cond_121

    new-instance v0, Lcom/baidu/paysdk/ui/widget/b$a;

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/paysdk/ui/widget/b$a;-><init>(Lcom/baidu/paysdk/ui/widget/b;ZLjava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    :goto_c9
    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/widget/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/widget/b;->a:Landroid/content/Context;

    const-string v2, "bd_wallet_divide_line_gray"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/baidu/paysdk/ui/widget/b;->a:Landroid/content/Context;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/widget/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    :cond_101
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_78

    :cond_107
    const/4 v0, 0x0

    move v1, v0

    goto :goto_95

    :cond_10a
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_99

    :cond_10e
    iget-object v0, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_card_msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b0

    if-eqz v1, :cond_b0

    iget-object v3, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_card_msg:Ljava/lang/String;

    goto :goto_b0

    :cond_11b
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_bd

    :cond_121
    new-instance v0, Lcom/baidu/paysdk/ui/widget/b$a;

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/paysdk/ui/widget/b$a;-><init>(Lcom/baidu/paysdk/ui/widget/b;ZLjava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_c9
.end method
