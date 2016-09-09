.class public final Lcom/duoku/platform/download/JarDeltaDiff;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cx:Landroid/content/Context;

.field private diff_folder:Ljava/lang/String;

.field public info:Lcom/duoku/platform/download/mode/DiffInfo;

.field private sourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/duoku/sdk/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/JarDeltaDiff;->diff_folder:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/duoku/platform/download/mode/DiffInfo;)V
    .registers 5

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/duoku/platform/download/JarDeltaDiff;->cx:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/duoku/platform/download/JarDeltaDiff;->info:Lcom/duoku/platform/download/mode/DiffInfo;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/duoku/sdk/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/JarDeltaDiff;->diff_folder:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_15

    .line 107
    :goto_14
    return v0

    .line 81
    :cond_15
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 88
    :cond_18
    :try_start_18
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_58

    .line 90
    :try_start_22
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_5b

    .line 92
    const/16 v0, 0x1400

    :try_start_2e
    new-array v0, v0, [B

    .line 94
    :goto_30
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_46

    .line 98
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_4b

    .line 102
    if-eqz v3, :cond_3f

    .line 103
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 104
    :cond_3f
    if-eqz v1, :cond_44

    .line 105
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 107
    :cond_44
    const/4 v0, 0x1

    goto :goto_14

    .line 96
    :cond_46
    const/4 v4, 0x0

    :try_start_47
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_30

    .line 101
    :catchall_4b
    move-exception v0

    move-object v2, v3

    .line 102
    :goto_4d
    if-eqz v2, :cond_52

    .line 103
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 104
    :cond_52
    if-eqz v1, :cond_57

    .line 105
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 106
    :cond_57
    throw v0

    .line 101
    :catchall_58
    move-exception v0

    move-object v1, v2

    goto :goto_4d

    :catchall_5b
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_4d
.end method

.method private parseApkName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 192
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyDiff()V
    .registers 1

    .prologue
    .line 188
    return-void
.end method

.method protected computeDiff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 134
    const-string v0, ""

    return-object v0
.end method

.method public copyApk2Sd()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 41
    :try_start_1
    iget-object v1, p0, Lcom/duoku/platform/download/JarDeltaDiff;->cx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/duoku/platform/download/JarDeltaDiff;->info:Lcom/duoku/platform/download/mode/DiffInfo;

    iget-object v2, v2, Lcom/duoku/platform/download/mode/DiffInfo;->packageMode:Lcom/duoku/platform/download/PackageMode;

    iget-object v2, v2, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 44
    invoke-direct {p0, v1}, Lcom/duoku/platform/download/JarDeltaDiff;->parseApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/duoku/platform/download/JarDeltaDiff;->diff_folder:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duoku/platform/download/JarDeltaDiff;->sourcePath:Ljava/lang/String;

    .line 47
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/duoku/platform/download/JarDeltaDiff;->sourcePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/duoku/platform/download/JarDeltaDiff;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_3e

    move-result v0

    .line 53
    :goto_3d
    return v0

    .line 49
    :catch_3e
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/duoku/platform/download/JarDeltaDiff;->sourcePath:Ljava/lang/String;

    goto :goto_3d
.end method

.method public getSourcePath()V
    .registers 4

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/download/JarDeltaDiff;->cx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/duoku/platform/download/JarDeltaDiff;->info:Lcom/duoku/platform/download/mode/DiffInfo;

    iget-object v1, v1, Lcom/duoku/platform/download/mode/DiffInfo;->packageMode:Lcom/duoku/platform/download/PackageMode;

    iget-object v1, v1, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/duoku/platform/download/JarDeltaDiff;->sourcePath:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 71
    :goto_15
    return-void

    .line 66
    :catch_16
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/JarDeltaDiff;->sourcePath:Ljava/lang/String;

    goto :goto_15
.end method
