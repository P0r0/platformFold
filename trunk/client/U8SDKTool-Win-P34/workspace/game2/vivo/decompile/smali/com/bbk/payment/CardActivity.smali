.class public Lcom/bbk/payment/CardActivity;
.super Lcom/bbk/payment/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CardActivity"


# instance fields
.field private A:[Landroid/widget/LinearLayout;

.field private B:[Landroid/widget/TextView;

.field private C:[I

.field private D:[I

.field private E:[Landroid/widget/LinearLayout;

.field private F:[Landroid/widget/TextView;

.field private G:[I

.field private H:[I

.field private I:[Landroid/widget/LinearLayout;

.field private J:Ljava/lang/String;

.field private K:Landroid/widget/ScrollView;

.field private L:Z

.field private M:Landroid/content/Context;

.field private N:Landroid/os/Handler;

.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/Button;

.field private k:[Ljava/lang/String;

.field private l:[Ljava/lang/String;

.field private m:[Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:I

.field private p:Lcom/bbk/payment/model/OrderInfo;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:Z

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/RelativeLayout;

.field private x:[Landroid/widget/TextView;

.field private y:[I

.field private z:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/bbk/payment/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bbk/payment/CardActivity;->o:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/bbk/payment/CardActivity;->r:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/bbk/payment/CardActivity;->s:I

    iput-boolean v1, p0, Lcom/bbk/payment/CardActivity;->t:Z

    const-string v0, "\u5143"

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->J:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbk/payment/CardActivity;->L:Z

    new-instance v0, Lcom/bbk/payment/a;

    invoke-direct {v0, p0}, Lcom/bbk/payment/a;-><init>(Lcom/bbk/payment/CardActivity;)V

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->N:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-static {p0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/bbk/payment/CardActivity;)Lcom/bbk/payment/model/OrderInfo;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    return-object v0
.end method

.method private a()V
    .registers 4

    const-string v0, "CardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start card payment,amount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getCard_amount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",card num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getCard_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",card type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v2}, Lcom/bbk/payment/model/OrderInfo;->getCard_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/bbk/payment/payment/PaymentGW;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_card"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbk/payment/payment/PaymentGW;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    :try_start_4d
    iget-object v1, p0, Lcom/bbk/payment/CardActivity;->N:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, p0, v1, v2}, Lcom/bbk/payment/payment/PaymentGW;->payment(Landroid/app/Activity;Landroid/os/Handler;Lcom/bbk/payment/model/OrderInfo;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_5c

    :goto_54
    const-string v0, "cardpay_submit"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_msg_server_failed"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->getString(I)Ljava/lang/String;

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

    const-string v0, "CardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returnPayResult result_code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",orderInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setResult_code(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "orderInfo"

    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/bbk/payment/CardActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/CardActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/CardActivity;->o:I

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/CardActivity;ILandroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/bbk/payment/CardActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/CardActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/CardActivity;->J:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/CardActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bbk/payment/CardActivity;->L:Z

    return-void
.end method

.method static synthetic b(Lcom/bbk/payment/CardActivity;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/bbk/payment/CardActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/CardActivity;->r:I

    return-void
.end method

.method static synthetic b(Lcom/bbk/payment/CardActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbk/payment/CardActivity;->t:Z

    return-void
.end method

.method static synthetic b(Lcom/bbk/payment/CardActivity;)[Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->A:[Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/bbk/payment/CardActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/CardActivity;->s:I

    return-void
.end method

.method static synthetic c(Lcom/bbk/payment/CardActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/CardActivity;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/bbk/payment/CardActivity;)[I
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->z:[I

    return-object v0
.end method

.method static synthetic d(Lcom/bbk/payment/CardActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->k:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/bbk/payment/CardActivity;)[Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->x:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/bbk/payment/CardActivity;)[Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->E:[Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/bbk/payment/CardActivity;)[I
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->D:[I

    return-object v0
.end method

.method static synthetic h(Lcom/bbk/payment/CardActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->l:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/bbk/payment/CardActivity;)[Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->B:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/bbk/payment/CardActivity;)[Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->I:[Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/bbk/payment/CardActivity;)[I
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->H:[I

    return-object v0
.end method

.method static synthetic l(Lcom/bbk/payment/CardActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->m:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/bbk/payment/CardActivity;)[Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->F:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/bbk/payment/CardActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic o(Lcom/bbk/payment/CardActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic p(Lcom/bbk/payment/CardActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic r(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic s(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic t(Lcom/bbk/payment/CardActivity;)V
    .registers 5

    const/16 v3, 0x8

    const/4 v1, 0x0

    iget v0, p0, Lcom/bbk/payment/CardActivity;->o:I

    packed-switch v0, :pswitch_data_152

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->k:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_phone_card_type_yd"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getArrayId(Landroid/content/Context;Ljava/lang/String;)I

    const-string v0, "\u5143"

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->q:Ljava/lang/String;

    const-string v2, "100001"

    if-ne v0, v2, :cond_8

    move v0, v1

    :goto_2e
    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->I:[Landroid/widget/LinearLayout;

    array-length v2, v2

    if-lt v0, v2, :cond_55

    :goto_33
    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->E:[Landroid/widget/LinearLayout;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->E:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v1

    const-string v2, "vivo_white"

    invoke-direct {p0, v2}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->B:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    const-string v2, "vivo_black"

    invoke-direct {p0, v2}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_55
    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->I:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v0

    const-string v3, "vivo_white"

    invoke-direct {p0, v3}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->F:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const-string v3, "vivo_black"

    invoke-direct {p0, v3}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :pswitch_72
    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->l:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_phone_card_type_lt"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getArrayId(Landroid/content/Context;Ljava/lang/String;)I

    const-string v0, "\u5143"

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->q:Ljava/lang/String;

    const-string v2, "100002"

    if-ne v0, v2, :cond_8

    move v0, v1

    :goto_97
    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->I:[Landroid/widget/LinearLayout;

    array-length v2, v2

    if-lt v0, v2, :cond_be

    :goto_9c
    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->A:[Landroid/widget/LinearLayout;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->A:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v1

    const-string v2, "vivo_white"

    invoke-direct {p0, v2}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->x:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    const-string v2, "vivo_black"

    invoke-direct {p0, v2}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    :cond_be
    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->I:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v0

    const-string v3, "vivo_white"

    invoke-direct {p0, v3}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->F:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const-string v3, "vivo_black"

    invoke-direct {p0, v3}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    :pswitch_db
    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->m:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "bbk_phone_card_type_dx"

    invoke-static {v0, v2}, Lcom/bbk/payment/util/ResourceUtil;->getArrayId(Landroid/content/Context;Ljava/lang/String;)I

    const-string v0, "\u5143"

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->q:Ljava/lang/String;

    const-string v2, "100003"

    if-ne v0, v2, :cond_8

    move v0, v1

    :goto_100
    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->E:[Landroid/widget/LinearLayout;

    array-length v2, v2

    if-lt v0, v2, :cond_127

    :goto_105
    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->A:[Landroid/widget/LinearLayout;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->A:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v1

    const-string v2, "vivo_white"

    invoke-direct {p0, v2}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->x:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    const-string v2, "vivo_black"

    invoke-direct {p0, v2}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_105

    :cond_127
    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->E:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v0

    const-string v3, "vivo_white"

    invoke-direct {p0, v3}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->B:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const-string v3, "vivo_black"

    invoke-direct {p0, v3}, Lcom/bbk/payment/CardActivity;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_100

    :pswitch_144
    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->n:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_game_card_type"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getArrayId(Landroid/content/Context;Ljava/lang/String;)I

    goto/16 :goto_8

    nop

    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_9
        :pswitch_72
        :pswitch_db
        :pswitch_144
    .end packed-switch
.end method

.method static synthetic u(Lcom/bbk/payment/CardActivity;)Landroid/widget/ScrollView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->K:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic v(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic w(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic x(Lcom/bbk/payment/CardActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbk/payment/CardActivity;->L:Z

    return v0
.end method

.method static synthetic y(Lcom/bbk/payment/CardActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic z(Lcom/bbk/payment/CardActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->M:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    const-string v0, "cardpay_cancel"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/bbk/payment/CardActivity;->a(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->j:Landroid/widget/Button;

    if-ne p1, v2, :cond_a

    iget-boolean v2, p0, Lcom/bbk/payment/CardActivity;->t:Z

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/bbk/payment/b;

    invoke-direct {v3, p0}, Lcom/bbk/payment/b;-><init>(Lcom/bbk/payment/CardActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iput-boolean v1, p0, Lcom/bbk/payment/CardActivity;->t:Z

    iget-object v2, p0, Lcom/bbk/payment/CardActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/CardActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/CardActivity;->J:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5143"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "card_amount: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " card_type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/bbk/payment/CardActivity;->q:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c9

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v5, "bbk_card_amount_empty"

    invoke-static {v1, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_95
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setCard_amount(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v2}, Lcom/bbk/payment/model/OrderInfo;->setCard_num(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0, v3}, Lcom/bbk/payment/model/OrderInfo;->setCard_pwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    iget-object v1, p0, Lcom/bbk/payment/CardActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setCard_type(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bbk/payment/CardActivity;->a()V

    goto/16 :goto_a

    :cond_c9
    invoke-static {v5}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e5

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v5, "bbk_card_num_empty"

    invoke-static {v1, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_95

    :cond_e5
    invoke-static {v3}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_101

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v5, "bbk_card_pwd_empty"

    invoke-static {v1, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_95

    :cond_101
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/bbk/payment/CardActivity;->r:I

    if-eq v5, v6, :cond_133

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "bbk_card_num_le_len"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    new-array v1, v1, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/bbk/payment/CardActivity;->r:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    invoke-virtual {p0, v5, v1}, Lcom/bbk/payment/CardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_95

    :cond_133
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/bbk/payment/CardActivity;->s:I

    if-eq v5, v6, :cond_169

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "bbk_card_pwd_le_len"

    invoke-static {v5, v6}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    new-array v1, v1, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/bbk/payment/CardActivity;->s:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    invoke-virtual {p0, v5, v1}, Lcom/bbk/payment/CardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_95

    :cond_169
    move v0, v1

    goto/16 :goto_95
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbk/payment/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "transparent"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_activity_card"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bbk/payment/CardActivity;->M:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orderInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/model/OrderInfo;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_45

    const-string v0, "CardActivity"

    iget-object v1, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const-string v0, "CardActivity"

    iget-object v1, p0, Lcom/bbk/payment/CardActivity;->p:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1}, Lcom/bbk/payment/model/OrderInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id"

    const-string v1, "card_pay_title"

    invoke-static {p0, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v1, :cond_4ab

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "bbk_paytype_title"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_6f
    const-string v0, "id"

    const-string v1, "titleLeftBtn"

    invoke-static {p0, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "id"

    const-string v3, "title_back"

    invoke-static {p0, v1, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Lcom/bbk/payment/e;

    invoke-direct {v3, p0}, Lcom/bbk/payment/e;-><init>(Lcom/bbk/payment/CardActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bbk/payment/f;

    invoke-direct {v0, p0}, Lcom/bbk/payment/f;-><init>(Lcom/bbk/payment/CardActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_scrollview"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->K:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_card_amount_dx"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_card_amount_lt"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_card_amount_yd"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "order_by_yd"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbk/payment/n;

    invoke-direct {v1, p0, v2, v2}, Lcom/bbk/payment/n;-><init>(Lcom/bbk/payment/CardActivity;IB)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "order_by_lt"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbk/payment/n;

    invoke-direct {v1, p0, v6, v2}, Lcom/bbk/payment/n;-><init>(Lcom/bbk/payment/CardActivity;IB)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "order_by_dx"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbk/payment/n;

    invoke-direct {v1, p0, v7, v2}, Lcom/bbk/payment/n;-><init>(Lcom/bbk/payment/CardActivity;IB)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_card_cs_tip"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "bbk_card_tip4"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "bbk_client_server_yd"

    invoke-static {v4, v5}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/bbk/payment/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/bbk/payment/CardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_number"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_passwd"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "submit_game_card"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "bbk_phone_card_type_yd"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getArrayId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->k:[Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->k:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "bbk_phone_card_type_lt"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getArrayId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->l:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "bbk_phone_card_type_dx"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getArrayId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->m:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_number_delete"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_passwd_delete"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "card_passwd_eye"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "bbk_game_card_type"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getArrayId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->n:[Ljava/lang/String;

    const-string v0, "100001"

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/bbk/payment/g;

    invoke-direct {v1, p0}, Lcom/bbk/payment/g;-><init>(Lcom/bbk/payment/CardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/bbk/payment/h;

    invoke-direct {v1, p0}, Lcom/bbk/payment/h;-><init>(Lcom/bbk/payment/CardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbk/payment/i;

    invoke-direct {v1, p0}, Lcom/bbk/payment/i;-><init>(Lcom/bbk/payment/CardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbk/payment/j;

    invoke-direct {v1, p0}, Lcom/bbk/payment/j;-><init>(Lcom/bbk/payment/CardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbk/payment/k;

    invoke-direct {v1, p0}, Lcom/bbk/payment/k;-><init>(Lcom/bbk/payment/CardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "cardpay_show"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    const-string v1, "bbk_card_amount_yd_10"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const-string v1, "bbk_card_amount_yd_20"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    const-string v1, "bbk_card_amount_yd_30"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v7

    const-string v1, "bbk_card_amount_yd_50"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v8

    const-string v1, "bbk_card_amount_yd_100"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x5

    const-string v3, "bbk_card_amount_yd_200"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "bbk_card_amount_yd_300"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "bbk_card_amount_yd_500"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->y:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    const-string v1, "bbk_card_amount_yd_layout_10"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const-string v1, "bbk_card_amount_yd_layout_20"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    const-string v1, "bbk_card_amount_yd_layout_30"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v7

    const-string v1, "bbk_card_amount_yd_layout_50"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v8

    const-string v1, "bbk_card_amount_yd_layout_100"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x5

    const-string v3, "bbk_card_amount_yd_layout_200"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "bbk_card_amount_yd_layout_300"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "bbk_card_amount_yd_layout_500"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->z:[I

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->y:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->x:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->z:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->A:[Landroid/widget/LinearLayout;

    move v1, v2

    :goto_32f
    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->y:[I

    array-length v0, v0

    if-lt v1, v0, :cond_4ba

    const/16 v0, 0x8

    new-array v0, v0, [I

    const-string v1, "bbk_card_amount_lt_10"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const-string v1, "bbk_card_amount_lt_20"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    const-string v1, "bbk_card_amount_lt_30"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v7

    const-string v1, "bbk_card_amount_lt_50"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v8

    const-string v1, "bbk_card_amount_lt_100"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x5

    const-string v3, "bbk_card_amount_lt_200"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "bbk_card_amount_lt_300"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "bbk_card_amount_lt_500"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->C:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    const-string v1, "bbk_card_amount_lt_layout_10"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const-string v1, "bbk_card_amount_lt_layout_20"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    const-string v1, "bbk_card_amount_lt_layout_30"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v7

    const-string v1, "bbk_card_amount_lt_layout_50"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v8

    const-string v1, "bbk_card_amount_lt_layout_100"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x5

    const-string v3, "bbk_card_amount_lt_layout_200"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "bbk_card_amount_lt_layout_300"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "bbk_card_amount_lt_layout_500"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->D:[I

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->C:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->B:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->D:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->E:[Landroid/widget/LinearLayout;

    move v1, v2

    :goto_3f5
    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->C:[I

    array-length v0, v0

    if-lt v1, v0, :cond_4f2

    const/4 v0, 0x6

    new-array v0, v0, [I

    const-string v1, "bbk_card_amount_dx_10"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const-string v1, "bbk_card_amount_dx_20"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    const-string v1, "bbk_card_amount_dx_30"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v7

    const-string v1, "bbk_card_amount_dx_50"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v8

    const-string v1, "bbk_card_amount_dx_100"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x5

    const-string v3, "bbk_card_amount_dx_300"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->G:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    const-string v1, "bbk_card_amount_dx_layout_10"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const-string v1, "bbk_card_amount_dx_layout_20"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    const-string v1, "bbk_card_amount_dx_layout_30"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v7

    const-string v1, "bbk_card_amount_dx_layout_50"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v8

    const-string v1, "bbk_card_amount_dx_layout_100"

    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x5

    const-string v3, "bbk_card_amount_dx_layout_300"

    const-string v4, "id"

    invoke-static {p0, v4, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->H:[I

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->G:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->F:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->H:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/CardActivity;->I:[Landroid/widget/LinearLayout;

    move v1, v2

    :goto_48d
    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->G:[I

    array-length v0, v0

    if-lt v1, v0, :cond_52a

    const-string v0, "id"

    const-string v1, "widget32"

    invoke-static {p0, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/bbk/payment/c;

    invoke-direct {v2, p0, v0}, Lcom/bbk/payment/c;-><init>(Lcom/bbk/payment/CardActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_4ab
    invoke-virtual {p0}, Lcom/bbk/payment/CardActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "bbk_recharge_title"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6f

    :cond_4ba
    iget-object v3, p0, Lcom/bbk/payment/CardActivity;->x:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->y:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->x:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/bbk/payment/CardActivity;->k:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/bbk/payment/CardActivity;->A:[Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->z:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->A:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v1

    new-instance v3, Lcom/bbk/payment/o;

    invoke-direct {v3, p0, v1, v2}, Lcom/bbk/payment/o;-><init>(Lcom/bbk/payment/CardActivity;IB)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_32f

    :cond_4f2
    iget-object v3, p0, Lcom/bbk/payment/CardActivity;->B:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->C:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->B:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/bbk/payment/CardActivity;->l:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/bbk/payment/CardActivity;->E:[Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->D:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->E:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v1

    new-instance v3, Lcom/bbk/payment/m;

    invoke-direct {v3, p0, v1, v2}, Lcom/bbk/payment/m;-><init>(Lcom/bbk/payment/CardActivity;IB)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3f5

    :cond_52a
    iget-object v3, p0, Lcom/bbk/payment/CardActivity;->F:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->G:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->F:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/bbk/payment/CardActivity;->m:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/bbk/payment/CardActivity;->I:[Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->H:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/bbk/payment/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/bbk/payment/CardActivity;->I:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v1

    new-instance v3, Lcom/bbk/payment/l;

    invoke-direct {v3, p0, v1, v2}, Lcom/bbk/payment/l;-><init>(Lcom/bbk/payment/CardActivity;IB)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_48d
.end method
