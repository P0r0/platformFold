.class public Lcom/baidu/paysdk/ui/widget/BankUserInfoView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field protected mIdArea:Landroid/view/View;

.field protected mIdCard:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

.field protected mLine1:Landroid/view/View;

.field protected mLine2:Landroid/view/View;

.field protected mLine3:Landroid/view/View;

.field protected mLine4:Landroid/view/View;

.field protected mMobileArea:Landroid/view/View;

.field protected mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

.field protected mNameArea:Landroid/view/View;

.field protected mTrueName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->a()V

    return-void
.end method

.method private a()V
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ebpay_layout_bind_card_userinfo_view"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "true_name_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mNameArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id_card_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mIdArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mobile_phone_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mMobileArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id_card_line1"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine1:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id_card_line2"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine2:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id_card_line3"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine3:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id_card_line4"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine4:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ebpay_true_name_id"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mTrueName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ebpay_mobile_phone_id"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/DivisionEditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id_card"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mIdCard:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "name_tip_img"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id_tip_img"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setUseSafeKeyBoard(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setViewType(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mIdCard:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->setUseKeyX(Z)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone_tip_img"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public clearEditMsg()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mTrueName:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mIdCard:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public configMaginTop(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getIdEditText()Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mIdCard:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    return-object v0
.end method

.method public getIdTip()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMobileEditText()Lcom/baidu/wallet/base/widget/DivisionEditText;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    return-object v0
.end method

.method public getMobileTip()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNameTip()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTrueNameText()Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mTrueName:Landroid/widget/EditText;

    return-object v0
.end method

.method public hideArea(ZZZ)V
    .registers 8

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mIdArea:Landroid/view/View;

    if-eqz p2, :cond_2c

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mMobileArea:Landroid/view/View;

    if-eqz p3, :cond_2e

    move v0, v1

    :goto_10
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mNameArea:Landroid/view/View;

    if-eqz p1, :cond_30

    move v0, v1

    :goto_18
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_32

    if-nez p2, :cond_32

    if-nez p3, :cond_32

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine3:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2b
    return-void

    :cond_2c
    move v0, v2

    goto :goto_8

    :cond_2e
    move v0, v2

    goto :goto_10

    :cond_30
    move v0, v2

    goto :goto_18

    :cond_32
    if-eqz p1, :cond_43

    if-nez p2, :cond_43

    if-nez p3, :cond_43

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine3:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b

    :cond_43
    if-nez p1, :cond_54

    if-nez p2, :cond_54

    if-eqz p3, :cond_54

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b

    :cond_54
    if-nez p1, :cond_65

    if-eqz p2, :cond_65

    if-nez p3, :cond_65

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b

    :cond_65
    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->mLine3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public setTipClick(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankUserInfoView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
