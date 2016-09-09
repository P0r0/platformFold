.class public Lcom/bbk/payment/util/InstallHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installSlient(Ljava/lang/String;)I
    .registers 13

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2c

    :try_start_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_2c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_125
    .catchall {:try_start_b .. :try_end_29} :catchall_119

    move-result v1

    if-nez v1, :cond_40

    :cond_2c
    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move v2, v0

    :goto_30
    if-eqz v3, :cond_35

    :try_start_32
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_35
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3a} :catch_113

    :cond_3a
    :goto_3a
    if-eqz v4, :cond_3f

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    :cond_3f
    return v2

    :cond_40
    const/4 v0, 0x4

    :try_start_41
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "pm"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v3, "install"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "-r"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_67} :catch_125
    .catchall {:try_start_41 .. :try_end_67} :catchall_119

    move-result-object v4

    :try_start_68
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_76} :catch_129
    .catchall {:try_start_68 .. :try_end_76} :catchall_11e

    :try_start_76
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_84} :catch_12d
    .catchall {:try_start_76 .. :try_end_84} :catchall_122

    :goto_84
    :try_start_84
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d4

    :goto_8a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "Success"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a8

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "success"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fa

    :cond_a8
    move v0, v6

    :goto_a9
    const-string v5, "installSlient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "successMsg:"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ErrorMsg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", message = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    goto/16 :goto_30

    :cond_d4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_d7} :catch_d8
    .catchall {:try_start_84 .. :try_end_d7} :catchall_f8

    goto :goto_84

    :catch_d8
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_db
    :try_start_db
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_e1
    .catchall {:try_start_db .. :try_end_e1} :catchall_e1

    :catchall_e1
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    :goto_e4
    if-eqz v3, :cond_e9

    :try_start_e6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_e9
    if-eqz v1, :cond_ee

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ee} :catch_10e

    :cond_ee
    :goto_ee
    if-eqz v4, :cond_f3

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    :cond_f3
    throw v0

    :cond_f4
    :try_start_f4
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :catchall_f8
    move-exception v0

    goto :goto_e4

    :cond_fa
    const-string v0, "["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, "]"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_10b} :catch_d8
    .catchall {:try_start_f4 .. :try_end_10b} :catchall_f8

    move-result-object v2

    move v0, v5

    goto :goto_a9

    :catch_10e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ee

    :catch_113
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3a

    :catchall_119
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_e4

    :catchall_11e
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_e4

    :catchall_122
    move-exception v0

    move-object v1, v2

    goto :goto_e4

    :catch_125
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_db

    :catch_129
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_db

    :catch_12d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_db
.end method

.method public static isRoot()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    :goto_1b
    const-string v1, "InstallHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bool = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_32

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x1

    goto :goto_1b

    :catch_32
    move-exception v1

    goto :goto_2f
.end method

.method public static isRooted(Landroid/content/Context;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filesDir="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static runRootCommand(Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_3d
    .catchall {:try_start_1 .. :try_end_a} :catchall_61

    move-result-object v3

    :try_start_b
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_7b
    .catchall {:try_start_b .. :try_end_14} :catchall_71

    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "exit\n"

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_35} :catch_7f
    .catchall {:try_start_14 .. :try_end_35} :catchall_74

    :try_start_35
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_6d

    :goto_3b
    const/4 v0, 0x1

    :goto_3c
    return v0

    :catch_3d
    move-exception v0

    move-object v1, v2

    :goto_3f
    :try_start_3f
    const-string v3, "*** DEBUG ***"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected error - Here is what I know: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_76

    if-eqz v1, :cond_5c

    :try_start_59
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_5c
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5f} :catch_79

    :goto_5f
    const/4 v0, 0x0

    goto :goto_3c

    :catchall_61
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_64
    if-eqz v1, :cond_69

    :try_start_66
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_69
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6c} :catch_6f

    :goto_6c
    throw v0

    :catch_6d
    move-exception v0

    goto :goto_3b

    :catch_6f
    move-exception v1

    goto :goto_6c

    :catchall_71
    move-exception v0

    move-object v1, v2

    goto :goto_64

    :catchall_74
    move-exception v0

    goto :goto_64

    :catchall_76
    move-exception v0

    move-object v3, v2

    goto :goto_64

    :catch_79
    move-exception v0

    goto :goto_5f

    :catch_7b
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3f

    :catch_7f
    move-exception v0

    move-object v2, v3

    goto :goto_3f
.end method

.method public static showInstallAppDialog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "bbk_install_hint"

    invoke-static {p0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "bbk_install_alipay"

    invoke-static {p0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "bbk_submit"

    invoke-static {p0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/bbk/payment/util/a;

    invoke-direct {v2, p1, p0}, Lcom/bbk/payment/util/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "bbk_cancel"

    invoke-static {p0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/bbk/payment/util/b;

    invoke-direct {v2}, Lcom/bbk/payment/util/b;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
