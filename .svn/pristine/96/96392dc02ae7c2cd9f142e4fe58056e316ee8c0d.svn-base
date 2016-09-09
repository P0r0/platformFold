.class Lcom/vivo/upgrade/SelfUpdateDialog;
.super Landroid/app/Dialog;
.source "SelfUpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;
    }
.end annotation


# static fields
.field public static final COMMON_DIALOG:I = 0x1

.field public static final FIRST_BTN:I = 0x1

.field public static final FORCE_DIALOG:I = 0x2

.field public static final INSTALL_DIALOG:I = 0x3

.field public static final SECOND_BTN:I = 0x2

.field public static final THIRD_BTN:I = 0x3


# instance fields
.field private mDownBar:Landroid/widget/ProgressBar;

.field private mDownClickListener:Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;

.field private mDownText:Landroid/widget/TextView;

.field public mIsChecked:Z

.field private mNegativeBtn:Landroid/widget/TextView;

.field private mNegativeBtnLayout:Landroid/widget/RelativeLayout;

.field private mPositiveBtn:Landroid/widget/TextView;

.field private mPositiveBtnLayout:Landroid/widget/RelativeLayout;

.field private mSingleBtn:Landroid/widget/TextView;

.field private mSingleBtnLayout:Landroid/widget/RelativeLayout;

.field public mWhichBtn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "positiveBtnText"    # Ljava/lang/String;
    .param p6, "negativeBtnText"    # Ljava/lang/String;
    .param p7, "dialogType"    # I

    .prologue
    .line 40
    const-string v0, "style"

    const-string v1, "vivo_upgrade_dialog"

    invoke-static {p1, v0, v1}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mIsChecked:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownClickListener:Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mWhichBtn:I

    .line 42
    invoke-direct/range {p0 .. p7}, Lcom/vivo/upgrade/SelfUpdateDialog;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/vivo/upgrade/SelfUpdateDialog;)Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownClickListener:Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "positiveBtnText"    # Ljava/lang/String;
    .param p6, "negativeBtnText"    # Ljava/lang/String;
    .param p7, "dialogType"    # I

    .prologue
    .line 54
    const-string v9, "layout"

    const-string v10, "vivo_upgrade_dialog_message"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->setContentView(I)V

    .line 55
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->setCanceledOnTouchOutside(Z)V

    .line 57
    const-string v9, "id"

    const-string v10, "vivo_upgrade_title"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 58
    .local v6, "titleText":Landroid/widget/TextView;
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const-string v9, "id"

    const-string v10, "vivo_upgrade_version"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 61
    .local v7, "versionText":Landroid/widget/TextView;
    const/4 v9, 0x3

    move/from16 v0, p7

    if-ne v0, v9, :cond_15f

    const/16 v9, 0x8

    :goto_35
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const-string v9, "id"

    const-string v10, "vivo_upgrade_message"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 65
    .local v3, "messageText":Landroid/widget/TextView;
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 66
    sget v1, Lcom/vivo/upgrade/UpgradeActivity;->density:F

    .line 67
    .local v1, "desity":F
    const/high16 v9, 0x40000000    # 2.0f

    cmpl-float v9, v1, v9

    if-ltz v9, :cond_162

    const/16 v5, 0x10

    .line 68
    .local v5, "tipsMaxLine":I
    :goto_58
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 70
    const/4 v4, 0x0

    .line 72
    .local v4, "richDescription":Ljava/lang/CharSequence;
    :try_start_5c
    invoke-static/range {p4 .. p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_166

    move-result-object v4

    .line 77
    :goto_60
    if-eqz v4, :cond_16c

    .line 78
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_65
    const-string v9, "id"

    const-string v10, "vivo_upgrade_install_message"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v9, 0x3

    move/from16 v0, p7

    if-ne v0, v9, :cond_173

    const/4 v9, 0x0

    :goto_77
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const-string v9, "id"

    const-string v10, "vivo_upgrade_update_dialog_download_progress_bar"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    iput-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownBar:Landroid/widget/ProgressBar;

    .line 86
    const-string v9, "id"

    const-string v10, "vivo_upgrade_update_dialog_download_progress"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownText:Landroid/widget/TextView;

    .line 88
    const-string v9, "id"

    const-string v10, "vivo_upgrade_no_more_warning"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 89
    .local v8, "warnBox":Landroid/widget/CheckBox;
    const/4 v9, 0x1

    move/from16 v0, p7

    if-ne v0, v9, :cond_177

    const/4 v9, 0x0

    :goto_ae
    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 90
    new-instance v9, Lcom/vivo/upgrade/SelfUpdateDialog$1;

    invoke-direct {v9, p0}, Lcom/vivo/upgrade/SelfUpdateDialog$1;-><init>(Lcom/vivo/upgrade/SelfUpdateDialog;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    const-string v9, "id"

    const-string v10, "vivo_upgrade_okBtnLayout"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mPositiveBtnLayout:Landroid/widget/RelativeLayout;

    .line 99
    const-string v9, "id"

    const-string v10, "vivo_upgrade_cancelBtnLayout"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mNegativeBtnLayout:Landroid/widget/RelativeLayout;

    .line 100
    const-string v9, "id"

    const-string v10, "vivo_upgrade_singleBtnLayout"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mSingleBtnLayout:Landroid/widget/RelativeLayout;

    .line 103
    iget-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mPositiveBtnLayout:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    iget-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mNegativeBtnLayout:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    iget-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mSingleBtnLayout:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 107
    const-string v9, "id"

    const-string v10, "vivo_upgrade_ok"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mPositiveBtn:Landroid/widget/TextView;

    .line 108
    iget-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mPositiveBtn:Landroid/widget/TextView;

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mPositiveBtn:Landroid/widget/TextView;

    new-instance v10, Lcom/vivo/upgrade/SelfUpdateDialog$2;

    move/from16 v0, p7

    invoke-direct {v10, p0, v0}, Lcom/vivo/upgrade/SelfUpdateDialog$2;-><init>(Lcom/vivo/upgrade/SelfUpdateDialog;I)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/vivo/upgrade/SelfUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "id"

    const-string v11, "vivo_upgrade_cancel"

    invoke-static {v9, v10, v11}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mNegativeBtn:Landroid/widget/TextView;

    .line 125
    iget-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mNegativeBtn:Landroid/widget/TextView;

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mNegativeBtn:Landroid/widget/TextView;

    new-instance v10, Lcom/vivo/upgrade/SelfUpdateDialog$3;

    invoke-direct {v10, p0}, Lcom/vivo/upgrade/SelfUpdateDialog$3;-><init>(Lcom/vivo/upgrade/SelfUpdateDialog;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const-string v9, "id"

    const-string v10, "vivo_upgrade_singlebtn"

    invoke-static {p1, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/vivo/upgrade/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mSingleBtn:Landroid/widget/TextView;

    .line 139
    iget-object v9, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mSingleBtn:Landroid/widget/TextView;

    new-instance v10, Lcom/vivo/upgrade/SelfUpdateDialog$4;

    invoke-direct {v10, p0}, Lcom/vivo/upgrade/SelfUpdateDialog$4;-><init>(Lcom/vivo/upgrade/SelfUpdateDialog;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void

    .line 61
    .end local v1    # "desity":F
    .end local v3    # "messageText":Landroid/widget/TextView;
    .end local v4    # "richDescription":Ljava/lang/CharSequence;
    .end local v5    # "tipsMaxLine":I
    .end local v8    # "warnBox":Landroid/widget/CheckBox;
    :cond_15f
    const/4 v9, 0x0

    goto/16 :goto_35

    .line 67
    .restart local v1    # "desity":F
    .restart local v3    # "messageText":Landroid/widget/TextView;
    :cond_162
    const/16 v5, 0xa

    goto/16 :goto_58

    .line 73
    .restart local v4    # "richDescription":Ljava/lang/CharSequence;
    .restart local v5    # "tipsMaxLine":I
    :catch_166
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_60

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_16c
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_65

    .line 83
    :cond_173
    const/16 v9, 0x8

    goto/16 :goto_77

    .line 89
    .restart local v8    # "warnBox":Landroid/widget/CheckBox;
    :cond_177
    const/16 v9, 0x8

    goto/16 :goto_ae
.end method


# virtual methods
.method public downFailByNet()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 195
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mPositiveBtnLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mPositiveBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mPositiveBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/upgrade/SelfUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_upgrade_redownload"

    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mNegativeBtnLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mNegativeBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/upgrade/SelfUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_upgrade_cancel"

    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 200
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mSingleBtnLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/upgrade/SelfUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_upgrade_retry_download"

    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    return-void
.end method

.method public downFailBySpace()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 183
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mPositiveBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mPositiveBtnLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mNegativeBtnLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mSingleBtnLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    return-void
.end method

.method public progressBarUpdate(ZILjava/lang/String;)V
    .registers 6
    .param p1, "isIndeterminate"    # Z
    .param p2, "progress"    # I
    .param p3, "progressText"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 173
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_15

    .line 174
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    :cond_15
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 177
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public setDownBtnEnabled(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mPositiveBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 168
    return-void
.end method

.method public setmDownClickListener(Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;)V
    .registers 2
    .param p1, "downClickListener"    # Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownClickListener:Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;

    .line 48
    return-void
.end method

.method public startDown()V
    .registers 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mPositiveBtnLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mNegativeBtnLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mSingleBtnLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog;->mDownText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/upgrade/SelfUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_upgrade_waiting_for_download"

    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    return-void
.end method
