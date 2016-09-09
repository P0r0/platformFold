.class public Lcom/gionee/game/offlinesdk/upgrade/PayDialog;
.super Landroid/app/Dialog;
.source "PayDialog.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field protected mAliPay:Landroid/widget/LinearLayout;

.field protected mCloseIconButton:Landroid/widget/Button;

.field protected mDialogView:Landroid/widget/LinearLayout;

.field protected mMessagePay:Landroid/widget/LinearLayout;

.field protected mNegativeButton:Landroid/widget/Button;

.field protected mPositiveButton:Landroid/widget/Button;

.field protected mTitleTextView:Landroid/widget/TextView;

.field protected mTitleView:Landroid/view/ViewGroup;

.field protected mWechat:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->requestWindowFeature(I)Z

    .line 50
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mActivity:Landroid/app/Activity;

    .line 51
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->createDialogLayout()Landroid/view/View;

    .line 52
    return-void
.end method

.method private createBorderLine(Landroid/content/Context;)Landroid/view/View;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 206
    .local v0, "buttonBorder":Landroid/view/View;
    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->button_border_color:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 208
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_border_size:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    return-object v0
.end method

.method private createCloseIcon(Landroid/content/Context;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_cross_icon_size:I

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_cross_icon_size:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_cross_icon_margin_right:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 136
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mCloseIconButton:Landroid/widget/Button;

    .line 137
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mCloseIconButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mCloseIconButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->createCrossDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mCloseIconButton:Landroid/widget/Button;

    return-object v1
.end method

.method private createContentView(Landroid/content/Context;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x8

    .line 154
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 155
    .local v1, "parent":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 158
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 159
    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_title_view_bg_color:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 161
    const-string v2, "ali_pay_icon.png"

    const-string v3, "\u652f\u4ed8\u5b9d\u652f\u4ed8"

    invoke-direct {p0, p1, v2, v3}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->getPayLinearLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mAliPay:Landroid/widget/LinearLayout;

    .line 162
    const-string v2, "wechat_pay_icon.png"

    const-string v3, "\u5fae\u4fe1\u652f\u4ed8"

    invoke-direct {p0, p1, v2, v3}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->getPayLinearLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mWechat:Landroid/widget/LinearLayout;

    .line 163
    const-string v2, "message_pay_icon.png"

    const-string v3, "\u77ed\u4fe1\u652f\u4ed8"

    invoke-direct {p0, p1, v2, v3}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->getPayLinearLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mMessagePay:Landroid/widget/LinearLayout;

    .line 165
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mAliPay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mMessagePay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mAliPay:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mMessagePay:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    return-object v1
.end method

.method private createCrossDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 144
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 145
    .local v1, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v0, 0x10100a7

    .line 146
    .local v0, "pressed":I
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v0, v2, v4

    const-string v3, "close_icon.png"

    invoke-static {v3}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 147
    new-array v2, v4, [I

    const-string v3, "close_icon.png"

    invoke-static {v3}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 148
    return-object v1
.end method

.method private createDialogLayout()Landroid/view/View;
    .registers 4

    .prologue
    .line 91
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_width:I

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_width:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mDialogView:Landroid/widget/LinearLayout;

    .line 94
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mDialogView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mDialogView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mDialogView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->createTitleView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mDialogView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->createBorderLine(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mDialogView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->createContentView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mDialogView:Landroid/widget/LinearLayout;

    return-object v1
.end method

.method private createTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x2

    .line 116
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleTextView:Landroid/widget/TextView;

    .line 119
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 122
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleTextView:Landroid/widget/TextView;

    const-string v2, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_text_size:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleTextView:Landroid/widget/TextView;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->gray:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleTextView:Landroid/widget/TextView;

    return-object v1
.end method

.method private createTitleView(Landroid/content/Context;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleView:Landroid/view/ViewGroup;

    .line 105
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_view_height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 107
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleView:Landroid/view/ViewGroup;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_title_view_bg_color:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 109
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->createTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->createCloseIcon(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mTitleView:Landroid/view/ViewGroup;

    return-object v1
.end method

.method private getPayLinearLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x1

    .line 176
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    sget v7, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_height:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 177
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 178
    .local v4, "payLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 179
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 180
    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 181
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v6, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_icon_width:I

    sget v7, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_icon_width:I

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v1, "imageParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 185
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 186
    .local v3, "payIcon":Landroid/widget/ImageView;
    invoke-static {p2}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 190
    .local v5, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v6, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_pay_text_margin_top:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 191
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 192
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, "description":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 195
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    return-object v4
.end method

.method private isContextInvalid()Z
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->isContextInvalid()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 83
    :cond_c
    :goto_c
    return-void

    .line 82
    :cond_d
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mDialogView:Landroid/widget/LinearLayout;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public setAlipay(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mAliPay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mAliPay:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public setCloseIconButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mCloseIconButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void
.end method

.method public setGravity(I)V
    .registers 4
    .param p1, "gravity"    # I

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 62
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 63
    .local v1, "wlp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 65
    return-void
.end method

.method public setMessagePay(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mMessagePay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mMessagePay:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    return-void
.end method

.method public setWechatPay(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->mWechat:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->isContextInvalid()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 74
    :cond_c
    :goto_c
    return-void

    .line 73
    :cond_d
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_c
.end method
