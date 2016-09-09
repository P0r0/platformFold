.class public Lcom/bbkmobile/iqoo/payment/util/UtilTool;
.super Ljava/lang/Object;


# static fields
.field public static mStartTimeString:J


# instance fields
.field private a:Landroid/content/SharedPreferences$Editor;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->mStartTimeString:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendGreneralInfomation(Landroid/content/ContentValues;Landroid/content/Context;Z)V
    .registers 7

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_1d

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    :cond_1d
    const-string v0, "imei"

    const-string v2, "012345678987654"

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    if-eqz p2, :cond_5a

    const-string v0, "starttime_param"

    sget-wide v2, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->mStartTimeString:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "endttime_param"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_3e
    const-string v0, "version"

    const-string v2, "2.4.7"

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_54
    const-string v2, "imei"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->mStartTimeString:J

    const-string v0, "starttime_param"

    sget-wide v2, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->mStartTimeString:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "endttime_param"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3e
.end method

.method public static checkStringNull(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static chmod(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_21
    .catchall {:try_start_f .. :try_end_12} :catchall_2e

    move-result-object v2

    if-nez v2, :cond_1d

    :try_start_15
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_38

    :goto_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    :try_start_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_2e

    goto :goto_f

    :catch_21
    move-exception v0

    :try_start_22
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2e

    :try_start_25
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_18

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :catchall_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    :goto_32
    throw v0

    :catch_33
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18
.end method

.method public static delete(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_19

    array-length v0, v1

    if-nez v0, :cond_1d

    :cond_19
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_9

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    array-length v2, v1

    if-lt v0, v2, :cond_25

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_9

    :cond_25
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->delete(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method public static detectNetworkProxy(Landroid/content/Context;)Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;
    .registers 5

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_32

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    if-eqz v2, :cond_32

    new-instance v0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->setAddress(Ljava/lang/String;)Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;

    invoke-virtual {v0, v3}, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->setPort(I)Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;

    :goto_31
    return-object v0

    :cond_32
    move-object v0, v1

    goto :goto_31
.end method

.method public static generatePluginCachePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/temp.apk"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateRandomSeq(I)Ljava/lang/String;
    .registers 7

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_1c
    if-lt v1, p0, :cond_1f

    return-object v0

    :cond_1f
    invoke-virtual {v2, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_b6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :pswitch_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "A"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :pswitch_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "B"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :pswitch_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "C"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :pswitch_7a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "D"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :pswitch_8e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "E"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :pswitch_a2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "F"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :pswitch_data_b6
    .packed-switch 0xa
        :pswitch_3e
        :pswitch_52
        :pswitch_66
        :pswitch_7a
        :pswitch_8e
        :pswitch_a2
    .end packed-switch
.end method

.method public static getEmmcId()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    :try_start_8
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/block/mmcblk0/device/cid"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_1a

    move-result-object v0

    :cond_19
    :goto_19
    return-object v0

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    :try_start_24
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/ufs/ufsid"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_42} :catch_44

    move-result-object v0

    goto :goto_19

    :catch_44
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19
.end method

.method public static getPaymentChannalByType(Landroid/content/Context;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_32

    :goto_4
    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bbk_payment_type_s"

    invoke-static {p0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bbk_payment_type_s"

    invoke-static {p0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bbk_payment_type_s"

    invoke-static {p0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_5
        :pswitch_14
        :pswitch_23
    .end packed-switch
.end method

.method public static getPaymentChannalIconsByType(Landroid/content/Context;I)Landroid/content/res/TypedArray;
    .registers 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_32

    :goto_4
    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bbk_payment_type_icons_s"

    invoke-static {p0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_4

    :pswitch_14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bbk_payment_type_icons_s"

    invoke-static {p0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_4

    :pswitch_23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bbk_payment_type_icons_s"

    invoke-static {p0, v1}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getArrayResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_4

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_5
        :pswitch_14
        :pswitch_23
    .end packed-switch
.end method

.method public static handlerMessage(Landroid/os/Handler;ILjava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static isMobileInstallApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_10

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_f
    return v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c
.end method

.method public static isWifiAvailable(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    move v0, v1

    goto :goto_28
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 14

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_f
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    if-gtz p1, :cond_1b

    cmp-long v3, v6, v8

    if-lez v3, :cond_76

    if-nez p1, :cond_76

    :cond_1b
    cmp-long v0, v6, v8

    if-lez v0, :cond_27

    if-eqz p1, :cond_26

    int-to-long v0, p1

    cmp-long v0, v6, v0

    if-gez v0, :cond_27

    :cond_26
    long-to-int p1, v6

    :cond_27
    add-int/lit8 v0, p1, 0x1

    new-array v1, v0, [B

    invoke-virtual {v5, v1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_103

    move-result v2

    if-gtz v2, :cond_3a

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const-string v0, ""

    :goto_39
    return-object v0

    :cond_3a
    if-gt v2, p1, :cond_49

    :try_start_3c
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_103

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_39

    :cond_49
    if-nez p2, :cond_58

    :try_start_4b
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_103

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_39

    :cond_58
    :try_start_58
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_58 .. :try_end_6e} :catchall_103

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_39

    :cond_76
    if-gez p1, :cond_e1

    move-object v3, v2

    :goto_79
    if-eqz v2, :cond_7c

    move v1, v0

    :cond_7c
    if-nez v2, :cond_81

    neg-int v2, p1

    :try_start_7f
    new-array v2, v2, [B

    :cond_81
    invoke-virtual {v5, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    array-length v7, v2
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_103

    if-eq v6, v7, :cond_10d

    if-nez v3, :cond_95

    if-gtz v6, :cond_95

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const-string v0, ""

    goto :goto_39

    :cond_95
    if-nez v3, :cond_a4

    :try_start_97
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_9d
    .catchall {:try_start_97 .. :try_end_9d} :catchall_103

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_39

    :cond_a4
    if-lez v6, :cond_10b

    const/4 v1, 0x0

    :try_start_a7
    array-length v7, v3

    sub-int/2addr v7, v6

    invoke-static {v3, v6, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    array-length v7, v3

    sub-int/2addr v7, v6

    invoke-static {v2, v1, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b2
    if-eqz p2, :cond_b6

    if-nez v0, :cond_c3

    :cond_b6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_bb
    .catchall {:try_start_a7 .. :try_end_bb} :catchall_103

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_39

    :cond_c3
    :try_start_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d8
    .catchall {:try_start_c3 .. :try_end_d8} :catchall_103

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_39

    :cond_e1
    :try_start_e1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :cond_ea
    invoke-virtual {v5, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_f4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_f4
    array-length v3, v1

    if-eq v2, v3, :cond_ea

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_fa
    .catchall {:try_start_e1 .. :try_end_fa} :catchall_103

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_39

    :catchall_103
    move-exception v0

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_10b
    move v0, v1

    goto :goto_b2

    :cond_10d
    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    goto/16 :goto_79
.end method

.method public static retrieveFromNetwork(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;

    invoke-direct {v0, p0}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    :try_start_5
    invoke-virtual {v0, p1}, Lcom/bbkmobile/iqoo/payment/network/NetworkRequestAgent;->retrieveFromServer(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_21

    array-length v1, v0

    if-lez v1, :cond_21

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public static saveEventValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    .registers 3

    :try_start_0
    new-instance v0, Lcom/bbkmobile/iqoo/payment/util/AccountEventInfoDbHelper;

    invoke-direct {v0, p1}, Lcom/bbkmobile/iqoo/payment/util/AccountEventInfoDbHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/bbkmobile/iqoo/payment/util/AccountEventInfoDbHelper;->add(Landroid/content/ContentValues;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public static declared-synchronized saveEventValuesEnd(Landroid/content/Context;)V
    .registers 5

    const-class v1, Lcom/bbkmobile/iqoo/payment/util/UtilTool;

    monitor-enter v1

    if-nez p0, :cond_7

    :goto_5
    monitor-exit v1

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "eventid"

    const-string v3, "025"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->appendGreneralInfomation(Landroid/content/ContentValues;Landroid/content/Context;Z)V

    invoke-static {v0, p0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->saveEventValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    goto :goto_5

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized saveEventValuesFromSinglePay(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    const-class v1, Lcom/bbkmobile/iqoo/payment/util/UtilTool;

    monitor-enter v1

    if-nez p1, :cond_7

    :goto_5
    monitor-exit v1

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "eventid"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->appendGreneralInfomation(Landroid/content/ContentValues;Landroid/content/Context;Z)V

    invoke-static {v0, p1}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->saveEventValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_19

    goto :goto_5

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized saveEventValuesStart(Landroid/content/Context;)V
    .registers 5

    const-class v1, Lcom/bbkmobile/iqoo/payment/util/UtilTool;

    monitor-enter v1

    if-nez p0, :cond_7

    :goto_5
    monitor-exit v1

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "eventid"

    const-string v3, "024"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->appendGreneralInfomation(Landroid/content/ContentValues;Landroid/content/Context;Z)V

    invoke-static {v0, p0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->saveEventValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    goto :goto_5

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p2}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "bbk_submit"

    invoke-static {v1, v2}, Lcom/bbkmobile/iqoo/payment/util/ResourceGetter;->getStringResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_22
    return-void
.end method

.method public static showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
    .registers 7

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_20
    return-object v0
.end method

.method public static string2JSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 10

    const/4 v0, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_a
    array-length v3, v2

    if-lt v0, v3, :cond_e

    :goto_d
    return-object v1

    :cond_e
    aget-object v3, v2, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\{"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "result="

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3a} :catch_3d

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method


# virtual methods
.method public getEmmcId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "vivopay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->b:Landroid/content/SharedPreferences;

    const-string v1, "ec"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->getEmmcId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->setEmmcId(Ljava/lang/String;)V

    :cond_2e
    return-object v0
.end method

.method public setEmmcId(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ec"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
