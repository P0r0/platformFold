.class public Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;
.super Landroid/app/Dialog;
.source "MessageDialog.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field protected mDialogView:Landroid/widget/LinearLayout;

.field protected mMessageTextView:Landroid/widget/TextView;

.field protected mNegativeButton:Landroid/widget/Button;

.field protected mPositiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->requestWindowFeature(I)Z

    .line 41
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mActivity:Landroid/app/Activity;

    .line 42
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->createDialogLayout()Landroid/view/View;

    .line 43
    return-void
.end method

.method private createButtonView(Landroid/content/Context;)Landroid/view/View;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 108
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "buttonLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_bar_height:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_title_view_bg_color:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 115
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 117
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_margin_left:I

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_margin_right:I

    sget v4, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_margin_bottom:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 120
    invoke-direct {p0, p1, v1}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->createNegativeButton(Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 121
    invoke-direct {p0, p1, v1}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->createPositiveButton(Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 123
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    return-object v0
.end method

.method private createContentView(Landroid/content/Context;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, "content":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_width:I

    sget v3, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 98
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mMessageTextView:Landroid/widget/TextView;

    .line 99
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mMessageTextView:Landroid/widget/TextView;

    const-string v3, "\u662f\u5426\u9000\u51fa\u652f\u4ed8?"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mMessageTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    sget v4, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_text_size:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_title_view_bg_color:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 102
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    return-object v0
.end method

.method private createDialogLayout()Landroid/view/View;
    .registers 4

    .prologue
    .line 81
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_width:I

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_width:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mDialogView:Landroid/widget/LinearLayout;

    .line 83
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mDialogView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mDialogView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mDialogView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->createContentView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mDialogView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->createButtonView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mDialogView:Landroid/widget/LinearLayout;

    return-object v1
.end method

.method private createNegativeButton(Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 143
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mNegativeButton:Landroid/widget/Button;

    .line 144
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mNegativeButton:Landroid/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 146
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mNegativeButton:Landroid/widget/Button;

    const-string v2, "\u9000\u51fa\u652f\u4ed8"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mNegativeButton:Landroid/widget/Button;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 149
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 150
    .local v0, "negativeShape":Landroid/graphics/drawable/GradientDrawable;
    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_radius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 151
    sget v1, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_button_bg_normal_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 152
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mNegativeButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    return-void
.end method

.method private createPositiveButton(Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 129
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mPositiveButton:Landroid/widget/Button;

    .line 130
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mPositiveButton:Landroid/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 132
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mPositiveButton:Landroid/widget/Button;

    const-string v2, "\u7ee7\u7eed\u652f\u4ed8"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mPositiveButton:Landroid/widget/Button;

    sget v2, Lcom/gionee/game/offlinesdk/utils/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 135
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 136
    .local v0, "positiveShape":Landroid/graphics/drawable/GradientDrawable;
    sget v1, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_radius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 137
    sget v1, Lcom/gionee/game/offlinesdk/utils/R$color;->dialog_button_bg_green_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 138
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mPositiveButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    return-void
.end method

.method private isContextInvalid()Z
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mActivity:Landroid/app/Activity;

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
    .line 69
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->isContextInvalid()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 74
    :cond_c
    :goto_c
    return-void

    .line 73
    :cond_d
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mDialogView:Landroid/widget/LinearLayout;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public setGravity(I)V
    .registers 4
    .param p1, "gravity"    # I

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 53
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 54
    .local v1, "wlp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 56
    return-void
.end method

.method public setNegativeButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mNegativeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    return-void
.end method

.method public setPositiveButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->mPositiveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->isContextInvalid()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    :cond_c
    :goto_c
    return-void

    .line 64
    :cond_d
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_c
.end method
