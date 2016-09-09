.class public final Lcom/alipay/security/mobile/module/localstorage/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/alipay/security/mobile/module/localstorage/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/localstorage/util/a;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    :goto_1d
    return-object v0

    :catch_1e
    move-exception v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/alipay/security/mobile/module/localstorage/b;->a()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_44

    const/4 v1, 0x0

    :try_start_26
    new-instance v0, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_33
    .catchall {:try_start_26 .. :try_end_2c} :catchall_3d

    :try_start_2c
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_4f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_4a

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_46
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_44

    :cond_32
    :goto_32
    return-void

    :catch_33
    move-exception v0

    move-object v0, v1

    :goto_35
    if-eqz v0, :cond_32

    :try_start_37
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_44

    goto :goto_32

    :catch_3b
    move-exception v0

    goto :goto_32

    :catchall_3d
    move-exception v0

    :goto_3e
    if-eqz v1, :cond_43

    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    :try_start_43
    throw v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_44} :catch_44

    :catch_44
    move-exception v0

    goto :goto_32

    :catch_46
    move-exception v0

    goto :goto_32

    :catch_48
    move-exception v1

    goto :goto_43

    :catchall_4a
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3e

    :catch_4f
    move-exception v1

    goto :goto_35
.end method

.method public static a()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_1c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method
