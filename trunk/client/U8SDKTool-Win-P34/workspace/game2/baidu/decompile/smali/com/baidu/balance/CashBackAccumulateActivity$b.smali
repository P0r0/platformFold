.class Lcom/baidu/balance/CashBackAccumulateActivity$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/balance/CashBackAccumulateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/balance/CashBackAccumulateActivity;

.field private b:Lcom/baidu/wallet/base/widget/NetImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/baidu/balance/CashBackAccumulateActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->a:Lcom/baidu/balance/CashBackAccumulateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/balance/CashBackAccumulateActivity;Lcom/baidu/balance/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/balance/CashBackAccumulateActivity$b;-><init>(Lcom/baidu/balance/CashBackAccumulateActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/balance/CashBackAccumulateActivity$b;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/balance/CashBackAccumulateActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->c:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/balance/CashBackAccumulateActivity$b;Lcom/baidu/wallet/base/widget/NetImageView;)Lcom/baidu/wallet/base/widget/NetImageView;
    .registers 2

    iput-object p1, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->b:Lcom/baidu/wallet/base/widget/NetImageView;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/balance/CashBackAccumulateActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->d:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/baidu/balance/CashBackAccumulateActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->e:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic d(Lcom/baidu/balance/CashBackAccumulateActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->f:Landroid/widget/TextView;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->c:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->remark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->remark:Ljava/lang/String;

    :goto_15
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    iget-object v0, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2b

    iget-object v2, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->d:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->date:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a4

    iget-object v0, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->date:Ljava/lang/String;

    :goto_28
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    iget-object v0, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_63

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->amount:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5a

    iget v2, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->behav:I

    packed-switch v2, :pswitch_data_ee

    iget-object v2, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->a:Lcom/baidu/balance/CashBackAccumulateActivity;

    invoke-static {v2}, Lcom/baidu/balance/CashBackAccumulateActivity;->n(Lcom/baidu/balance/CashBackAccumulateActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v2

    const-string v3, "ebpay_yuan"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->amount:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5a
    :goto_5a
    iget-object v2, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_63
    iget-object v0, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_76

    iget-object v2, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->f:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->type_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e8

    iget-object v0, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->type_name:Ljava/lang/String;

    :goto_73
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_76
    iget-object v0, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->b:Lcom/baidu/wallet/base/widget/NetImageView;

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->banner_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->banner_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->b:Lcom/baidu/wallet/base/widget/NetImageView;

    iget-object v2, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->banner_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageUrl(Ljava/lang/String;)V

    :cond_90
    iget-object v2, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->b:Lcom/baidu/wallet/base/widget/NetImageView;

    iget-object v0, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->banner_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_eb

    move v0, v1

    :goto_9b
    invoke-virtual {v2, v0}, Lcom/baidu/wallet/base/widget/NetImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_a0
    const-string v0, ""

    goto/16 :goto_15

    :cond_a4
    const-string v0, ""

    goto :goto_28

    :pswitch_a7
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->a:Lcom/baidu/balance/CashBackAccumulateActivity;

    invoke-static {v3}, Lcom/baidu/balance/CashBackAccumulateActivity;->l(Lcom/baidu/balance/CashBackAccumulateActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v3

    const-string v4, "ebpay_yuan"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->amount:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5a

    :pswitch_c7
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/balance/CashBackAccumulateActivity$b;->a:Lcom/baidu/balance/CashBackAccumulateActivity;

    invoke-static {v3}, Lcom/baidu/balance/CashBackAccumulateActivity;->m(Lcom/baidu/balance/CashBackAccumulateActivity;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v3

    const-string v4, "ebpay_yuan"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;->amount:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5a

    :cond_e8
    const-string v0, ""

    goto :goto_73

    :cond_eb
    const/4 v0, 0x4

    goto :goto_9b

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_c7
    .end packed-switch
.end method
