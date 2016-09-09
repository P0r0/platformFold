.class public Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field protected mCvv2:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

.field protected mCvvArea:Landroid/view/View;

.field protected mCvvTip:Landroid/widget/ImageView;

.field protected mDate:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

.field protected mDateArea:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->a()V

    return-void
.end method

.method private a()V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ebpay_layout_bind_card_creditinfo_view"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cvv2_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mCvvArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "valid_date_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mDateArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "valid_data"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mDate:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ebpay_cvv2_id"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mCvv2:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cvv2_area_line"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "date_tip_img"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cvv_tip_img"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mCvvTip:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public clearEditMsg()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mCvv2:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mDate:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getCvv2InputView()Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mCvv2:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    return-object v0
.end method

.method public getCvv2Tip()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mCvvTip:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDateInputView()Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mDate:Lcom/baidu/wallet/base/widget/SafeKeyBoardEditText;

    return-object v0
.end method

.method public getDateTip()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hideArea(ZZ)V
    .registers 7

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->b:Landroid/view/View;

    if-nez p1, :cond_1d

    if-nez p2, :cond_1d

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mCvvArea:Landroid/view/View;

    if-eqz p1, :cond_1f

    move v0, v2

    :goto_12
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mDateArea:Landroid/view/View;

    if-eqz p2, :cond_21

    :goto_19
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1d
    move v0, v2

    goto :goto_a

    :cond_1f
    move v0, v1

    goto :goto_12

    :cond_21
    move v2, v1

    goto :goto_19
.end method

.method public setTipClick(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/BankCvv2InfoView;->mCvvTip:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
