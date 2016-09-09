.class public Lcom/baidu/platformsdk/wxpay/obf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 17
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 18
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 22
    :goto_14
    return-object v0

    .line 20
    :cond_15
    const-string v0, "/sdcard"

    goto :goto_14
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    .line 38
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_67
    .catchall {:try_start_2 .. :try_end_9} :catchall_4b

    move-result-object v3

    .line 39
    :try_start_a
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 41
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 43
    :cond_18
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 44
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_6a
    .catchall {:try_start_a .. :try_end_20} :catchall_62

    .line 45
    const/16 v1, 0x400

    :try_start_22
    new-array v1, v1, [B

    .line 47
    :goto_24
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3d

    .line 48
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2e} :catch_2f
    .catchall {:try_start_22 .. :try_end_2e} :catchall_64

    goto :goto_24

    .line 51
    :catch_2f
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    .line 55
    :goto_32
    if-eqz v1, :cond_37

    .line 56
    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_5a

    .line 62
    :cond_37
    :goto_37
    if-eqz v2, :cond_3c

    .line 63
    :try_start_39
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_5c

    .line 69
    :cond_3c
    :goto_3c
    return v0

    .line 50
    :cond_3d
    const/4 v0, 0x1

    .line 55
    if-eqz v2, :cond_43

    .line 56
    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_58

    .line 62
    :cond_43
    :goto_43
    if-eqz v3, :cond_3c

    .line 63
    :try_start_45
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_3c

    .line 65
    :catch_49
    move-exception v1

    goto :goto_3c

    .line 54
    :catchall_4b
    move-exception v0

    move-object v3, v1

    .line 55
    :goto_4d
    if-eqz v1, :cond_52

    .line 56
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5e

    .line 62
    :cond_52
    :goto_52
    if-eqz v3, :cond_57

    .line 63
    :try_start_54
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_60

    .line 67
    :cond_57
    :goto_57
    throw v0

    .line 58
    :catch_58
    move-exception v1

    goto :goto_43

    :catch_5a
    move-exception v1

    goto :goto_37

    .line 65
    :catch_5c
    move-exception v1

    goto :goto_3c

    .line 58
    :catch_5e
    move-exception v1

    goto :goto_52

    .line 65
    :catch_60
    move-exception v1

    goto :goto_57

    .line 54
    :catchall_62
    move-exception v0

    goto :goto_4d

    :catchall_64
    move-exception v0

    move-object v1, v2

    goto :goto_4d

    .line 51
    :catch_67
    move-exception v2

    move-object v2, v1

    goto :goto_32

    :catch_6a
    move-exception v2

    move-object v2, v3

    goto :goto_32
.end method
