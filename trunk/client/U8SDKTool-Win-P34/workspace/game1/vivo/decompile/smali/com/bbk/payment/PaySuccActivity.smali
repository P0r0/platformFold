.class public Lcom/bbk/payment/PaySuccActivity;
.super Lcom/bbk/payment/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/bbk/payment/model/OrderInfo;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/content/Intent;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/content/Context;

.field private l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/bbk/payment/BaseActivity;-><init>()V

    iput v0, p0, Lcom/bbk/payment/PaySuccActivity;->m:I

    iput v0, p0, Lcom/bbk/payment/PaySuccActivity;->n:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/PaySuccActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 5

    iget v0, p0, Lcom/bbk/payment/PaySuccActivity;->g:I

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, "9000"

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setResult_code(Ljava/lang/String;)V

    :goto_b
    const-string v0, "PaySuccActivity"

    const-string v1, "PaySuccActivity returnPayResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Lcom/bbk/payment/PaySuccActivity;->g:I

    if-nez v2, :cond_43

    const-string v2, "pay_result"

    const-string v3, "success"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    const-string v2, "orderInfo"

    iget-object v3, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "pay_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/bbk/payment/PaySuccActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->finish()V

    return-void

    :cond_3b
    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, "4006"

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setResult_code(Ljava/lang/String;)V

    goto :goto_b

    :cond_43
    const-string v2, "pay_result"

    const-string v3, "fail"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method static synthetic a(Lcom/bbk/payment/PaySuccActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/PaySuccActivity;->m:I

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/PaySuccActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/PaySuccActivity;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/bbk/payment/PaySuccActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method private b()V
    .registers 8

    const/4 v1, 0x0

    new-instance v0, Lcom/bbk/payment/model/DeviceInfo;

    invoke-direct {v0, p0}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "version"

    const-string v5, "2.0.2"

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

    iget-object v6, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

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

    iget-object v5, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v5}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    const/4 v0, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "rechargeOrderNumber"

    iget-object v5, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

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
    new-instance v0, Lcom/bbk/payment/F;

    invoke-direct {v0, p0, v1}, Lcom/bbk/payment/F;-><init>(Lcom/bbk/payment/PaySuccActivity;B)V

    invoke-virtual {v0, v2}, Lcom/bbk/payment/F;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_7d
    const-string v3, "PaySuccActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "---------PaySuccActivity------nameValuePairs"

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

.method static synthetic b(Lcom/bbk/payment/PaySuccActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/PaySuccActivity;->n:I

    return-void
.end method

.method static synthetic c(Lcom/bbk/payment/PaySuccActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/PaySuccActivity;->m:I

    return v0
.end method

.method private c()V
    .registers 7

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "PaySuccActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bbk/payment/PaySuccActivity;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " followed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bbk/payment/PaySuccActivity;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasFollowed\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameFollowState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vcoinpay_result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bbk/payment/PaySuccActivity;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PaySuccActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshFollowLayout, show="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bbk/payment/PaySuccActivity;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", followed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bbk/payment/PaySuccActivity;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/bbk/payment/PaySuccActivity;->m:I

    if-ne v0, v3, :cond_b4

    iget v0, p0, Lcom/bbk/payment/PaySuccActivity;->g:I

    if-nez v0, :cond_b4

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    if-nez v0, :cond_b4

    iget v0, p0, Lcom/bbk/payment/PaySuccActivity;->n:I

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameFollowState()I

    move-result v0

    if-eq v0, v3, :cond_b4

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/bbk/payment/PaySuccActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a7

    iget-object v1, p0, Lcom/bbk/payment/PaySuccActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbk/payment/PaySuccActivity;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbk/payment/PaySuccActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a8

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->r:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_9e
    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a7
    :goto_a7
    return-void

    :cond_a8
    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->r:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9e

    :cond_ae
    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a7

    :cond_b4
    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a7
.end method

.method static synthetic d(Lcom/bbk/payment/PaySuccActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbk/payment/PaySuccActivity;->c()V

    return-void
.end method

.method static synthetic e(Lcom/bbk/payment/PaySuccActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public commitGameNotice()V
    .registers 8

    :try_start_0
    const-string v0, "PaySuccActivity"

    const-string v1, "commitGameNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/http/NameValuePair;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v3, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "2.0.2"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "version"

    const-string v4, "2.0.2"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "appId"

    iget-object v6, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v6}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "appId"

    iget-object v4, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "packageName"

    iget-object v6, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gamePackageName"

    iget-object v6, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    invoke-static {v6}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "gamePackageName"

    iget-object v4, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

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

    iget-object v5, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const-string v2, "uid"

    iget-object v3, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

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

    new-instance v1, Lcom/bbk/payment/E;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bbk/payment/E;-><init>(Lcom/bbk/payment/PaySuccActivity;B)V

    invoke-virtual {v1, v0}, Lcom/bbk/payment/E;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ea} :catch_eb

    :goto_ea
    return-void

    :catch_eb
    move-exception v0

    const-string v1, "PaySuccActivity"

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
    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

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
    .registers 4

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_1a

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->r:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->commitGameNotice()V

    :cond_17
    :goto_17
    invoke-direct {p0}, Lcom/bbk/payment/PaySuccActivity;->a()V

    :cond_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameFollowChecked(I)V

    goto :goto_17
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/bbk/payment/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "PaySuccActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_succ_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaySuccActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->i:Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->i:Landroid/content/Intent;

    const-string v1, "orderInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/model/OrderInfo;

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->i:Landroid/content/Intent;

    const-string v1, "vcoinpay_result"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bbk/payment/PaySuccActivity;->g:I

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_66

    const-string v0, "PaySuccActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PaySuccActivity onCreate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",vcoinpay_result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bbk/payment/PaySuccActivity;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_paytype_title"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaySuccActivity;->showTitleMessage(I)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->setLeftButtonGone()V

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_game_notice_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaySuccActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "game_icon"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaySuccActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "game_name"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaySuccActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "game_notice_btn"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaySuccActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->r:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_succ_id"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaySuccActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_succ_content"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaySuccActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_succ_user_blance"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaySuccActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "topup_succ_icon_id"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaySuccActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->queryGameNotice()V

    iget v0, p0, Lcom/bbk/payment/PaySuccActivity;->g:I

    if-nez v0, :cond_205

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_succ"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_succ"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v0}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c8

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_rechange_pay_succ_content_no_ticket"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v2, v7, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v4}, Lcom/bbk/payment/model/OrderInfo;->getDeductAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/bbk/payment/PaySuccActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_165
    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_result_user_balance"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/bbk/payment/PaySuccActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/bbk/payment/PaySuccActivity;->b()V

    :goto_18d
    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_pay_succ_bt"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaySuccActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_customor_service"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaySuccActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->c:Landroid/widget/TextView;

    sget-object v0, Lcom/bbk/payment/model/OrderInfo;->custService:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23e

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->c:Landroid/widget/TextView;

    sget-object v1, Lcom/bbk/payment/model/OrderInfo;->custService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1c7
    return-void

    :cond_1c8
    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_rechange_pay_succ_content"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v4}, Lcom/bbk/payment/model/OrderInfo;->getDeductAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/bbk/payment/PaySuccActivity;->a:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v3}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->isRightMoveTwoBit(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/bbk/payment/PaySuccActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_165

    :cond_205
    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_fail"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_pay_fail"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaySuccActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_topup_is_failure1"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/bbk/payment/PaySuccActivity;->c()V

    goto/16 :goto_18d

    :cond_23e
    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/bbk/payment/PaySuccActivity;->a()V

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/bbk/payment/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public queryGameNotice()V
    .registers 8

    const/4 v2, 0x1

    :try_start_1
    const-string v0, "PaySuccActivity"

    const-string v1, "queryGameNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameFollowState()I

    move-result v0

    if-ne v0, v2, :cond_18

    const-string v0, "PaySuccActivity"

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

    iget-object v3, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "2.0.2"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "version"

    const-string v4, "2.0.2"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "appId"

    iget-object v6, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v6}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "appId"

    iget-object v4, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "packageName"

    iget-object v6, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gamePackageName"

    iget-object v6, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

    invoke-static {v6}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "gamePackageName"

    iget-object v4, p0, Lcom/bbk/payment/PaySuccActivity;->k:Landroid/content/Context;

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

    iget-object v5, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const-string v2, "uid"

    iget-object v3, p0, Lcom/bbk/payment/PaySuccActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

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

    new-instance v1, Lcom/bbk/payment/G;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bbk/payment/G;-><init>(Lcom/bbk/payment/PaySuccActivity;B)V

    invoke-virtual {v1, v0}, Lcom/bbk/payment/G;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_fb} :catch_fd

    goto/16 :goto_17

    :catch_fd
    move-exception v0

    const-string v1, "PaySuccActivity"

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
