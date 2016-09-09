.class public Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;
.super Ljava/lang/Object;
.source "DownloadingInfoDialog.java"


# instance fields
.field private mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

.field private mDialog:Landroid/app/Dialog;

.field private mLeftBtn:Landroid/widget/Button;

.field private mPercentTextView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRightBtn:Landroid/widget/Button;

.field private mStateTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    .line 51
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 53
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 54
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 55
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 56
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 57
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 58
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 59
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 69
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    const v1, -0xa0a0b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 76
    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 77
    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 78
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mStateTextView:Landroid/widget/TextView;

    .line 79
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mStateTextView:Landroid/widget/TextView;

    const v5, -0xc9c9ca

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mStateTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 83
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mPercentTextView:Landroid/widget/TextView;

    .line 84
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 85
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mPercentTextView:Landroid/widget/TextView;

    const v6, -0x3e3e3f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mPercentTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 93
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 94
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v2, "mOnlyIndeterminate"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nearme/platform/opensdk/pay/download/util/BeanUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const v2, -0x3e3e3f

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 96
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbd364a

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 97
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 100
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 101
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 102
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 103
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v10}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getPx(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    const v3, -0x242425

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v7, v2, v7, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 113
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x424c0000    # 51.0f

    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 115
    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 116
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    .line 117
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 119
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 120
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    const v5, -0xc9c9ca

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 121
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setGravity(I)V

    .line 122
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    .line 123
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 124
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 125
    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {p1, v5}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 126
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v9, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 127
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    const v6, -0x50506

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 128
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setGravity(I)V

    .line 129
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 135
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 136
    invoke-static {p1, v10}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getPx(Landroid/content/Context;F)I

    move-result v2

    const v3, -0x343435

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 137
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 138
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-static {v2, v1}, Lcom/nearme/platform/opensdk/pay/download/util/ViewHelper;->setBackgroud(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    new-instance v3, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$1;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    new-instance v2, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$2;

    invoke-direct {v2, p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$2;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 161
    const v2, -0x9f4e0b

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 162
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 163
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    invoke-static {v2, v1}, Lcom/nearme/platform/opensdk/pay/download/util/ViewHelper;->setBackgroud(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    new-instance v3, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$3;

    invoke-direct {v3, p0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$3;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    new-instance v2, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$4;

    invoke-direct {v2, p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$4;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 188
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 189
    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;)Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 225
    return-void
.end method

.method public setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    .line 229
    return-void
.end method

.method public setLeftBtnText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public setPercent(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 199
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_b
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 205
    return-void
.end method

.method public setRightBtnText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 193
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_b
    return-void
.end method

.method public setStateTextColor(I)V
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 221
    return-void
.end method
