.class public Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bbk/payment/dealRecord/MDealRecordInfo;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "VivoDealRecordDetailActivity"

    const-string v3, "**********onCreate*************"

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "layout"

    const-string v4, "vivo_deal_record_detail_layout"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1cb

    move v0, v1

    :goto_22
    const-string v4, "dealItem"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    if-eqz v4, :cond_1ce

    :goto_2a
    and-int/2addr v0, v1

    if-eqz v0, :cond_37

    const-string v0, "dealItem"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->b:Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    :cond_37
    iput-object p0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/bbk/payment/dealRecord/f;

    invoke-direct {v1, p0}, Lcom/bbk/payment/dealRecord/f;-><init>(Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->o:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbk/payment/dealRecord/g;

    invoke-direct {v1, p0}, Lcom/bbk/payment/dealRecord/g;-><init>(Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "deal_record_order_num"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_recharge_account_title"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_recharge_account"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_goods_des_title"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_goods_des"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_pay_money_title"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_pay_money"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_pay_quan_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->n:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_pay_quan_title"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_pay_quan"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_pay_time_title"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_pay_time"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->b:Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    if-eqz v0, :cond_1ca

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->b:Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->b:Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getOrderNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->b:Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->b:Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->b:Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->b:Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getTicketAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->b:Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->i:Landroid/widget/TextView;

    const-string v1, "\u6d88\u8d39\u5e10\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->j:Landroid/widget/TextView;

    const-string v1, "\u5546\u54c1\u540d\u79f0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->k:Landroid/widget/TextView;

    const-string v1, "\u6d88\u8d39\u91d1\u989d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->l:Landroid/widget/TextView;

    const-string v1, "\u6d88\u8d39\u793c\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->m:Landroid/widget/TextView;

    const-string v1, "\u6d88\u8d39\u65f6\u95f4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1ca
    :goto_1ca
    return-void

    :cond_1cb
    move v0, v2

    goto/16 :goto_22

    :cond_1ce
    move v1, v2

    goto/16 :goto_2a

    :cond_1d1
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->i:Landroid/widget/TextView;

    const-string v1, "\u5145\u503c\u5e10\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->j:Landroid/widget/TextView;

    const-string v1, "\u652f\u4ed8\u6e20\u9053"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->k:Landroid/widget/TextView;

    const-string v1, "\u5145\u503c\u91d1\u989d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->m:Landroid/widget/TextView;

    const-string v1, "\u5145\u503c\u65f6\u95f4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1ca
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method
