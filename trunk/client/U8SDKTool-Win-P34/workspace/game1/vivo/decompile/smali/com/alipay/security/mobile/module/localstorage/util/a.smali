.class public final Lcom/alipay/security/mobile/module/localstorage/util/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_6
    new-instance v0, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_13
    .catchall {:try_start_6 .. :try_end_c} :catchall_1d

    :try_start_c
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_2d
    .catchall {:try_start_c .. :try_end_f} :catchall_28

    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_24

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    move-object v0, v1

    :goto_15
    if-eqz v0, :cond_12

    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_12

    :catch_1b
    move-exception v0

    goto :goto_12

    :catchall_1d
    move-exception v0

    :goto_1e
    if-eqz v1, :cond_23

    :try_start_20
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_26

    :cond_23
    :goto_23
    throw v0

    :catch_24
    move-exception v0

    goto :goto_12

    :catch_26
    move-exception v1

    goto :goto_23

    :catchall_28
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1e

    :catch_2d
    move-exception v1

    goto :goto_15
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v0, v1

    :cond_b
    :goto_b
    return v0

    :cond_c
    move v2, v0

    :goto_d
    if-ge v2, v3, :cond_1c

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1c
    move v0, v1

    goto :goto_b
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    :goto_11
    return-object v0

    :cond_12
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_23} :catch_4f
    .catchall {:try_start_6 .. :try_end_23} :catchall_3f

    :goto_23
    :try_start_23
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_2d
    .catchall {:try_start_23 .. :try_end_2c} :catchall_4d

    goto :goto_23

    :catch_2d
    move-exception v0

    move-object v0, v1

    :goto_2f
    if-eqz v0, :cond_34

    :try_start_31
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_49

    :cond_34
    :goto_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_39
    :try_start_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_34

    :catch_3d
    move-exception v0

    goto :goto_34

    :catchall_3f
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_43
    if-eqz v1, :cond_48

    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_4b

    :cond_48
    :goto_48
    throw v0

    :catch_49
    move-exception v0

    goto :goto_34

    :catch_4b
    move-exception v1

    goto :goto_48

    :catchall_4d
    move-exception v0

    goto :goto_43

    :catch_4f
    move-exception v1

    goto :goto_2f
.end method
