.class public Lcom/duoku/platform/download/apapter/DownloadAdapter;
.super Lcom/duoku/platform/download/apapter/AbstractListAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/view/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/apapter/DownloadAdapter$a;,
        Lcom/duoku/platform/download/apapter/DownloadAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoku/platform/download/apapter/AbstractListAdapter",
        "<",
        "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
        ">;",
        "Lcom/duoku/platform/view/i;"
    }
.end annotation


# instance fields
.field foregroundColorSpan:Landroid/text/style/ForegroundColorSpan;

.field foregroundColorSpanOpen:Landroid/text/style/ForegroundColorSpan;

.field formatString:Ljava/lang/String;

.field formatString2:Ljava/lang/String;

.field imageLoader:Lcom/duoku/platform/util/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;-><init>(Landroid/content/Context;)V

    .line 269
    const-string v0, "%s "

    iput-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->formatString:Ljava/lang/String;

    .line 270
    const-string v0, "%d%%"

    iput-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->formatString2:Ljava/lang/String;

    .line 498
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_title_color_red"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->foregroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 513
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_download_btn_open"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->foregroundColorSpanOpen:Landroid/text/style/ForegroundColorSpan;

    .line 525
    new-instance v0, Lcom/duoku/platform/util/i;

    invoke-direct {v0}, Lcom/duoku/platform/util/i;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->imageLoader:Lcom/duoku/platform/util/i;

    .line 48
    return-void
.end method

.method private bindProgress(Lcom/duoku/platform/download/mode/DownloadAppInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Lcom/duoku/platform/view/AnimationDrawableView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;)V
    .registers 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 287
    const/4 v2, 0x1

    invoke-virtual {p5, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 289
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v9

    .line 290
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->imageLoader:Lcom/duoku/platform/util/i;

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Lcom/duoku/platform/util/i;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 291
    sparse-switch v9, :sswitch_data_3c4

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 301
    invoke-direct/range {v2 .. v8}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->setDefaultViewState(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Lcom/duoku/platform/view/AnimationDrawableView;Landroid/widget/TextView;)V

    .line 303
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isDiffUpdate()Z

    move-result v2

    .line 304
    sparse-switch v9, :sswitch_data_3d2

    .line 496
    :cond_29
    :goto_29
    :sswitch_29
    return-void

    .line 307
    :sswitch_2a
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setVisibility(I)V

    .line 308
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    const/16 v2, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 311
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getProgressValue(JJ)I

    move-result v2

    .line 313
    iget-object v3, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->formatString:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v8, "dk_waitting"

    invoke-static {v7, v8}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-direct {p0, p2, p1}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->setProgressText(Landroid/widget/TextView;Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 317
    invoke-virtual {p4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 319
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_btn_download_pending_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setImageResource(I)V

    .line 320
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_label_waiting"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_29

    .line 324
    :sswitch_8e
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setVisibility(I)V

    .line 325
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    const/16 v2, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 327
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getProgressValue(JJ)I

    move-result v2

    .line 328
    iget-object v3, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->formatString2:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-direct {p0, p2, p1}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->setProgressText(Landroid/widget/TextView;Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 330
    invoke-virtual {p4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 332
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_btn_download_pause_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setImageResource(I)V

    .line 333
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_label_pause"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_29

    .line 337
    :sswitch_e2
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setVisibility(I)V

    .line 338
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    const/16 v2, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 340
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_download_failed_and_try"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 341
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    const/16 v2, 0x8

    invoke-virtual {p4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 344
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_btn_download_retry_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setImageResource(I)V

    .line 345
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_try_again"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_29

    .line 348
    :sswitch_126
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setVisibility(I)V

    .line 349
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    const/16 v2, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 351
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getProgressValue(JJ)I

    move-result v2

    .line 352
    iget-object v3, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->formatString:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v8, "dk_paused"

    invoke-static {v7, v8}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-direct {p0, p2, p1}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->setProgressText(Landroid/widget/TextView;Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 354
    invoke-virtual {p4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 356
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_btn_download_resume_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setImageResource(I)V

    .line 357
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_resume"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_29

    .line 361
    :sswitch_18b
    const/16 v3, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/duoku/platform/view/AnimationDrawableView;->setVisibility(I)V

    .line 362
    const/16 v3, 0x8

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    const/4 v3, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 365
    if-nez v2, :cond_29

    .line 367
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v4, "dk_download_successful_and_install"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-direct {p0, p3, p1, v2}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->setFinishOpenText(Landroid/widget/TextView;Lcom/duoku/platform/download/mode/DownloadAppInfo;Ljava/lang/String;)V

    .line 369
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    const/16 v2, 0x8

    invoke-virtual {p4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 371
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_btn_download_install_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setImageResource(I)V

    .line 372
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_install"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 375
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_btn_download_installgame_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 376
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v4, "dk_download_white"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 377
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_install"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_29

    .line 417
    :sswitch_20d
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    const/16 v2, 0x8

    invoke-virtual {p4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 419
    const-string v2, "\u5408\u5e76\u5931\u8d25"

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_btn_download_retry_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setImageResource(I)V

    .line 422
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "try_again"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_29

    .line 428
    :sswitch_238
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "download_successful_and_merging"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 429
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    const/16 v2, 0x8

    invoke-virtual {p4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 432
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_btn_download_install_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setImageResource(I)V

    .line 433
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "label_installing"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_29

    .line 448
    :sswitch_269
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_download_successful_and_install"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 449
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    const/16 v2, 0x8

    invoke-virtual {p4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 451
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_btn_download_install_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setImageResource(I)V

    .line 452
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_install"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_29

    .line 456
    :sswitch_29a
    const/16 v2, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setVisibility(I)V

    .line 457
    const/16 v2, 0x8

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    const/4 v2, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 459
    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 460
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_hint_installing"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 461
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    const/16 v2, 0x8

    invoke-virtual {p4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 463
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_installing"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setImageResource(I)V

    .line 464
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_installing"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 465
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_installing"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_29

    .line 469
    :sswitch_2f0
    const/16 v2, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setVisibility(I)V

    .line 470
    const/16 v2, 0x8

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    const/4 v2, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 472
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_install_failed"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 473
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    const/16 v2, 0x8

    invoke-virtual {p4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 475
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_btn_download_install_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setImageResource(I)V

    .line 476
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_install"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 477
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_install"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_29

    .line 480
    :sswitch_344
    const/16 v2, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setVisibility(I)V

    .line 481
    const/16 v2, 0x8

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    const/4 v2, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 483
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v4, "dk_speed_download_installed"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-direct {p0, p3, p1, v2}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->setFinishOpenText(Landroid/widget/TextView;Lcom/duoku/platform/download/mode/DownloadAppInfo;Ljava/lang/String;)V

    .line 485
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    const/16 v2, 0x8

    invoke-virtual {p4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 487
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_btn_download_retry_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setImageResource(I)V

    .line 488
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_open_game"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 490
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_btn_download_opengame_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 491
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v4, "dk_btn_download_opentextcolor_selector"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 492
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_open_game"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_29

    .line 291
    :sswitch_data_3c4
    .sparse-switch
        0x0 -> :sswitch_29
        0x2000 -> :sswitch_29
        0x4000 -> :sswitch_29
    .end sparse-switch

    .line 304
    :sswitch_data_3d2
    .sparse-switch
        0x4 -> :sswitch_2a
        0x8 -> :sswitch_8e
        0x10 -> :sswitch_126
        0x20 -> :sswitch_e2
        0x40 -> :sswitch_18b
        0x80 -> :sswitch_29
        0x100 -> :sswitch_20d
        0x200 -> :sswitch_238
        0x400 -> :sswitch_29a
        0x800 -> :sswitch_2f0
        0x1000 -> :sswitch_344
        0x8000 -> :sswitch_29
        0x10000 -> :sswitch_29
        0x40000 -> :sswitch_29
        0x80000 -> :sswitch_269
    .end sparse-switch
.end method

.method private bindView(ILcom/duoku/platform/download/apapter/DownloadAdapter$a;)V
    .registers 13

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 530
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 531
    const-string v0, "DownloadAppListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindView "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_28
    if-nez v1, :cond_2b

    .line 553
    :goto_2a
    return-void

    .line 535
    :cond_2b
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getIsCancelDownload()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 537
    iget-object v0, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->j:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 543
    :goto_37
    iget-object v0, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->a:Lcom/duoku/platform/download/widget/XCRoundRectImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->setTag(Ljava/lang/Object;)V

    .line 549
    iget-object v0, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->g:Lcom/duoku/platform/view/AnimationDrawableView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/AnimationDrawableView;->setTag(Ljava/lang/Object;)V

    .line 551
    iget-object v2, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->e:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->d:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->c:Landroid/widget/ProgressBar;

    iget-object v5, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->i:Landroid/widget/LinearLayout;

    iget-object v6, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->g:Lcom/duoku/platform/view/AnimationDrawableView;

    iget-object v7, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->h:Landroid/widget/TextView;

    iget-object v8, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->k:Landroid/widget/Button;

    iget-object v9, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->a:Lcom/duoku/platform/download/widget/XCRoundRectImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->bindProgress(Lcom/duoku/platform/download/mode/DownloadAppInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Lcom/duoku/platform/view/AnimationDrawableView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;)V

    goto :goto_2a

    .line 541
    :cond_67
    iget-object v0, p2, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->j:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_37
.end method

.method private setDefaultViewState(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Lcom/duoku/platform/view/AnimationDrawableView;Landroid/widget/TextView;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    .line 243
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 245
    :cond_a
    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_13

    .line 247
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :cond_13
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 251
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    :cond_1c
    invoke-virtual {p5}, Lcom/duoku/platform/view/AnimationDrawableView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_26

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lcom/duoku/platform/view/AnimationDrawableView;->setEnabled(Z)V

    .line 258
    :cond_26
    invoke-virtual {p5}, Lcom/duoku/platform/view/AnimationDrawableView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 260
    invoke-virtual {p5, v1}, Lcom/duoku/platform/view/AnimationDrawableView;->setVisibility(I)V

    .line 263
    :cond_2f
    invoke-virtual {p6}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_38

    .line 265
    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    :cond_38
    return-void
.end method

.method private setFinishOpenText(Landroid/widget/TextView;Lcom/duoku/platform/download/mode/DownloadAppInfo;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 517
    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_4a

    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSize()J

    move-result-wide v0

    :goto_10
    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 519
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    .line 520
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "   "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->foregroundColorSpanOpen:Landroid/text/style/ForegroundColorSpan;

    const/16 v4, 0x12

    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 522
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    return-void

    .line 517
    :cond_4a
    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v0

    goto :goto_10
.end method

.method private setProgressText(Landroid/widget/TextView;Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 9

    .prologue
    .line 503
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getCurrtentSize()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 504
    iget-object v3, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_4a

    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSize()J

    move-result-wide v0

    :goto_1a
    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 506
    const/4 v1, 0x0

    .line 507
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 508
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->foregroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    const/16 v2, 0x12

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 510
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    return-void

    .line 504
    :cond_4a
    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getTotalSize()J

    move-result-wide v0

    goto :goto_1a
.end method

.method private updateItemView(Lcom/duoku/platform/download/mode/DownloadAppInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Lcom/duoku/platform/view/AnimationDrawableView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;)V
    .registers 14

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    .line 89
    invoke-virtual {p6}, Lcom/duoku/platform/view/AnimationDrawableView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getItemId(I)J

    move-result-wide v0

    .line 91
    cmp-long v0, v2, v0

    if-eqz v0, :cond_1e

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1e
    invoke-direct/range {p0 .. p9}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->bindProgress(Lcom/duoku/platform/download/mode/DownloadAppInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Lcom/duoku/platform/view/AnimationDrawableView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;)V

    .line 96
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getHeaderId(I)J
    .registers 4

    .prologue
    .line 684
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 685
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v0

    .line 687
    const/16 v1, 0x200

    if-eq v0, v1, :cond_26

    const/16 v1, 0x400

    if-eq v0, v1, :cond_26

    const/16 v1, 0x100

    if-eq v0, v1, :cond_26

    const/16 v1, 0x800

    if-eq v0, v1, :cond_26

    .line 688
    const/16 v1, 0x40

    if-eq v0, v1, :cond_26

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_26

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_29

    .line 690
    :cond_26
    const-wide/16 v0, 0x40

    .line 696
    :goto_28
    return-wide v0

    .line 694
    :cond_29
    const-wide/16 v0, 0x41

    goto :goto_28
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 594
    if-nez p2, :cond_ae

    .line 596
    new-instance v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;

    invoke-direct {v1, p0}, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;-><init>(Lcom/duoku/platform/download/apapter/DownloadAdapter;)V

    .line 597
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v3, "dk_manager_activity_download_list_header"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 598
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "red_notify_plain_text"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;->a:Landroid/widget/TextView;

    .line 599
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "red_notify_red_text"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;->b:Landroid/widget/TextView;

    .line 600
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "dk_download_item_divide"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;->c:Landroid/view/View;

    .line 601
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 608
    :goto_49
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "download_header_layout"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 612
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 613
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    .line 614
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v0

    .line 615
    iget-object v2, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    invoke-virtual {p0}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getSuccessfulCount()I

    move-result v2

    .line 617
    invoke-virtual {p0}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getCount()I

    move-result v3

    .line 618
    const/16 v4, 0x200

    if-eq v0, v4, :cond_8a

    const/16 v4, 0x400

    if-eq v0, v4, :cond_8a

    const/16 v4, 0x100

    if-eq v0, v4, :cond_8a

    const/16 v4, 0x800

    if-eq v0, v4, :cond_8a

    .line 619
    const/16 v4, 0x40

    if-eq v0, v4, :cond_8a

    const/high16 v4, 0x80000

    if-eq v0, v4, :cond_8a

    const/16 v4, 0x1000

    if-ne v0, v4, :cond_bc

    .line 629
    :cond_8a
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;->a:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    sub-int v0, v3, v2

    if-gtz v0, :cond_b6

    .line 632
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 649
    :goto_ad
    return-object p2

    .line 605
    :cond_ae
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;

    move-object v1, v0

    goto :goto_49

    .line 636
    :cond_b6
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;->c:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ad

    .line 642
    :cond_bc
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;->a:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6b63\u5728\u4e0b\u8f7d("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;->b:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$b;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ad
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 71
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionForId(J)I
    .registers 8

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getCount()I

    move-result v1

    .line 172
    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_9

    .line 180
    const/4 v0, -0x1

    :cond_8
    return v0

    .line 174
    :cond_9
    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getItemId(I)J

    move-result-wide v2

    .line 175
    cmp-long v2, v2, p1

    if-eqz v2, :cond_8

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public getProgressValue(JJ)I
    .registers 8

    .prologue
    .line 557
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    .line 558
    const/4 v0, 0x0

    .line 559
    :goto_7
    return v0

    :cond_8
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p3

    div-long/2addr v0, p1

    long-to-int v0, v0

    goto :goto_7
.end method

.method public getSuccessfulCount()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 663
    invoke-virtual {p0}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getCount()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 665
    :goto_7
    if-lt v2, v3, :cond_c

    .line 675
    sub-int v0, v3, v1

    return v0

    .line 667
    :cond_c
    invoke-virtual {p0, v2}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v0

    .line 668
    const/4 v4, 0x4

    if-eq v0, v4, :cond_2d

    const/high16 v4, 0x40000

    if-eq v0, v4, :cond_2d

    const/16 v4, 0x8

    if-eq v0, v4, :cond_2d

    const/16 v4, 0x80

    if-eq v0, v4, :cond_2d

    .line 669
    const/16 v4, 0x10

    if-eq v0, v4, :cond_2d

    const/16 v4, 0x20

    if-ne v0, v4, :cond_34

    .line 671
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    .line 665
    :goto_2f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_7

    :cond_34
    move v0, v1

    goto :goto_2f
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .prologue
    .line 188
    if-nez p2, :cond_10c

    .line 193
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "dk_manager_activity_download_list_item"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 194
    new-instance v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;

    invoke-direct {v1}, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;-><init>()V

    .line 195
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "manager_activity_download_list_item_name"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->b:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "manager_activity_download_list_item_icon"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/widget/XCRoundRectImageView;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->a:Lcom/duoku/platform/download/widget/XCRoundRectImageView;

    .line 197
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "manager_activity_download_list_item_progress"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->c:Landroid/widget/ProgressBar;

    .line 198
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "manager_activity_download_list_item_text_percent"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->d:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "manager_activity_download_list_item_text_progress"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->e:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "download_item_action_iv"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/AnimationDrawableView;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->g:Lcom/duoku/platform/view/AnimationDrawableView;

    .line 201
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "download_item_action_tv"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->h:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "download_item_action_layout"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->i:Landroid/widget/LinearLayout;

    .line 203
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "download_item_action_cancel"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->j:Landroid/widget/RelativeLayout;

    .line 204
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "download_item_action_cancel_textview"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->f:Landroid/widget/TextView;

    .line 205
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v2, "btn_game_download_text"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->k:Landroid/widget/Button;

    .line 206
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->g:Lcom/duoku/platform/view/AnimationDrawableView;

    invoke-virtual {v0}, Lcom/duoku/platform/view/AnimationDrawableView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 207
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->j:Landroid/widget/RelativeLayout;

    .line 209
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->k:Landroid/widget/Button;

    .line 212
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    :goto_de
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->g:Lcom/duoku/platform/view/AnimationDrawableView;

    invoke-virtual {v0}, Lcom/duoku/platform/view/AnimationDrawableView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->j:Landroid/widget/RelativeLayout;

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->k:Landroid/widget/Button;

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    iget-object v0, v1, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;->a:Lcom/duoku/platform/download/widget/XCRoundRectImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->setTag(Ljava/lang/Object;)V

    .line 235
    invoke-direct {p0, p1, v1}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->bindView(ILcom/duoku/platform/download/apapter/DownloadAdapter$a;)V

    .line 236
    return-object p2

    .line 217
    :cond_10c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/apapter/DownloadAdapter$a;

    move-object v1, v0

    goto :goto_de
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 565
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->onListItemClickListener:Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;

    if-nez v0, :cond_5

    .line 581
    :cond_4
    :goto_4
    return-void

    .line 569
    :cond_5
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 571
    iget-object v1, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->onListItemClickListener:Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;->onItemButtonClick(Landroid/view/View;I)V

    goto :goto_4

    .line 573
    :cond_19
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2d

    .line 575
    iget-object v1, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->onListItemClickListener:Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;->onItemButtonClick(Landroid/view/View;I)V

    goto :goto_4

    .line 577
    :cond_2d
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 579
    iget-object v1, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->onListItemClickListener:Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;->onItemCancelDownloadClick(Landroid/view/View;I)V

    goto :goto_4
.end method

.method public setIconSize(I)V
    .registers 2

    .prologue
    .line 43
    return-void
.end method

.method public updateItemView(Landroid/view/View;Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 13

    .prologue
    .line 152
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v1, "manager_activity_download_list_item_progress"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 153
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v1, "manager_activity_download_list_item_text_progress"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v1, "manager_activity_download_list_item_text_percent"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v1, "download_item_action_layout"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 156
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v1, "download_item_action_iv"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/duoku/platform/view/AnimationDrawableView;

    .line 157
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v1, "download_item_action_tv"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v1, "btn_game_download_text"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 159
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const-string v1, "manager_activity_download_list_item_icon"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    move-object v0, p0

    move-object v1, p2

    .line 160
    invoke-direct/range {v0 .. v9}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->updateItemView(Lcom/duoku/platform/download/mode/DownloadAppInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Lcom/duoku/platform/view/AnimationDrawableView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;)V

    .line 161
    return-void
.end method

.method public updateItemView(Landroid/widget/ListView;J)V
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getCount()I

    move-result v6

    move v2, v4

    move v3, v5

    .line 109
    :goto_9
    if-lt v2, v6, :cond_e

    .line 119
    if-ne v3, v5, :cond_22

    .line 142
    :cond_d
    :goto_d
    return-void

    .line 111
    :cond_e
    invoke-virtual {p0, v2}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 112
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v8

    cmp-long v7, v8, p2

    if-nez v7, :cond_43

    move v1, v2

    .line 109
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_9

    .line 125
    :cond_22
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 126
    sub-int v0, v3, v2

    if-ltz v0, :cond_d

    .line 131
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    move v0, v4

    .line 132
    :goto_2f
    if-lt v0, v5, :cond_3d

    .line 136
    sub-int v0, v3, v2

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_d

    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->updateItemView(Landroid/view/View;Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    goto :goto_d

    .line 134
    :cond_3d
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_43
    move-object v0, v1

    move v1, v3

    goto :goto_1d
.end method
