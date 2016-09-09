.class public final Lcom/alipay/security/mobile/module/deviceinfo/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/security/mobile/module/deviceinfo/b$1;,
        Lcom/alipay/security/mobile/module/deviceinfo/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/security/mobile/module/deviceinfo/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/alipay/security/mobile/module/deviceinfo/b;

    invoke-direct {v0}, Lcom/alipay/security/mobile/module/deviceinfo/b;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/module/deviceinfo/b;->a:Lcom/alipay/security/mobile/module/deviceinfo/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/security/mobile/module/deviceinfo/b;
    .registers 1

    sget-object v0, Lcom/alipay/security/mobile/module/deviceinfo/b;->a:Lcom/alipay/security/mobile/module/deviceinfo/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    :try_start_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_13

    move-result-object v0

    :goto_11
    move-object v1, v0

    :cond_12
    :goto_12
    return-object v1

    :catch_13
    move-exception v0

    goto :goto_12

    :cond_15
    move-object v0, v1

    goto :goto_11
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 15

    const-string v4, "%2$d*%3$d"

    const-string v1, ""

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->t(Landroid/content/Context;)F

    move-result v5

    const/4 v0, 0x0

    :try_start_d
    invoke-static {p2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_10} :catch_94
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_9c
    .catchall {:try_start_d .. :try_end_10} :catchall_a5

    move-result-object v2

    :try_start_11
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    new-instance v0, Lcom/alipay/security/mobile/module/deviceinfo/b$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/alipay/security/mobile/module/deviceinfo/b$a;-><init>(Lcom/alipay/security/mobile/module/deviceinfo/b;B)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v9, 0x258

    if-lt v8, v9, :cond_53

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v8, v8

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v0, v0

    div-float v0, v8, v0

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v8, v0

    const-wide v10, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v0, v8, v10

    if-gtz v0, :cond_56

    const/4 v0, 0x1

    :goto_51
    if-nez v0, :cond_58

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_56
    const/4 v0, 0x0

    goto :goto_51

    :cond_58
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v3, v0, :cond_b9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_64
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_b7

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_8d
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_8d} :catch_b2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_8d} :catch_b0
    .catchall {:try_start_11 .. :try_end_8d} :catchall_ae

    move-result-object v0

    :goto_8e
    if-eqz v2, :cond_93

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    :cond_93
    :goto_93
    return-object v0

    :catch_94
    move-exception v2

    :goto_95
    if-eqz v0, :cond_b5

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    move-object v0, v1

    goto :goto_93

    :catch_9c
    move-exception v2

    move-object v2, v0

    :goto_9e
    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    move-object v0, v1

    goto :goto_93

    :catchall_a5
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_a8
    if-eqz v2, :cond_ad

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    :cond_ad
    throw v0

    :catchall_ae
    move-exception v0

    goto :goto_a8

    :catch_b0
    move-exception v0

    goto :goto_9e

    :catch_b2
    move-exception v0

    move-object v0, v2

    goto :goto_95

    :cond_b5
    move-object v0, v1

    goto :goto_93

    :cond_b7
    move-object v0, v1

    goto :goto_8e

    :cond_b9
    move v0, v3

    goto :goto_64
.end method

.method public static b()Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    const-string v0, "0000000000000000"

    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v3, "cat /proc/cpuinfo | grep Serial"

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_4c
    .catchall {:try_start_3 .. :try_end_16} :catchall_5b

    :try_start_16
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_78
    .catchall {:try_start_16 .. :try_end_1b} :catchall_73

    const/4 v2, 0x1

    :goto_1c
    const/16 v4, 0x64

    if-ge v2, v4, :cond_42

    :try_start_20
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_42

    const-string v5, "Serial"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_49

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_7c
    .catchall {:try_start_20 .. :try_end_41} :catchall_76

    move-result-object v0

    :cond_42
    :try_start_42
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_69

    :goto_45
    :try_start_45
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_6b

    :cond_48
    :goto_48
    return-object v0

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :catch_4c
    move-exception v1

    move-object v1, v2

    :goto_4e
    if-eqz v1, :cond_53

    :try_start_50
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_6d

    :cond_53
    :goto_53
    if-eqz v2, :cond_48

    :try_start_55
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_48

    :catch_59
    move-exception v1

    goto :goto_48

    :catchall_5b
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5e
    if-eqz v1, :cond_63

    :try_start_60
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_6f

    :cond_63
    :goto_63
    if-eqz v3, :cond_68

    :try_start_65
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_71

    :cond_68
    :goto_68
    throw v0

    :catch_69
    move-exception v1

    goto :goto_45

    :catch_6b
    move-exception v1

    goto :goto_48

    :catch_6d
    move-exception v1

    goto :goto_53

    :catch_6f
    move-exception v1

    goto :goto_63

    :catch_71
    move-exception v1

    goto :goto_68

    :catchall_73
    move-exception v0

    move-object v1, v2

    goto :goto_5e

    :catchall_76
    move-exception v0

    goto :goto_5e

    :catch_78
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_4e

    :catch_7c
    move-exception v2

    move-object v2, v3

    goto :goto_4e
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    :try_start_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_13

    move-result-object v0

    :goto_11
    move-object v1, v0

    :cond_12
    :goto_12
    return-object v1

    :catch_13
    move-exception v0

    goto :goto_12

    :cond_15
    move-object v0, v1

    goto :goto_11
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v1, ""

    if-eqz p0, :cond_13

    :try_start_4
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_14

    move-result-object v0

    :goto_12
    move-object v1, v0

    :cond_13
    :goto_13
    return-object v1

    :catch_14
    move-exception v0

    goto :goto_13

    :cond_16
    move-object v0, v1

    goto :goto_12
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/b;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    if-eqz p0, :cond_46

    :try_start_3
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_51

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_51

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :catch_45
    move-exception v0

    :cond_46
    :goto_46
    return-object v1

    :cond_47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4e} :catch_45

    move-result-object v0

    :goto_4f
    move-object v1, v0

    goto :goto_46

    :cond_51
    move-object v0, v1

    goto :goto_4f
.end method

.method public static e()Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    const-string v4, "/proc/meminfo"

    const-wide/16 v0, 0x0

    :try_start_5
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_30
    .catchall {:try_start_5 .. :try_end_a} :catchall_3f

    :try_start_a
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v4, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_5c
    .catchall {:try_start_a .. :try_end_11} :catchall_57

    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    const-string v5, "\\s+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_23} :catch_5e
    .catchall {:try_start_11 .. :try_end_23} :catchall_5a

    move-result v0

    int-to-long v0, v0

    :cond_25
    :try_start_25
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_4d

    :goto_28
    :try_start_28
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_4f

    :cond_2b
    :goto_2b
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_30
    move-exception v2

    move-object v2, v3

    :goto_32
    if-eqz v2, :cond_37

    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_51

    :cond_37
    :goto_37
    if-eqz v3, :cond_2b

    :try_start_39
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_2b

    :catch_3d
    move-exception v2

    goto :goto_2b

    :catchall_3f
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_42
    if-eqz v2, :cond_47

    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_53

    :cond_47
    :goto_47
    if-eqz v4, :cond_4c

    :try_start_49
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_55

    :cond_4c
    :goto_4c
    throw v0

    :catch_4d
    move-exception v2

    goto :goto_28

    :catch_4f
    move-exception v2

    goto :goto_2b

    :catch_51
    move-exception v2

    goto :goto_37

    :catch_53
    move-exception v1

    goto :goto_47

    :catch_55
    move-exception v1

    goto :goto_4c

    :catchall_57
    move-exception v0

    move-object v4, v3

    goto :goto_42

    :catchall_5a
    move-exception v0

    goto :goto_42

    :catch_5c
    move-exception v4

    goto :goto_32

    :catch_5e
    move-exception v3

    move-object v3, v4

    goto :goto_32
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result-object v0

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public static f()Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_1f

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    :goto_1a
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1f
    move-exception v2

    goto :goto_1a
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static g()Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_2b

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    :cond_26
    :goto_26
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_2b
    move-exception v2

    goto :goto_26
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static h()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    const-string v0, ""

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_e

    :catch_14
    move-exception v0

    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static i()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "gsm.version.baseband"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "no message"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    :goto_31
    return-object v0

    :catch_32
    move-exception v0

    move-object v0, v1

    goto :goto_31
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v1, ""

    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    move-object v0, v1

    goto :goto_e
.end method

.method public static j()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    :try_start_2
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4} :catch_5

    :goto_4
    return-object v0

    :catch_5
    move-exception v1

    goto :goto_4
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static k()Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    const-string v0, "-1"

    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v3, "cat /proc/cpuinfo | grep Hardware"

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_4c
    .catchall {:try_start_3 .. :try_end_16} :catchall_5b

    :try_start_16
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_78
    .catchall {:try_start_16 .. :try_end_1b} :catchall_73

    const/4 v2, 0x1

    :goto_1c
    const/16 v4, 0x64

    if-ge v2, v4, :cond_42

    :try_start_20
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_42

    const-string v5, "Hardware"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_49

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_7c
    .catchall {:try_start_20 .. :try_end_41} :catchall_76

    move-result-object v0

    :cond_42
    :try_start_42
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_69

    :goto_45
    :try_start_45
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_6b

    :cond_48
    :goto_48
    return-object v0

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :catch_4c
    move-exception v1

    move-object v1, v2

    :goto_4e
    if-eqz v1, :cond_53

    :try_start_50
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_6d

    :cond_53
    :goto_53
    if-eqz v2, :cond_48

    :try_start_55
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_48

    :catch_59
    move-exception v1

    goto :goto_48

    :catchall_5b
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5e
    if-eqz v1, :cond_63

    :try_start_60
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_6f

    :cond_63
    :goto_63
    if-eqz v3, :cond_68

    :try_start_65
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_71

    :cond_68
    :goto_68
    throw v0

    :catch_69
    move-exception v1

    goto :goto_45

    :catch_6b
    move-exception v1

    goto :goto_48

    :catch_6d
    move-exception v1

    goto :goto_53

    :catch_6f
    move-exception v1

    goto :goto_63

    :catch_71
    move-exception v1

    goto :goto_68

    :catchall_73
    move-exception v0

    move-object v1, v2

    goto :goto_5e

    :catchall_76
    move-exception v0

    goto :goto_5e

    :catch_78
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_4e

    :catch_7c
    move-exception v2

    move-object v2, v3

    goto :goto_4e
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static l()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    :try_start_3
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_2d
    .catchall {:try_start_3 .. :try_end_8} :catchall_39

    :try_start_8
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_58
    .catchall {:try_start_8 .. :try_end_f} :catchall_51

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_5b
    .catchall {:try_start_f .. :try_end_1c} :catchall_56

    move-result-object v0

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_45

    :goto_20
    :try_start_20
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_47

    :goto_23
    return-object v0

    :cond_24
    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_49

    :goto_27
    :try_start_27
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_23

    :catch_2b
    move-exception v1

    goto :goto_23

    :catch_2d
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_30
    :try_start_30
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_4b

    :goto_33
    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_23

    :catch_37
    move-exception v1

    goto :goto_23

    :catchall_39
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4d

    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_4f

    :goto_44
    throw v0

    :catch_45
    move-exception v1

    goto :goto_20

    :catch_47
    move-exception v1

    goto :goto_23

    :catch_49
    move-exception v1

    goto :goto_27

    :catch_4b
    move-exception v1

    goto :goto_33

    :catch_4d
    move-exception v1

    goto :goto_41

    :catch_4f
    move-exception v1

    goto :goto_44

    :catchall_51
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3e

    :catchall_56
    move-exception v0

    goto :goto_3e

    :catch_58
    move-exception v1

    move-object v1, v0

    goto :goto_30

    :catch_5b
    move-exception v3

    goto :goto_30
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    :cond_18
    const-string v0, ""

    goto :goto_16
.end method

.method private static m()Ljava/lang/String;
    .registers 8

    const/4 v6, 0x1

    const/4 v0, 0x0

    const-string v1, "/proc/cpuinfo"

    :try_start_4
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_40
    .catchall {:try_start_4 .. :try_end_9} :catchall_50

    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_71
    .catchall {:try_start_9 .. :try_end_10} :catchall_6a

    :cond_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_39

    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    array-length v4, v3

    if-le v4, v6, :cond_10

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "BogoMIPS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_38} :catch_74
    .catchall {:try_start_10 .. :try_end_38} :catchall_6f

    move-result-object v0

    :cond_39
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_60

    :goto_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_62

    :cond_3f
    :goto_3f
    return-object v0

    :catch_40
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_43
    if-eqz v2, :cond_48

    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_64

    :cond_48
    :goto_48
    if-eqz v1, :cond_3f

    :try_start_4a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_3f

    :catch_4e
    move-exception v1

    goto :goto_3f

    :catchall_50
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_55
    if-eqz v2, :cond_5a

    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_66

    :cond_5a
    :goto_5a
    if-eqz v1, :cond_5f

    :try_start_5c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_68

    :cond_5f
    :goto_5f
    throw v0

    :catch_60
    move-exception v2

    goto :goto_3c

    :catch_62
    move-exception v1

    goto :goto_3f

    :catch_64
    move-exception v2

    goto :goto_48

    :catch_66
    move-exception v2

    goto :goto_5a

    :catch_68
    move-exception v1

    goto :goto_5f

    :catchall_6a
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_55

    :catchall_6f
    move-exception v0

    goto :goto_55

    :catch_71
    move-exception v1

    move-object v1, v0

    goto :goto_43

    :catch_74
    move-exception v3

    goto :goto_43
.end method

.method public static m(Landroid/content/Context;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_35

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_33} :catch_34

    goto :goto_1a

    :catch_34
    move-exception v0

    :cond_35
    return-object v1
.end method

.method private static n()Ljava/lang/String;
    .registers 8

    const/4 v6, 0x1

    const/4 v0, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_31
    .catchall {:try_start_2 .. :try_end_9} :catchall_41

    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_64
    .catchall {:try_start_9 .. :try_end_e} :catchall_5d

    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":\\s+"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28

    array-length v4, v3

    if-le v4, v6, :cond_28

    const/4 v4, 0x1

    aget-object v0, v3, v4
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_21} :catch_67
    .catchall {:try_start_e .. :try_end_21} :catchall_62

    :try_start_21
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_51

    :goto_24
    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_53

    :cond_27
    :goto_27
    return-object v0

    :cond_28
    :try_start_28
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_55

    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_27

    :catch_2f
    move-exception v1

    goto :goto_27

    :catch_31
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_34
    if-eqz v2, :cond_39

    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_57

    :cond_39
    :goto_39
    if-eqz v1, :cond_27

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_27

    :catch_3f
    move-exception v1

    goto :goto_27

    :catchall_41
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_46
    if-eqz v2, :cond_4b

    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_59

    :cond_4b
    :goto_4b
    if-eqz v1, :cond_50

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_5b

    :cond_50
    :goto_50
    throw v0

    :catch_51
    move-exception v2

    goto :goto_24

    :catch_53
    move-exception v1

    goto :goto_27

    :catch_55
    move-exception v2

    goto :goto_2b

    :catch_57
    move-exception v2

    goto :goto_39

    :catch_59
    move-exception v2

    goto :goto_4b

    :catch_5b
    move-exception v1

    goto :goto_50

    :catchall_5d
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_46

    :catchall_62
    move-exception v0

    goto :goto_46

    :catch_64
    move-exception v1

    move-object v1, v0

    goto :goto_34

    :catch_67
    move-exception v3

    goto :goto_34
.end method

.method private static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    :try_start_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_13

    move-result-object v0

    :goto_11
    move-object v1, v0

    :cond_12
    :goto_12
    return-object v1

    :catch_13
    move-exception v0

    goto :goto_12

    :cond_15
    move-object v0, v1

    goto :goto_11
.end method

.method private static o(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    :try_start_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_13

    move-result-object v0

    :goto_11
    move-object v1, v0

    :cond_12
    :goto_12
    return-object v1

    :catch_13
    move-exception v0

    goto :goto_12

    :cond_15
    move-object v0, v1

    goto :goto_11
.end method

.method private static o()Z
    .registers 1

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_e

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_d
    return v0

    :catch_e
    move-exception v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static p()Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const/4 v3, 0x0

    const-string v1, ""

    :try_start_5
    new-instance v4, Ljava/io/FileInputStream;

    const-string v2, "/proc/version"

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_c} :catch_72

    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_54
    .catchall {:try_start_c .. :try_end_18} :catchall_5f

    :goto_18
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2e} :catch_6e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_6c

    move-result-object v1

    goto :goto_18

    :cond_30
    :try_start_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_36} :catch_70

    :goto_36
    :try_start_36
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "version "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_52} :catch_68

    move-result-object v0

    :cond_53
    :goto_53
    return-object v0

    :catch_54
    move-exception v2

    move-object v2, v3

    :goto_56
    :try_start_56
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5c} :catch_5d

    goto :goto_36

    :catch_5d
    move-exception v2

    goto :goto_36

    :catchall_5f
    move-exception v0

    move-object v2, v3

    :goto_61
    :try_start_61
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_67} :catch_6a

    :goto_67
    throw v0

    :catch_68
    move-exception v1

    goto :goto_53

    :catch_6a
    move-exception v1

    goto :goto_67

    :catchall_6c
    move-exception v0

    goto :goto_61

    :catch_6e
    move-exception v3

    goto :goto_56

    :catch_70
    move-exception v2

    goto :goto_36

    :catch_72
    move-exception v1

    goto :goto_53
.end method

.method private static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    :try_start_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_13

    move-result-object v0

    :goto_11
    move-object v1, v0

    :cond_12
    :goto_12
    return-object v1

    :catch_13
    move-exception v0

    goto :goto_12

    :cond_15
    move-object v0, v1

    goto :goto_11
.end method

.method private static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    :try_start_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_13

    move-result-object v0

    :goto_11
    move-object v1, v0

    :cond_12
    :goto_12
    return-object v1

    :catch_13
    move-exception v0

    goto :goto_12

    :cond_15
    move-object v0, v1

    goto :goto_11
.end method

.method private static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_17
.end method

.method private s(Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/deviceinfo/b;->t(Landroid/content/Context;)F

    const/4 v0, -0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_10
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1e

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1d} :catch_5c

    move-result v0

    :cond_1e
    :goto_1e
    move v2, v3

    :goto_1f
    if-ge v2, v0, :cond_57

    if-nez v2, :cond_40

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "%1$d:%2$s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-direct {p0, p1, v2}, Lcom/alipay/security/mobile/module/deviceinfo/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_39
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1f

    :cond_40
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "#%1$d:%2$s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-direct {p0, p1, v2}, Lcom/alipay/security/mobile/module/deviceinfo/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_5c
    move-exception v1

    goto :goto_1e
.end method

.method private static t(Landroid/content/Context;)F
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    iget v0, v2, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/security/mobile/module/deviceinfo/c;

    invoke-direct {v1, p0}, Lcom/alipay/security/mobile/module/deviceinfo/c;-><init>(Lcom/alipay/security/mobile/module/deviceinfo/b;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const-string v0, "1"

    goto :goto_15
.end method
