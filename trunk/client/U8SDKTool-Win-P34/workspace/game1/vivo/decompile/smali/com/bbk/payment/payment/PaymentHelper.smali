.class public Lcom/bbk/payment/payment/PaymentHelper;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field protected context:Landroid/app/Activity;

.field protected installDialog:Landroid/app/ProgressDialog;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbk/payment/payment/a;

    invoke-direct {v0, p0}, Lcom/bbk/payment/payment/a;-><init>(Lcom/bbk/payment/payment/PaymentHelper;)V

    iput-object v0, p0, Lcom/bbk/payment/payment/PaymentHelper;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/payment/PaymentHelper;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-void
.end method


# virtual methods
.method protected checkForUpdate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/payment/PaymentHelper;->detectForUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected detectForUpdate(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public detectPayParameter(Lcom/bbk/payment/model/OrderInfo;)Z
    .registers 8

    const/4 v1, 0x0

    const-string v0, "PaymentHelper"

    const-string v2, "detectPayParameter"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "payment_params"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "PaymentHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bundle="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_26a

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PaymentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "strPojo1="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1aa

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setPackageN(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentHelper;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePackageName(Ljava/lang/String;)V

    const-string v2, "logOnOff"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    const-string v2, "transNo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b3

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setTransNo(Ljava/lang/String;)V

    const-string v2, "accessKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1bc

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setSignature(Ljava/lang/String;)V

    const-string v2, "appId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c5

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setAppId(Ljava/lang/String;)V

    const-string v2, "blance"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ce

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setGameBlance(Ljava/lang/String;)V

    :goto_96
    :try_start_96
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".wxapi.WXPayEntryActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_96 .. :try_end_b2} :catch_1d7

    const-string v2, "vip"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e1

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setVip(Ljava/lang/String;)V

    :goto_c1
    const-string v2, "party"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ea

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setParty(Ljava/lang/String;)V

    :goto_d0
    const-string v2, "roleId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f3

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setRoleId(Ljava/lang/String;)V

    :goto_df
    const-string v2, "roleName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1fc

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setRoleName(Ljava/lang/String;)V

    :goto_ee
    const-string v2, "serverName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_205

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setServerName(Ljava/lang/String;)V

    :goto_fd
    const-string v2, "extInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20e

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setExtInfo(Ljava/lang/String;)V

    :goto_10c
    const-string v2, "level"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setLevel(I)V

    const-string v2, "00"

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setUseMode(Ljava/lang/String;)V

    const-string v2, "productName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_217

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setProductName(Ljava/lang/String;)V

    const-string v2, "productDes"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_220

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setProductDes(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/payment/PaymentHelper;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_229

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setUserId(Ljava/lang/String;)V

    :goto_147
    iget-object v2, p0, Lcom/bbk/payment/payment/PaymentHelper;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_249

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setExtuserId(Ljava/lang/String;)V

    :goto_156
    const-string v2, "price"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_252

    invoke-virtual {p1, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setPrice(J)V

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentHelper;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-nez v0, :cond_25c

    const-string v0, "0"

    :goto_16f
    const-string v2, "PaymentHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mBBKAccountManager.getVisitor()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_260

    invoke-virtual {p1, v0}, Lcom/bbk/payment/model/OrderInfo;->setVisitor(Ljava/lang/String;)V

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_1a8

    const-string v0, "PaymentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "order info="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a8
    const/4 v0, 0x1

    :goto_1a9
    return v0

    :cond_1aa
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=package"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1a9

    :cond_1b3
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=transNo"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1a9

    :cond_1bc
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=accessKey"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1a9

    :cond_1c5
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=appId"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1a9

    :cond_1ce
    const-string v2, "PaymentHelper"

    const-string v3, "miss param=blance"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_96

    :catch_1d7
    move-exception v0

    const-string v0, "PaymentHelper"

    const-string v2, "miss param=wx entity is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1a9

    :cond_1e1
    const-string v2, "PaymentHelper"

    const-string v3, "miss param=vip"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c1

    :cond_1ea
    const-string v2, "PaymentHelper"

    const-string v3, "miss param=party"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d0

    :cond_1f3
    const-string v2, "PaymentHelper"

    const-string v3, "miss param=roleId"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_df

    :cond_1fc
    const-string v2, "PaymentHelper"

    const-string v3, "miss param=roleName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ee

    :cond_205
    const-string v2, "PaymentHelper"

    const-string v3, "miss param=serverName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fd

    :cond_20e
    const-string v2, "PaymentHelper"

    const-string v3, "miss param=extInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10c

    :cond_217
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=name"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1a9

    :cond_220
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=desc"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1a9

    :cond_229
    const-string v2, "userId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23f

    invoke-virtual {p1, v2}, Lcom/bbk/payment/model/OrderInfo;->setUserId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentHelper;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    goto/16 :goto_147

    :cond_23f
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=userId"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_1a9

    :cond_249
    const-string v2, "PaymentHelper"

    const-string v3, "miss param=extuserId"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156

    :cond_252
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=price"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_1a9

    :cond_25c
    const-string v0, "1"

    goto/16 :goto_16f

    :cond_260
    const-string v0, "PaymentHelper"

    const-string v2, "miss param=Visitor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_1a9

    :cond_26a
    move v0, v1

    goto/16 :goto_1a9
.end method

.method public detectPayResult(Lcom/bbk/payment/model/OrderInfo;I)Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    new-instance v0, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v2, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xb

    new-array v0, v0, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "version"

    const-string v5, "2.0.2"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "signMethod"

    const-string v5, "MD5"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "signature"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appId"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "packageName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uid"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "payChannel"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "orderNumber"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/16 v2, 0x8

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "orderAmount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/16 v2, 0x9

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "rechargeOrderNumber"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getRechargeOrderNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/16 v2, 0xa

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "rechargeOrderAmount"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getRechargeOrderAmount()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    :try_start_b2
    new-instance v2, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v3, "https://pay.vivo.com.cn/vcoin/queryPayResult"

    invoke-virtual {v2, v3, v0}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PaymentHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "detect cardPay result done,response message="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d3} :catch_d4

    :goto_d3
    return-object v0

    :catch_d4
    move-exception v0

    const-string v2, "PaymentHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "detect cardPay result failed,error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_d3
.end method

.method public detectRechargeResult(Lcom/bbk/payment/model/OrderInfo;I)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/bbk/payment/model/OrderInfo;->setPaymentType(I)V

    const-string v3, "PaymentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "detectRechargeResult, paymentType"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xf

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "version"

    const-string v7, "2.0.2"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "version"

    const-string v5, "2.0.2"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "sdkVersion"

    iget-object v7, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-static {v7}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getSdkApkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "sdkVersion"

    iget-object v5, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getSdkApkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "packageName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "packageName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "uid"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "uid"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "visitor"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getVisitor()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "visitor"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getVisitor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x5

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "token"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "token"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x6

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "rechargeOrderAmount"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getRemainderBlance()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "rechargeOrderAmount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getRemainderBlance()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x7

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "rechargeOrderNumber"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getRechargeOrderNumber()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "rechargeOrderNumber"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getRechargeOrderNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x8

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "payChannel"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "payChannel"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x9

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "from"

    const-string v7, "1"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "from"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "sysver"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getVersionNeme()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "sysver"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getVersionNeme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xb

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "imei"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xc

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "model"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getSk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bbk/payment/util/UtilTool;->generateSignture(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "yid"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xd

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "yid"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v2, 0xe

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "xid"

    const-string v6, "https://pay.vivo.com.cn/vcoin/recharge/channelparams"

    invoke-static {v6, v1}, Lcom/bbk/payment/util/Vw;->getValueForPostRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_19e

    :goto_19b
    array-length v1, v3

    if-lt v0, v1, :cond_1c4

    :cond_19e
    new-instance v0, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v1, "https://pay.vivo.com.cn/vcoin/recharge/queryresult"

    invoke-virtual {v0, v1, v3}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_1c3

    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send initial recharge done,response message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c3
    return-object v0

    :cond_1c4
    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "detectRechargeResult, nameValuePairs"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e4} :catch_1e7

    add-int/lit8 v0, v0, 0x1

    goto :goto_19b

    :catch_1e7
    move-exception v0

    const-string v1, "PaymentHelper"

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

    throw v0
.end method

.method public doVcoinPay(Lcom/bbk/payment/model/OrderInfo;)Lorg/json/JSONObject;
    .registers 14

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xc

    new-array v4, v0, [Lorg/apache/http/NameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "version"

    const-string v5, "2.0.2"

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v4, v2

    const/4 v0, 0x1

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signMethod"

    const-string v6, "MD5"

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v0

    const/4 v0, 0x2

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v0

    const/4 v0, 0x3

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "appId"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v0

    const/4 v0, 0x4

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "packageName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v0

    const/4 v0, 0x5

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "uid"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v0

    const/4 v0, 0x6

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "orderNumber"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v0

    const/4 v0, 0x7

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "orderAmount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v0

    const/16 v5, 0x8

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "deductAmount"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v10

    cmp-long v0, v0, v10

    if-lez v0, :cond_123

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v10

    sub-long/2addr v0, v10

    :goto_a5
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/16 v0, 0x9

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ticketCode"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTicketCode()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v0

    const/16 v0, 0xa

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ticketAmount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v0

    const/16 v1, 0xb

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "ticketHasChanged"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTicketHasChanged()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_126

    const-string v0, "0"

    :goto_ef
    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v1

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_fc

    move v0, v2

    :goto_f9
    array-length v1, v4

    if-lt v0, v1, :cond_12b

    :cond_fc
    :try_start_fc
    new-instance v0, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v1, "https://pay.vivo.com.cn/vcoin/epay"

    invoke-virtual {v0, v1, v4}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "do vcoin pay done,response message="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_122} :catch_14e

    :goto_122
    return-object v0

    :cond_123
    const-wide/16 v0, 0x0

    goto :goto_a5

    :cond_126
    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTicketHasChanged()Ljava/lang/String;

    move-result-object v0

    goto :goto_ef

    :cond_12b
    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "initialPay, nameValuePairs"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_f9

    :catch_14e
    move-exception v0

    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "detect cardPay result failed,error="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    goto :goto_122
.end method

.method protected getAppPackageName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method protected getAssetsName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public initialPay(Lcom/bbk/payment/model/OrderInfo;I)Lorg/json/JSONObject;
    .registers 16

    const/4 v12, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v0, 0x0

    :try_start_4
    new-instance v4, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v4, v3}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const-string v3, "PaymentHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initialPay, paymentType="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, p2, :cond_23

    if-ne v12, p2, :cond_1de

    :cond_23
    const-string v1, "param"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "orderInfo.getCard_amount()="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_amount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x13

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "cardType"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_type()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v3

    const/4 v3, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "selectAmount"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_amount()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v3

    const/4 v3, 0x2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "cardNumber"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_num()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v3

    const/4 v3, 0x3

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "cardPasswd"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_pwd()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v3

    move-object v3, v1

    move v1, v2

    :goto_86
    add-int/lit8 v5, v1, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "version"

    const-string v8, "2.0.2"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    add-int/lit8 v1, v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "signMethod"

    const-string v8, "MD5"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v1, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "signature"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    add-int/lit8 v1, v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "appId"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v1, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "packageName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    add-int/lit8 v1, v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "uid"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v1, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "orderNumber"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    const-string v1, "param"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "orderInfo.getCard_amount()="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "orderAmount"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v1, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "payChannel"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    add-int/lit8 v1, v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "ticketCode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTicketCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v1, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "ticketAmount"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    add-int/lit8 v1, v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "sysver"

    invoke-virtual {v4}, Lcom/bbk/payment/model/DeviceInfo;->getVersionNeme()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v1, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "imei"

    invoke-virtual {v4}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    add-int/lit8 v6, v5, 0x1

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    invoke-virtual {v4}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v7, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v3, v5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ticketHasChanged"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTicketHasChanged()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21c

    const-string v1, "0"

    :goto_1a3
    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v6

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_1af

    :goto_1ac
    array-length v1, v3

    if-lt v0, v1, :cond_221

    :cond_1af
    new-instance v1, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    if-eq p2, v12, :cond_1ba

    if-ne p2, v2, :cond_245

    :cond_1ba
    const-string v0, "https://pay.vivo.com.cn/vcoin/submitCZK"

    :goto_1bc
    invoke-virtual {v1, v0, v3}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_1d8

    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send initial payment done,response message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1de
    const/16 v3, 0x10

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "rechargeAmount"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getRemainderBlance()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1fd} :catch_1ff

    goto/16 :goto_86

    :catch_1ff
    move-exception v0

    const-string v1, "PaymentHelper"

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

    throw v0

    :cond_21c
    :try_start_21c
    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTicketHasChanged()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a3

    :cond_221
    const-string v1, "PaymentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initialPay, nameValuePairs"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1ac

    :cond_245
    const-string v0, "https://pay.vivo.com.cn/vcoin/getChannelParams"
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_247} :catch_1ff

    goto/16 :goto_1bc
.end method

.method public initialRecharge(Lcom/bbk/payment/model/OrderInfo;I)Lorg/json/JSONObject;
    .registers 16

    const/4 v12, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v0, 0x0

    :try_start_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v3, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v5, v3}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/bbk/payment/model/OrderInfo;->setPaymentType(I)V

    const-string v3, "PaymentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initialRecharge, paymentType="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xf

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    if-eq v2, p2, :cond_2f

    if-ne v12, p2, :cond_23f

    :cond_2f
    const/16 v1, 0x12

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "cardType"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_type()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v3

    const-string v3, "cardType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_type()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "selectAmount"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_amount()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v3

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_amount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_85

    const-string v3, "selectAmount"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_amount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_85
    const/4 v3, 0x2

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "cardNumber"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_num()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v3

    const-string v3, "cardNumber"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_num()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "cardPasswd"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_pwd()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v3

    const-string v3, "cardPasswd"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getCard_pwd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    move v1, v2

    :goto_b5
    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "version"

    const-string v9, "2.0.2"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v1

    const-string v1, "version"

    const-string v7, "2.0.2"

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v6, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "sdkVersion"

    iget-object v9, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-static {v9}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getSdkApkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    const-string v6, "sdkVersion"

    iget-object v7, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-static {v7}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getSdkApkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "packageName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v1

    const-string v1, "packageName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v6, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "uid"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    const-string v6, "uid"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "visitor"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getVisitor()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v1

    const-string v1, "visitor"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getVisitor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v6, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "token"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    const-string v6, "token"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "payChannel"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v1

    const-string v1, "payChannel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPaymentType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v6, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "from"

    const-string v9, "1"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    const-string v6, "from"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "sysver"

    invoke-virtual {v5}, Lcom/bbk/payment/model/DeviceInfo;->getVersionNeme()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v1

    const-string v1, "sysver"

    invoke-virtual {v5}, Lcom/bbk/payment/model/DeviceInfo;->getVersionNeme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v6, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "imei"

    invoke-virtual {v5}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    const-string v6, "imei"

    invoke-virtual {v5}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "model"

    invoke-virtual {v5}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v1

    const-string v1, "model"

    invoke-virtual {v5}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v6, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "origin"

    iget-object v8, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-static {v8}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getValOrigin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v6

    const-string v5, "origin"

    iget-object v6, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-static {v6}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getValOrigin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getSk()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bbk/payment/util/UtilTool;->generateSignture(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "yid"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "yid"

    invoke-direct {v7, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v1

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "xid"

    const-string v7, "https://pay.vivo.com.cn/vcoin/recharge/channelparams"

    invoke-static {v7, v4}, Lcom/bbk/payment/util/Vw;->getValueForPostRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v3, v6

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_210

    :goto_20d
    array-length v1, v3

    if-lt v0, v1, :cond_28f

    :cond_210
    new-instance v1, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    if-eq p2, v12, :cond_21b

    if-ne p2, v2, :cond_2b3

    :cond_21b
    const-string v0, "https://pay.vivo.com.cn/vcoin/recharge/submitczk"

    :goto_21d
    invoke-virtual {v1, v0, v3}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_239

    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send initial recharge done,response message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_239
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_23f
    const/4 v6, 0x0

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "rechargeAmount"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getRemainderBlance()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    const-string v6, "rechargeAmount"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getRemainderBlance()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_270
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_270} :catch_272

    goto/16 :goto_b5

    :catch_272
    move-exception v0

    const-string v1, "PaymentHelper"

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

    throw v0

    :cond_28f
    :try_start_28f
    const-string v1, "PaymentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initialRecharge, nameValuePairs"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_20d

    :cond_2b3
    const-string v0, "https://pay.vivo.com.cn/vcoin/recharge/channelparams"
    :try_end_2b5
    .catch Ljava/lang/Exception; {:try_start_28f .. :try_end_2b5} :catch_272

    goto/16 :goto_21d
.end method

.method public installPayPlugin()I
    .registers 7

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->generatePluginCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bbk/payment/payment/PaymentHelper;->retrieveFromAssets(Ljava/lang/String;)V

    const-string v0, "755"

    invoke-static {v0, v3}, Lcom/bbk/payment/util/UtilTool;->chmod(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_4d

    :try_start_10
    invoke-static {v3}, Lcom/bbk/payment/util/InstallHelper;->installSlient(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_13} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_4d

    move-result v0

    if-eqz v0, :cond_26

    :try_start_16
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bbk/payment/payment/PaymentHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_25} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_6c

    move v0, v1

    :cond_26
    :goto_26
    :try_start_26
    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install payment plugin result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3a} :catch_71

    :goto_3a
    return v0

    :catch_3b
    move-exception v0

    :try_start_3c
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bbk/payment/payment/PaymentHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4b} :catch_6c

    move v0, v1

    goto :goto_26

    :catch_4d
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_50
    const-string v2, "PaymentHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "occur in install payment plugin,error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a

    :catch_6c
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_50

    :catch_71
    move-exception v1

    goto :goto_50
.end method

.method protected isMobileInstallApp(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/bbk/payment/payment/PaymentHelper;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v1

    :goto_18
    return v0

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_18
.end method

.method protected retrieveFromAssets(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lcom/bbk/payment/payment/PaymentHelper;->getAssetsName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "assetsName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_30
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_40

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :cond_40
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_30
.end method

.method protected showInstallAppDialog(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public updatePayForFail(Lcom/bbk/payment/model/OrderInfo;I)Z
    .registers 14

    const/4 v10, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v2, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x9

    new-array v4, v2, [Lorg/apache/http/NameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "2.0.2"

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v3

    const/4 v2, 0x2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-virtual {v1}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v2

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "orderFrom"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v10

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "packageName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signMethod"

    const-string v6, "MD5"

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "orderNumber"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "orderAmount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v1

    move v1, v0

    move v2, v0

    :goto_95
    :try_start_95
    new-instance v0, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v5, p0, Lcom/bbk/payment/payment/PaymentHelper;->context:Landroid/app/Activity;

    invoke-direct {v0, v5}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v5, "https://pay.vivo.com.cn/vivopay/vivoPay/voidOrder"

    invoke-virtual {v0, v5, v4}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "PaymentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notify cancel payment done,response message="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "respCode"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "200"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_c6} :catch_d1

    move-result v0

    if-eqz v0, :cond_ca

    move v2, v3

    :cond_ca
    :goto_ca
    add-int/lit8 v0, v1, 0x1

    if-nez v2, :cond_d0

    if-lt v0, v10, :cond_ee

    :cond_d0
    return v2

    :catch_d1
    move-exception v0

    const-string v5, "PaymentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notify fail payment to server failed,error="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ca

    :cond_ee
    move v1, v0

    goto :goto_95
.end method
