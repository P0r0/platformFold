.class public Lcom/unicom/dcLoader/CrashHandlerEx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final crashLogUploadUrl:Ljava/lang/String; = "http://unilog.wostore.cn:8061/logserver/unipay/unipaycash"

.field private static instance:Lcom/unicom/dcLoader/CrashHandlerEx;


# instance fields
.field private enablelog:Z

.field private formatter:Ljava/text/DateFormat;

.field private infos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->formatter:Ljava/text/DateFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->enablelog:Z

    return-void
.end method

.method private Md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    array-length v0, v2

    if-ge v1, v0, :cond_37

    aget-byte v0, v2, v1

    if-gez v0, :cond_23

    add-int/lit16 v0, v0, 0x100

    :cond_23
    const/16 v4, 0x10

    if-ge v0, v4, :cond_2c

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2c
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    :cond_37
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3a} :catch_3c

    move-result-object v0

    :goto_3b
    return-object v0

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v0, ""

    goto :goto_3b
.end method

.method static synthetic access$000(Lcom/unicom/dcLoader/CrashHandlerEx;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/unicom/dcLoader/CrashHandlerEx;->updateNewLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/unicom/dcLoader/CrashHandlerEx;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/CrashHandlerEx;->log_e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/unicom/dcLoader/CrashHandlerEx;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/CrashHandlerEx;->saveCrashLogLocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/unicom/dcLoader/CrashHandlerEx;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/CrashHandlerEx;->deleteCrashFile(Ljava/lang/String;)V

    return-void
.end method

.method private collectDeviceInfo(Landroid/content/Context;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_133

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_a8

    const-string v1, "null"

    :goto_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v5, "versionName"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v4, "versionCode"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v3, "package"

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v3, "appname"

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v2, "sdkver"

    const-string v3, "3.2.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v2, "apiver"

    const-string v3, "3.2.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v2, "imsi"

    invoke-direct {p0}, Lcom/unicom/dcLoader/CrashHandlerEx;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v2, "imei"

    invoke-direct {p0}, Lcom/unicom/dcLoader/CrashHandlerEx;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/os/Build;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    :goto_8b
    if-ge v0, v2, :cond_ac

    aget-object v3, v1, v0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8f} :catch_134

    const/4 v4, 0x1

    :try_start_90
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v4, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a5} :catch_139

    :goto_a5
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    :cond_a8
    :try_start_a8
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto/16 :goto_1b

    :cond_ac
    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v1, "os"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v1, "codename"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v1, "release"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v1, "crashid"

    const-string v2, "20000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    const-string v2, "datetime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_133} :catch_134

    :cond_133
    :goto_133
    return-void

    :catch_134
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_133

    :catch_139
    move-exception v3

    goto/16 :goto_a5
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_19
    .catchall {:try_start_f .. :try_end_18} :catchall_33

    goto :goto_f

    :catch_19
    move-exception v0

    :try_start_1a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_33

    :try_start_1d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_2e

    :goto_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_25
    :try_start_25
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_20

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    :catchall_33
    move-exception v0

    :try_start_34
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    :goto_37
    throw v0

    :catch_38
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37
.end method

.method private deleteCrashFile(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/unicom/dcLoader/CrashHandlerEx;->getCrashPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete local crash file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/CrashHandlerEx;->log_e(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method private deleteFiles(Ljava/io/File;)V
    .registers 7

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_2c

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_19
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-direct {p0, v3}, Lcom/unicom/dcLoader/CrashHandlerEx;->deleteFiles(Ljava/io/File;)V

    goto :goto_19

    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    :goto_2f
    return-void

    :catch_30
    move-exception v0

    goto :goto_2f
.end method

.method private getAppId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "unicom_cl"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sp_001"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChannelId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "unicom_cl"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sp_002"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCrashPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".unipaysdkcrash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCrashPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/CrashHandlerEx;->getCrashPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_13
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_26

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_13

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_25
    return-object v0

    :cond_26
    :try_start_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3a} :catch_1f

    goto :goto_25
.end method

.method private getImei()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "000000000000000"
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string v0, "000000000000000"

    goto :goto_16
.end method

.method private getImsi()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "000000000000000"
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string v0, "000000000000000"

    goto :goto_16
.end method

.method public static getInstance()Lcom/unicom/dcLoader/CrashHandlerEx;
    .registers 1

    sget-object v0, Lcom/unicom/dcLoader/CrashHandlerEx;->instance:Lcom/unicom/dcLoader/CrashHandlerEx;

    if-nez v0, :cond_b

    new-instance v0, Lcom/unicom/dcLoader/CrashHandlerEx;

    invoke-direct {v0}, Lcom/unicom/dcLoader/CrashHandlerEx;-><init>()V

    sput-object v0, Lcom/unicom/dcLoader/CrashHandlerEx;->instance:Lcom/unicom/dcLoader/CrashHandlerEx;

    :cond_b
    sget-object v0, Lcom/unicom/dcLoader/CrashHandlerEx;->instance:Lcom/unicom/dcLoader/CrashHandlerEx;

    return-object v0
.end method

.method private getSdkVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "unicom_cl"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sp_009"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    if-eqz v4, :cond_87

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stacktrace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unicom/dcLoader/CrashHandlerEx;->log_e(Ljava/lang/String;)V

    array-length v5, v4

    move v2, v0

    move v3, v0

    :goto_25
    if-ge v2, v5, :cond_87

    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/unicom/dcLoader/CrashHandlerEx;->log_e(Ljava/lang/String;)V

    const/16 v7, 0x64

    if-le v3, v7, :cond_41

    move v2, v0

    :goto_35
    if-eqz v2, :cond_4

    const-string v2, "selfException"

    invoke-direct {p0, v2}, Lcom/unicom/dcLoader/CrashHandlerEx;->log_e(Ljava/lang/String;)V

    :try_start_3c
    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/CrashHandlerEx;->processCrashLog(Ljava/lang/Throwable;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_84

    move v0, v1

    goto :goto_4

    :cond_41
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.unipay."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7f

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.webdownload."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7f

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.wostore."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7f

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.xiaowo."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7f

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.unicom."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_81

    :cond_7f
    move v2, v1

    goto :goto_35

    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :catch_84
    move-exception v1

    goto/16 :goto_4

    :cond_87
    move v2, v0

    goto :goto_35
.end method

.method private isNetAvailable(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_21

    array-length v0, v2

    if-lez v0, :cond_21

    move v0, v1

    :goto_13
    array-length v3, v2

    if-ge v0, v3, :cond_21

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_22

    const/4 v1, 0x1

    :cond_21
    return v1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method private log_e(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->enablelog:Z

    if-eqz v0, :cond_1c

    const-string v0, "unipaysdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unipaysdk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method

.method private processCrashLog(Ljava/lang/Throwable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/CrashHandlerEx;->getCrashPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "drop crash log"

    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/CrashHandlerEx;->log_e(Ljava/lang/String;)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/CrashHandlerEx;->collectDeviceInfo(Landroid/content/Context;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->infos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_30

    :cond_50
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const/4 v0, 0x0

    :goto_62
    if-eqz v1, :cond_72

    const/16 v5, 0x1e

    if-gt v0, v5, :cond_72

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_72
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v3, "\t"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v3, "\t"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAUSE"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "MD5"

    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/CrashHandlerEx;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crash:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unicom/dcLoader/CrashHandlerEx;->log_e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-gt v1, v2, :cond_16

    :try_start_b9
    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/CrashHandlerEx;->saveCrashLogLocal(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_be

    goto/16 :goto_16

    :catch_be
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_16
.end method

.method private saveCrashLogLocal(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->formatter:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unipaysdk-crash-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save crash:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unicom/dcLoader/CrashHandlerEx;->log_e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/unicom/dcLoader/CrashHandlerEx;->getCrashPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5c
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7c} :catch_7d

    :goto_7c
    return-void

    :catch_7d
    move-exception v0

    goto :goto_7c
.end method

.method private sendCrashLogToServer(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    :try_start_8
    new-instance v0, Lcom/unicom/dcLoader/CrashHandlerEx$1;

    invoke-direct {v0, p0, p1}, Lcom/unicom/dcLoader/CrashHandlerEx$1;-><init>(Lcom/unicom/dcLoader/CrashHandlerEx;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unicom/dcLoader/CrashHandlerEx$1;->start()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    :cond_10
    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method private sendLoacalCrashLogToServer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload crashlog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/CrashHandlerEx;->log_e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-le v0, v1, :cond_22

    invoke-direct {p0, p2}, Lcom/unicom/dcLoader/CrashHandlerEx;->deleteCrashFile(Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    if-eqz p1, :cond_21

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    :try_start_2a
    new-instance v0, Lcom/unicom/dcLoader/CrashHandlerEx$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/unicom/dcLoader/CrashHandlerEx$2;-><init>(Lcom/unicom/dcLoader/CrashHandlerEx;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unicom/dcLoader/CrashHandlerEx$2;->start()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_21

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method private updateNewLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    :try_start_2
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json;charset=utf-8"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v3, 0x2ee0

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x2ee0

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    invoke-direct {v2, p2, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_52

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unicom/dcLoader/CrashHandlerEx;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_51} :catch_53

    move-result-object v0

    :cond_52
    :goto_52
    return-object v0

    :catch_53
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {p0}, Lcom/unicom/dcLoader/CrashHandlerEx;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/CrashHandlerEx;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "d071e4bc28dd695367f77f15e638f9e0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->enablelog:Z

    :cond_1e
    return-void
.end method

.method public removeCrashDir(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/CrashHandlerEx;->getCrashPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, v1}, Lcom/unicom/dcLoader/CrashHandlerEx;->deleteFiles(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/unicom/dcLoader/CrashHandlerEx;->handleException(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public uploadCrashLog()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/CrashHandlerEx;->isNetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/CrashHandlerEx;->getCrashPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/unicom/dcLoader/CrashHandlerEx$3;

    invoke-direct {v0, p0}, Lcom/unicom/dcLoader/CrashHandlerEx$3;-><init>(Lcom/unicom/dcLoader/CrashHandlerEx;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v1, v0

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/unicom/dcLoader/CrashHandlerEx;->mContext:Landroid/content/Context;

    aget-object v2, v0, v3

    invoke-direct {p0, v1, v2}, Lcom/unicom/dcLoader/CrashHandlerEx;->getCrashPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unicom/dcLoader/CrashHandlerEx;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-direct {p0, v1, v0}, Lcom/unicom/dcLoader/CrashHandlerEx;->sendLoacalCrashLogToServer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method