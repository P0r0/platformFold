.class public Lcom/bbk/payment/DetectPayResultActivity;
.super Lcom/bbk/payment/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/bbk/payment/model/OrderInfo;

.field private i:Z

.field private j:I

.field private k:I

.field private l:Ljava/lang/Thread;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/content/Context;

.field private o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private p:Landroid/widget/LinearLayout;

.field protected paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/CheckBox;

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/bbk/payment/BaseActivity;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->j:I

    iput v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->k:I

    iput v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->t:I

    iput v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->u:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->v:Ljava/lang/String;

    new-instance v0, Lcom/bbk/payment/p;

    invoke-direct {v0, p0}, Lcom/bbk/payment/p;-><init>(Lcom/bbk/payment/DetectPayResultActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->a:Landroid/os/Handler;

    new-instance v0, Lcom/bbk/payment/q;

    invoke-direct {v0, p0}, Lcom/bbk/payment/q;-><init>(Lcom/bbk/payment/DetectPayResultActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->w:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/DetectPayResultActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->l:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->l:Ljava/lang/Thread;

    :cond_c
    iget v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->k:I

    packed-switch v0, :pswitch_data_3c

    :goto_11
    iget v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->k:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_27

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->w:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->l:Ljava/lang/Thread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->i:Z

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_27
    return-void

    :pswitch_28
    const/16 v0, 0xa

    iput v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->j:I

    goto :goto_11

    :pswitch_2d
    const/16 v0, 0x14

    iput v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->j:I

    goto :goto_11

    :pswitch_32
    const/16 v0, 0x1e

    iput v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->j:I

    goto :goto_11

    :pswitch_37
    const/16 v0, 0x3c

    iput v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->j:I

    goto :goto_11

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_2d
        :pswitch_32
        :pswitch_37
    .end packed-switch
.end method

.method static synthetic a(Lcom/bbk/payment/DetectPayResultActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/DetectPayResultActivity;->j:I

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/DetectPayResultActivity;ILjava/lang/String;)V
    .registers 13

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/bbk/payment/DetectPayResultActivity;->i:Z

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->l:Ljava/lang/Thread;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->l:Ljava/lang/Thread;

    :cond_13
    const-string v0, "DetectPayResultActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateActivityUi, step="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", respMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_596

    :cond_34
    :goto_34
    return-void

    :pswitch_35
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, "9000"

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setResult_code(Ljava/lang/String;)V

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v0, :cond_192

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_rechange_pay_successful"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_134

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_rechange_pay_succ_content_no_ticket1"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v2, v9, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v4}, Lcom/bbk/payment/model/OrderInfo;->getRechargeOrderAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v4}, Lcom/bbk/payment/model/OrderInfo;->getDeductAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/bbk/payment/DetectPayResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_aa
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_success_back"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    invoke-direct {p0}, Lcom/bbk/payment/DetectPayResultActivity;->b()V

    :goto_bc
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_result_user_balance"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/bbk/payment/DetectPayResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_btn_default"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_TextColorWhite"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_succ"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_34

    :cond_134
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_rechange_pay_succ_content1"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v4}, Lcom/bbk/payment/model/OrderInfo;->getRechargeOrderAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v4}, Lcom/bbk/payment/model/OrderInfo;->getDeductAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p0, v1, v2}, Lcom/bbk/payment/DetectPayResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_aa

    :cond_192
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_recharge_succ_tip"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_recharge_succ_content"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v2, v7, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v4}, Lcom/bbk/payment/model/OrderInfo;->getRechargeOrderAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/bbk/payment/DetectPayResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_back"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_bc

    :pswitch_1e8
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    if-eqz v0, :cond_3a9

    const-string v0, "DetectPayResultActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----orderInfo.getPaymentType()------------------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getPaymentType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v0, :cond_337

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getPaymentType()I

    move-result v0

    packed-switch v0, :pswitch_data_5a2

    :pswitch_213
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_paytype_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    :goto_220
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, "4006"

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setResult_code(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_is_failure"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_is_failure1"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_btn_back_game"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_ticket_color"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v0, :cond_3b8

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_success_back"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_283
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_btn_default"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_TextColorWhite"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_retry"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_fail"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_34

    :pswitch_2dd
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_alipay_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :pswitch_2ec
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_uppay_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :pswitch_2fb
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_tencent_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :pswitch_30a
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_weixin_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :pswitch_319
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_card_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :pswitch_328
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_game_card_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :cond_337
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getPaymentType()I

    move-result v0

    packed-switch v0, :pswitch_data_5b6

    :pswitch_340
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_recharge_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :pswitch_34f
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_recharge_alipay_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :pswitch_35e
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_recharge_uppay_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :pswitch_36d
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_recharge_tencent_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :pswitch_37c
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_recharge_weixin_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :pswitch_38b
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_recharge_card_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :pswitch_39a
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_recharge_gcard_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :cond_3a9
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_paytype_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_220

    :cond_3b8
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_back"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_283

    :pswitch_3c9
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, "4006"

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setResult_code(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_fail_tip"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_fail_content"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v2, v9, [Ljava/lang/String;

    iget-object v3, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getRechargeOrderAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v4}, Lcom/bbk/payment/model/OrderInfo;->getNeedAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/bbk/payment/DetectPayResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_result_user_balance"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/bbk/payment/DetectPayResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_success_back"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_btn_back_game"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_ticket_color"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_btn_default"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_TextColorWhite"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_continue"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_continue"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getPaymentType()I

    move-result v0

    const-string v1, "DetectPayResultActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveChannelType, paytype="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLastSelectPayChannel(I)V

    goto/16 :goto_34

    :pswitch_503
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, "4006"

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setResult_code(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_detect_result_time_out"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_btn_default"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_TextColorWhite"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v0, :cond_577

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_success_back"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_detect_result_time_out_content"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_566
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_34

    :cond_577
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_back"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_detect_recjarge_result_time_out"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_566

    :pswitch_data_596
    .packed-switch 0x1
        :pswitch_35
        :pswitch_1e8
        :pswitch_3c9
        :pswitch_503
    .end packed-switch

    :pswitch_data_5a2
    .packed-switch 0x1
        :pswitch_2dd
        :pswitch_2ec
        :pswitch_213
        :pswitch_319
        :pswitch_328
        :pswitch_213
        :pswitch_30a
        :pswitch_2fb
    .end packed-switch

    :pswitch_data_5b6
    .packed-switch 0x1
        :pswitch_34f
        :pswitch_35e
        :pswitch_340
        :pswitch_38b
        :pswitch_39a
        :pswitch_340
        :pswitch_37c
        :pswitch_36d
    .end packed-switch
.end method

.method static synthetic a(Lcom/bbk/payment/DetectPayResultActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/DetectPayResultActivity;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/bbk/payment/DetectPayResultActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->j:I

    return v0
.end method

.method private b()V
    .registers 7

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "DetectPayResultActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " followed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasFollowed\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameFollowState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vcoinpay_result=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DetectPayResultActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshFollowLayout, show="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", followed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->t:I

    if-ne v0, v3, :cond_b4

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getResult_code()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9000"

    if-ne v0, v1, :cond_b4

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v0, :cond_b4

    iget v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->u:I

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameFollowState()I

    move-result v0

    if-eq v0, v3, :cond_b4

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a7

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a8

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_9e
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a7
    :goto_a7
    return-void

    :cond_a8
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9e

    :cond_ae
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a7

    :cond_b4
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a7
.end method

.method static synthetic b(Lcom/bbk/payment/DetectPayResultActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/DetectPayResultActivity;->k:I

    return-void
.end method

.method static synthetic c(Lcom/bbk/payment/DetectPayResultActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/DetectPayResultActivity;->t:I

    return-void
.end method

.method static synthetic c(Lcom/bbk/payment/DetectPayResultActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/bbk/payment/DetectPayResultActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->k:I

    return v0
.end method

.method static synthetic d(Lcom/bbk/payment/DetectPayResultActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/DetectPayResultActivity;->u:I

    return-void
.end method

.method static synthetic e(Lcom/bbk/payment/DetectPayResultActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbk/payment/DetectPayResultActivity;->a()V

    return-void
.end method

.method static synthetic f(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/bbk/payment/model/OrderInfo;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    return-object v0
.end method

.method static synthetic g(Lcom/bbk/payment/DetectPayResultActivity;)V
    .registers 8

    const/4 v1, 0x0

    new-instance v0, Lcom/bbk/payment/model/DeviceInfo;

    invoke-direct {v0, p0}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "version"

    const-string v5, "2.0.6"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signMethod"

    const-string v6, "MD5"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    iget-object v6, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v6}, Lcom/bbk/payment/model/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "model"

    invoke-virtual {v0}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    invoke-virtual {v0}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v0, 0x5

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "orderNumber"

    iget-object v5, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v5}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    const/4 v0, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "rechargeOrderNumber"

    iget-object v5, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v5}, Lcom/bbk/payment/model/OrderInfo;->getRechargeOrderNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_74

    move v0, v1

    :goto_71
    array-length v3, v2

    if-lt v0, v3, :cond_7d

    :cond_74
    new-instance v0, Lcom/bbk/payment/t;

    invoke-direct {v0, p0, v1}, Lcom/bbk/payment/t;-><init>(Lcom/bbk/payment/DetectPayResultActivity;B)V

    invoke-virtual {v0, v2}, Lcom/bbk/payment/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_7d
    const-string v3, "DetectPayResultActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "---------DetectPayResultActivity------nameValuePairs"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_71
.end method

.method static synthetic h(Lcom/bbk/payment/DetectPayResultActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/bbk/payment/DetectPayResultActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->t:I

    return v0
.end method

.method static synthetic j(Lcom/bbk/payment/DetectPayResultActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbk/payment/DetectPayResultActivity;->b()V

    return-void
.end method

.method static synthetic k(Lcom/bbk/payment/DetectPayResultActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->p:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/bbk/payment/DetectPayResultActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method


# virtual methods
.method public commitGameNotice()V
    .registers 8

    :try_start_0
    const-string v0, "DetectPayResultActivity"

    const-string v1, "commitGameNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/http/NameValuePair;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v3, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "2.0.6"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "version"

    const-string v4, "2.0.6"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "appId"

    iget-object v6, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v6}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "appId"

    iget-object v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "packageName"

    iget-object v6, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gamePackageName"

    iget-object v6, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-static {v6}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "gamePackageName"

    iget-object v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "model"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "model"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "imei"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uid"

    iget-object v5, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const-string v2, "uid"

    iget-object v3, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "signature"

    const-string v5, "https://pay.vivo.com.cn/vcoin/game/follow"

    invoke-static {v5, v1}, Lcom/bbk/payment/util/Vw;->getValueForPostRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/16 v1, 0x8

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "signMethod"

    const-string v4, "MD5"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/bbk/payment/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bbk/payment/r;-><init>(Lcom/bbk/payment/DetectPayResultActivity;B)V

    invoke-virtual {v1, v0}, Lcom/bbk/payment/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ea} :catch_eb

    :goto_ea
    return-void

    :catch_eb
    move-exception v0

    const-string v1, "DetectPayResultActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send initial payment failed,error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ea
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public getAppName()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1e} :catch_1f

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    const/4 v6, 0x1

    const-string v0, "DetectPayResultActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PaySuccActivity returnPayResult view="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",orderInfo.getPaymentType()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getPaymentType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_67

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->commitGameNotice()V

    :cond_3c
    :goto_3c
    const-string v0, "DetectPayResultActivity"

    const-string v1, "PaySuccActivity returnPayResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pay_result"

    const-string v3, "success"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "orderInfo"

    iget-object v3, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "pay_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/bbk/payment/DetectPayResultActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->finish()V

    :cond_67
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_74

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getPaymentType()I

    move-result v0

    packed-switch v0, :pswitch_data_104

    :cond_74
    :goto_74
    :pswitch_74
    return-void

    :cond_75
    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameFollowChecked(I)V

    goto :goto_3c

    :pswitch_7c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v2

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setRemainderBlance(J)V

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setRemainderBlanceY(J)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "payment_type"

    iget-object v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getPaymentType()I

    move-result v2

    invoke-static {p0, v2}, Lcom/bbk/payment/util/UtilTool;->getPayTypeByPayId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "retry"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->finish()V

    goto :goto_74

    :pswitch_d3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/CardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->finish()V

    goto :goto_74

    :pswitch_e8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbk/payment/JCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gamecard"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->finish()V

    goto/16 :goto_74

    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_7c
        :pswitch_74
        :pswitch_d3
        :pswitch_e8
        :pswitch_74
        :pswitch_7c
        :pswitch_7c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/bbk/payment/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "DetectPayResultActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_detect_result_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_paytype_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    iput-object p0, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orderInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/model/OrderInfo;

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    new-instance v0, Lcom/bbk/payment/payment/PaymentHelper;

    invoke-direct {v0, p0}, Lcom/bbk/payment/payment/PaymentHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->paymentHelper:Lcom/bbk/payment/payment/PaymentHelper;

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v0, :cond_1af

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_paytype_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    :goto_57
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->setLeftButtonGone()V

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_result_btn1"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_btn_disable"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_TextColorWhite"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_result_detecting_bt"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/bbk/payment/DetectPayResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_result_btn2"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_result_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_result_content"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_result_user_balance"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_result_icon"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_wait"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_customor_service"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/bbk/payment/model/OrderInfo;->custService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_game_notice_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "game_icon"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "game_name"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "game_notice_btn"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->queryGameNotice()V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->w:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->l:Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/bbk/payment/DetectPayResultActivity;->a()V

    new-instance v0, Lcom/bbk/payment/s;

    invoke-direct {v0, p0, v5}, Lcom/bbk/payment/s;-><init>(Lcom/bbk/payment/DetectPayResultActivity;B)V

    new-array v1, v6, [Ljava/net/URL;

    const/4 v2, 0x0

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/bbk/payment/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "DetectPayResultActivity"

    iget-object v1, p0, Lcom/bbk/payment/DetectPayResultActivity;->h:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1af
    invoke-virtual {p0}, Lcom/bbk/payment/DetectPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_recharge_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/DetectPayResultActivity;->showTitleMessage(I)V

    goto/16 :goto_57
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/bbk/payment/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method

.method public queryGameNotice()V
    .registers 8

    const/4 v2, 0x1

    :try_start_1
    const-string v0, "DetectPayResultActivity"

    const-string v1, "queryGameNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameFollowState()I

    move-result v0

    if-ne v0, v2, :cond_18

    const-string v0, "DetectPayResultActivity"

    const-string v1, "local has follow, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void

    :cond_18
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/http/NameValuePair;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v3, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "2.0.6"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "version"

    const-string v4, "2.0.6"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "appId"

    iget-object v6, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v6}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "appId"

    iget-object v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "packageName"

    iget-object v6, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gamePackageName"

    iget-object v6, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-static {v6}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "gamePackageName"

    iget-object v4, p0, Lcom/bbk/payment/DetectPayResultActivity;->n:Landroid/content/Context;

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "model"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "model"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "imei"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uid"

    iget-object v5, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const-string v2, "uid"

    iget-object v3, p0, Lcom/bbk/payment/DetectPayResultActivity;->o:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "signature"

    const-string v5, "https://pay.vivo.com.cn//vcoin/game/follow/query"

    invoke-static {v5, v1}, Lcom/bbk/payment/util/Vw;->getValueForPostRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/16 v1, 0x8

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "signMethod"

    const-string v4, "MD5"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/bbk/payment/u;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bbk/payment/u;-><init>(Lcom/bbk/payment/DetectPayResultActivity;B)V

    invoke-virtual {v1, v0}, Lcom/bbk/payment/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_fb} :catch_fd

    goto/16 :goto_17

    :catch_fd
    move-exception v0

    const-string v1, "DetectPayResultActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send initial payment failed,error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17
.end method
