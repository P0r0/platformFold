.class public final Lcom/baidu/wallet/base/stastics/AdUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 9

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_4} :catch_31
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6c
    .catchall {:try_start_1 .. :try_end_4} :catchall_a8

    move-result-object v1

    if-eqz v1, :cond_e6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v2, v0, [B
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_d} :catch_d8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_cc
    .catchall {:try_start_7 .. :try_end_d} :catchall_c9

    :try_start_d
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_10} :catch_df
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_d2
    .catchall {:try_start_d .. :try_end_10} :catchall_c9

    move-object v0, v2

    :goto_11
    if-eqz v1, :cond_16

    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-object v0

    :catch_17
    move-exception v1

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.readBinary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catch_31
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_34
    :try_start_34
    const-string v3, "wallet_stastics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MoUtil.readBinary"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_a8

    if-eqz v2, :cond_16

    :try_start_4e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_16

    :catch_52
    move-exception v1

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.readBinary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catch_6c
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_6f
    :try_start_6f
    const-string v3, "wallet_stastics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MoUtil.readBinary"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_6f .. :try_end_87} :catchall_a8

    if-eqz v2, :cond_16

    :try_start_89
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_16

    :catch_8d
    move-exception v1

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.readBinary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    :catchall_a8
    move-exception v0

    :goto_a9
    if-eqz v2, :cond_ae

    :try_start_ab
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    :cond_ae
    :goto_ae
    throw v0

    :catch_af
    move-exception v1

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.readBinary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ae

    :catchall_c9
    move-exception v0

    move-object v2, v1

    goto :goto_a9

    :catch_cc
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_6f

    :catch_d2
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_6f

    :catch_d8
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_34

    :catch_df
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_34

    :cond_e6
    move-object v0, v2

    goto/16 :goto_11
.end method

.method public static deleteExt(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "MoUtil.deleteExt"

    invoke-static {v1, p0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_12
.end method

.method public static exists(Landroid/content/Context;ZLjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5a

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "c82c403505338808201aad86f8194734"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    goto :goto_17

    :cond_5a
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "MoUtil.exists"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public static isWalletCrash(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return v1

    :cond_a
    const-string v0, "com.baidu.android.pay,com.baidu.balance,com.baidu.bankdetection,com.baidu.fastpay,com.baidu.home,com.baidu.paysdk,com.baidu.personal,com.baidu.scancode,com.baidu.transfer,com.baidu.wallet"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ","

    const-string v2, "com.baidu.android.pay,com.baidu.balance,com.baidu.bankdetection,com.baidu.fastpay,com.baidu.home,com.baidu.paysdk,com.baidu.personal,com.baidu.scancode,com.baidu.transfer,com.baidu.wallet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v0, v2

    if-lez v0, :cond_9

    move v0, v1

    :goto_20
    array-length v3, v2

    if-ge v0, v3, :cond_9

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v1, 0x1

    goto :goto_9

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method public static postToRcv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    new-instance v0, Lcom/baidu/apollon/restnet/a;

    const-string v1, "Apache-HttpClient/Android"

    const-string v2, "stastics bean http request"

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/apollon/restnet/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/Base64Utils;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "payload"

    invoke-direct {v3, v4, v1}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/baidu/apollon/restnet/RestNameValuePair;

    const-string v4, "sign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "MhxzKhl"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/Md5Utils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/baidu/apollon/restnet/RestNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/baidu/wallet/base/stastics/a;

    invoke-direct {v3}, Lcom/baidu/wallet/base/stastics/a;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/baidu/apollon/restnet/a/d;

    invoke-direct {v3}, Lcom/baidu/apollon/restnet/a/d;-><init>()V

    invoke-virtual {v0, v3}, Lcom/baidu/apollon/restnet/a;->a(Lcom/baidu/apollon/restnet/a/a;)V

    invoke-virtual {v0, v1}, Lcom/baidu/apollon/restnet/a;->a(Ljava/util/List;)V

    new-instance v1, Lcom/baidu/wallet/base/stastics/b;

    invoke-direct {v1}, Lcom/baidu/wallet/base/stastics/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/apollon/restnet/a;->a(Lcom/baidu/apollon/restnet/b/g;)V

    const/4 v1, 0x0

    :try_start_62
    const-string v3, "utf-8"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/baidu/apollon/restnet/a;->c(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_6c
    .catch Lcom/baidu/apollon/restnet/RestRuntimeException; {:try_start_62 .. :try_end_6c} :catch_84

    :goto_6c
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_82

    invoke-static {}, Lcom/baidu/wallet/base/stastics/DataCore;->getInstance()Lcom/baidu/wallet/base/stastics/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/baidu/wallet/base/stastics/DataCore;->clearCacheAndFlush(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/base/stastics/BasicStoreTools;->getInstance()Lcom/baidu/wallet/base/stastics/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/baidu/wallet/base/stastics/BasicStoreTools;->setLastData(Landroid/content/Context;Ljava/lang/String;)V

    :cond_82
    const/4 v0, 0x1

    return v0

    :catch_84
    move-exception v0

    invoke-virtual {v0}, Lcom/baidu/apollon/restnet/RestRuntimeException;->printStackTrace()V

    move-object v0, v1

    goto :goto_6c
.end method

.method public static read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "MoUtil.read"

    invoke-static {v0, p1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    :try_start_7
    invoke-static {p0, p1}, Lcom/baidu/wallet/base/stastics/AdUtil;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_2e

    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.readBinary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    move-object v0, v1

    goto :goto_14
.end method

.method public static read(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_7

    invoke-static {p1, p2}, Lcom/baidu/wallet/base/stastics/AdUtil;->readExt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1, p2}, Lcom/baidu/wallet/base/stastics/AdUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static readExt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "MoUtil.readExt"

    invoke-static {v0, p1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v1, ""

    :cond_1b
    :goto_1b
    return-object v1

    :cond_1c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c82c403505338808201aad86f8194734"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v3, 0x0

    :try_start_5f
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_64} :catch_99
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_64} :catch_d5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_64} :catch_112
    .catchall {:try_start_5f .. :try_end_64} :catchall_150

    :try_start_64
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v3, v0, [B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    new-instance v0, Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/wallet/core/utils/Base64Utils;->decode([B)[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_78
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_78} :catch_179
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_78} :catch_176
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_78} :catch_174
    .catchall {:try_start_64 .. :try_end_78} :catchall_172

    if-eqz v2, :cond_7d

    :try_start_7a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7f

    :cond_7d
    :goto_7d
    move-object v1, v0

    goto :goto_1b

    :catch_7f
    move-exception v1

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.readExt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    :catch_99
    move-exception v0

    move-object v2, v3

    :goto_9b
    :try_start_9b
    const-string v3, "wallet_stastics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MoUtil.readExt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_9b .. :try_end_b3} :catchall_172

    if-eqz v2, :cond_b8

    :try_start_b5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_ba

    :cond_b8
    move-object v0, v1

    goto :goto_7d

    :catch_ba
    move-exception v0

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.readExt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_7d

    :catch_d5
    move-exception v0

    move-object v2, v3

    :goto_d7
    :try_start_d7
    const-string v3, "wallet_stastics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MoUtil.readExt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ef
    .catchall {:try_start_d7 .. :try_end_ef} :catchall_172

    if-eqz v2, :cond_f4

    :try_start_f1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f6

    :cond_f4
    move-object v0, v1

    goto :goto_7d

    :catch_f6
    move-exception v0

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.readExt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_7d

    :catch_112
    move-exception v0

    move-object v2, v3

    :goto_114
    :try_start_114
    const-string v3, "wallet_stastics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MoUtil.readExt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_114 .. :try_end_12c} :catchall_172

    if-eqz v2, :cond_131

    :try_start_12e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_134

    :cond_131
    move-object v0, v1

    goto/16 :goto_7d

    :catch_134
    move-exception v0

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.readExt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_7d

    :catchall_150
    move-exception v0

    move-object v2, v3

    :goto_152
    if-eqz v2, :cond_157

    :try_start_154
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_158

    :cond_157
    :goto_157
    throw v0

    :catch_158
    move-exception v1

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.readExt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_157

    :catchall_172
    move-exception v0

    goto :goto_152

    :catch_174
    move-exception v0

    goto :goto_114

    :catch_176
    move-exception v0

    goto/16 :goto_d7

    :catch_179
    move-exception v0

    goto/16 :goto_9b
.end method

.method public static write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_1c

    const v2, 0x8000

    :goto_7
    :try_start_7
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_1e

    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_3a
    .catchall {:try_start_7 .. :try_end_16} :catchall_8d

    :goto_16
    if-eqz v1, :cond_1b

    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_73

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    move v2, v0

    goto :goto_7

    :cond_1e
    :try_start_1e
    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.write fout is null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_39} :catch_3a
    .catchall {:try_start_1e .. :try_end_39} :catchall_8d

    goto :goto_16

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.write"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_8d

    if-eqz v1, :cond_1b

    :try_start_55
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_1b

    :catch_59
    move-exception v0

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoUtil.write"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :catch_73
    move-exception v0

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoUtil.write"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :catchall_8d
    move-exception v0

    if-eqz v1, :cond_93

    :try_start_90
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_94

    :cond_93
    :goto_93
    throw v0

    :catch_94
    move-exception v1

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.write"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93
.end method

.method public static write(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    const-string v0, "aaa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write log to sdcard, filename is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " external is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_28

    invoke-static {p1, p2, p3, p4}, Lcom/baidu/wallet/base/stastics/AdUtil;->writeExt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_27
    return-void

    :cond_28
    invoke-static {p1, p2, p3, p4}, Lcom/baidu/wallet/base/stastics/AdUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_27
.end method

.method public static writeExt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v1, 0x0

    :try_start_e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "c82c403505338808201aad86f8194734"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_6c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_71} :catch_9f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_71} :catch_da
    .catchall {:try_start_e .. :try_end_71} :catchall_115

    :try_start_71
    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/Base64Utils;->encode([B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_7e} :catch_13c
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7e} :catch_139
    .catchall {:try_start_71 .. :try_end_7e} :catchall_136

    if-eqz v2, :cond_c

    :try_start_80
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_c

    :catch_84
    move-exception v0

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoUtil.writeExt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :catch_9f
    move-exception v0

    :goto_a0
    :try_start_a0
    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.writeExt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_a0 .. :try_end_b8} :catchall_115

    if-eqz v1, :cond_c

    :try_start_ba
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_bf

    goto/16 :goto_c

    :catch_bf
    move-exception v0

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoUtil.writeExt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :catch_da
    move-exception v0

    :goto_db
    :try_start_db
    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.writeExt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_db .. :try_end_f3} :catchall_115

    if-eqz v1, :cond_c

    :try_start_f5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_fa

    goto/16 :goto_c

    :catch_fa
    move-exception v0

    const-string v1, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoUtil.writeExt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :catchall_115
    move-exception v0

    :goto_116
    if-eqz v1, :cond_11b

    :try_start_118
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_11c

    :cond_11b
    :goto_11b
    throw v0

    :catch_11c
    move-exception v1

    const-string v2, "wallet_stastics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.writeExt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11b

    :catchall_136
    move-exception v0

    move-object v1, v2

    goto :goto_116

    :catch_139
    move-exception v0

    move-object v1, v2

    goto :goto_db

    :catch_13c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_a0
.end method
