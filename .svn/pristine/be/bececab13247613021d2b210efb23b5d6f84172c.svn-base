.class public Lcom/gionee/game/offlinesdk/upgrade/GameDialog;
.super Landroid/app/Dialog;
.source "GameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;,
        Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field protected mButtonBarLayout:Landroid/widget/LinearLayout;

.field protected mButtonDivider:Landroid/view/View;

.field protected mCloseIconButton:Landroid/widget/Button;

.field protected mContentContioner:Landroid/view/ViewGroup;

.field private final mDialogParams:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;

.field protected mDialogView:Landroid/widget/LinearLayout;

.field protected mMessageTextView:Landroid/widget/TextView;

.field protected mNegativeButton:Landroid/widget/Button;

.field protected mPositiveButton:Landroid/widget/Button;

.field protected mProgressBarClipView:Landroid/widget/ImageView;

.field protected mProgressBarLayout:Landroid/widget/FrameLayout;

.field protected mProgressText:Landroid/widget/TextView;

.field protected mTitleTextView:Landroid/widget/TextView;

.field protected mTitleView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->requestWindowFeature(I)Z

    .line 55
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mActivity:Landroid/app/Activity;

    .line 56
    new-instance v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;

    invoke-direct {v0, p0, p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;-><init>(Lcom/gionee/game/offlinesdk/upgrade/GameDialog;Lcom/gionee/game/offlinesdk/upgrade/GameDialog;)V

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogParams:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;

    .line 57
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->createDialogLayout()Landroid/view/View;

    .line 58
    return-void
.end method

.method private createBorderLine(Landroid/content/Context;)Landroid/view/View;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 326
    .local v0, "buttonBorder":Landroid/view/View;
    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->button_border_color:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 328
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_border_size:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 330
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    return-object v0
.end method

.method private createBottomView(Landroid/content/Context;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonBarLayout:Landroid/widget/LinearLayout;

    .line 242
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonBarLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 246
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonBarLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonBarLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_layout_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 249
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->createButtonLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonBarLayout:Landroid/widget/LinearLayout;

    return-object v1
.end method

.method private createButtonLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x11

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 255
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 257
    .local v0, "buttonLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_bar_height:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 259
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 264
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mNegativeButton:Landroid/widget/Button;

    .line 265
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mNegativeButton:Landroid/widget/Button;

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_text_size:I

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 268
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mNegativeButton:Landroid/widget/Button;

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_button_text_default_color:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 269
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setGravity(I)V

    .line 270
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mNegativeButton:Landroid/widget/Button;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_button_bg_normal_color:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    sget v5, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_button_bg_normal_color:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v2, v3, v4}, Lcom/gionee/game/offlinesdk/utils/Utils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 273
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mPositiveButton:Landroid/widget/Button;

    .line 274
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mPositiveButton:Landroid/widget/Button;

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_text_size:I

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 277
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mPositiveButton:Landroid/widget/Button;

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_button_text_highlight_color:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 278
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setGravity(I)V

    .line 279
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mPositiveButton:Landroid/widget/Button;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_button_bg_highlight_color:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    sget v5, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_button_bg_highlight_color:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v2, v3, v4}, Lcom/gionee/game/offlinesdk/utils/Utils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 282
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_border_size:I

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 284
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonDivider:Landroid/view/View;

    .line 285
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonDivider:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonDivider:Landroid/view/View;

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$color;->button_border_color:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 287
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonDivider:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
    return-object v0
.end method

.method private createCloseIcon(Landroid/content/Context;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_cross_icon_size:I

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_cross_icon_size:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 203
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 204
    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_cross_icon_margin_right:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 206
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mCloseIconButton:Landroid/widget/Button;

    .line 207
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mCloseIconButton:Landroid/widget/Button;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 208
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mCloseIconButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mCloseIconButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->createCrossDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mCloseIconButton:Landroid/widget/Button;

    return-object v1
.end method

.method private createContentView(Landroid/content/Context;)Landroid/view/View;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mContentContioner:Landroid/view/ViewGroup;

    .line 224
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mContentContioner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mContentContioner:Landroid/view/ViewGroup;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_content_bg:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 229
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mMessageTextView:Landroid/widget/TextView;

    .line 230
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mMessageTextView:Landroid/widget/TextView;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_padding_left:I

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_padding_top:I

    sget v4, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_padding_right:I

    sget v5, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_padding_bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 232
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mMessageTextView:Landroid/widget/TextView;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_content_text_color:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mMessageTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_message_text_size:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 234
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mMessageTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const v3, 0x3fa1eb85    # 1.265f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 235
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mContentContioner:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 236
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mContentContioner:Landroid/view/ViewGroup;

    return-object v1
.end method

.method private createCrossDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 215
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 216
    .local v1, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v0, 0x10100a7

    .line 217
    .local v0, "pressed":I
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v0, v2, v4

    const-string v3, "notice_cross_pressed.png"

    invoke-static {v3}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 218
    new-array v2, v4, [I

    const-string v3, "notice_cross_normal.png"

    invoke-static {v3}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 219
    return-object v1
.end method

.method private createDialogLayout()Landroid/view/View;
    .registers 4

    .prologue
    .line 144
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_width:I

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogView:Landroid/widget/LinearLayout;

    .line 147
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 150
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->createTitleView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->createBorderLine(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->createContentView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->createBottomView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->createProgressBar(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogView:Landroid/widget/LinearLayout;

    return-object v1
.end method

.method private createProgressBar(Landroid/content/Context;)Landroid/view/View;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 295
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarLayout:Landroid/widget/FrameLayout;

    .line 296
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    sget v5, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_bar_height:I

    invoke-direct {v1, v4, v5, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 298
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarLayout:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 301
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 302
    .local v2, "progressBg":Landroid/widget/ImageView;
    sget v4, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_button_bg_normal_color:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 304
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarClipView:Landroid/widget/ImageView;

    .line 305
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    sget v5, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_button_bg_highlight_color:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct {v0, v4, v5, v6}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 307
    .local v0, "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 308
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarClipView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 312
    .local v3, "textParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressText:Landroid/widget/TextView;

    .line 313
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressText:Landroid/widget/TextView;

    invoke-direct {p0, v8}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->getProgress(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressText:Landroid/widget/TextView;

    sget v5, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_button_text_default_color:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 318
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarClipView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 319
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 321
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarLayout:Landroid/widget/FrameLayout;

    return-object v4
.end method

.method private createTitleIcon(Landroid/content/Context;)Landroid/widget/ImageView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_icon_width:I

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_icon_width:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_icon_margin_left:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 176
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 179
    const-string v2, "logo.png"

    invoke-static {v2}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    return-object v0
.end method

.method private createTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 184
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 188
    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 189
    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_text_margin_left:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 191
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleTextView:Landroid/widget/TextView;

    .line 192
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 194
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleTextView:Landroid/widget/TextView;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_title_text_color:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleTextView:Landroid/widget/TextView;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_text_size:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 196
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleTextView:Landroid/widget/TextView;

    return-object v1
.end method

.method private createTitleView(Landroid/content/Context;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleView:Landroid/view/ViewGroup;

    .line 160
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_view_height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleView:Landroid/view/ViewGroup;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_title_view_bg_color:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 164
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->createTitleIcon(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->createCloseIcon(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->createTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleView:Landroid/view/ViewGroup;

    return-object v1
.end method

.method private getProgress(I)Ljava/lang/String;
    .registers 6
    .param p1, "progress"    # I

    .prologue
    .line 140
    const-string v0, "\u4e0b\u8f7d\u4e2d\uff08%d\uff05\uff09"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isContextInvalid()Z
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mActivity:Landroid/app/Activity;

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

.method private setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "which"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogParams:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;

    iget-object v0, v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mButtonParams:Ljava/util/ArrayList;

    new-instance v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;

    invoke-direct {v1, p1, p2, p3}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;-><init>(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->isContextInvalid()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 90
    :cond_c
    :goto_c
    return-void

    .line 89
    :cond_d
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogView:Landroid/widget/LinearLayout;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogParams:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;

    # invokes: Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->apply()V
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->access$000(Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;)V

    .line 65
    return-void
.end method

.method public setCloseButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6
    .param p1, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogParams:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;

    new-instance v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;

    const-string v2, ""

    const/4 v3, -0x3

    invoke-direct {v1, v2, p1, v3}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;-><init>(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)V

    iput-object v1, v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mCloseButtonParam:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;

    .line 123
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogParams:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;

    iput-object p1, v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mContentView:Landroid/view/View;

    .line 102
    return-void
.end method

.method public setContentViewAlign(I)V
    .registers 3
    .param p1, "contentAlign"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogParams:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;

    iput p1, v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mContentAlign:I

    .line 106
    return-void
.end method

.method public setGravity(I)V
    .registers 4
    .param p1, "gravity"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 69
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 70
    .local v1, "wlp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 72
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogParams:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;

    iput-object p1, v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mMessageText:Ljava/lang/CharSequence;

    .line 110
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 117
    const/4 v0, -0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 118
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 113
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 114
    return-void
.end method

.method public setShowProgressBar(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogParams:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;

    iput-boolean p1, v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mShowProgressBar:Z

    .line 132
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mDialogParams:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;

    iput-object p1, v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mTitleText:Ljava/lang/CharSequence;

    .line 98
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->isContextInvalid()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 81
    :cond_c
    :goto_c
    return-void

    .line 80
    :cond_d
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_c
.end method

.method public updateProgress(I)V
    .registers 4
    .param p1, "progress"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarClipView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-int/lit8 v1, p1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 136
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->getProgress(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method
