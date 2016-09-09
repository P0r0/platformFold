.class public Lcom/duoku/platform/download/utils/ApkUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/utils/ApkUtil$a;,
        Lcom/duoku/platform/download/utils/ApkUtil$b;,
        Lcom/duoku/platform/download/utils/ApkUtil$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApkUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 612
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/ApkUtil;->startSystemInstallUI(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1()Z
    .registers 1

    .prologue
    .line 673
    invoke-static {}, Lcom/duoku/platform/download/utils/ApkUtil;->requestRoot()Z

    move-result v0

    return v0
.end method

.method private static canMakeFileAsRoot()Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/root"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 412
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 414
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 416
    :cond_13
    const-string v0, "ApkUtil"

    const-string v1, "/data/data/root\u53ef\u4ee5\u521b\u5efa\u6210\u529f\uff0c\u8be5\u8bbe\u5907\u6709root\u6743\u9650\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1a} :catch_1c

    .line 417
    const/4 v0, 0x1

    .line 423
    :goto_1b
    return v0

    .line 419
    :catch_1c
    move-exception v0

    .line 421
    const-string v0, "ApkUtil"

    const-string v1, "/data/data/root\u53ef\u4ee5\u521b\u5efa\u5931\u8d25\uff0c\u6ca1\u6709\u6743\u9650\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static checkRooted1()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 428
    invoke-static {}, Lcom/duoku/platform/download/utils/ApkUtil;->canMakeFileAsRoot()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 452
    :cond_7
    :goto_7
    return v0

    .line 432
    :cond_8
    invoke-static {}, Lcom/duoku/platform/download/utils/ApkUtil;->isTestKeys()Z

    move-result v1

    if-nez v1, :cond_7

    .line 436
    invoke-static {}, Lcom/duoku/platform/download/utils/ApkUtil;->isSuperuserInstalled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 452
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static checkRooted2()Z
    .registers 2

    .prologue
    .line 458
    new-instance v0, Lcom/duoku/platform/download/utils/ApkUtil$a;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/ApkUtil$a;-><init>()V

    sget-object v1, Lcom/duoku/platform/download/utils/ApkUtil$c;->a:Lcom/duoku/platform/download/utils/ApkUtil$c;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/ApkUtil$a;->a(Lcom/duoku/platform/download/utils/ApkUtil$c;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 460
    const-string v0, "ApkUtil"

    const-string v1, "checkRootMethod3: true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v0, 0x1

    .line 466
    :goto_15
    return v0

    .line 465
    :cond_16
    const-string v0, "ApkUtil"

    const-string v1, "checkRootMethod3: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static getApkSignatureByFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 197
    .line 198
    const/16 v0, 0x40

    .line 197
    invoke-static {p1, v0}, Lcom/duoku/platform/download/utils/ApkUtil;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_1b

    .line 201
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-lez v1, :cond_1b

    .line 203
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static getDefaultValue(Landroid/content/SharedPreferences;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 848
    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 851
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    :cond_10
    return-object v0
.end method

.method private static getNetworkType(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 816
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 817
    const/4 v1, 0x0

    .line 818
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 821
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "46007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 823
    :cond_2b
    const/4 v0, 0x1

    .line 834
    :goto_2c
    return v0

    .line 825
    :cond_2d
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 827
    const/4 v0, 0x2

    .line 828
    goto :goto_2c

    .line 829
    :cond_37
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 831
    const/4 v0, 0x3

    goto :goto_2c

    :cond_41
    move v0, v1

    goto :goto_2c
.end method

.method private static getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 300
    :try_start_2
    const-string v2, "android.content.pm.PackageParser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 301
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    .line 303
    array-length v5, v4

    move v2, v0

    :goto_e
    if-lt v2, v5, :cond_ae

    move-object v0, v1

    .line 311
    :cond_11
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 312
    const-string v4, "parsePackage"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/io/File;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 313
    const-string v5, "collectCertificates"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 314
    const-string v6, "generatePackageInfo"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    const-class v8, [I

    aput-object v8, v7, v0

    const/4 v0, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    const/4 v0, 0x3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    const/4 v0, 0x4

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 315
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 316
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 317
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 318
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 320
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 322
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 323
    invoke-virtual {v3}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 325
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object p0, v7, v6

    const/4 v6, 0x2

    aput-object v3, v7, v6

    const/4 v3, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 328
    if-nez v3, :cond_c1

    move-object v0, v1

    .line 345
    :goto_ad
    return-object v0

    .line 303
    :cond_ae
    aget-object v0, v4, v2

    .line 305
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.content.pm.PackageParser$Package"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_11

    .line 303
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_e

    .line 333
    :cond_c1
    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_d6

    .line 335
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v5, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_d6
    const/4 v2, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-object v5, v4, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_fe} :catch_ff

    goto :goto_ad

    .line 340
    :catch_ff
    move-exception v0

    .line 342
    const-string v2, "Signature Monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android.content.pm.PackageParser reflection failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 345
    goto :goto_ad
.end method

.method public static getPackageForFile(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 5

    .prologue
    .line 166
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 170
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_10

    .line 175
    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 191
    :goto_f
    return-object v0

    .line 182
    :cond_10
    const/16 v1, 0x40

    .line 179
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_f

    .line 187
    :catch_17
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static getPackageNameForFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 153
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 158
    :goto_b
    return-object v0

    .line 155
    :catch_c
    move-exception v0

    .line 158
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static getPhoneBrand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 763
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 764
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 766
    const-string v0, ""

    .line 770
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private getSignatures(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 213
    const-string v1, "android.content.pm.PackageParser"

    .line 214
    const-string v1, "parsePackage"

    .line 215
    const-string v1, "Package"

    .line 216
    const-string v1, "collectCertificates"

    .line 217
    const-string v1, "generatePackageInfo"

    .line 221
    :try_start_b
    const-string v1, "android.content.pm.PackageParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 224
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 227
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 230
    const-string v1, "parsePackage"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/io/File;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/util/DisplayMetrics;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 233
    invoke-virtual {v2}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v5

    .line 234
    const/4 v1, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 235
    :goto_4c
    array-length v6, v5

    if-lt v1, v6, :cond_78

    .line 243
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 244
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 247
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const/4 v1, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 248
    if-nez v1, :cond_8b

    .line 251
    const/4 v0, 0x0

    .line 289
    :goto_77
    return-object v0

    .line 237
    :cond_78
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.content.pm.PackageParser$Package"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 239
    aget-object v0, v5, v1

    .line 235
    :cond_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 255
    :cond_8b
    const-string v4, "collectCertificates"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 258
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v4, "generatePackageInfo"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    const-class v6, [I

    aput-object v6, v5, v0

    const/4 v0, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    const/4 v0, 0x3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    const/4 v0, 0x4

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 264
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const/4 v1, 0x3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 265
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_fe
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_fe} :catch_10f
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_fe} :catch_10d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_fe} :catch_10b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_fe} :catch_109
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_fe} :catch_107
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_fe} :catch_105
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_fe} :catch_101

    move-result-object v0

    goto/16 :goto_77

    .line 286
    :catch_101
    move-exception v0

    .line 289
    :goto_102
    const/4 v0, 0x0

    goto/16 :goto_77

    .line 283
    :catch_105
    move-exception v0

    goto :goto_102

    .line 280
    :catch_107
    move-exception v0

    goto :goto_102

    .line 277
    :catch_109
    move-exception v0

    goto :goto_102

    .line 274
    :catch_10b
    move-exception v0

    goto :goto_102

    .line 271
    :catch_10d
    move-exception v0

    goto :goto_102

    .line 268
    :catch_10f
    move-exception v0

    goto :goto_102
.end method

.method public static getdetinationNum(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 806
    const/4 v0, 0x0

    return-object v0
.end method

.method public static installAPKBySUCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 602
    return-void
.end method

.method public static installApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 542
    invoke-static {p0, p1, p2}, Lcom/duoku/platform/download/utils/ApkUtil;->realInstallApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public static isAPK(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 54
    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 86
    :cond_12
    :goto_12
    return v0

    .line 59
    :cond_13
    const/4 v3, 0x0

    .line 63
    :try_start_14
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_28
    .catchall {:try_start_14 .. :try_end_19} :catchall_37

    .line 64
    :try_start_19
    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_41
    .catchall {:try_start_19 .. :try_end_1e} :catchall_3f

    move-result-object v1

    if-eqz v1, :cond_22

    .line 66
    const/4 v0, 0x1

    .line 79
    :cond_22
    :try_start_22
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_12

    .line 81
    :catch_26
    move-exception v1

    goto :goto_12

    .line 70
    :catch_28
    move-exception v1

    move-object v2, v3

    .line 72
    :goto_2a
    :try_start_2a
    const-string v3, "ApkUtil"

    const-string v4, "Parse file failure!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_3f

    .line 79
    :try_start_31
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_12

    .line 81
    :catch_35
    move-exception v1

    goto :goto_12

    .line 76
    :catchall_37
    move-exception v0

    move-object v2, v3

    .line 79
    :goto_39
    :try_start_39
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 84
    :goto_3c
    throw v0

    .line 81
    :catch_3d
    move-exception v1

    goto :goto_3c

    .line 76
    :catchall_3f
    move-exception v0

    goto :goto_39

    .line 70
    :catch_41
    move-exception v1

    goto :goto_2a
.end method

.method public static isAPKFileValid(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 142
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private static isCommonRootAppInstalled(Landroid/content/Context;)Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 386
    const-string v1, "com.noshufou.android.su"

    invoke-static {p0, v1}, Lcom/duoku/platform/download/utils/AppUtil;->getPacakgeInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 388
    const-string v1, "ApkUtil"

    const-string v2, "com.noshufou.android.su\u5b58\u5728\uff0c\u8be5\u8bbe\u5907\u6709root\u6743\u9650\u3002"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_10
    return v0

    .line 391
    :cond_11
    const-string v1, "com.miui.uac"

    invoke-static {p0, v1}, Lcom/duoku/platform/download/utils/AppUtil;->getPacakgeInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 393
    const-string v1, "ApkUtil"

    const-string v2, "com.miui.uac\u5b58\u5728\uff0c\u8be5\u8bbe\u5907\u6709root\u6743\u9650\u3002"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 396
    :cond_21
    const-string v1, "com.koushikdutta.superuser"

    invoke-static {p0, v1}, Lcom/duoku/platform/download/utils/AppUtil;->getPacakgeInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 399
    const-string v1, "ApkUtil"

    const-string v2, "com.koushikdutta.superuser\u5b58\u5728\uff0c\u8be5\u8bbe\u5907\u6709root\u6743\u9650\u3002"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 402
    :cond_31
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isFromGooglePlay(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 629
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 630
    if-nez v1, :cond_8

    .line 640
    :cond_7
    :goto_7
    return v0

    .line 635
    :cond_8
    const-string v2, "com.google.android.feedback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 638
    :cond_18
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static isSuperuserInstalled()Z
    .registers 2

    .prologue
    .line 369
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 372
    const-string v0, "ApkUtil"

    const-string v1, "\u8be5\u8bbe\u5907\u6709/system/app/Superuser.apk "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_16

    .line 373
    const/4 v0, 0x1

    .line 380
    :goto_15
    return v0

    .line 376
    :catch_16
    move-exception v0

    .line 380
    :cond_17
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isTestKeys()Z
    .registers 2

    .prologue
    .line 354
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 355
    if-eqz v0, :cond_15

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 357
    const-string v0, "ApkUtil"

    const-string v1, "\u8be5\u8bbe\u5907\u6709contains test-keys "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static realInstallApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 547
    new-instance v0, Lcom/duoku/platform/download/utils/ApkUtil$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/duoku/platform/download/utils/ApkUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/ApkUtil$1;->start()V

    .line 564
    return-void
.end method

.method private static requestRoot()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 682
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v3, "su"

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_67
    .catchall {:try_start_3 .. :try_end_c} :catchall_85

    move-result-object v4

    .line 683
    :try_start_d
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 684
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 685
    if-eqz v6, :cond_ba

    if-eqz v1, :cond_ba

    .line 687
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_22} :catch_a4
    .catchall {:try_start_d .. :try_end_22} :catchall_9c

    .line 688
    :try_start_22
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_a9
    .catchall {:try_start_22 .. :try_end_2b} :catchall_9f

    .line 690
    :try_start_2b
    const-string v2, "id\n"

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 699
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_36} :catch_ad
    .catchall {:try_start_2b .. :try_end_36} :catchall_a1

    move-result-object v2

    .line 701
    if-nez v2, :cond_55

    move v2, v5

    .line 716
    :goto_3a
    if-eqz v5, :cond_b8

    .line 718
    :try_start_3c
    const-string v0, "exit\n"

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_44} :catch_b2
    .catchall {:try_start_3c .. :try_end_44} :catchall_a1

    move v0, v2

    .line 731
    :goto_45
    if-eqz v1, :cond_4a

    .line 732
    :try_start_47
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 733
    :cond_4a
    if-eqz v3, :cond_4f

    .line 734
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 735
    :cond_4f
    if-eqz v4, :cond_54

    .line 736
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_54} :catch_98

    .line 742
    :cond_54
    :goto_54
    return v0

    .line 706
    :cond_55
    :try_start_55
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v7, "uid=0"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5e} :catch_ad
    .catchall {:try_start_55 .. :try_end_5e} :catchall_a1

    move-result v2

    if-eqz v2, :cond_64

    move v5, v0

    move v2, v0

    .line 710
    goto :goto_3a

    :cond_64
    move v2, v5

    move v5, v0

    .line 714
    goto :goto_3a

    .line 723
    :catch_67
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object v4, v2

    move v0, v5

    .line 725
    :goto_6c
    :try_start_6c
    const-string v5, "ApkUtil"

    const-string v6, "Request Root Error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_9f

    .line 731
    if-eqz v2, :cond_78

    .line 732
    :try_start_75
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 733
    :cond_78
    if-eqz v3, :cond_7d

    .line 734
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 735
    :cond_7d
    if-eqz v4, :cond_54

    .line 736
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_82} :catch_83

    goto :goto_54

    .line 738
    :catch_83
    move-exception v1

    goto :goto_54

    .line 728
    :catchall_85
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    .line 731
    :goto_88
    if-eqz v2, :cond_8d

    .line 732
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 733
    :cond_8d
    if-eqz v3, :cond_92

    .line 734
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 735
    :cond_92
    if-eqz v4, :cond_97

    .line 736
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_97} :catch_9a

    .line 741
    :cond_97
    :goto_97
    throw v0

    .line 738
    :catch_98
    move-exception v1

    goto :goto_54

    :catch_9a
    move-exception v1

    goto :goto_97

    .line 728
    :catchall_9c
    move-exception v0

    move-object v3, v2

    goto :goto_88

    :catchall_9f
    move-exception v0

    goto :goto_88

    :catchall_a1
    move-exception v0

    move-object v2, v1

    goto :goto_88

    .line 723
    :catch_a4
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move v0, v5

    goto :goto_6c

    :catch_a9
    move-exception v0

    move-object v1, v0

    move v0, v5

    goto :goto_6c

    :catch_ad
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v5

    goto :goto_6c

    :catch_b2
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_6c

    :cond_b8
    move v0, v2

    goto :goto_45

    :cond_ba
    move-object v1, v2

    move-object v3, v2

    move v0, v5

    goto :goto_45
.end method

.method public static requestRootPrivilege(Landroid/content/Context;Lcom/duoku/platform/download/utils/ApkUtil$b;)V
    .registers 3

    .prologue
    .line 657
    new-instance v0, Lcom/duoku/platform/download/utils/ApkUtil$2;

    invoke-direct {v0, p1}, Lcom/duoku/platform/download/utils/ApkUtil$2;-><init>(Lcom/duoku/platform/download/utils/ApkUtil$b;)V

    .line 669
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/ApkUtil$2;->start()V

    .line 670
    return-void
.end method

.method public static shouldCheckRootUserDownload()Z
    .registers 1

    .prologue
    .line 753
    const/4 v0, 0x0

    return v0
.end method

.method private static startSystemInstallUI(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 616
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 619
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 625
    :goto_1d
    return-void

    .line 621
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public static uninstallApk(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 577
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 578
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 579
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 580
    return-void
.end method

.method public static upgradeRootPermission(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 96
    .line 100
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v2, "su"

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_4e
    .catchall {:try_start_1 .. :try_end_19} :catchall_5a

    move-result-object v2

    .line 102
    :try_start_1a
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_72
    .catchall {:try_start_1a .. :try_end_23} :catchall_69

    .line 103
    :try_start_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 104
    const-string v1, "exit\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 106
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_44} :catch_76
    .catchall {:try_start_23 .. :try_end_44} :catchall_6b

    .line 117
    if-eqz v0, :cond_49

    .line 119
    :try_start_46
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 121
    :cond_49
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4c} :catch_65

    .line 127
    :goto_4c
    const/4 v0, 0x1

    :goto_4d
    return v0

    .line 109
    :catch_4e
    move-exception v0

    move-object v0, v1

    .line 117
    :goto_50
    if-eqz v0, :cond_55

    .line 119
    :try_start_52
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 121
    :cond_55
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_70

    .line 111
    :goto_58
    const/4 v0, 0x0

    goto :goto_4d

    .line 114
    :catchall_5a
    move-exception v0

    move-object v2, v1

    .line 117
    :goto_5c
    if-eqz v1, :cond_61

    .line 119
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 121
    :cond_61
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_64} :catch_67

    .line 126
    :goto_64
    throw v0

    .line 123
    :catch_65
    move-exception v0

    goto :goto_4c

    :catch_67
    move-exception v1

    goto :goto_64

    .line 114
    :catchall_69
    move-exception v0

    goto :goto_5c

    :catchall_6b
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5c

    .line 123
    :catch_70
    move-exception v0

    goto :goto_58

    .line 109
    :catch_72
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_50

    :catch_76
    move-exception v1

    move-object v1, v2

    goto :goto_50
.end method
