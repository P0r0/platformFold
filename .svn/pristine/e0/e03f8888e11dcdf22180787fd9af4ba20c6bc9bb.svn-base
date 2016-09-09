.class public final Lcom/alipay/security/mobile/module/localstorage/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_26

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/alipay/security/mobile/module/localstorage/util/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".SystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/localstorage/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_25
    return-object v0

    :catch_26
    move-exception v1

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/module/localstorage/util/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_75

    :cond_9
    :goto_9
    invoke-static {}, Lcom/alipay/security/mobile/module/localstorage/b;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".SystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_24
    invoke-static {}, Lcom/alipay/security/mobile/module/localstorage/b;->a()Z

    move-result v1

    if-eqz v1, :cond_56

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_40
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_49} :catch_68

    const/4 v1, 0x0

    :try_start_4a
    new-instance v0, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_50} :catch_57
    .catchall {:try_start_4a .. :try_end_50} :catchall_61

    :try_start_50
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_73
    .catchall {:try_start_50 .. :try_end_53} :catchall_6e

    :try_start_53
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_68

    :cond_56
    :goto_56
    return-void

    :catch_57
    move-exception v0

    move-object v0, v1

    :goto_59
    if-eqz v0, :cond_56

    :try_start_5b
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_68

    goto :goto_56

    :catch_5f
    move-exception v0

    goto :goto_56

    :catchall_61
    move-exception v0

    :goto_62
    if-eqz v1, :cond_67

    :try_start_64
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68

    :cond_67
    :goto_67
    :try_start_67
    throw v0
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_68} :catch_68

    :catch_68
    move-exception v0

    goto :goto_56

    :catch_6a
    move-exception v0

    goto :goto_56

    :catch_6c
    move-exception v1

    goto :goto_67

    :catchall_6e
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_62

    :catch_73
    move-exception v1

    goto :goto_59

    :catch_75
    move-exception v0

    goto :goto_9
.end method
