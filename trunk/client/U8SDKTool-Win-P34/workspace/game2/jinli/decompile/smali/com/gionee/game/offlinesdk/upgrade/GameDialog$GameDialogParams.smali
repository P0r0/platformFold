.class public Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;
.super Ljava/lang/Object;
.source "GameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/game/offlinesdk/upgrade/GameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameDialogParams"
.end annotation


# instance fields
.field public mButtonParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;",
            ">;"
        }
    .end annotation
.end field

.field public mCloseButtonParam:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;

.field public mContentAlign:I

.field public mContentView:Landroid/view/View;

.field public mDownloadProgress:I

.field public mMessageText:Ljava/lang/CharSequence;

.field public mShowProgressBar:Z

.field public mTitleText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;


# direct methods
.method public constructor <init>(Lcom/gionee/game/offlinesdk/upgrade/GameDialog;Lcom/gionee/game/offlinesdk/upgrade/GameDialog;)V
    .registers 4
    .param p2, "dialog"    # Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mButtonParams:Ljava/util/ArrayList;

    .line 340
    const/16 v0, 0xe

    iput v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mContentAlign:I

    .line 346
    return-void
.end method

.method static synthetic access$000(Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;)V
    .registers 1
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->apply()V

    return-void
.end method

.method private apply()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 349
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mTitleText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9a

    .line 350
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v1, v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :goto_11
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_31

    .line 356
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v1, v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v1, v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mMessageTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v1, v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mMessageTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 361
    :cond_31
    iget v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mContentAlign:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_48

    .line 362
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 364
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mContentAlign:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 365
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v1, v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mContentContioner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_48
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_5b

    .line 369
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 371
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v1, v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mContentContioner:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5b
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mCloseButtonParam:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;

    if-eqz v1, :cond_74

    .line 375
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mCloseButtonParam:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;

    # getter for: Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;->access$100(Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mCloseButtonParam:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;

    # getter for: Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v2}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;->access$200(Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mCloseButtonParam:Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;

    # getter for: Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;->mWhich:I
    invoke-static {v3}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;->access$300(Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 379
    :cond_74
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->hasButton()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 380
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v1, v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_8b

    .line 381
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v1, v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 384
    :cond_8b
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->setButtons()V

    .line 387
    :cond_8e
    iget-boolean v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mShowProgressBar:Z

    if-eqz v1, :cond_a3

    .line 388
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v1, v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 392
    :goto_99
    return-void

    .line 352
    :cond_9a
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v1, v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_11

    .line 390
    :cond_a3
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v1, v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mProgressBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_99
.end method

.method private getTargetBtn(I)Landroid/widget/Button;
    .registers 3
    .param p1, "which"    # I

    .prologue
    .line 434
    packed-switch p1, :pswitch_data_14

    .line 442
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 436
    :pswitch_5
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v0, v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mPositiveButton:Landroid/widget/Button;

    goto :goto_4

    .line 438
    :pswitch_a
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v0, v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mNegativeButton:Landroid/widget/Button;

    goto :goto_4

    .line 440
    :pswitch_f
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v0, v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mCloseIconButton:Landroid/widget/Button;

    goto :goto_4

    .line 434
    :pswitch_data_14
    .packed-switch -0x3
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method private hasButton()Z
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mButtonParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isMultiButton()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 409
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mButtonParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "which"    # I

    .prologue
    .line 418
    invoke-direct {p0, p3}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->getTargetBtn(I)Landroid/widget/Button;

    move-result-object v0

    .line 419
    .local v0, "targetBtn":Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 420
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 421
    new-instance v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams$1;-><init>(Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    return-void
.end method

.method private setButtonDividerVisible()V
    .registers 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->this$0:Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    iget-object v0, v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->mButtonDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 414
    return-void
.end method

.method private setButtons()V
    .registers 6

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->isMultiButton()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 400
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->setButtonDividerVisible()V

    .line 402
    :cond_9
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mButtonParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;

    .line 403
    .local v1, "param":Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;
    # getter for: Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;->access$100(Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;)Ljava/lang/CharSequence;

    move-result-object v2

    # getter for: Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;->access$200(Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    # getter for: Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;->mWhich:I
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;->access$300(Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_f

    .line 405
    .end local v1    # "param":Lcom/gionee/game/offlinesdk/upgrade/GameDialog$SetButtonParam;
    :cond_2b
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog$GameDialogParams;->mButtonParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 406
    return-void
.end method
