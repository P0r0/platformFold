.class public Lcom/huanju/data/a/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/huanju/data/a/b;

.field private static b:Lcom/huanju/data/a/i;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "CommonInfoProducer"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    const/4 v0, 0x0

    sput-object v0, Lcom/huanju/data/a/i;->b:Lcom/huanju/data/a/i;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/a/i;->c:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/a/i;->d:Ljava/lang/String;

    const-string v0, "20002a"

    iput-object v0, p0, Lcom/huanju/data/a/i;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/a/i;->f:Ljava/lang/String;

    const-string v0, "2.1.2"

    iput-object v0, p0, Lcom/huanju/data/a/i;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/a/i;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/a/i;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/a/i;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/huanju/data/a/i;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/huanju/data/a/i;->d()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/huanju/data/a/i;
    .registers 3

    const-class v1, Lcom/huanju/data/a/i;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/huanju/data/a/i;->b:Lcom/huanju/data/a/i;

    if-nez v0, :cond_e

    new-instance v0, Lcom/huanju/data/a/i;

    invoke-direct {v0, p0}, Lcom/huanju/data/a/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huanju/data/a/i;->b:Lcom/huanju/data/a/i;

    :cond_e
    sget-object v0, Lcom/huanju/data/a/i;->b:Lcom/huanju/data/a/i;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0, p1}, Lcom/huanju/data/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: requires permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/a/i;->c:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-static {v0, v1}, Lcom/huanju/data/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :try_start_a
    iget-object v0, p0, Lcom/huanju/data/a/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    sget-object v1, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    const-string v2, "Settings.System.getString or putString failed"

    invoke-virtual {v1, v2, v0}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, ""

    :cond_14
    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p1

    :goto_6
    return-object p1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_6
.end method

.method private declared-synchronized d()V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/data/a/i;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/huanju/data/a/i;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string v0, "0.0"

    iput-object v0, p0, Lcom/huanju/data/a/i;->f:Ljava/lang/String;

    :goto_11
    invoke-direct {p0}, Lcom/huanju/data/a/i;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/a/i;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/huanju/data/a/i;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "0"

    iput-object v0, p0, Lcom/huanju/data/a/i;->h:Ljava/lang/String;

    :cond_23
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/data/a/i;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/huanju/data/a/i;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const-string v0, "NUL"

    iput-object v0, p0, Lcom/huanju/data/a/i;->i:Ljava/lang/String;

    :goto_33
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/data/a/i;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/huanju/data/a/i;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ca

    const-string v0, "NUL"

    iput-object v0, p0, Lcom/huanju/data/a/i;->j:Ljava/lang/String;

    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huanju/data/a/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/a/i;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/a/i;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/huanju/data/a/i;->c:Landroid/content/Context;

    const-string v1, "hj_datasdk_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hj_cuid_cache"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d8

    iput-object v1, p0, Lcom/huanju/data/a/i;->l:Ljava/lang/String;
    :try_end_79
    .catchall {:try_start_1 .. :try_end_79} :catchall_b9

    :goto_79
    :try_start_79
    iget-object v0, p0, Lcom/huanju/data/a/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/a/i;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_9d

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_9d

    const-string v1, "APP_MONITOR_APPID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/a/i;->d:Ljava/lang/String;
    :try_end_9d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_9d} :catch_ed
    .catchall {:try_start_79 .. :try_end_9d} :catchall_b9

    :cond_9d
    :goto_9d
    :try_start_9d
    iget-object v0, p0, Lcom/huanju/data/a/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const-string v0, "0000"

    iput-object v0, p0, Lcom/huanju/data/a/i;->d:Ljava/lang/String;
    :try_end_a9
    .catchall {:try_start_9d .. :try_end_a9} :catchall_b9

    :cond_a9
    monitor-exit p0

    return-void

    :cond_ab
    :try_start_ab
    iget-object v0, p0, Lcom/huanju/data/a/i;->f:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/a/i;->f:Ljava/lang/String;
    :try_end_b7
    .catchall {:try_start_ab .. :try_end_b7} :catchall_b9

    goto/16 :goto_11

    :catchall_b9
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_bc
    :try_start_bc
    iget-object v0, p0, Lcom/huanju/data/a/i;->i:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/a/i;->i:Ljava/lang/String;

    goto/16 :goto_33

    :cond_ca
    iget-object v0, p0, Lcom/huanju/data/a/i;->j:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/a/i;->j:Ljava/lang/String;

    goto/16 :goto_43

    :cond_d8
    invoke-virtual {p0}, Lcom/huanju/data/a/i;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/data/a/i;->l:Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hj_cuid_cache"

    iget-object v2, p0, Lcom/huanju/data/a/i;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_79

    :catch_ed
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_f1
    .catchall {:try_start_bc .. :try_end_f1} :catchall_b9

    goto :goto_9d
.end method

.method private e()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/huanju/data/a/i;->c:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_1e

    move-result-object v0

    :goto_11
    invoke-direct {p0, v0}, Lcom/huanju/data/a/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v0, ""

    :cond_1d
    return-object v0

    :catch_1e
    move-exception v0

    sget-object v2, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    const-string v3, "Read IMEI failed"

    invoke-virtual {v2, v3, v0}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26
    move-object v0, v1

    goto :goto_11
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/huanju/data/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_a
.end method

.method private static f()Ljava/lang/String;
    .registers 5

    const-string v1, ""

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "huanju/.cuid"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_d
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_25} :catch_26
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_25} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_64

    goto :goto_1c

    :catch_26
    move-exception v0

    sget-object v0, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    const-string v2, "No sdcard backup found!"

    invoke-virtual {v0, v2}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    :goto_2e
    return-object v1

    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    new-instance v0, Ljava/lang/String;

    const-string v3, "stub@2014y03m11d"

    const-string v4, "stub@2014y03m11d"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/data/a/j;->a([B)[B

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/huanju/data/a/d;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_59} :catch_26
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_59} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_59} :catch_64

    :goto_59
    move-object v1, v0

    goto :goto_2e

    :catch_5b
    move-exception v0

    sget-object v2, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    const-string v3, "Read sdcard backup fail!\r\n"

    invoke-virtual {v2, v3, v0}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    :catch_64
    move-exception v0

    sget-object v2, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    const-string v3, "Decode sdcard backup fail!\r\n"

    invoke-virtual {v2, v3, v0}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    :cond_6d
    move-object v0, v1

    goto :goto_59
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_c

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, ""

    :cond_c
    return-object p1
.end method

.method private static g(Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "huanju/.cuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_12
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const-string v0, "stub@2014y03m11d"

    const-string v2, "stub@2014y03m11d"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/huanju/data/a/d;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/huanju/data/a/j;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> Write encoded \uff1a\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_57} :catch_58
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_57} :catch_61

    goto :goto_6

    :catch_58
    move-exception v0

    sget-object v1, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    const-string v2, "Write sdcard backup fail!\r\n"

    invoke-virtual {v1, v2, v0}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_61
    move-exception v0

    sget-object v1, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    const-string v2, "Encode sdcard backup fail!\r\n"

    invoke-virtual {v1, v2, v0}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/a/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "&cuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/huanju/data/a/i;->l:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huanju/data/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&svr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/huanju/data/a/i;->g:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huanju/data/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&ovr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/huanju/data/a/i;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huanju/data/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/huanju/data/a/i;->k:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huanju/data/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/huanju/data/a/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&channel_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/huanju/data/a/i;->e:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huanju/data/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&sdk=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/a/i;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huanju/data/a/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "&cuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/huanju/data/a/i;->l:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huanju/data/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&svr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/huanju/data/a/i;->g:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huanju/data/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&ovr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/huanju/data/a/i;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huanju/data/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/huanju/data/a/i;->k:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huanju/data/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&sdk=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 8

    sget-object v0, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    const-string v1, "**** createCuid ****"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/a/i;->c:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/huanju/data/a/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/a/i;->c:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/huanju/data/a/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/huanju/data/a/i;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/huanju/data/a/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/huanju/data/a/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imei "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    const-string v1, ""

    :try_start_51
    iget-object v0, p0, Lcom/huanju/data/a/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "com.huanju.stub.cuid.20140311.v1"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5c} :catch_7f

    move-result-object v0

    :try_start_5d
    sget-object v1, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< Try to get CUID from sys : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_75} :catch_118

    :goto_75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-static {v0}, Lcom/huanju/data/a/i;->g(Ljava/lang/String;)V

    :cond_7e
    :goto_7e
    return-object v0

    :catch_7f
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_83
    sget-object v4, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    const-string v5, "Settings.System.getString or putString failed"

    invoke-virtual {v4, v5, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_75

    :cond_8b
    invoke-static {}, Lcom/huanju/data/a/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b2

    sget-object v1, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< Get CUID from ext : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    const-string v1, "com.huanju.stub.cuid.20140311.v1"

    invoke-direct {p0, v1, v0}, Lcom/huanju/data/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huanju/data/a/h;->a([BZ)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUID-generated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    const-string v1, "com.huanju.stub.cuid.20140311.v1"

    invoke-direct {p0, v1, v0}, Lcom/huanju/data/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huanju/data/a/i;->g(Ljava/lang/String;)V

    goto/16 :goto_7e

    :catch_118
    move-exception v1

    goto/16 :goto_83
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/huanju/data/a/i;->l:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/huanju/data/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p1

    :goto_6
    return-object p1

    :catch_7
    move-exception v0

    sget-object v1, Lcom/huanju/data/a/i;->a:Lcom/huanju/data/a/b;

    const-string v2, "encrypt ChannelID error."

    invoke-virtual {v1, v2, v0}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method
