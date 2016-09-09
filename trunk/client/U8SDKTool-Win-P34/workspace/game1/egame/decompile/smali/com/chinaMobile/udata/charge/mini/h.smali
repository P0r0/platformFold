.class public final Lcom/chinaMobile/udata/charge/mini/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_11

    move-result-object v0

    :goto_c
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_11
    move-exception v0

    const-string v0, ""

    goto :goto_c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_49

    move-result-object v0

    :goto_44
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_49
    move-exception v0

    const-string v0, ""

    goto :goto_44
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7d1

    if-le v0, v1, :cond_14

    const/4 v0, 0x0

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_14
    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method protected static a(Ljava/lang/String;I)Z
    .registers 3

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_1d

    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x7

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_5d

    :cond_2b
    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4d

    :cond_37
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x7

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_4d
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x7

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_5d
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x7

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6d

    move-result-object v0

    goto :goto_1c

    :catch_6d
    move-exception v0

    const-string v0, ""

    goto :goto_1c
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_17
    array-length v3, v1

    if-ge v0, v3, :cond_28

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    move-result-object v0

    :goto_2c
    return-object v0

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_2c
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_11

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    :goto_10
    return v0

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v1, ""

    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_16
    const-string v1, "MobileUtils"

    invoke-static {v1, v0}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_20

    :goto_1b
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_20
    move-exception v0

    const-string v0, ""

    const-string v1, "MobileUtils"

    const-string v2, "can\'t not read imsi"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_2b
    move-object v0, v1

    goto :goto_16

    :cond_2d
    move-object v0, v1

    goto :goto_1b
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v1, v3

    new-array v4, v1, [B

    move v1, v0

    :goto_f
    array-length v5, v3

    if-ge v1, v5, :cond_1a

    aget-char v5, v3, v1

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_23
    array-length v3, v1

    if-ge v0, v3, :cond_3d

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_33

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_33
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_42

    move-result-object v0

    :goto_41
    return-object v0

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_41
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_d

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    const-string v0, ""

    goto :goto_8
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v1, ""

    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_13

    const-string v2, "MobileUtils"

    const-string v3, "forgot to include the READ_PHONE_STATE permission?"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/chinaMobile/udata/charge/mini/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3d

    const/4 v0, 0x0

    :goto_2c
    return-object v0

    :cond_2d
    const-string v0, "MobileUtils"

    const-string v2, "forgot to include the READ_PHONE_STATE permission?"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_36

    move-object v0, v1

    goto :goto_1f

    :catch_36
    move-exception v0

    move-object v1, v0

    const-string v0, ""

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, ""

    :cond_8
    return-object p0
.end method

.method public static e(Landroid/content/Context;)I
    .registers 3

    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return v0

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_d

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    const-string v0, ""

    goto :goto_8
.end method

.method public static f(Landroid/content/Context;)I
    .registers 3

    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return v0

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static f()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_4
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/cat"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [B

    :goto_21
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3d} :catch_4c
    .catchall {:try_start_4 .. :try_end_3d} :catchall_5b

    move-result-object v0

    goto :goto_21

    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_47

    :goto_42
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_47
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42

    :catch_4c
    move-exception v0

    :try_start_4d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_5b

    :try_start_52
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_42

    :catch_56
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42

    :catchall_5b
    move-exception v0

    :try_start_5c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    :goto_5f
    throw v0

    :catch_60
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f
.end method

.method public static g(Landroid/content/Context;)I
    .registers 3

    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return v0

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static g()Ljava/lang/String;
    .registers 3

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_1e
    .catchall {:try_start_1 .. :try_end_8} :catchall_2e

    :try_start_8
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_3b
    .catchall {:try_start_8 .. :try_end_14} :catchall_39

    move-result-object v0

    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    :goto_18
    return-object v0

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    :catch_1e
    move-exception v0

    move-object v1, v2

    :goto_20
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_39

    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_29

    :goto_26
    const-string v0, ""

    goto :goto_18

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    :catchall_2e
    move-exception v0

    move-object v1, v2

    :goto_30
    :try_start_30
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    :goto_33
    throw v0

    :catch_34
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    :catchall_39
    move-exception v0

    goto :goto_30

    :catch_3b
    move-exception v0

    goto :goto_20
.end method

.method public static h(Landroid/content/Context;)I
    .registers 3

    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    float-to-int v0, v0

    :goto_17
    return v0

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static h()Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    const-string v0, "/proc/meminfo"

    :try_start_3
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_50
    .catchall {:try_start_3 .. :try_end_8} :catchall_61

    :try_start_8
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v1, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_78
    .catchall {:try_start_8 .. :try_end_f} :catchall_70

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const-string v4, "k"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MobileUtils"

    invoke-static {v2, v0}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_35} :catch_7c
    .catchall {:try_start_f .. :try_end_35} :catchall_73

    move-result-object v0

    :try_start_36
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3c} :catch_3d

    :goto_3c
    return-object v0

    :catch_3d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    :cond_42
    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_48} :catch_4b

    :goto_48
    const-string v0, ""

    goto :goto_3c

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48

    :catch_50
    move-exception v0

    move-object v1, v2

    :goto_52
    :try_start_52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_75

    :try_start_55
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5b} :catch_5c

    goto :goto_48

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48

    :catchall_61
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_64
    :try_start_64
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6a} :catch_6b

    :goto_6a
    throw v0

    :catch_6b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6a

    :catchall_70
    move-exception v0

    move-object v1, v2

    goto :goto_64

    :catchall_73
    move-exception v0

    goto :goto_64

    :catchall_75
    move-exception v0

    move-object v3, v2

    goto :goto_64

    :catch_78
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_52

    :catch_7c
    move-exception v0

    move-object v2, v3

    goto :goto_52
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_22
    const-string v0, "unknown"
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_33

    :cond_24
    :goto_24
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    :try_start_29
    const-string v0, "MobileUtils"

    const-string v1, "Could not read MAC, forget to include ACCESS_WIFI_STATE permission?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_32} :catch_33

    goto :goto_24

    :catch_33
    move-exception v0

    const-string v1, "MobileUtils"

    const-string v2, "Could not read MAC, forget to include ACCESS_WIFI_STATE permission?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "unknown"

    goto :goto_28
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "jfdMoblieAgent_sys_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MOBILE_APPKEY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "MOBILE_APPKEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, "MobileUtils"

    const-string v2, "the appkey is empty,please init datau.sdk"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v0, "00000"
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    return-object v0

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "00000"

    goto :goto_44
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "jfdMoblieAgent_sys_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MOBILE_CHANNEL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "MOBILE_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3a

    const-string v0, "MobileUtils"

    const-string v1, "Could not read MOBILE_CHANNEL meta-data from AndroidManifest.xml."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :cond_3a
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3e
    return-object v0

    :cond_3f
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_44

    move-result-object v0

    goto :goto_3e

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_3e
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_9

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    const-string v0, ""

    goto :goto_4
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_11

    move-result-object v0

    :goto_c
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_c
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "unknown"

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    const-string v0, "wifi"

    goto :goto_18

    :cond_23
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string v0, "unknown"

    goto :goto_18

    :cond_2c
    const-string v1, "MobileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_4c

    move-result-object v0

    goto :goto_18

    :cond_49
    const-string v0, "unknown"

    goto :goto_18

    :catch_4c
    move-exception v0

    const-string v1, "MobileUtils"

    const-string v2, "Could not read ACCESSPOINT, forget to include ACCESS_NETSTATE_STATE permission?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "unknown"

    goto :goto_18
.end method

.method public static o(Landroid/content/Context;)I
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_f
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_14

    :goto_f
    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_f
.end method

.method public static q(Landroid/content/Context;)[J
    .registers 11

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->u(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proc/uid_stat/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tcp_rcv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proc/uid_stat/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tcp_snd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_39
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_bc
    .catchall {:try_start_39 .. :try_end_3e} :catchall_d2

    :try_start_3e
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x1f4

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_123
    .catchall {:try_start_3e .. :try_end_45} :catchall_11c

    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_54} :catch_126
    .catchall {:try_start_45 .. :try_end_54} :catchall_121

    move-result-wide v6

    :try_start_55
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5b} :catch_b4

    move-wide v2, v6

    move-object v1, v0

    :goto_5d
    :try_start_5d
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_62} :catch_ea
    .catchall {:try_start_5d .. :try_end_62} :catchall_fb

    :try_start_62
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v1, 0x1f4

    invoke-direct {v6, v7, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_115
    .catchall {:try_start_62 .. :try_end_69} :catchall_10f

    :try_start_69
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_78} :catch_118
    .catchall {:try_start_69 .. :try_end_78} :catchall_113

    move-result-wide v0

    :try_start_79
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7f} :catch_e5

    :goto_7f
    const-string v6, "MobileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "indicate flow: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  &  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    new-array v6, v6, [J

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-gez v8, :cond_aa

    move-wide v2, v4

    :cond_aa
    aput-wide v2, v6, v7

    const/4 v2, 0x1

    cmp-long v3, v0, v4

    if-gez v3, :cond_10d

    :goto_b1
    aput-wide v4, v6, v2

    return-object v6

    :catch_b4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v6

    goto :goto_5d

    :catch_bc
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_bf
    if-eqz v2, :cond_128

    :try_start_c1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c7} :catch_ca

    move-object v1, v0

    :goto_c8
    move-wide v2, v4

    goto :goto_5d

    :catch_ca
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v4

    goto :goto_5d

    :catchall_d2
    move-exception v1

    move-object v2, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_d7
    if-eqz v2, :cond_df

    :try_start_d9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_df} :catch_e0

    :cond_df
    :goto_df
    throw v0

    :catch_e0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_df

    :catch_e5
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7f

    :catch_ea
    move-exception v6

    :goto_eb
    if-eqz v1, :cond_f3

    :try_start_ed
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f3} :catch_f5

    :cond_f3
    move-wide v0, v4

    goto :goto_7f

    :catch_f5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v4

    goto :goto_7f

    :catchall_fb
    move-exception v2

    move-object v6, v0

    move-object v7, v1

    move-object v0, v2

    :goto_ff
    if-eqz v7, :cond_107

    :try_start_101
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_107} :catch_108

    :cond_107
    :goto_107
    throw v0

    :catch_108
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_107

    :cond_10d
    move-wide v4, v0

    goto :goto_b1

    :catchall_10f
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_ff

    :catchall_113
    move-exception v0

    goto :goto_ff

    :catch_115
    move-exception v1

    move-object v1, v7

    goto :goto_eb

    :catch_118
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    goto :goto_eb

    :catchall_11c
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_d7

    :catchall_121
    move-exception v0

    goto :goto_d7

    :catch_123
    move-exception v1

    move-object v1, v0

    goto :goto_bf

    :catch_126
    move-exception v3

    goto :goto_bf

    :cond_128
    move-object v0, v1

    move-object v1, v2

    goto :goto_c8
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v1, ""

    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v0, "WIFI"

    :goto_24
    return-object v0

    :cond_25
    const-string v2, "MOBILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_4d
    const-string v0, ""
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4f} :catch_50

    goto :goto_24

    :catch_50
    move-exception v0

    const-string v0, ""

    goto :goto_24

    :cond_54
    move-object v0, v1

    goto :goto_24
.end method

.method protected static s(Landroid/content/Context;)I
    .registers 4

    const-string v0, "jfdMoblieAgent_sys_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isAllowCollect"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static t(Landroid/content/Context;)V
    .registers 4

    const-string v0, "jfdMoblieAgent_sys_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isAllowCollect"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static u(Landroid/content/Context;)I
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_f
.end method
