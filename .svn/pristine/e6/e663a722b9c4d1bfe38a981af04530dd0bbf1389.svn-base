.class public Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;
.super Ljava/lang/Object;
.source "DownloadHintDialog.java"


# instance fields
.field private mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

.field private mDialog:Landroid/app/Dialog;

.field private mHintTextView:Landroid/widget/TextView;

.field private mLeftBtn:Landroid/widget/Button;

.field private mRightBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13

    .prologue
    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    .line 45
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 47
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 50
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 51
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 56
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    const v1, -0xa0a0b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 60
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mHintTextView:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mHintTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mHintTextView:Landroid/widget/TextView;

    const v2, -0xc9c9ca

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 65
    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 66
    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 67
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 68
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v10}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getPx(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    const v3, -0x242425

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v7, v2, v7, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 78
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x424c0000    # 51.0f

    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 80
    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {p1, v3}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 81
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    .line 82
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 84
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 85
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    const v5, -0xc9c9ca

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 86
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setGravity(I)V

    .line 87
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    .line 88
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 90
    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {p1, v5}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 91
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v9, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 92
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    const v6, -0x50506

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 93
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setGravity(I)V

    .line 94
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 100
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 101
    invoke-static {p1, v10}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getPx(Landroid/content/Context;F)I

    move-result v2

    const v3, -0x343435

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 102
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 103
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-static {v2, v1}, Lcom/nearme/platform/opensdk/pay/download/util/ViewHelper;->setBackgroud(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    new-instance v3, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$1;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    new-instance v2, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$2;

    invoke-direct {v2, p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$2;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 126
    const v2, -0x9f4e0b

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 127
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 128
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    invoke-static {v2, v1}, Lcom/nearme/platform/opensdk/pay/download/util/ViewHelper;->setBackgroud(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    new-instance v3, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$3;

    invoke-direct {v3, p0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$3;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    new-instance v2, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$4;

    invoke-direct {v2, p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$4;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 153
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 155
    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    return-object v0
.end method


# virtual methods
.method public dimiss()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 181
    return-void
.end method

.method public setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    .line 185
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 171
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_b
    return-void
.end method

.method public setLeftBtnText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 159
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_b
    return-void
.end method

.method public setRightBtnText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 165
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_b
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 177
    return-void
.end method
