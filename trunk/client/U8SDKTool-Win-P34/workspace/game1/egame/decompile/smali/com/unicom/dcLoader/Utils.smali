.class public Lcom/unicom/dcLoader/Utils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/dcLoader/Utils$loaderTask;,
        Lcom/unicom/dcLoader/Utils$SafeType;,
        Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x3

.field public static final FAILED:I = 0x2

.field private static final KEY_CURRENTLOADPATH:Ljava/lang/String; = "sdk_currentloadpath"

.field private static final KEY_CURRENTSDK:Ljava/lang/String; = "currentsdk"

.field private static final KEY_LOADPATH:Ljava/lang/String; = "sdk_loadpath"

.field private static final KEY_SELECTKEY:Ljava/lang/String; = "selectsdk"

.field private static final SP_LOAD:Ljava/lang/String; = "sdk_load_info"

.field private static final SP_SDKTYPE:Ljava/lang/String; = "unicomsdk"

.field public static final SUCCESS:I = 0x1

.field public static apiver:Ljava/lang/String;

.field private static instances:Lcom/unicom/dcLoader/Utils;

.field private static listener:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;


# instance fields
.field private afterPids:[I

.field private difPids:[I

.field private isInit:I

.field private loaderTimer:Ljava/util/Timer;

.field private loadertimes:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mlTask:Lcom/unicom/dcLoader/Utils$loaderTask;

.field private prePids:[I

.field private subUtils:Lcom/unicom/dcLoader/SubUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "1.0.0"

    sput-object v0, Lcom/unicom/dcLoader/Utils;->apiver:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unicom/dcLoader/Utils;->isInit:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->loaderTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unicom/dcLoader/Utils;->loadertimes:I

    new-instance v0, Lcom/unicom/dcLoader/Utils$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unicom/dcLoader/Utils$6;-><init>(Lcom/unicom/dcLoader/Utils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/unicom/dcLoader/SubUtils;

    invoke-direct {v0}, Lcom/unicom/dcLoader/SubUtils;-><init>()V

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->subUtils:Lcom/unicom/dcLoader/SubUtils;

    return-void
.end method

.method private SetLoadInfomation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "sdk_load_info"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic access$000(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils;->createDCl(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/unicom/dcLoader/Utils;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/unicom/dcLoader/Utils;)[I
    .registers 2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->afterPids:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/unicom/dcLoader/Utils;[I)[I
    .registers 2

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils;->afterPids:[I

    return-object p1
.end method

.method static synthetic access$400(Lcom/unicom/dcLoader/Utils;)[I
    .registers 2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->difPids:[I

    return-object v0
.end method

.method static synthetic access$402(Lcom/unicom/dcLoader/Utils;[I)[I
    .registers 2

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils;->difPids:[I

    return-object p1
.end method

.method static synthetic access$500(Lcom/unicom/dcLoader/Utils;)[I
    .registers 2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->prePids:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/unicom/dcLoader/Utils;)I
    .registers 2

    iget v0, p0, Lcom/unicom/dcLoader/Utils;->loadertimes:I

    return v0
.end method

.method static synthetic access$802(Lcom/unicom/dcLoader/Utils;I)I
    .registers 2

    iput p1, p0, Lcom/unicom/dcLoader/Utils;->isInit:I

    return p1
.end method

.method static synthetic access$900()Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;
    .registers 1

    sget-object v0, Lcom/unicom/dcLoader/Utils;->listener:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    return-object v0
.end method

.method private appendFileSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    const-string p1, ""

    :cond_c
    :goto_c
    return-object p1

    :cond_d
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c
.end method

.method private checkExternalIr(Ljava/lang/String;)I
    .registers 14

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkExternalIr] path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExt()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "classes.jar"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "custom.dat"

    aput-object v6, v5, v4

    const/4 v4, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dynamic.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_62

    :cond_61
    :goto_61
    return v0

    :cond_62
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_61

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "libcuextend_.*\\.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExtPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    array-length v9, v6

    move v4, v2

    move v3, v2

    :goto_8b
    if-ge v4, v9, :cond_a0

    aget-object v10, v6, v4

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_9a

    move v3, v1

    :cond_9a
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8b

    :cond_a0
    if-nez v3, :cond_b4

    const-string v1, "MISSING libcuextend"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_ae} :catch_af

    goto :goto_61

    :catch_af
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_61

    :cond_b4
    :try_start_b4
    array-length v3, v5

    :goto_b5
    if-ge v2, v3, :cond_d2

    aget-object v4, v5, v2

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_cf

    const-string v1, "MISSING %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_ce} :catch_af

    goto :goto_61

    :cond_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_b5

    :cond_d2
    move v0, v1

    goto :goto_61
.end method

.method private checkFile(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    const-string v1, "sdk_loadpath"

    invoke-direct {p0, v0, v1}, Lcom/unicom/dcLoader/Utils;->getSpInfomation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/libunicomsdk.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "unicom_classez.jar"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_58

    :cond_50
    const-string v0, "update file broken"

    invoke-static {v0}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->cleanLoadInformation()V

    :cond_58
    return-void
.end method

.method private checkSecurityActivity(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_1a

    const-string v1, "SecurityActivity not config"

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1c

    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19

    :catch_1c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "SecurityActivity not config"

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    goto :goto_19
.end method

.method private checkService(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_19

    const-string v1, "SecurityServiceFramework not config"

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1b

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "SecurityServiceFramework not config"

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    goto :goto_18
.end method

.method private cleanLoadInformation()V
    .registers 4

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    const-string v1, "sdk_loadpath"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/unicom/dcLoader/Utils;->SetLoadInfomation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/Utils;->cleansdkselect(Landroid/content/Context;)V

    return-void
.end method

.method private cleansdkselect(Landroid/content/Context;)V
    .registers 4

    const-string v0, "unicomsdk"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selectsdk"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private clearUpdateFileIfNeed(Landroid/content/Context;)V
    .registers 6

    const/4 v1, 0x0

    const-string v0, "sdk_load_info"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "lastshell"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/unicom/dcLoader/Utils;->apiver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_be

    const-string v0, "Shell Change"

    invoke-static {v0}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1d
    if-eqz v0, :cond_bd

    const-string v0, "clear update file start"

    invoke-static {v0}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->cleanLoadInformation()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "profile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "unipay_profile.dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "profile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "unipay_profile.dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_9d
    const-string v0, "sdk_load_info"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastshell"

    sget-object v2, Lcom/unicom/dcLoader/Utils;->apiver:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/unicom/dcLoader/CrashHandlerEx;->getInstance()Lcom/unicom/dcLoader/CrashHandlerEx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/dcLoader/CrashHandlerEx;->removeCrashDir(Landroid/content/Context;)V

    const-string v0, "clear update file end"

    invoke-static {v0}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    :cond_bd
    return-void

    :cond_be
    move v0, v1

    goto/16 :goto_1d
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "copying (%s)->(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    :try_start_12
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, -0x2

    goto :goto_1d

    :cond_26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_34
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_45
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_56

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4f} :catch_50

    goto :goto_45

    :catch_50
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_1d

    :cond_56
    :try_start_56
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5c} :catch_50

    move v0, v1

    goto :goto_1d
.end method

.method private copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_24
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_35

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_24

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    :goto_34
    return v0

    :cond_35
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_2f

    const/4 v0, 0x1

    goto :goto_34
.end method

.method private copyIrAssetsFileToFilesSelfSafe()I
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->removeIrFile()V

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unicom/dcLoader/Utils;->appendFileSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getLocalExtendDatFilename()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".so"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/unicom/dcLoader/Utils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_55

    const-string v1, "copy libcuextend_xxxxx.dat failed, bye"

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    :goto_54
    return v0

    :cond_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamic.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dynamic.dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/unicom/dcLoader/Utils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_90

    const-string v1, "copy dynamic.dat failed, bye"

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8a} :catch_8b

    goto :goto_54

    :catch_8b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54

    :cond_90
    :try_start_90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "v.dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/unicom/dcLoader/Utils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_c6

    const-string v1, "copy v.dat failed, bye"

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    goto :goto_54

    :cond_c6
    const-string v3, "custom.dat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "custom.dat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/unicom/dcLoader/Utils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_e8

    const-string v1, "copy v.dat failed, bye"

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_e6} :catch_8b

    goto/16 :goto_54

    :cond_e8
    move v0, v1

    goto/16 :goto_54
.end method

.method private copyIrUpdateFileToFiles(Ljava/lang/String;Ljava/lang/String;)I
    .registers 18

    :try_start_0
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    const/4 v1, -0x1

    :goto_e
    return v1

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(libcuextend_.*)\\.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExtPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v\\.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExtPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamic\\.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExtPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-direct/range {p0 .. p1}, Lcom/unicom/dcLoader/Utils;->appendFileSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/Utils;->appendFileSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    array-length v9, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_6d
    if-ge v2, v9, :cond_12f

    aget-object v1, v3, v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v11

    if-nez v11, :cond_91

    :cond_8d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6d

    :cond_91
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_d9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ".so"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c1
    const-string v11, "copying dst(%s)"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    invoke-direct {p0, v10, v1}, Lcom/unicom/dcLoader/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v10, 0x1

    if-eq v1, v10, :cond_8d

    goto/16 :goto_e

    :cond_d9
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_f3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "v.dat"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c1

    :cond_f3
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_10d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "dynamic.dat"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c1

    :cond_10d
    const-string v11, "classes.jar"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11d

    const-string v11, "custom.dat"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8d

    :cond_11d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12d} :catch_132

    move-result-object v1

    goto :goto_c1

    :cond_12f
    const/4 v1, 0x1

    goto/16 :goto_e

    :catch_132
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x1

    goto/16 :goto_e
.end method

.method private copyIrUpdateFileToFilesSelfSafe()I
    .registers 18

    const/4 v2, 0x0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/unicom/dcLoader/Utils;->removeIrFile()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/unicom/dcLoader/Utils;->appendFileSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    const-string v4, "sdk_loadpath"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/unicom/dcLoader/Utils;->getSpInfomation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2f

    const/4 v1, -0x1

    :goto_2e
    return v1

    :cond_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(libcuextend_.*)\\.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/unicom/dcLoader/Utils;->getIrdExtPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v\\.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/unicom/dcLoader/Utils;->getIrdExtPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dynamic\\.dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/unicom/dcLoader/Utils;->getIrdExtPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/unicom/dcLoader/Utils;->appendFileSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/unicom/dcLoader/Utils;->appendFileSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    array-length v10, v4

    const/4 v1, 0x0

    move v3, v1

    move v1, v2

    :goto_90
    if-ge v3, v10, :cond_165

    aget-object v2, v4, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v12

    if-nez v12, :cond_b4

    :cond_b0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_90

    :cond_b4
    const-string v12, "copying src(%s)(%s)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_117

    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ".so"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    move v1, v2

    move-object/from16 v2, v16

    :goto_fc
    const-string v12, "copying dst(%s)"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/unicom/dcLoader/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v11, 0x1

    if-eq v2, v11, :cond_b0

    move v1, v2

    goto/16 :goto_2e

    :cond_117
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_131

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "v.dat"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_fc

    :cond_131
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_14b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "dynamic.dat"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_fc

    :cond_14b
    const-string v12, "custom.dat"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_163} :catch_16d

    move-result-object v2

    goto :goto_fc

    :cond_165
    if-eqz v1, :cond_16a

    const/4 v1, 0x1

    goto/16 :goto_2e

    :cond_16a
    const/4 v1, -0x1

    goto/16 :goto_2e

    :catch_16d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x1

    goto/16 :goto_2e
.end method

.method private copyIrso()I
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unicom/dcLoader/Utils;->appendFileSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    const-string v4, "sdk_loadpath"

    invoke-direct {p0, v2, v4}, Lcom/unicom/dcLoader/Utils;->getSpInfomation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-direct {p0, v2}, Lcom/unicom/dcLoader/Utils;->switchToExternalIr(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_121

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->cleanLoadInformation()V

    const/16 v0, -0x3e8

    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->removeIrFile()V

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getLocalExtendDatFilename()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".so"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/unicom/dcLoader/Utils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_76

    const-string v1, "copy libcuextend_xxxxx.dat failed, bye"

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_70} :catch_71

    goto :goto_2b

    :catch_71
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    :cond_76
    :try_start_76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamic.dat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dynamic.dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/unicom/dcLoader/Utils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_ac

    const-string v1, "copy dynamic.dat failed, bye"

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    goto :goto_2b

    :cond_ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v.dat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "v.dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/unicom/dcLoader/Utils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_e3

    const-string v1, "copy v.dat failed, bye"

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_2b

    :cond_e3
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "classes.jar"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "custom.dat"

    aput-object v5, v4, v2

    array-length v5, v4

    move v2, v0

    :goto_f2
    if-ge v2, v5, :cond_121

    aget-object v6, v4, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/unicom/dcLoader/Utils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eq v7, v1, :cond_11e

    const-string v1, "copy (%s) failed, bye"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_2b

    :cond_11e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f2

    :cond_121
    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->updateCurrentLoadPath()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getLibcuextendFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ird soPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_152} :catch_71

    move-result v3

    if-nez v3, :cond_2b

    :try_start_155
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_158
    .catch Ljava/lang/Throwable; {:try_start_155 .. :try_end_158} :catch_15b
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_158} :catch_71

    move v0, v1

    goto/16 :goto_2b

    :catch_15b
    move-exception v2

    :try_start_15c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load_exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_172} :catch_71

    move v0, v1

    goto/16 :goto_2b
.end method

.method private copyIrsoSelfSafe()I
    .registers 4

    const-string v0, "copyIrsoSelfSafe"

    invoke-static {v0}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    const-string v1, "sdk_loadpath"

    invoke-direct {p0, v0, v1}, Lcom/unicom/dcLoader/Utils;->getSpInfomation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->copyIrUpdateFileToFilesSelfSafe()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyIrUpdateFileToFilesSelfSafe ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4c

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->copyIrAssetsFileToFilesSelfSafe()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyIrAssetsFileToFilesSelfSafe ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return v0

    :cond_4d
    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->copyIrAssetsFileToFilesSelfSafe()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyIrAssetsFileToFilesSelfSafe ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_67} :catch_68

    goto :goto_4c

    :catch_68
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_4c
.end method

.method private createDCl(Landroid/content/Context;)V
    .registers 8

    :try_start_0
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->loadertimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unicom/dcLoader/Utils;->loadertimes:I

    new-instance v0, Lcom/unicom/dcLoader/Utils$loaderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unicom/dcLoader/Utils$loaderTask;-><init>(Lcom/unicom/dcLoader/Utils;Lcom/unicom/dcLoader/Utils$1;)V

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->mlTask:Lcom/unicom/dcLoader/Utils$loaderTask;

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->loaderTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils;->mlTask:Lcom/unicom/dcLoader/Utils$loaderTask;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    invoke-static {}, Lcom/unicom/dcLoader/DynProcessUtil;->getProcessIdList()[I

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->prePids:[I

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->prePids:[I

    if-nez v0, :cond_28

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->prePids:[I

    :cond_28
    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->subUtils:Lcom/unicom/dcLoader/SubUtils;

    invoke-virtual {v0, p1}, Lcom/unicom/dcLoader/SubUtils;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/unicom/dcLoader/Utils;->isInit:I

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mlTask:Lcom/unicom/dcLoader/Utils$loaderTask;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mlTask:Lcom/unicom/dcLoader/Utils$loaderTask;

    invoke-virtual {v0}, Lcom/unicom/dcLoader/Utils$loaderTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->mlTask:Lcom/unicom/dcLoader/Utils$loaderTask;

    :cond_3c
    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unicom/dcLoader/Utils$5;

    invoke-direct {v1, p0, p1}, Lcom/unicom/dcLoader/Utils$5;-><init>(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    :goto_46
    return-void

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method

.method private getABIName()Ljava/lang/String;
    .registers 5

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "cpu_abi(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    if-nez v0, :cond_15

    const-string v0, "unsupport"

    :cond_15
    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_20

    const-string v0, "arm64-v8a"

    :goto_1f
    return-object v0

    :cond_20
    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2b

    const-string v0, "armeabi"

    goto :goto_1f

    :cond_2b
    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_36

    const-string v0, "armeabi"

    goto :goto_1f

    :cond_36
    const-string v1, "mips64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_41

    const-string v0, "unsupport"

    goto :goto_1f

    :cond_41
    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4c

    const-string v0, "unsupport"

    goto :goto_1f

    :cond_4c
    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_57

    const-string v0, "x86"

    goto :goto_1f

    :cond_57
    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_62

    const-string v0, "x86"

    goto :goto_1f

    :cond_62
    const-string v0, "armeabi"

    goto :goto_1f
.end method

.method private getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->subUtils:Lcom/unicom/dcLoader/SubUtils;

    invoke-virtual {v0}, Lcom/unicom/dcLoader/SubUtils;->z()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getInstances()Lcom/unicom/dcLoader/Utils;
    .registers 1

    sget-object v0, Lcom/unicom/dcLoader/Utils;->instances:Lcom/unicom/dcLoader/Utils;

    if-nez v0, :cond_b

    new-instance v0, Lcom/unicom/dcLoader/Utils;

    invoke-direct {v0}, Lcom/unicom/dcLoader/Utils;-><init>()V

    sput-object v0, Lcom/unicom/dcLoader/Utils;->instances:Lcom/unicom/dcLoader/Utils;

    :cond_b
    sget-object v0, Lcom/unicom/dcLoader/Utils;->instances:Lcom/unicom/dcLoader/Utils;

    return-object v0
.end method

.method private getIrdExt()Ljava/lang/String;
    .registers 5

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "cpu_abi(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    if-nez v0, :cond_16

    const-string v0, ""

    :goto_15
    return-object v0

    :cond_16
    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_21

    const-string v0, ".v8a"

    goto :goto_15

    :cond_21
    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2c

    const-string v0, ""

    goto :goto_15

    :cond_2c
    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_37

    const-string v0, ""

    goto :goto_15

    :cond_37
    const-string v1, "mips64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_42

    const-string v0, ""

    goto :goto_15

    :cond_42
    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4d

    const-string v0, ""

    goto :goto_15

    :cond_4d
    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_58

    const-string v0, ".x86"

    goto :goto_15

    :cond_58
    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_63

    const-string v0, ".x86"

    goto :goto_15

    :cond_63
    const-string v0, ""

    goto :goto_15
.end method

.method private getIrdExtPattern()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    const-string v0, ""

    goto :goto_1d
.end method

.method private getLibcuextendFullName()Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "libcuextend_.*\\.so"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-ge v1, v4, :cond_26

    aget-object v0, v3, v1

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_22

    :goto_21
    return-object v0

    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_26
    const-string v0, ""
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_21

    :catch_29
    move-exception v0

    const-string v0, ""

    goto :goto_21
.end method

.method private getLoadSdkType(Landroid/content/Context;)Lcom/unicom/dcLoader/Utils$SafeType;
    .registers 5

    const-string v0, "unicomsdk"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "selectsdk"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/unicom/dcLoader/Utils$SafeType;->SELF_SAFE:Lcom/unicom/dcLoader/Utils$SafeType;

    :goto_19
    return-object v0

    :cond_1a
    sget-object v0, Lcom/unicom/dcLoader/Utils$SafeType;->IRD_SAFE:Lcom/unicom/dcLoader/Utils$SafeType;

    goto :goto_19
.end method

.method private getLocalExtendDatFilename()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(libcuextend_.*)\\.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getIrdExtPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v4, :cond_3d

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3e

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_41

    move-result-object v0

    :cond_3d
    :goto_3d
    return-object v0

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :catch_41
    move-exception v1

    goto :goto_3d
.end method

.method private getSpInfomation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "sdk_load_info"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 8

    const/4 v1, 0x1

    const-string v0, "call init:"

    invoke-static {v0}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    :try_start_6
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->isInit:I

    if-ne v0, v1, :cond_9b

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils;->getLoadSdkType(Landroid/content/Context;)Lcom/unicom/dcLoader/Utils$SafeType;

    move-result-object v0

    sget-object v1, Lcom/unicom/dcLoader/Utils$SafeType;->SELF_SAFE:Lcom/unicom/dcLoader/Utils$SafeType;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->subUtils:Lcom/unicom/dcLoader/SubUtils;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Lcom/unicom/dcLoader/SubUtils;->i(Landroid/content/Context;ILandroid/os/Handler;)I

    :goto_1a
    return-void

    :cond_1b
    const-string v0, "com.wostore.pay.CustomContentProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "classloader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    const-string v1, "com.unipay.unipay_sdk.UniPay"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "init"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/unicom/dcLoader/Utils;->mHandler:Landroid/os/Handler;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_95} :catch_96

    goto :goto_1a

    :catch_96
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    :cond_9b
    :try_start_9b
    sget-object v0, Lcom/unicom/dcLoader/Utils;->listener:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    const-string v1, ""

    const/4 v2, 0x2

    const-string v3, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;->PayResult(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a5} :catch_96

    goto/16 :goto_1a
.end method

.method private initDotSO()I
    .registers 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/unicom/dcLoader/Utils;->getLoadSdkType(Landroid/content/Context;)Lcom/unicom/dcLoader/Utils$SafeType;

    move-result-object v2

    sget-object v3, Lcom/unicom/dcLoader/Utils$SafeType;->IRD_SAFE:Lcom/unicom/dcLoader/Utils$SafeType;

    if-ne v2, v3, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    :try_start_d
    iget-object v2, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/unicom_classez.jar"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_38} :catch_e6

    :cond_38
    :goto_38
    :try_start_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.ulibs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_67

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_67
    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->getABIName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ABI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    const-string v4, "unsupport"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const/16 v4, 0x400

    new-array v4, v4, [B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "libunicomsdk.so"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_ff

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :goto_ae
    invoke-direct {p0, v3}, Lcom/unicom/dcLoader/Utils;->checkFile(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    const-string v6, "sdk_loadpath"

    invoke-direct {p0, v2, v6}, Lcom/unicom/dcLoader/Utils;->getSpInfomation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v6, "%s/libunicomsdk.jar"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    :goto_d7
    if-nez v2, :cond_11b

    const-string v1, "libunicomsdk.jar not exist!"

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_de} :catch_e0

    goto/16 :goto_c

    :catch_e0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :catch_e6
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when deleting classez: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_38

    :cond_ff
    :try_start_ff
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    goto :goto_ae

    :cond_106
    new-instance v2, Ljava/io/FileInputStream;

    const-string v7, "%s%s/libunicomsdk.jar"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v3, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_d7

    :cond_11b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_120
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_12c

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_120

    :cond_12c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->updateCurrentLoadPath()V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_138} :catch_e0

    :try_start_138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.ulibs/libunicomsdk.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_15c
    .catch Ljava/lang/Throwable; {:try_start_138 .. :try_end_15c} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_15c} :catch_e0

    move v0, v1

    goto/16 :goto_c

    :catch_15f
    move-exception v1

    goto/16 :goto_c
.end method

.method private removeIrFile()V
    .registers 9

    :try_start_0
    const-string v0, "libcuextend_.*\\.so"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_cf

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_68

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_65

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_65
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_68
    const-string v5, "v.dat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_88

    const-string v5, "custom.dat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_88

    const-string v5, "dynamic.dat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_88

    const-string v5, "classes.jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    :cond_88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_65

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_cd} :catch_ce

    goto :goto_65

    :catch_ce
    move-exception v0

    :cond_cf
    return-void
.end method

.method private setCurrentSDKType(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentSDKType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    const-string v1, "unicomsdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "currentsdk"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private switchToExternalIr(Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils;->checkExternalIr(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->removeIrFile()V

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unicom/dcLoader/Utils;->copyIrUpdateFileToFiles(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_8
.end method

.method private updateCurrentLoadPath()V
    .registers 4

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    const-string v1, "sdk_loadpath"

    invoke-direct {p0, v0, v1}, Lcom/unicom/dcLoader/Utils;->getSpInfomation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    const-string v2, "sdk_currentloadpath"

    invoke-direct {p0, v1, v2, v0}, Lcom/unicom/dcLoader/Utils;->SetLoadInfomation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initSDK(Landroid/content/Context;I)V
    .registers 12

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_16

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unicom/dcLoader/Utils$1;

    invoke-direct {v1, p0, p1}, Lcom/unicom/dcLoader/Utils$1;-><init>(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils;->checkService(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils;->checkSecurityActivity(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    :try_start_22
    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils;->clearUpdateFileIfNeed(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_eb

    :goto_25
    iget v3, p0, Lcom/unicom/dcLoader/Utils;->isInit:I

    if-ne v3, v1, :cond_2f

    const-string v0, "SDK has inited"

    invoke-static {v0}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    goto :goto_15

    :cond_2f
    invoke-static {}, Lcom/unicom/dcLoader/CrashHandlerEx;->getInstance()Lcom/unicom/dcLoader/CrashHandlerEx;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/unicom/dcLoader/CrashHandlerEx;->init(Landroid/content/Context;)V

    const-string v3, "sdk_loadpath"

    invoke-direct {p0, p1, v3}, Lcom/unicom/dcLoader/Utils;->getSpInfomation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f0

    :goto_4a
    move v4, v2

    move v3, v2

    :goto_4c
    if-ge v4, v0, :cond_a2

    if-eq v3, v1, :cond_a2

    :try_start_50
    const-string v2, "rc(%d/%d), s(%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils;->getLoadSdkType(Landroid/content/Context;)Lcom/unicom/dcLoader/Utils$SafeType;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unicom/dcLoader/Logger;->i(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils;->getLoadSdkType(Landroid/content/Context;)Lcom/unicom/dcLoader/Utils$SafeType;

    move-result-object v2

    sget-object v5, Lcom/unicom/dcLoader/Utils$SafeType;->SELF_SAFE:Lcom/unicom/dcLoader/Utils$SafeType;

    if-ne v2, v5, :cond_b0

    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->initDotSO()I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_7c} :catch_e3

    move-result v2

    :try_start_7d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDotSO result:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    if-ne v2, v1, :cond_dd

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/unicom/dcLoader/Utils;->setCurrentSDKType(I)V

    new-instance v3, Lcom/unicom/dcLoader/Utils$2;

    invoke-direct {v3, p0, p1}, Lcom/unicom/dcLoader/Utils$2;-><init>(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/unicom/dcLoader/Utils$2;->start()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_a1} :catch_ee

    move v3, v2

    :cond_a2
    if-eq v3, v1, :cond_15

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unicom/dcLoader/Utils$4;

    invoke-direct {v1, p0}, Lcom/unicom/dcLoader/Utils$4;-><init>(Lcom/unicom/dcLoader/Utils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_15

    :cond_b0
    :try_start_b0
    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->copyIrso()I
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b3} :catch_e3

    move-result v2

    :try_start_b4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyIrso result:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    if-ne v2, v1, :cond_dd

    const/4 v3, 0x1

    iput v3, p0, Lcom/unicom/dcLoader/Utils;->isInit:I

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/unicom/dcLoader/Utils;->setCurrentSDKType(I)V

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/unicom/dcLoader/Utils$3;

    invoke-direct {v5, p0, p1}, Lcom/unicom/dcLoader/Utils$3;-><init>(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_dd} :catch_ee

    :cond_dd
    :goto_dd
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto/16 :goto_4c

    :catch_e3
    move-exception v2

    move-object v8, v2

    move v2, v3

    move-object v3, v8

    :goto_e7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_dd

    :catch_eb
    move-exception v3

    goto/16 :goto_25

    :catch_ee
    move-exception v3

    goto :goto_e7

    :cond_f0
    move v0, v1

    goto/16 :goto_4a
.end method

.method public isInit()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/unicom/dcLoader/Utils;->isInit:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V
    .registers 24

    :try_start_0
    invoke-static {}, Lcom/unicom/dcLoader/CrashHandlerEx;->getInstance()Lcom/unicom/dcLoader/CrashHandlerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/dcLoader/CrashHandlerEx;->uploadCrashLog()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_e4

    :goto_7
    sput-object p11, Lcom/unicom/dcLoader/Utils;->listener:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    :try_start_9
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->isInit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d8

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils;->getLoadSdkType(Landroid/content/Context;)Lcom/unicom/dcLoader/Utils$SafeType;

    move-result-object v0

    sget-object v1, Lcom/unicom/dcLoader/Utils$SafeType;->SELF_SAFE:Lcom/unicom/dcLoader/Utils$SafeType;

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->subUtils:Lcom/unicom/dcLoader/SubUtils;

    iget-object v11, p0, Lcom/unicom/dcLoader/Utils;->mHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/unicom/dcLoader/SubUtils;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)I

    :goto_2e
    return-void

    :cond_2f
    const-string v0, "com.wostore.pay.CustomContentProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    const-string v1, "com.unipay.unipay_sdk.UniPay"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pay"

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    const/4 v3, 0x6

    aput-object p7, v2, v3

    const/4 v3, 0x7

    aput-object p8, v2, v3

    const/16 v3, 0x8

    aput-object p9, v2, v3

    const/16 v3, 0x9

    aput-object p10, v2, v3

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/unicom/dcLoader/Utils;->mHandler:Landroid/os/Handler;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d0} :catch_d2

    goto/16 :goto_2e

    :catch_d2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2e

    :cond_d8
    :try_start_d8
    sget-object v0, Lcom/unicom/dcLoader/Utils;->listener:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    const-string v1, ""

    const/4 v2, 0x2

    const-string v3, "SDK\u5c1a\u672a\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-interface {v0, v1, v2, v3}, Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;->PayResult(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e2} :catch_d2

    goto/16 :goto_2e

    :catch_e4
    move-exception v0

    goto/16 :goto_7
.end method
