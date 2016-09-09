.class public Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_b
    if-lt v2, v4, :cond_12

    :cond_d
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    aget-char v0, v3, v2

    const/16 v5, 0x30

    if-lt v0, v5, :cond_23

    const/16 v5, 0x39

    if-gt v0, v5, :cond_23

    const/4 v0, 0x1

    :goto_1d
    if-nez v0, :cond_d

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_23
    move v0, v1

    goto :goto_1d
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_2a

    :goto_21
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_30

    :cond_29
    :goto_29
    return-object p1

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p1

    goto :goto_21

    :cond_30
    move-object p1, v0

    goto :goto_29
.end method

.method public static currentAPI()I
    .registers 3

    const/4 v0, -0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a

    const/16 v0, 0x8

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v2, 0x11

    if-ne v1, v2, :cond_9

    invoke-static {}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PD1227T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x9

    goto :goto_9

    :cond_1d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static getAppName()Ljava/lang/String;
    .registers 1

    const-string v0, "com.bbk.iqoo.logsystem"

    return-object v0
.end method

.method public static getAppPackName()Ljava/lang/String;
    .registers 1

    const-string v0, "com.vivo.sdkplugin"

    return-object v0
.end method

.method public static getCustomize()Ljava/lang/String;
    .registers 2

    const-string v0, "ro.product.customize.bbk"

    const-string v1, "N"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardWare()I
    .registers 2

    const-string v0, "ro.boot.hardware"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static getHardwareVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "ro.hardware.bbk"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimCount()I
    .registers 3

    const/4 v2, 0x0

    const-string v0, "ro.boot.hardware"

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_11
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric.2"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_23

    if-nez v1, :cond_23

    const/4 v0, 0x0

    :goto_22
    return v0

    :cond_23
    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    const/4 v0, 0x2

    goto :goto_22

    :cond_29
    const/4 v0, 0x1

    goto :goto_22
.end method

.method public static getSimId1()Ljava/lang/String;
    .registers 2

    const-string v0, "gsm.sim.operator.numeric"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimId2()Ljava/lang/String;
    .registers 2

    const-string v0, "gsm.sim.operator.numeric.2"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSoftVersion()Ljava/lang/String;
    .registers 4

    const-string v0, "ro.build.version.bbk"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CurrentVersionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "proVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v0, ""

    :goto_24
    return-object v0

    :cond_25
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v0, ""

    goto :goto_24

    :cond_30
    const-string v1, "CurrentVersionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x3

    if-gt v1, v2, :cond_7f

    const-string v1, "CurrentVersionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aaaa: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_7f
    const-string v1, "CurrentVersionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bbbbb: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24
.end method

.method public static getSysVersion()Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->getHardwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->getSoftVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CurrentVersionUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sysModel: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hardVer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " softVer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemModel()Ljava/lang/String;
    .registers 4

    const-string v0, "ro.product.model.bbk"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CurrentVersionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "systemModel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PD1124"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1121"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1007C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1115"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1110"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1203"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1206"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1207W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1007B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1208"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1209"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1203T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "PD1124T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    :cond_8c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_96
    return-object v0
.end method

.method public static getVerCode(Landroid/content/Context;)I
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.vivo.sdkplugin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    :goto_e
    return v0

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public static getVerName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.vivo.sdkplugin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    :goto_f
    return-object v0

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public static removeListBackground()Z
    .registers 2

    const-string v0, "ro.product.model.bbk"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PD1216B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "PD1216T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "PD1225"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "PD1226T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "PD1224BT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "PD1227T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_38
    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public static supportPhoneOptimize()Z
    .registers 2

    const-string v0, "ro.product.model.bbk"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PD1219"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "PD1225"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "PD1216B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "PD1216T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static supportTF()Z
    .registers 2

    const-string v0, "ro.product.model.bbk"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PD1216"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "PD1218"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "PD1219"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "PD1225"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "PD1216B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "PD1216T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "PD1227T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_40
    const/4 v0, 0x0

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x1

    goto :goto_41
.end method
