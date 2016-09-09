.class public Lcom/bbk/payment/JCardActivity;
.super Lcom/bbk/payment/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "JCardActivity"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Lcom/bbk/payment/model/OrderInfo;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z

.field private m:Landroid/content/Context;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/bbk/payment/BaseActivity;-><init>()V

    iput-boolean v0, p0, Lcom/bbk/payment/JCardActivity;->i:Z

    iput v1, p0, Lcom/bbk/payment/JCardActivity;->j:I

    iput v1, p0, Lcom/bbk/payment/JCardActivity;->k:I

    iput-boolean v0, p0, Lcom/bbk/payment/JCardActivity;->l:Z

    new-instance v0, Lcom/bbk/payment/v;

    invoke-direct {v0, p0}, Lcom/bbk/payment/v;-><init>(Lcom/bbk/payment/JCardActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/JCardActivity;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/JCardActivity;)Lcom/bbk/payment/model/OrderInfo;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->g:Lcom/bbk/payment/model/OrderInfo;

    return-object v0
.end method

.method private a()V
    .registers 4

    const-string v0, "JCardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start card payment,amount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/JCardActivity;->g:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getCard_amount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",card num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/JCardActivity;->g:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getCard_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",card type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/JCardActivity;->g:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getCard_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/bbk/payment/payment/PaymentGW;

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_game_card"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/JCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbk/payment/payment/PaymentGW;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    :try_start_4d
    iget-object v1, p0, Lcom/bbk/payment/JCardActivity;->n:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bbk/payment/JCardActivity;->g:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, p0, v1, v2}, Lcom/bbk/payment/payment/PaymentGW;->payment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_5c

    :goto_54
    const-string v0, "cardpay_submit"

    const-string v1, "2"

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_msg_server_failed"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/JCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_54
.end method

.method private a(I)V
    .registers 5

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_24

    const-string v0, "JCardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returnPayResult result_code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",orderInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/JCardActivity;->g:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->g:Lcom/bbk/payment/model/OrderInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setResult_code(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/JCardActivity;->g:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/bbk/payment/JCardActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/JCardActivity;ILandroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/bbk/payment/JCardActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/JCardActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bbk/payment/JCardActivity;->l:Z

    return-void
.end method

.method static synthetic b(Lcom/bbk/payment/JCardActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/bbk/payment/JCardActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbk/payment/JCardActivity;->i:Z

    return-void
.end method

.method static synthetic c(Lcom/bbk/payment/JCardActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/bbk/payment/JCardActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbk/payment/JCardActivity;->l:Z

    return v0
.end method

.method static synthetic g(Lcom/bbk/payment/JCardActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/bbk/payment/JCardActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->m:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    const-string v0, "cardpay_cancel"

    const-string v1, "2"

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/bbk/payment/JCardActivity;->a(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/bbk/payment/JCardActivity;->f:Landroid/widget/Button;

    if-ne p1, v2, :cond_a

    iget-boolean v2, p0, Lcom/bbk/payment/JCardActivity;->i:Z

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/bbk/payment/D;

    invoke-direct {v3, p0}, Lcom/bbk/payment/D;-><init>(Lcom/bbk/payment/JCardActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iput-boolean v1, p0, Lcom/bbk/payment/JCardActivity;->i:Z

    iget-object v2, p0, Lcom/bbk/payment/JCardActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/JCardActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "bbk_card_num_empty"

    invoke-static {v1, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/JCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_67
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->g:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v2}, Lcom/bbk/payment/model/OrderInfo;->setCard_num(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->g:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v3}, Lcom/bbk/payment/model/OrderInfo;->setCard_pwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->g:Lcom/bbk/payment/model/OrderInfo;

    iget-object v1, p0, Lcom/bbk/payment/JCardActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setCard_type(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bbk/payment/JCardActivity;->a()V

    goto :goto_a

    :cond_7e
    invoke-static {v3}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "bbk_card_pwd_empty"

    invoke-static {v1, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/JCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_67

    :cond_9a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/bbk/payment/JCardActivity;->j:I

    if-eq v4, v5, :cond_cb

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_card_num_le_len"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    new-array v1, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/bbk/payment/JCardActivity;->j:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-virtual {p0, v4, v1}, Lcom/bbk/payment/JCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_67

    :cond_cb
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/bbk/payment/JCardActivity;->k:I

    if-eq v4, v5, :cond_101

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_card_pwd_le_len"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    new-array v1, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/bbk/payment/JCardActivity;->k:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-virtual {p0, v4, v1}, Lcom/bbk/payment/JCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_67

    :cond_101
    move v0, v1

    goto/16 :goto_67
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/bbk/payment/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_activity_game_card"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/JCardActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bbk/payment/JCardActivity;->m:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orderInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/model/OrderInfo;

    iput-object v0, p0, Lcom/bbk/payment/JCardActivity;->g:Lcom/bbk/payment/model/OrderInfo;

    const-string v0, "id"

    const-string v1, "card_pay_title"

    invoke-static {p0, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/JCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v1, :cond_11a

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_paytype_title"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_3f
    const-string v0, "id"

    const-string v1, "titleLeftBtn"

    invoke-static {p0, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/JCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "id"

    const-string v2, "title_back"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/JCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/bbk/payment/w;

    invoke-direct {v2, p0}, Lcom/bbk/payment/w;-><init>(Lcom/bbk/payment/JCardActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bbk/payment/x;

    invoke-direct {v0, p0}, Lcom/bbk/payment/x;-><init>(Lcom/bbk/payment/JCardActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_number"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/JCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbk/payment/JCardActivity;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_number_delete"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/JCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/JCardActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_passwd_delete"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/JCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/JCardActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_passwd_eye"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/JCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/JCardActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_passwd"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/JCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbk/payment/JCardActivity;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "submit_game_card"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/JCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbk/payment/JCardActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "100004"

    iput-object v0, p0, Lcom/bbk/payment/JCardActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/bbk/payment/y;

    invoke-direct {v1, p0}, Lcom/bbk/payment/y;-><init>(Lcom/bbk/payment/JCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/bbk/payment/z;

    invoke-direct {v1, p0}, Lcom/bbk/payment/z;-><init>(Lcom/bbk/payment/JCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbk/payment/A;

    invoke-direct {v1, p0}, Lcom/bbk/payment/A;-><init>(Lcom/bbk/payment/JCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbk/payment/B;

    invoke-direct {v1, p0}, Lcom/bbk/payment/B;-><init>(Lcom/bbk/payment/JCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/JCardActivity;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbk/payment/C;

    invoke-direct {v1, p0}, Lcom/bbk/payment/C;-><init>(Lcom/bbk/payment/JCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "cardpay_show"

    const-string v1, "2"

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11a
    invoke-virtual {p0}, Lcom/bbk/payment/JCardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_recharge_title"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3f
.end method
