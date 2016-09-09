.class public Lcom/bbkmobile/iqoo/payment/CardActivity;
.super Lcom/bbkmobile/iqoo/payment/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CardActivity"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field protected backup_dialog:Landroid/app/AlertDialog;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Button;

.field private k:[Ljava/lang/String;

.field private l:[Ljava/lang/String;

.field private m:[Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:I

.field private p:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbkmobile/iqoo/payment/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->o:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->r:Z

    new-instance v0, Lcom/bbkmobile/iqoo/payment/a;

    invoke-direct {v0, p0}, Lcom/bbkmobile/iqoo/payment/a;-><init>(Lcom/bbkmobile/iqoo/payment/CardActivity;)V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->s:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .registers 4

    const-string v0, "CardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start card payment,amount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->p:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getCard_amount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",card num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->p:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getCard_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",card type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->p:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getCard_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_card_s"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    :try_start_4d
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->s:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->p:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v0, p0, v1, v2}, Lcom/bbkmobile/iqoo/payment/payment/PaymentGW;->payment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbkmobile/iqoo/payment/model/OrderInfo;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_msg_server_failed"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->showFailInitailDialog(Ljava/lang/String;)V

    goto :goto_54
.end method

.method static synthetic a(Lcom/bbkmobile/iqoo/payment/CardActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->o:I

    return-void
.end method

.method static synthetic a(Lcom/bbkmobile/iqoo/payment/CardActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/bbkmobile/iqoo/payment/CardActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->r:Z

    return-void
.end method

.method static synthetic b(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/bbkmobile/iqoo/payment/CardActivity;)Lcom/bbkmobile/iqoo/payment/model/OrderInfo;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->p:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    return-object v0
.end method

.method static synthetic k(Lcom/bbkmobile/iqoo/payment/CardActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/bbkmobile/iqoo/payment/CardActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->a()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Lcom/bbkmobile/iqoo/payment/BaseActivity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->j:Landroid/widget/Button;

    if-ne p1, v2, :cond_87

    iget-boolean v2, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->r:Z

    if-eqz v2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/bbkmobile/iqoo/payment/c;

    invoke-direct {v3, p0}, Lcom/bbkmobile/iqoo/payment/c;-><init>(Lcom/bbkmobile/iqoo/payment/CardActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iput-boolean v1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->r:Z

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5143"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v5, "bbk_card_amount_empty_s"

    invoke-static {v1, v5}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v0

    :cond_6c
    :goto_6c
    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->p:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v1, v4}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setCard_amount(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->p:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v1, v2}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setCard_num(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->p:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v1, v3}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setCard_pwd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->p:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->setCard_type(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->a()V

    :cond_87
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->g:Landroid/widget/EditText;

    if-ne p1, v1, :cond_c

    const/4 v1, 0x0

    iget v2, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->o:I

    packed-switch v2, :pswitch_data_15a

    :goto_91
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/bbkmobile/iqoo/payment/d;

    invoke-direct {v3, p0, v1}, Lcom/bbkmobile/iqoo/payment/d;-><init>(Lcom/bbkmobile/iqoo/payment/CardActivity;[Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_c

    :cond_a4
    invoke-static {v2}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c1

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v5, "bbk_card_num_empty"

    invoke-static {v1, v5}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v0

    goto :goto_6c

    :cond_c1
    invoke-static {v3}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_de

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v5, "bbk_card_pwd_empty"

    invoke-static {v1, v5}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v0

    goto :goto_6c

    :cond_de
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_100

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v5, "bbk_card_num_le_len_s"

    invoke-static {v1, v5}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v0

    goto/16 :goto_6c

    :cond_100
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_6c

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v5, "bbk_card_pwd_le_len_s"

    invoke-static {v1, v5}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v0

    goto/16 :goto_6c

    :pswitch_122
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->k:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_phone_card_type_yd_s"

    invoke-static {v0, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_91

    :pswitch_130
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->l:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_phone_card_type_lt_s"

    invoke-static {v0, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_91

    :pswitch_13e
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->m:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_phone_card_type_dx_s"

    invoke-static {v0, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_91

    :pswitch_14c
    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->n:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_game_card_type"

    invoke-static {v0, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_91

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_122
        :pswitch_130
        :pswitch_13e
        :pswitch_14c
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/bbkmobile/iqoo/payment/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/bbkmobile/iqoo/payment/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "white"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getColorResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_activity_card_s"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getLayoutResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orderInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->p:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    const-string v0, "CardActivity"

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->p:Lcom/bbkmobile/iqoo/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_card_s"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->showTitleMessage(I)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_back"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->showTitleLeftButton(I)V

    new-instance v0, Lcom/bbkmobile/iqoo/payment/b;

    invoke-direct {v0, p0}, Lcom/bbkmobile/iqoo/payment/b;-><init>(Lcom/bbkmobile/iqoo/payment/CardActivity;)V

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "order_by_yd"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_phone_card_yidong"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/bbkmobile/iqoo/payment/h;

    invoke-direct {v1, p0, v3, v3}, Lcom/bbkmobile/iqoo/payment/h;-><init>(Lcom/bbkmobile/iqoo/payment/CardActivity;IB)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "order_by_lt"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_phone_card_liantong"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/bbkmobile/iqoo/payment/h;

    invoke-direct {v1, p0, v4, v3}, Lcom/bbkmobile/iqoo/payment/h;-><init>(Lcom/bbkmobile/iqoo/payment/CardActivity;IB)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "order_by_dx"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_phone_card_dianxin"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/bbkmobile/iqoo/payment/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/bbkmobile/iqoo/payment/h;-><init>(Lcom/bbkmobile/iqoo/payment/CardActivity;IB)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "order_by_jw"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_game_card_s"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/bbkmobile/iqoo/payment/h;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, v3}, Lcom/bbkmobile/iqoo/payment/h;-><init>(Lcom/bbkmobile/iqoo/payment/CardActivity;IB)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "game_card_support"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_pay_amount_tip"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "sp_game_card_amount"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->g:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_number"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_passwd"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "submit_game_card"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_phone_card_type_yd_s"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->k:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_phone_card_type_lt_s"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->l:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_phone_card_type_dx_s"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->m:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_game_card_type"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->n:[Ljava/lang/String;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "100001"

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public showContinueDialog()V
    .registers 7

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_alert_dialog_continue_pay_s"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getLayoutResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "continue_pay"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "pay_cancel"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v4, "continue_pay_text"

    invoke-static {v2, v4}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_card_gt_price_s"

    invoke-static {v4, v5}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lcom/bbkmobile/iqoo/payment/f;

    invoke-direct {v2, p0}, Lcom/bbkmobile/iqoo/payment/f;-><init>(Lcom/bbkmobile/iqoo/payment/CardActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bbkmobile/iqoo/payment/g;

    invoke-direct {v0, p0}, Lcom/bbkmobile/iqoo/payment/g;-><init>(Lcom/bbkmobile/iqoo/payment/CardActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->backup_dialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->backup_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showFailInitailDialog(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_alert_dialog_payfail"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getLayoutResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pf_submit"

    invoke-static {v0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "pay_fail_msg"

    invoke-static {v1, v3}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getIdResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/bbkmobile/iqoo/payment/e;

    invoke-direct {v1, p0}, Lcom/bbkmobile/iqoo/payment/e;-><init>(Lcom/bbkmobile/iqoo/payment/CardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->backup_dialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/CardActivity;->backup_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
