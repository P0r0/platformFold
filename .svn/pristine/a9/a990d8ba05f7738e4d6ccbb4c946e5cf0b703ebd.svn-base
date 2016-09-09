.class public Lcom/nearme/platform/opensdk/pay/PayTask;
.super Ljava/lang/Object;
.source "PayTask.java"


# static fields
.field private static final ACTION_NOTIFY_PAY_RESULT:Ljava/lang/String; = "nearme.pay.response"

.field public static final HOST_BACKGROUND_CALL_ACTION_SERVICE:Ljava/lang/String; = "com.oppo.action.PAY_ACTION"

.field private static final NEARME_PAY_PKG_NAME:Ljava/lang/String; = "com.nearme.atlas"

.field public static final Pay_Amount_MAX:F = 9999.99f

.field public static final Pay_Amount_MIN:F = 0.01f

.field public static final Product_Dsec_MAX_LENGTH:I = 0x78

.field public static final Product_Name_MAX_LENGTH:I = 0x28

.field public static final REQUEST_CODE:I = 0x3ea

.field public static final RESULT_CODE:I = 0x1708

.field public static final RESULT_CODE_CANCEL_BU:I = 0x2739

.field public static final RESULT_CODE_DOWNLOAD_CANCEL:I = 0x273c

.field public static final RESULT_CODE_INSTALL_CANCEL:I = 0x273a

.field public static final RESULT_CODE_IU_APP:I = 0x2738

.field public static final RESULT_CODE_UPDATE_CANCEL:I = 0x273b

.field private static final SINGLE_PAY_STARTUP_ACTION:Ljava/lang/String; = "nearme.plugin.host.startup.action.single_pay"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mActivity:Landroid/content/Context;

.field public mChargeLimit:F

.field public mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

.field mPayTaskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

.field private mThemeValue:I

.field update:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-class v0, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nearme/platform/opensdk/pay/PayRequest;I)V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mChargeLimit:F

    .line 75
    iput v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->update:Z

    .line 97
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    .line 99
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iput p3, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mRequestCode:I

    .line 100
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v0, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z

    if-eqz v0, :cond_3c

    .line 101
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->getRandomToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPayRequest.mToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_3c
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    if-eqz p1, :cond_50

    .line 105
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    .line 107
    :cond_50
    iput v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    .line 108
    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/PayTask;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->copyPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/nearme/platform/opensdk/pay/PayTask;I)V
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/nearme/platform/opensdk/pay/PayTask;->notifyAppInstallOrUpdate(I)V

    return-void
.end method

.method private copyPackage()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 305
    const-string v1, "nearme.apk"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "tmp.apk"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 309
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 310
    :goto_20
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_35

    .line 313
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 314
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 315
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 316
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 311
    :cond_35
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_20
.end method

.method private doTickerWithoutNoting()Z
    .registers 5

    .prologue
    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 772
    const-string v2, "com.nearme.atlas"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const-string v2, "jump_plugin_id"

    const-string v3, "1001"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    const-string v2, "payParams"

    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v3}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v2, "operate_type"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 777
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 778
    const-class v1, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "theme_value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_52

    .line 780
    const-string v1, "theme_value"

    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    :cond_52
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 783
    const/4 v0, 0x1

    return v0
.end method

.method private doTicketToQueryAlipaySignState()Z
    .registers 5

    .prologue
    .line 787
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 788
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 789
    const-string v2, "com.nearme.atlas"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const-string v2, "jump_plugin_id"

    const-string v3, "1001"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const-string v2, "payParams"

    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v3}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v2, "operate_type"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 794
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 795
    const-class v1, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "theme_value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_52

    .line 797
    const-string v1, "theme_value"

    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 799
    :cond_52
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 800
    const/4 v0, 0x1

    return v0
.end method

.method private getRandomToken()Ljava/lang/String;
    .registers 7

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 118
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OFFLINE_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAlipayContractSigned(Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 536
    :try_start_1
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v2, "com.nearme.atlas"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 537
    const-string v2, "nearmeconfig"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 538
    const-string v2, "has_sync_alipay_contact_state"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 539
    const-string v3, "has_signed_contract"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 540
    const-string v3, "isSignAlipayContract"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "syncData="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",sign="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz p1, :cond_56

    .line 547
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 548
    const-string v2, "nearme.pay.response"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    new-instance v3, Lcom/nearme/platform/opensdk/pay/PayTask$5;

    invoke-direct {v3, p0, p1}, Lcom/nearme/platform/opensdk/pay/PayTask$5;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 567
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->doTicketToQueryAlipaySignState()Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_56} :catch_58

    .line 569
    :cond_56
    const/4 v0, 0x1

    .line 572
    :goto_57
    return v0

    .line 570
    :catch_58
    move-exception v1

    .line 571
    sget-object v2, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not support : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method

.method private notifyAppInstallOrUpdate(I)V
    .registers 5

    .prologue
    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 125
    :try_start_5
    const-string v1, "errCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v1, v1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 127
    const-string v1, "order"

    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_1d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "nearme.pay.response"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v2, "response"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_49

    .line 136
    :goto_3b
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayTaskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

    if-eqz v0, :cond_48

    .line 137
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayTaskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v1, v1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/nearme/platform/opensdk/pay/IPayTaskResult;->onTaskResult(ILjava/lang/String;)V

    .line 139
    :cond_48
    return-void

    .line 134
    :catch_49
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3b
.end method

.method private showAlipayContractSetting()Z
    .registers 2

    .prologue
    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showAlipayContractSetting(Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)Z

    move-result v0

    return v0
.end method

.method private showAlipayContractSetting(Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 497
    :try_start_1
    const-string v1, "kekepay://nearme.atlas.com?amount=1&partner_id=2031&product_name=\u53ef\u5e01&jump_activity=FastAlipaySettingAcitviy"

    .line 498
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 499
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 500
    if-eqz p1, :cond_2a

    .line 501
    const-string v1, "settings_result"

    const-string v2, "\u6ce8\u518c\u5e7f\u64ad\u76d1\u542c"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 504
    const-string v2, "nearme.pay.response.fastalipay.settings.result"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    new-instance v3, Lcom/nearme/platform/opensdk/pay/PayTask$4;

    invoke-direct {v3, p0, p1}, Lcom/nearme/platform/opensdk/pay/PayTask$4;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    .line 529
    :cond_2a
    :goto_2a
    return v0

    .line 527
    :catch_2b
    move-exception v0

    .line 528
    sget-object v1, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not support : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private showInstallDialog()V
    .registers 3

    .prologue
    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "nearme.apk"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_11

    .line 180
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 182
    :cond_11
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;-><init>(Landroid/content/Context;)V

    .line 183
    const-string v1, "\u60a8\u5c1a\u672a\u5b89\u88c5\'\u5b89\u5168\u652f\u4ed8\'\u63a7\u4ef6\uff0c\u5b89\u88c5\u540e\u53ef\u7acb\u5373\u4f7f\u7528\u5145\u503c\u652f\u4ed8\u670d\u52a1\uff0c\u5e76\u4fdd\u8bc1\u8d26\u6237\u5b89\u5168\uff0c\u53d6\u6d88\u5219\u65e0\u6cd5\u652f\u4ed8\u3002"

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setHint(Ljava/lang/String;)V

    .line 184
    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setLeftBtnText(Ljava/lang/String;)V

    .line 185
    const-string v1, "\u5b89\u88c5\uff08\u65e0\u9700\u4e0b\u8f7d\uff09"

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setRightBtnText(Ljava/lang/String;)V

    .line 186
    new-instance v1, Lcom/nearme/platform/opensdk/pay/PayTask$2;

    invoke-direct {v1, p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask$2;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V

    .line 212
    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->show()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_32} :catch_33

    .line 300
    :goto_32
    return-void

    .line 214
    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 215
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;-><init>(Landroid/content/Context;)V

    .line 216
    const-string v1, "\u4f7f\u7528\u8be5\u652f\u4ed8\u9700\u8981\u4e0b\u8f7dOPPO\u5b89\u5168\u652f\u4ed8\u3002"

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setHint(Ljava/lang/String;)V

    .line 217
    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setLeftBtnText(Ljava/lang/String;)V

    .line 218
    const-string v1, "\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setRightBtnText(Ljava/lang/String;)V

    .line 219
    new-instance v1, Lcom/nearme/platform/opensdk/pay/PayTask$3;

    invoke-direct {v1, p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask$3;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V

    .line 264
    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->show()V

    goto :goto_32
.end method

.method private showUpdateDialog()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;-><init>(Landroid/content/Context;)V

    .line 144
    const-string v1, "\u60a8\u9700\u8981\u66f4\u65b0\'\u5b89\u5168\u652f\u4ed8\'\u63a7\u4ef6\uff0c\u5b89\u88c5\u540e\u53ef\u7acb\u5373\u4f7f\u7528\u5145\u503c\u652f\u4ed8\u670d\u52a1\uff0c\u5e76\u4fdd\u8bc1\u8d26\u6237\u5b89\u5168\uff0c\u53d6\u6d88\u5219\u65e0\u6cd5\u652f\u4ed8\u3002"

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setHint(Ljava/lang/String;)V

    .line 145
    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setLeftBtnText(Ljava/lang/String;)V

    .line 146
    const-string v1, "\u66f4\u65b0\uff08\u65e0\u9700\u4e0b\u8f7d\uff09"

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setRightBtnText(Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/nearme/platform/opensdk/pay/PayTask$1;

    invoke-direct {v1, p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask$1;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V

    .line 173
    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->show()V

    .line 174
    return-void
.end method


# virtual methods
.method public checkNearmeSupport()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 645
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->supportSinglePayStartup()Z

    move-result v1

    .line 646
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->shouldUpdateApk()Z

    move-result v2

    .line 647
    if-eqz v1, :cond_f

    if-nez v2, :cond_f

    .line 648
    const/4 v0, 0x1

    .line 657
    :goto_e
    return v0

    .line 649
    :cond_f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 650
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v2, "sd\u5361\u672a\u6302\u8f7d\uff0c\u65e0\u6cd5\u5b89\u88c5\u5b89\u5168\u652f\u4ed8\u63d2\u4ef6"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_e

    .line 652
    :cond_27
    if-eqz v1, :cond_2f

    if-eqz v2, :cond_2f

    .line 653
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showUpdateDialog()V

    goto :goto_e

    .line 656
    :cond_2f
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showInstallDialog()V

    goto :goto_e
.end method

.method public checkParamsValid(Lcom/nearme/platform/opensdk/pay/PayRequest;)Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 577
    .line 578
    const-string v0, ""

    .line 580
    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\d+[\\.]*\\d{0,2}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    .line 581
    sget-object v4, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "amount format result : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",match="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-nez v3, :cond_62

    .line 583
    const-string v0, "\u652f\u4ed8\u91d1\u989d\u9519\u8bef\uff0c\u6700\u5c0f\u652f\u4ed8\u5355\u4f4d\u4e3a1\u5206\u94b1"

    .line 630
    :goto_34
    sget-object v3, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isValid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",tipString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    if-nez v1, :cond_61

    .line 632
    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 634
    :cond_61
    return v1

    .line 585
    :cond_62
    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    const v4, 0x461c3ff6    # 9999.99f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_74

    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_77

    .line 586
    :cond_74
    const-string v0, "\u652f\u4ed8\u91d1\u989d\u9519\u8bef\uff0c\u6b63\u786e\u91d1\u989d\u8303\u56f4\u4e3a:0.01\u5143~9999.99\u5143"

    goto :goto_34

    .line 588
    :cond_77
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 589
    const-string v0, "mPartnerId \u4e3a\u7a7a"

    goto :goto_34

    .line 591
    :cond_82
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mNotifyUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 592
    const-string v0, "mNotifyUrl \u4e3a\u7a7a"

    goto :goto_34

    .line 594
    :cond_8d
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 595
    const-string v0, "mToken \u4e3a\u7a7a"

    goto :goto_34

    .line 597
    :cond_98
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 598
    const-string v0, "mPackageName \u4e3a\u7a7a"

    goto :goto_34

    .line 600
    :cond_a3
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 601
    const-string v0, "mAppVersion \u4e3a\u7a7a"

    goto :goto_34

    .line 603
    :cond_ae
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCurrencyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 604
    const-string v0, "mCurrencyName \u4e3a\u7a7a"

    goto/16 :goto_34

    .line 606
    :cond_ba
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSource:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 607
    const-string v0, "mSource \u4e3a\u7a7a"

    goto/16 :goto_34

    .line 609
    :cond_c6
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 610
    const-string v0, "\u5546\u54c1\u540d\u79f0 \u4e3a\u7a7a"

    goto/16 :goto_34

    .line 612
    :cond_d2
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_e0

    .line 613
    const-string v0, "\u5546\u54c1\u540d\u79f0 \u957f\u5ea6\u8fc7\u957f"

    goto/16 :goto_34

    .line 615
    :cond_e0
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductDesc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x78

    if-le v3, v4, :cond_ee

    .line 616
    const-string v0, "\u5546\u54c1\u63cf\u8ff0\u957f\u5ea6\u8fc7\u957f"

    goto/16 :goto_34

    .line 618
    :cond_ee
    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    if-eqz v3, :cond_ff

    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    if-eq v3, v2, :cond_ff

    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_ff

    .line 619
    const-string v0, "mType \u53ea\u80fd\u4e3a0\u30011\u30012"

    goto/16 :goto_34

    .line 621
    :cond_ff
    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    if-ne v3, v2, :cond_11b

    .line 622
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 623
    const-string v0, "mType\u4e3a1\u65f6\u4e3a\u6d88\u8d39\uff0c\u9700\u63d0\u4f9b\u8ba2\u5355\u53f7"

    goto/16 :goto_34

    .line 625
    :cond_10f
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSign:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 626
    const-string v0, "mType\u4e3a1\u65f6\u4e3a\u6d88\u8d39\uff0c\u9700\u63d0\u4f9b\u7b7e\u540d\u90e8\u5206"

    goto/16 :goto_34

    :cond_11b
    move v1, v2

    goto/16 :goto_34
.end method

.method public directPay()Z
    .registers 5

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkNearmeSupport()Z

    move-result v0

    if-nez v0, :cond_8

    .line 371
    const/4 v0, 0x0

    .line 392
    :goto_7
    return v0

    .line 374
    :cond_8
    :try_start_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 376
    const-string v2, "com.nearme.atlas"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v2, "jump_plugin_id"

    const-string v3, "1001"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v2, "payParams"

    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v3}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v2, "operate_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 382
    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    .line 383
    const-string v1, "theme_value"

    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    :cond_40
    sget-object v1, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    const-string v2, "goto directPay,send broadcast:com.nearme.atlas"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4c} :catch_4e

    .line 392
    :goto_4c
    const/4 v0, 0x1

    goto :goto_7

    .line 388
    :catch_4e
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    sget-object v1, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "goto directPay exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method public iSupportSinglePay()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkNearmeSupport()Z

    move-result v1

    if-nez v1, :cond_8

    .line 487
    :goto_7
    return v0

    .line 474
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->doTickerWithoutNoting()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_3b

    .line 479
    :goto_b
    :try_start_b
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v2, "com.nearme.atlas"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 480
    const-string v2, "single_pay_config"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 481
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 483
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 484
    const-string v2, "supportSiglePay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_39} :catch_40

    move-result v0

    goto :goto_7

    .line 476
    :catch_3b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 485
    :catch_40
    move-exception v1

    .line 486
    sget-object v2, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not support singlepay : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public pay()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 335
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {p0, v1}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkParamsValid(Lcom/nearme/platform/opensdk/pay/PayRequest;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 361
    :cond_9
    :goto_9
    return v0

    .line 338
    :cond_a
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkNearmeSupport()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nearme.plugin.host.startup.action.single_pay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 343
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAutoOrderChannel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 344
    const-string v2, "single_auto_channel"

    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v3, v3, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAutoOrderChannel:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    :cond_2f
    const-string v2, "single_show_sms"

    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v3, v3, Lcom/nearme/platform/opensdk/pay/PayRequest;->mShowCpSmsChannel:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 347
    const-string v2, "single_use_cache_channel"

    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v3, v3, Lcom/nearme/platform/opensdk/pay/PayRequest;->mUseCachedChannel:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    const-string v2, "jump_plugin_id"

    const-string v3, "1001"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v2, "payParams"

    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v3}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v2, "charge_lower_limit"

    iget v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mChargeLimit:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 352
    const/high16 v1, 0x820000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 353
    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6e

    .line 354
    const-string v1, "theme_value"

    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    :cond_6e
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_79

    .line 357
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    :cond_79
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 361
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public queryBalance()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 444
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkNearmeSupport()Z

    move-result v1

    if-nez v1, :cond_9

    .line 445
    const/4 v0, 0x0

    .line 460
    :goto_8
    return v0

    .line 447
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oppo.action.PAY_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 449
    const-string v3, "com.nearme.atlas"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v3, "jump_plugin_id"

    const-string v4, "1001"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v3, "payParams"

    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v4}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v3, "operate_type"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 455
    const-class v2, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "theme_value : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5a

    .line 457
    const-string v2, "theme_value"

    iget v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    :cond_5a
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_8
.end method

.method public queryOrder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 405
    sget-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start query... payRequestId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",partnerorder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 407
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "payRequestId \u548c partnerOrderId\u4e0d\u80fd\u540c\u65f6\u4e3a\u7a7a!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_32
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkNearmeSupport()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 410
    const/4 v0, 0x0

    .line 435
    :goto_39
    return v0

    .line 412
    :cond_3a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 414
    const-string v2, "com.nearme.atlas"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v2, "jump_plugin_id"

    const-string v3, "1001"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v2, "payParams"

    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v3}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 418
    const-string v2, "payRequestId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :goto_6a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 423
    const-string v2, "partnerOrder"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :goto_77
    const-string v2, "operate_type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 430
    const-class v1, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "theme_value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a6

    .line 432
    const-string v1, "theme_value"

    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    :cond_a6
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 435
    const/4 v0, 0x1

    goto :goto_39

    .line 420
    :cond_ad
    const-string v2, "payRequestId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 425
    :cond_b3
    const-string v2, "partnerOrder"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77
.end method

.method public setPayTaskResultListener(Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayTaskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

    .line 114
    return-void
.end method

.method public setTheme(I)V
    .registers 2

    .prologue
    .line 326
    iput p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    .line 327
    return-void
.end method

.method shouldUpdateApk()Z
    .registers 12

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 662
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 666
    :try_start_9
    const-string v4, "opay_version"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_12

    move-result-object v2

    .line 670
    :goto_f
    if-nez v2, :cond_15

    .line 699
    :goto_11
    return v1

    .line 668
    :catch_12
    move-exception v2

    const/4 v2, 0x0

    goto :goto_f

    .line 673
    :cond_15
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 675
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v5, "com.nearme.atlas"

    invoke-static {v2, v5}, Lcom/nearme/platform/opensdk/pay/Utils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 677
    :try_start_22
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_6d
    .catchall {:try_start_22 .. :try_end_25} :catchall_7e

    move-result v2

    .line 678
    :try_start_26
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 679
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 680
    sget-object v8, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "versionToInstall="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",netGameMinVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",singleNameMinVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v8, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v3, v8, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_5a} :catch_8d
    .catchall {:try_start_26 .. :try_end_5a} :catchall_7e

    if-eqz v3, :cond_67

    .line 682
    if-ge v5, v7, :cond_65

    if-ge v5, v2, :cond_65

    .line 693
    :cond_60
    :goto_60
    :try_start_60
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_88

    :goto_63
    move v1, v0

    .line 699
    goto :goto_11

    :cond_65
    move v0, v1

    .line 682
    goto :goto_60

    .line 684
    :cond_67
    if-ge v5, v6, :cond_6b

    if-lt v5, v2, :cond_60

    :cond_6b
    move v0, v1

    goto :goto_60

    .line 687
    :catch_6d
    move-exception v2

    move v2, v3

    :goto_6f
    if-eq v2, v3, :cond_8f

    .line 688
    if-ge v5, v2, :cond_7c

    .line 693
    :goto_73
    :try_start_73
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_63

    .line 695
    :catch_77
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    :cond_7c
    move v0, v1

    .line 688
    goto :goto_73

    .line 690
    :catchall_7e
    move-exception v0

    .line 693
    :try_start_7f
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 698
    :goto_82
    throw v0

    .line 695
    :catch_83
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    :catch_88
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    .line 687
    :catch_8d
    move-exception v6

    goto :goto_6f

    :cond_8f
    move v0, v1

    goto :goto_73
.end method

.method public singleVersionCheck()Z
    .registers 10

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 716
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 720
    :try_start_9
    const-string v4, "opay_version"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_3b

    move-result-object v0

    .line 726
    :goto_f
    if-eqz v0, :cond_7b

    .line 727
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 729
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v5, "com.nearme.atlas"

    invoke-static {v0, v5}, Lcom/nearme/platform/opensdk/pay/Utils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 731
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_48
    .catchall {:try_start_1e .. :try_end_21} :catchall_68

    move-result v0

    .line 732
    :try_start_22
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 733
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 734
    iget-object v8, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v3, v8, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2e} :catch_79
    .catchall {:try_start_22 .. :try_end_2e} :catchall_68

    if-eqz v3, :cond_40

    .line 735
    if-ge v5, v7, :cond_3e

    if-ge v5, v0, :cond_3e

    move v0, v1

    .line 759
    :goto_35
    :try_start_35
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_72

    .line 766
    :goto_38
    if-eqz v0, :cond_77

    :goto_3a
    return v2

    .line 722
    :catch_3b
    move-exception v0

    const/4 v0, 0x0

    .line 723
    goto :goto_f

    :cond_3e
    move v0, v2

    .line 735
    goto :goto_35

    .line 739
    :cond_40
    if-ge v5, v6, :cond_46

    if-ge v5, v0, :cond_46

    move v0, v1

    goto :goto_35

    :cond_46
    move v0, v2

    goto :goto_35

    .line 744
    :catch_48
    move-exception v0

    move v0, v3

    :goto_4a
    if-ne v3, v0, :cond_56

    move v0, v2

    .line 759
    :goto_4d
    :try_start_4d
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_38

    .line 761
    :catch_51
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 748
    :cond_56
    :try_start_56
    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v3, v3, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_68

    if-eqz v3, :cond_62

    .line 749
    if-ge v5, v0, :cond_60

    move v0, v1

    goto :goto_4d

    :cond_60
    move v0, v2

    goto :goto_4d

    .line 752
    :cond_62
    if-ge v5, v0, :cond_66

    move v0, v1

    goto :goto_4d

    :cond_66
    move v0, v2

    goto :goto_4d

    .line 756
    :catchall_68
    move-exception v0

    .line 759
    :try_start_69
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 764
    :goto_6c
    throw v0

    .line 761
    :catch_6d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6c

    :catch_72
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    :cond_77
    move v2, v1

    .line 766
    goto :goto_3a

    .line 744
    :catch_79
    move-exception v6

    goto :goto_4a

    :cond_7b
    move v0, v2

    goto :goto_38
.end method

.method public supportSinglePayStartup()Z
    .registers 4

    .prologue
    .line 703
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 704
    new-instance v1, Landroid/content/Intent;

    const-string v2, "nearme.plugin.host.startup.action.single_pay"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 706
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method
