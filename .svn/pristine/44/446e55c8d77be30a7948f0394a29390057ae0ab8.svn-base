.class public Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;
.super Lcom/gionee/gsp/ui/values/GnPublic;
.source "GnDownloadDialogLayout.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/gionee/gsp/ui/values/GnPublic;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "classes"    # Ljava/lang/Class;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "drawableTemp":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 314
    .local v2, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v3, v4, v2, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_1c
    .catchall {:try_start_2 .. :try_end_15} :catchall_2b

    move-result-object v0

    .line 366
    if-eqz v2, :cond_1b

    .line 367
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_37

    .line 378
    :cond_1b
    :goto_1b
    return-object v0

    .line 362
    :catch_1c
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2b

    .line 366
    if-eqz v2, :cond_1b

    .line 367
    :try_start_22
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_1b

    .line 373
    :catch_26
    move-exception v1

    .line 375
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 364
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2b
    move-exception v3

    .line 366
    if-eqz v2, :cond_31

    .line 367
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    .line 377
    :cond_31
    :goto_31
    throw v3

    .line 373
    :catch_32
    move-exception v1

    .line 375
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    .line 373
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_37
    move-exception v1

    .line 375
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method private getBlanking()Landroid/view/View;
    .registers 6

    .prologue
    .line 164
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, "ll":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/gionee/gsp/ui/values/GnPublic$id;->default_id:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    return-object v0
.end method

.method private getBottom()Landroid/view/View;
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 224
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, "ll":Landroid/widget/LinearLayout;
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 226
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 228
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const/16 v5, 0x14

    invoke-static {v4, v5}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v2

    .line 229
    .local v2, "size":I
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 230
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 231
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    const-string v4, "\u4e0b\u8f7d "

    sget v5, Lcom/gionee/gsp/ui/values/GnPublic$id;->re_download_button:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getDownloadButton(Ljava/lang/String;II)Landroid/view/View;

    move-result-object v3

    .line 236
    .local v3, "view":Landroid/view/View;
    const-string v4, "\u53d6\u6d88"

    sget v5, Lcom/gionee/gsp/ui/values/GnPublic$id;->cancel_button:I

    const-string v6, "#FF444444"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getCancelButton(Ljava/lang/String;II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    return-object v0
.end method

.method private getDesc(Ljava/lang/String;)Landroid/view/View;
    .registers 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, "ll":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const/16 v5, 0x14

    invoke-static {v4, v5}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v3

    .line 124
    .local v3, "size":I
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 125
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 126
    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v3

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 129
    .local v0, "desc":Landroid/widget/TextView;
    sget v4, Lcom/gionee/gsp/ui/values/GnPublic$id;->desc_info:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setId(I)V

    .line 130
    const-string v4, "#FF444444"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    return-object v1
.end method

.method private getDesc(Ljava/lang/String;I)Landroid/view/View;
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/16 v5, 0xa

    .line 136
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, "ll":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 139
    iget-object v3, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getTextView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    .line 142
    .local v2, "title":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    return-object v0
.end method

.method private getDownloadSchedule()Landroid/view/View;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 433
    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 434
    .local v3, "progressBar":Landroid/widget/ProgressBar;
    const-string v4, "mOnlyIndeterminate"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/gionee/gsp/util/GnBeanUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 436
    sget v4, Lcom/gionee/gsp/ui/values/GnPublic$id;->download_progress_bar:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setId(I)V

    .line 437
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108006d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 449
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 450
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 454
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v2

    .line 456
    .local v2, "margin":I
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 457
    .local v0, "layout":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const/16 v6, 0x14

    invoke-static {v5, v6}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 458
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 459
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 460
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 473
    return-object v0
.end method

.method private getDownloadTextInfo()Landroid/view/View;
    .registers 9

    .prologue
    const/16 v7, 0x14

    const/4 v6, -0x1

    .line 202
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 203
    .local v3, "sv":Landroid/widget/ScrollView;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 205
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "ll":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 209
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    const-string v4, ""

    sget v5, Lcom/gionee/gsp/ui/values/GnPublic$id;->download_text_view:I

    invoke-virtual {p0, v4, v5}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getTextView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 214
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 215
    return-object v3
.end method

.method private getLine()Landroid/view/View;
    .registers 6

    .prologue
    .line 147
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    .local v1, "ll":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 151
    iget-object v3, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 152
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v3, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const-string v4, "#FFFF940A"

    invoke-static {v3, v4}, Lcom/gionee/gsp/ui/drawable/GnBg;->getDrawableNoRound(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    return-object v1
.end method

.method private getTitle()Landroid/view/View;
    .registers 9

    .prologue
    const/16 v7, 0xa

    .line 101
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "ll":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 104
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 105
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const/16 v5, 0x14

    invoke-static {v4, v5}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v2

    .line 106
    .local v2, "size":I
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 107
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 109
    const/4 v4, 0x3

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 115
    .local v3, "title":Landroid/view/View;
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "gionee/drawable/pay_amigo_logo.png"

    invoke-static {v4, v5, v6}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->get(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    return-object v0
.end method

.method public static setPressedBg(Landroid/content/Context;Ljava/lang/Class;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "classes"    # Ljava/lang/Class;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p4, "focused"    # Landroid/graphics/drawable/Drawable;
    .param p5, "pressed"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 384
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 385
    .local v0, "bg":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x6

    new-array v1, v2, [[I

    .line 386
    .local v1, "states":[[I
    new-array v2, v6, [I

    fill-array-data v2, :array_58

    aput-object v2, v1, v5

    .line 387
    new-array v2, v6, [I

    fill-array-data v2, :array_60

    aput-object v2, v1, v4

    .line 388
    new-array v2, v4, [I

    const v3, 0x101009e

    aput v3, v2, v5

    aput-object v2, v1, v6

    .line 389
    new-array v2, v6, [I

    fill-array-data v2, :array_68

    aput-object v2, v1, v7

    .line 390
    const/4 v2, 0x4

    new-array v3, v4, [I

    const v4, 0x101009d

    aput v4, v3, v5

    aput-object v3, v1, v2

    .line 391
    new-array v2, v5, [I

    aput-object v2, v1, v8

    .line 392
    aget-object v2, v1, v5

    invoke-virtual {v0, v2, p5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 393
    aget-object v2, v1, v7

    invoke-virtual {v0, v2, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 394
    aget-object v2, v1, v6

    invoke-virtual {v0, v2, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 395
    aget-object v2, v1, v8

    const-string v3, "gionee/drawable/download_button_state_disable.jpg"

    invoke-static {p0, p1, v3}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->get(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 397
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    return-void

    .line 386
    nop

    :array_58
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 387
    :array_60
    .array-data 4
        0x101009e
        0x101009c
    .end array-data

    .line 389
    :array_68
    .array-data 4
        0x101009c
        0x101009d
    .end array-data
.end method


# virtual methods
.method public getCancelButton(Ljava/lang/String;II)Landroid/view/View;
    .registers 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "textColor"    # I

    .prologue
    const/4 v0, -0x2

    .line 262
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 263
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/Button;

    iget-object v0, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 264
    .local v2, "bt":Landroid/widget/Button;
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setId(I)V

    .line 267
    iget-object v0, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "gionee/drawable/cancel_button_normal.png"

    invoke-static {v3, v4, v5}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->get(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 268
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v8, "gionee/drawable/cancel_button_state_pressed.png"

    invoke-static {v4, v5, v8}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->get(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 269
    iget-object v5, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "gionee/drawable/cancel_button_state_pressed.png"

    invoke-static {v5, v8, v9}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->get(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 267
    invoke-static/range {v0 .. v5}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->setPressedBg(Landroid/content/Context;Ljava/lang/Class;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 271
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 272
    iget-object v0, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v7

    .line 273
    .local v7, "size":I
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 274
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {v2, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 277
    return-object v2
.end method

.method public getDownloadButton(Ljava/lang/String;II)Landroid/view/View;
    .registers 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "textColor"    # I

    .prologue
    const/4 v0, -0x2

    .line 242
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 243
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/Button;

    iget-object v0, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 244
    .local v2, "bt":Landroid/widget/Button;
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setId(I)V

    .line 247
    iget-object v0, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "gionee/drawable/download_button_normal.png"

    invoke-static {v3, v4, v5}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->get(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 248
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "gionee/drawable/download_button_state_pressed.png"

    invoke-static {v4, v5, v7}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->get(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 249
    iget-object v5, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "gionee/drawable/download_button_state_pressed.png"

    invoke-static {v5, v7, v8}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->get(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 247
    invoke-static/range {v0 .. v5}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->setPressedBg(Landroid/content/Context;Ljava/lang/Class;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 251
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 255
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v2, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 258
    return-object v2
.end method

.method public getTextView(Ljava/lang/String;I)Landroid/view/View;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v2, -0x2

    .line 401
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 402
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 403
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setId(I)V

    .line 407
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    return-object v1
.end method

.method public getTextView(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x2

    .line 418
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 419
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 420
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    return-object v1
.end method

.method public getView()Landroid/view/View;
    .registers 7

    .prologue
    .line 44
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .local v3, "panelHeight":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 54
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 59
    :try_start_10
    iget-object v4, p0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->mContext:Landroid/content/Context;

    const-string v5, "#FFF0F0E9"

    invoke-static {v4, v5}, Lcom/gionee/gsp/ui/drawable/GnBg;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 60
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_54

    .line 68
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1b
    invoke-direct {p0}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getTitle()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    invoke-direct {p0}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getLine()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    const-string v4, "\u4e3a\u4e86\u83b7\u5f97\u66f4\u5b89\u5168\u548c\u4fbf\u6377\u7684\u652f\u4ed8\u4f53\u9a8c\uff0c\u8bf7\u5347\u7ea7\u652f\u4ed8\u670d\u52a1"

    invoke-direct {p0, v4}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getDesc(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-direct {p0}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getDownloadSchedule()Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "downloadSchedule":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    invoke-direct {p0}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getBlanking()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-direct {p0}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getDownloadTextInfo()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    invoke-direct {p0}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getBottom()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    return-object v3

    .line 62
    .end local v0    # "downloadSchedule":Landroid/view/View;
    :catch_54
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method
