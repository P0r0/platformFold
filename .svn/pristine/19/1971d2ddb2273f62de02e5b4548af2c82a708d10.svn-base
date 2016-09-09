.class public Lcom/duoku/platform/download/utils/AppUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APP_CONFIG:Ljava/lang/String; = "app_config"

.field private static final HEXCHAR:[C

.field private static final META_KEY_ACTION:Ljava/lang/String; = "ActionName"

.field private static final META_KEY_HAS_ACCOUNT:Ljava/lang/String; = "HasAccount"

.field private static appIsTop:Z

.field private static context:Landroid/content/Context;

.field private static isNewestInstall:Z

.field private static mInstance:Lcom/duoku/platform/download/utils/AppUtil;

.field private static mPrefrerences:Landroid/content/SharedPreferences;

.field private static portraitUrl:Ljava/lang/String;

.field private static sdpath:Ljava/lang/String;

.field private static final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    sput-object v1, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    .line 53
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/utils/AppUtil;->sdpath:Ljava/lang/String;

    .line 54
    sput-object v1, Lcom/duoku/platform/download/utils/AppUtil;->mPrefrerences:Landroid/content/SharedPreferences;

    .line 57
    const-class v0, Lcom/duoku/platform/download/utils/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/utils/AppUtil;->tag:Ljava/lang/String;

    .line 59
    sput-boolean v2, Lcom/duoku/platform/download/utils/AppUtil;->isNewestInstall:Z

    .line 61
    sput-object v1, Lcom/duoku/platform/download/utils/AppUtil;->portraitUrl:Ljava/lang/String;

    .line 65
    sput-boolean v2, Lcom/duoku/platform/download/utils/AppUtil;->appIsTop:Z

    .line 419
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_28

    .line 418
    sput-object v0, Lcom/duoku/platform/download/utils/AppUtil;->HEXCHAR:[C

    .line 421
    return-void

    .line 419
    :array_28
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method public static appIsOnTop()Z
    .registers 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/duoku/platform/download/utils/AppUtil;->appIsTop:Z

    return v0
.end method

.method public static checkClientUpdate()V
    .registers 0

    .prologue
    .line 83
    return-void
.end method

.method public static checkStringEmpty(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 218
    if-eqz p0, :cond_c

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private static createAppInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Lcom/duoku/platform/download/mode/InstalledAppInfo;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 757
    new-instance v2, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    invoke-direct {v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>()V

    .line 758
    if-eqz p0, :cond_63

    if-eqz p1, :cond_63

    if-eqz p2, :cond_63

    .line 760
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setPackageName(Ljava/lang/String;)V

    .line 761
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setUid(I)V

    .line 762
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 763
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 765
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_64

    :goto_2b
    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setName(Ljava/lang/String;)V

    .line 769
    :cond_2e
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setVersionInt(I)V

    .line 770
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setVersion(Ljava/lang/String;)V

    .line 771
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setVersionInt(I)V

    .line 772
    invoke-static {p2, v2}, Lcom/duoku/platform/download/utils/AppUtil;->setInstalledApkDateAndSize(Landroid/content/pm/PackageInfo;Lcom/duoku/platform/download/mode/InstalledAppInfo;)V

    .line 774
    invoke-static {p2}, Lcom/duoku/platform/download/utils/AppUtil;->getSignMd5(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    .line 776
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 777
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 778
    if-eqz v3, :cond_66

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 780
    invoke-static {v3}, Lcom/duoku/platform/download/utils/FileHelper;->getFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setFileMd5(Ljava/lang/String;)V

    .line 786
    :goto_57
    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setSign(Ljava/lang/String;)V

    .line 787
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/duoku/platform/download/utils/AppUtil;->loadApplicationIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 790
    :cond_63
    return-object v2

    :cond_64
    move-object v0, v1

    .line 766
    goto :goto_2b

    .line 784
    :cond_66
    invoke-static {v1}, Lcom/duoku/platform/download/utils/FileHelper;->getFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setFileMd5(Ljava/lang/String;)V

    goto :goto_57
.end method

.method private static createAppInfoWithoutMD5(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Lcom/duoku/platform/download/mode/InstalledAppInfo;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v2, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    invoke-direct {v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>()V

    .line 557
    if-eqz p0, :cond_4d

    if-eqz p1, :cond_4d

    if-eqz p2, :cond_4d

    .line 559
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setPackageName(Ljava/lang/String;)V

    .line 560
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setUid(I)V

    .line 561
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 562
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 564
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4e

    :goto_2b
    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setName(Ljava/lang/String;)V

    .line 568
    :cond_2e
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setVersionInt(I)V

    .line 569
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setVersion(Ljava/lang/String;)V

    .line 570
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setVersionInt(I)V

    .line 572
    invoke-static {p2, v2}, Lcom/duoku/platform/download/utils/AppUtil;->setInstalledApkDateAndSize(Landroid/content/pm/PackageInfo;Lcom/duoku/platform/download/mode/InstalledAppInfo;)V

    .line 574
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 575
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 577
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/duoku/platform/download/utils/AppUtil;->loadApplicationIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    :cond_4d
    return-object v2

    :cond_4e
    move-object v0, v1

    .line 565
    goto :goto_2b
.end method

.method public static dp2px(F)I
    .registers 3

    .prologue
    .line 357
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 358
    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static filterNonLauchable(Ljava/util/Set;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 647
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 649
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 651
    const/4 v0, 0x1

    .line 653
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 352
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getBooleanConfig(Ljava/lang/String;Z)Z
    .registers 3

    .prologue
    .line 301
    invoke-static {p0}, Lcom/duoku/platform/download/utils/AppUtil;->getConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    if-nez v0, :cond_7

    :goto_6
    return p1

    :cond_7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_6
.end method

.method public static getColor(I)I
    .registers 2

    .prologue
    .line 379
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private static getConfig(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 260
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 262
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 263
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 374
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFloatConfig(Ljava/lang/String;F)F
    .registers 3

    .prologue
    .line 294
    invoke-static {p0}, Lcom/duoku/platform/download/utils/AppUtil;->getConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 296
    if-nez v0, :cond_7

    :goto_6
    return p1

    :cond_7
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_6
.end method

.method public static getInstalledApp()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstalledGamesFromDB()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getIntConfig(Ljava/lang/String;I)I
    .registers 3

    .prologue
    .line 280
    invoke-static {p0}, Lcom/duoku/platform/download/utils/AppUtil;->getConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 282
    if-nez v0, :cond_7

    :goto_6
    return p1

    :cond_7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_6
.end method

.method public static getIntent(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 425
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 427
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p1, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 433
    if-eqz v1, :cond_41

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    .line 435
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 442
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 448
    const/high16 v1, 0x10280000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 450
    :cond_41
    return-object v0
.end method

.method public static getLauncherIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .prologue
    .line 105
    invoke-static {p1, p0}, Lcom/duoku/platform/download/utils/AppUtil;->getIntent(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getLongConfig(Ljava/lang/String;J)J
    .registers 4

    .prologue
    .line 287
    invoke-static {p0}, Lcom/duoku/platform/download/utils/AppUtil;->getConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 289
    if-nez v0, :cond_7

    :goto_6
    return-wide p1

    :cond_7
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_6
.end method

.method public static getMD5([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 721
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 722
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 723
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 725
    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppUtil;->toHexString([B)Ljava/lang/String;
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    .line 730
    :goto_11
    return-object v0

    .line 727
    :catch_12
    move-exception v0

    .line 729
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 730
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static getMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 197
    const/16 v1, 0x80

    :try_start_3
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 199
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1d

    .line 201
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 203
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_1c} :catch_1e

    move-result-object v0

    .line 212
    :cond_1d
    :goto_1d
    return-object v0

    .line 210
    :catch_1e
    move-exception v1

    goto :goto_1d
.end method

.method public static getNewInstallApp()Z
    .registers 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/duoku/platform/download/utils/AppUtil;->isNewestInstall:Z

    return v0
.end method

.method public static getOwnIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    return-object v0
.end method

.method public static getPacakgeInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4

    .prologue
    .line 701
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 706
    :goto_a
    return-object v0

    .line 704
    :catch_b
    move-exception v0

    .line 706
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getPortraitUrl()Ljava/lang/String;
    .registers 1

    .prologue
    .line 121
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getSDPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 308
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/duoku/platform/download/utils/AppUtil;->sdpath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSender()Landroid/content/Context;
    .registers 1

    .prologue
    .line 116
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getSignMd5(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 712
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 714
    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppUtil;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 273
    invoke-static {p0}, Lcom/duoku/platform/download/utils/AppUtil;->getConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method

.method public static getStringFromResArray(IILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 70
    array-length v1, v0

    if-ge p1, v1, :cond_11

    aget-object p2, v0, p1

    :cond_11
    return-object p2
.end method

.method public static htmlToString(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 2

    .prologue
    .line 145
    if-eqz p0, :cond_b

    :goto_2
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_e

    :goto_8
    check-cast v0, Landroid/text/Spanned;

    return-object v0

    .line 145
    :cond_b
    const-string p0, ""

    goto :goto_2

    .line 146
    :cond_e
    const-string v0, ""

    goto :goto_8
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 313
    if-nez p0, :cond_a

    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null Pointer catched while initializing AppUtil."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_a
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    if-nez v0, :cond_10

    .line 320
    sput-object p0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    .line 325
    :cond_10
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->mPrefrerences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1d

    .line 327
    const-string v0, "app_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/utils/AppUtil;->mPrefrerences:Landroid/content/SharedPreferences;

    .line 330
    :cond_1d
    new-instance v0, Ljava/io/File;

    const-string v1, "/duoku/sdk/.Logs/"

    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppUtil;->getSDPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_31

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 337
    :cond_31
    new-instance v0, Ljava/io/File;

    const-string v1, "/duoku/sdk/download"

    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppUtil;->getSDPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_45

    .line 340
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 343
    :cond_45
    new-instance v0, Ljava/io/File;

    const-string v1, "/duoku/sdk/cache/"

    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppUtil;->getSDPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_59

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 348
    :cond_59
    return-void
.end method

.method public static instance()Lcom/duoku/platform/download/utils/AppUtil;
    .registers 1

    .prologue
    .line 136
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->mInstance:Lcom/duoku/platform/download/utils/AppUtil;

    if-nez v0, :cond_b

    .line 138
    new-instance v0, Lcom/duoku/platform/download/utils/AppUtil;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/AppUtil;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/utils/AppUtil;->mInstance:Lcom/duoku/platform/download/utils/AppUtil;

    .line 140
    :cond_b
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->mInstance:Lcom/duoku/platform/download/utils/AppUtil;

    return-object v0
.end method

.method public static isAppForeground()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 795
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 796
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 797
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    sget-object v3, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v1

    .line 804
    :goto_2f
    return v0

    :cond_30
    move v0, v2

    goto :goto_2f
.end method

.method public static isDeletePkgAfterInstallation()Z
    .registers 1

    .prologue
    .line 839
    const/4 v0, 0x1

    return v0
.end method

.method public static isHasShowNotification()Z
    .registers 2

    .prologue
    .line 814
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    const-string v1, "key_hasShowNotification"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/AppUtil;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isInstallAutomaticllyAfterDownloading()Z
    .registers 1

    .prologue
    .line 824
    const/4 v0, 0x0

    return v0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 863
    const-string v0, "^[-\\+]?[\\d]*$"

    .line 864
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 865
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isNetworkConnected()Z
    .registers 2

    .prologue
    .line 384
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 385
    const/4 v1, 0x0

    .line 386
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_16

    .line 390
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 393
    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method

.method public static isNoPicture()Z
    .registers 1

    .prologue
    .line 834
    const/4 v0, 0x0

    return v0
.end method

.method public static isShowInstallTipAfterDownloading()Z
    .registers 1

    .prologue
    .line 829
    const/4 v0, 0x1

    return v0
.end method

.method public static isSystemPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 663
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/AppUtil;->loadApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 664
    if-eqz v0, :cond_f

    .line 666
    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppUtil;->isSystemPackage(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 668
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static isSystemPackage(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 658
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static loadAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;
    .registers 5

    .prologue
    .line 736
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/AppUtil;->loadApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 737
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/AppUtil;->loadPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 738
    const/4 v0, 0x0

    .line 739
    if-eqz v1, :cond_1f

    .line 741
    invoke-static {p0, v1, v2}, Lcom/duoku/platform/download/utils/AppUtil;->createAppInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v0

    .line 743
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/AppUtil;->tryLoadOwnGame(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/OwnGameAction;

    move-result-object v1

    .line 744
    if-eqz v1, :cond_1f

    .line 746
    iget-object v2, v1, Lcom/duoku/platform/download/mode/OwnGameAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setExtra(Ljava/lang/String;)V

    .line 747
    iget-boolean v1, v1, Lcom/duoku/platform/download/mode/OwnGameAction;->hasAccount:Z

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setNeedLogin(Z)V

    .line 751
    :cond_1f
    return-object v0
.end method

.method public static loadAppInfoList(Landroid/content/pm/PackageManager;ZZ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 488
    if-nez v0, :cond_f

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    :cond_f
    invoke-static {p0}, Lcom/duoku/platform/download/utils/AppUtil;->loadLaunchablePackages2(Landroid/content/pm/PackageManager;)Ljava/util/Set;

    move-result-object v3

    .line 495
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 497
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    .line 537
    return-object v4

    .line 497
    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 499
    if-eqz p1, :cond_31

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppUtil;->isSystemPackage(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 501
    :cond_31
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/duoku/platform/download/utils/AppUtil;->filterNonLauchable(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 503
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/duoku/platform/download/utils/AppUtil;->loadPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 504
    invoke-static {p0, v0, v6}, Lcom/duoku/platform/download/utils/AppUtil;->createAppInfoWithoutMD5(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v6

    .line 505
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    const-string v7, "com.gamebox.kingbaiduy"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 508
    const-string v7, "wangliangtest"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[AppUtil#loadAppInfoList]Launcher com.gamebox.kingbaiduy:extra?"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";login?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isNeedLogin()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_76
    const-string v7, "com.mas.wawagame.BDDKlord"

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 512
    const-string v0, "wangliangtest"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[AppUtil#loadAppInfoList]Launcher com.mas.wawagame.BDDKlord:extra?"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";login?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isNeedLogin()Z

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 517
    :cond_a8
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "ActionName"

    invoke-static {p0, v6, v7}, Lcom/duoku/platform/download/utils/AppUtil;->getMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 518
    if-eqz v6, :cond_1c

    .line 520
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/duoku/platform/download/utils/AppUtil;->loadPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 521
    invoke-static {p0, v0, v7}, Lcom/duoku/platform/download/utils/AppUtil;->createAppInfoWithoutMD5(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v7

    .line 522
    invoke-virtual {v7, v6}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setExtra(Ljava/lang/String;)V

    .line 524
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "HasAccount"

    invoke-static {p0, v0, v6}, Lcom/duoku/platform/download/utils/AppUtil;->getMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_da

    .line 527
    invoke-static {v0}, Lcom/duoku/platform/download/utils/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_d8

    move v0, v1

    .line 529
    :goto_d0
    invoke-virtual {v7, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setNeedLogin(Z)V

    .line 530
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    :cond_d8
    move v0, v2

    .line 527
    goto :goto_d0

    :cond_da
    move v0, v2

    goto :goto_d0
.end method

.method public static loadApplicationIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 623
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/AppUtil;->loadApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 624
    if-eqz v1, :cond_b

    .line 628
    :try_start_7
    invoke-virtual {v1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_a} :catch_e

    move-result-object v0

    .line 641
    :cond_b
    :goto_b
    return-object v0

    .line 630
    :catch_c
    move-exception v1

    goto :goto_b

    .line 634
    :catch_e
    move-exception v1

    goto :goto_b
.end method

.method public static loadApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 3

    .prologue
    .line 477
    const/16 v0, 0x80

    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v0

    .line 481
    :goto_6
    return-object v0

    .line 479
    :catch_7
    move-exception v0

    .line 481
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static loadApplicationName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 455
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/AppUtil;->loadApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_f

    .line 458
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static loadLaunchablePackages2(Landroid/content/pm/PackageManager;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 673
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 674
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 677
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 678
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v1, v0

    .line 680
    :goto_1c
    if-lt v1, v3, :cond_1f

    .line 684
    return-object v4

    .line 682
    :cond_1f
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 680
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c
.end method

.method public static loadPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .prologue
    .line 544
    const/16 v0, 0x10c0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v0

    .line 548
    :goto_6
    return-object v0

    .line 546
    :catch_7
    move-exception v0

    .line 548
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static resetAppIsOnTop()V
    .registers 1

    .prologue
    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/duoku/platform/download/utils/AppUtil;->appIsTop:Z

    .line 93
    return-void
.end method

.method public static saveConfig(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 223
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_17

    .line 227
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 255
    :goto_13
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    return-void

    .line 230
    :cond_17
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_25

    .line 232
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_13

    .line 235
    :cond_25
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_13

    .line 240
    :cond_31
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_3f

    .line 242
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_13

    .line 245
    :cond_3f
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_4d

    .line 247
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_13

    .line 252
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppUtil saveConfig only support basic type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendBroadcast(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 111
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public static setHasShowNotification(Z)V
    .registers 3

    .prologue
    .line 819
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    const-string v1, "key_hasShowNotification"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/AppUtil;->saveConfig(Ljava/lang/String;Ljava/lang/Object;)V

    .line 820
    return-void
.end method

.method private static setInstalledApkDateAndSize(Landroid/content/pm/PackageInfo;Lcom/duoku/platform/download/mode/InstalledAppInfo;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 586
    if-eqz p0, :cond_1f

    if-eqz p1, :cond_1f

    .line 588
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 590
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_20

    .line 592
    iget-wide v2, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {p1, v2, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setDate(J)V

    .line 608
    :goto_13
    :try_start_13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 609
    invoke-virtual {p1, v0, v1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setSize(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_32

    .line 616
    :cond_1f
    :goto_1f
    return-void

    .line 598
    :cond_20
    :try_start_20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 599
    invoke-virtual {p1, v2, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setDate(J)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2c} :catch_2d

    goto :goto_13

    .line 601
    :catch_2d
    move-exception v0

    .line 603
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 611
    :catch_32
    move-exception v0

    .line 613
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public static setNewInstallApp(Z)V
    .registers 1

    .prologue
    .line 156
    sput-boolean p0, Lcom/duoku/platform/download/utils/AppUtil;->isNewestInstall:Z

    .line 157
    return-void
.end method

.method public static setPortraitUrl(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 126
    sput-object p0, Lcom/duoku/platform/download/utils/AppUtil;->portraitUrl:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public static setSpecificString(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 844
    invoke-static {p1}, Lcom/duoku/platform/download/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    if-eqz p0, :cond_31

    .line 846
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fonts"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pilsenplakat.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 848
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 850
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    :cond_31
    return-void
.end method

.method public static setVipBg(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 870
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vip_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "com.duoku.game.helper"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 872
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 873
    return-void
.end method

.method public static sp2px(F)I
    .registers 3

    .prologue
    .line 363
    sget-object v0, Lcom/duoku/platform/download/utils/AppUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 364
    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 5

    .prologue
    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 407
    const/4 v0, 0x0

    :goto_9
    array-length v2, p0

    if-lt v0, v2, :cond_11

    .line 414
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 409
    :cond_11
    sget-object v2, Lcom/duoku/platform/download/utils/AppUtil;->HEXCHAR:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    sget-object v2, Lcom/duoku/platform/download/utils/AppUtil;->HEXCHAR:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static tryLoadOwnGame(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/OwnGameAction;
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    const-string v2, "ActionName"

    invoke-static {p0, p1, v2}, Lcom/duoku/platform/download/utils/AppUtil;->getMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    if-eqz v2, :cond_25

    .line 173
    const-string v3, "HasAccount"

    invoke-static {p0, p1, v3}, Lcom/duoku/platform/download/utils/AppUtil;->getMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    if-eqz v3, :cond_27

    .line 176
    invoke-static {v3}, Lcom/duoku/platform/download/utils/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_23

    .line 178
    :goto_18
    new-instance v1, Lcom/duoku/platform/download/mode/OwnGameAction;

    invoke-direct {v1}, Lcom/duoku/platform/download/mode/OwnGameAction;-><init>()V

    .line 179
    iput-object v2, v1, Lcom/duoku/platform/download/mode/OwnGameAction;->action:Ljava/lang/String;

    .line 180
    iput-boolean v0, v1, Lcom/duoku/platform/download/mode/OwnGameAction;->hasAccount:Z

    move-object v0, v1

    .line 183
    :goto_22
    return-object v0

    :cond_23
    move v0, v1

    .line 176
    goto :goto_18

    .line 183
    :cond_25
    const/4 v0, 0x0

    goto :goto_22

    :cond_27
    move v0, v1

    goto :goto_18
.end method

.method public static declared-synchronized updateUserInfoWithField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 164
    const-class v0, Lcom/duoku/platform/download/utils/AppUtil;

    monitor-enter v0

    const/4 v1, 0x0

    monitor-exit v0

    return v1
.end method
