.class public Lcom/baidu/balance/ui/widget/BankCardDialog;
.super Lcom/baidu/wallet/base/widget/BaseTipDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/balance/ui/widget/BankCardDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/base/widget/BaseTipDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->b:Landroid/content/Context;

    return-void
.end method

.method private a(I)V
    .registers 9

    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->c:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v4, v0

    :goto_14
    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_c

    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/balance/ui/widget/BankCardDialog$a;

    iget-object v1, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->b:Landroid/content/Context;

    const-string v3, "wallet_bank_card_dialog_item"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->b:Landroid/content/Context;

    const-string v2, "wallet_personal_my_bank_card_icon"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/wallet/base/widget/NetImageView;

    iget-object v2, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->b:Landroid/content/Context;

    const-string v5, "card_name_tv"

    invoke-static {v2, v5}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->b:Landroid/content/Context;

    const-string v6, "card_tip_tv"

    invoke-static {v5, v6}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/baidu/balance/ui/widget/BankCardDialog$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/baidu/balance/ui/widget/BankCardDialog$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/baidu/balance/ui/widget/BankCardDialog;->b(I)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_14
.end method

.method static synthetic a(Lcom/baidu/balance/ui/widget/BankCardDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/balance/ui/widget/BankCardDialog;->b(I)V

    return-void
.end method

.method private b(I)V
    .registers 7

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_32

    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->b:Landroid/content/Context;

    const-string v3, "bank_card_check_btn"

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-ne v1, p1, :cond_30

    const/4 v3, 0x1

    :goto_21
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    new-instance v0, Lcom/baidu/balance/ui/widget/a;

    invoke-direct {v0, p0, v1}, Lcom/baidu/balance/ui/widget/a;-><init>(Lcom/baidu/balance/ui/widget/BankCardDialog;I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_30
    move v3, v2

    goto :goto_21

    :cond_32
    return-void
.end method


# virtual methods
.method public getChooseIndex()I
    .registers 6

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_29

    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->b:Landroid/content/Context;

    const-string v4, "bank_card_check_btn"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_25

    :goto_24
    return v1

    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_29
    move v1, v2

    goto :goto_24
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/baidu/wallet/base/widget/BaseTipDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->mInflater:Landroid/view/LayoutInflater;

    :cond_f
    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->b:Landroid/content/Context;

    const-string v1, "bank_card_dialog_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/balance/ui/widget/BankCardDialog;->setTitleMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->b:Landroid/content/Context;

    const-string v1, "dialog_btns"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/balance/ui/widget/BankCardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->b:Landroid/content/Context;

    const-string v2, "wallet_bank_card_dialog_content_layout"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->b:Landroid/content/Context;

    const-string v2, "content_layout"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/baidu/balance/ui/widget/BankCardDialog;->addContentView(Landroid/view/View;)V

    return-void
.end method

.method public setBankList(Ljava/util/List;I)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/balance/ui/widget/BankCardDialog;->c:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/baidu/balance/ui/widget/BankCardDialog;->a(I)V

    return-void
.end method
