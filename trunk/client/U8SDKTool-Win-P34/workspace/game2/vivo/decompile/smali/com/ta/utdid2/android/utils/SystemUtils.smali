.class public Lcom/ta/utdid2/android/utils/SystemUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 82
    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    .line 83
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 85
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    .line 92
    :goto_1b
    return-object v0

    .line 89
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 92
    :cond_20
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static getCpuInfo()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 23
    :try_start_1
    new-instance v0, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_37

    .line 24
    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x400

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 30
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_19} :catch_37

    .line 39
    :goto_19
    if-eqz v1, :cond_42

    .line 40
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_2b
    return-object v0

    .line 31
    :catch_2c
    move-exception v0

    .line 32
    :try_start_2d
    const-string v2, "Could not read from file /proc/cpuinfo"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_19

    .line 35
    :catch_37
    move-exception v0

    .line 36
    const-string v2, "BaseParameter-Could not open file /proc/cpuinfo"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 44
    :cond_42
    const-string v0, ""

    goto :goto_2b
.end method

.method public static getRootFolder(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_2d

    .line 68
    new-instance v0, Ljava/io/File;

    const-string v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 75
    :cond_2c
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public static getSystemVersion()I
    .registers 2

    .prologue
    .line 48
    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SDK_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result v0

    .line 62
    :goto_d
    return v0

    :catch_e
    move-exception v0

    .line 54
    :try_start_f
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_23

    move-result v0

    goto :goto_d

    .line 57
    :catch_23
    move-exception v0

    move-object v1, v0

    .line 58
    const/4 v0, 0x2

    .line 59
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method
