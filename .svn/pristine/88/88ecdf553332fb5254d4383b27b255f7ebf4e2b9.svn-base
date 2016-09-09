.class public Lcom/duoku/platform/download/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLEAR_MEMORY_RESULT_TYPE_100:I = 0x405

.field public static final CLEAR_MEMORY_RESULT_TYPE_100_300:I = 0x404

.field public static final CLEAR_MEMORY_RESULT_TYPE_300:I = 0x403

.field public static final CLEAR_MEMORY_SUCCESS:I = 0x401

.field public static final CLEAR_MEMORY_ZERO:I = 0x402


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkConnection(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 394
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 395
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 397
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_16

    .line 401
    :cond_14
    const/4 v0, 0x0

    .line 405
    :goto_15
    return v0

    .line 404
    :cond_16
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    .line 405
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public static checkStorageState(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 439
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 442
    const/4 v0, 0x0

    .line 445
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static copyText(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_14

    .line 120
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 121
    if-eqz v0, :cond_13

    .line 123
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_13
    :goto_13
    return-void

    .line 128
    :cond_14
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 129
    if-eqz v0, :cond_13

    .line 131
    const-string v1, "text"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_13
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 410
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 411
    if-nez v0, :cond_d

    move-object v0, v1

    .line 422
    :goto_c
    return-object v0

    .line 416
    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 420
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_22
    move-object v0, v1

    .line 422
    goto :goto_c
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 263
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_28

    move-result-object v0

    .line 268
    :goto_b
    if-nez v0, :cond_17

    .line 272
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_26

    move-result-object v0

    .line 278
    :cond_17
    :goto_17
    if-nez v0, :cond_25

    .line 280
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 281
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_25
    return-object v0

    .line 274
    :catch_26
    move-exception v1

    goto :goto_17

    .line 265
    :catch_28
    move-exception v1

    goto :goto_b
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 359
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_11

    move-result-object v0

    .line 366
    :goto_e
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 361
    :catch_11
    move-exception v1

    .line 363
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_e
.end method

.method private static getAvailMemory(Landroid/content/Context;)D
    .registers 5

    .prologue
    .line 430
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 431
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 432
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 434
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getDensity(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 565
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 566
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 567
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 572
    return-void
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 241
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 242
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    :try_start_d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    :goto_14
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_2f

    move-result v0

    const/16 v2, 0xf

    if-lt v0, v2, :cond_29

    .line 254
    :goto_1c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    const-string v2, "0000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 247
    :cond_29
    :try_start_29
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_14

    .line 249
    :catch_2f
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 216
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 217
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    :try_start_d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_25

    const-string v0, ""

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :goto_18
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_30

    move-result v0

    const/16 v2, 0xf

    if-lt v0, v2, :cond_2a

    .line 229
    :goto_20
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 220
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 222
    :cond_2a
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_30

    goto :goto_18

    .line 224
    :catch_30
    move-exception v0

    .line 226
    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method private static getLancherPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 460
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_1c

    .line 462
    const-string v0, ""

    .line 471
    :goto_1b
    return-object v0

    .line 465
    :cond_1c
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 467
    const-string v0, ""

    goto :goto_1b

    .line 471
    :cond_2b
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1b
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 346
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 347
    if-nez v0, :cond_18

    .line 349
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_18
    return-object v0
.end method

.method public static getMACAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 292
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 306
    :goto_10
    return-object v0

    .line 302
    :catch_11
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static getMaxMemory()J
    .registers 6

    .prologue
    .line 62
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    const-string v0, "activity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 64
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 65
    const/high16 v4, 0x100000

    mul-int/2addr v0, v4

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 66
    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 68
    return-wide v2
.end method

.method public static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 195
    if-eqz v0, :cond_10

    .line 196
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_f
    return-object v0

    :cond_10
    move-object v0, v1

    goto :goto_f
.end method

.method public static getOsVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneBrand()Ljava/lang/String;
    .registers 1

    .prologue
    .line 172
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneModel()Ljava/lang/String;
    .registers 1

    .prologue
    .line 182
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSDKVersion()I
    .registers 1

    .prologue
    .line 489
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    .line 500
    :goto_2
    return v0

    .line 491
    :catch_3
    move-exception v0

    .line 495
    :try_start_4
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    goto :goto_2

    .line 497
    :catch_b
    move-exception v0

    .line 499
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 500
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getScreenDensity(Landroid/content/Context;)F
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    return v0
.end method

.method public static getScreensize(Landroid/content/Context;)[I
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 142
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 143
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_28

    .line 145
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 146
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 147
    iget v0, v2, Landroid/graphics/Point;->x:I

    aput v0, v1, v4

    .line 148
    iget v0, v2, Landroid/graphics/Point;->y:I

    aput v0, v1, v5

    .line 156
    :goto_27
    return-object v1

    .line 152
    :cond_28
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    aput v2, v1, v4

    .line 154
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    aput v0, v1, v5

    goto :goto_27
.end method

.method public static getTimeZone(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 317
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 319
    if-nez v0, :cond_18

    .line 321
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 323
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    return-object v0
.end method

.method public static getTimeZoneId(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 332
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 334
    if-nez v0, :cond_18

    .line 336
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 338
    :cond_18
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 339
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    return v0
.end method

.method public static getUsableSpace()J
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 75
    const-wide/16 v2, -0x1

    .line 78
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/duoku/platform/download/utils/DeviceUtil;->getUsableSpace(Ljava/io/File;)J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_19

    move-result-wide v0

    .line 80
    :try_start_e
    new-instance v2, Ljava/io/File;

    const-string v3, "/duoku/sdk/download"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/duoku/platform/download/utils/DeviceUtil;->getUsableSpace(Ljava/io/File;)J
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_21

    .line 89
    :goto_18
    return-wide v0

    .line 85
    :catch_19
    move-exception v0

    move-object v4, v0

    move-wide v0, v2

    move-object v2, v4

    .line 87
    :goto_1d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 85
    :catch_21
    move-exception v2

    goto :goto_1d
.end method

.method private static getUsableSpace(Ljava/io/File;)J
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 98
    .line 99
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/download/utils/DeviceUtil;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 109
    :goto_a
    return-wide v0

    .line 103
    :cond_b
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_20

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    .line 105
    goto :goto_a

    .line 107
    :catch_20
    move-exception v0

    .line 109
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 551
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 552
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_f} :catch_10

    .line 560
    :goto_f
    return-object v0

    .line 556
    :catch_10
    move-exception v0

    .line 558
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 560
    const-string v0, ""

    goto :goto_f
.end method

.method public static hasGingerbread()Z
    .registers 2

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isLauncherRunnig(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 523
    .line 524
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 525
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_2c

    .line 532
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 535
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 537
    const/4 v0, 0x0

    .line 540
    :goto_2b
    return v0

    :cond_2c
    move v0, v1

    goto :goto_2b
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 381
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/DeviceUtil;->checkConnection(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static sortGames(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 508
    invoke-static {p0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 509
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/utils/AppManager;->updateGameLauncherOrder(Ljava/lang/String;)V

    .line 512
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 513
    const-string v1, "com.duoku.game.helper.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppUtil;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    return-void
.end method
