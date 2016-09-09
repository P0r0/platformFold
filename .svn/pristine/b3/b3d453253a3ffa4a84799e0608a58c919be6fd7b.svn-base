.class public final Lcom/alipay/security/mobile/module/commonutils/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_32
    .catchall {:try_start_1 .. :try_end_9} :catchall_44

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :cond_16
    :try_start_16
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v3, v1, [C

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_32
    .catchall {:try_start_16 .. :try_end_22} :catchall_44

    :try_start_22
    invoke-virtual {v1, v3}, Ljava/io/FileReader;->read([C)I

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_53
    .catchall {:try_start_22 .. :try_end_28} :catchall_51

    move-result-object v0

    :try_start_29
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_10

    :catch_2d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_32
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_36
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_51

    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3f

    :goto_3c
    const-string v0, ""

    goto :goto_10

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    :catchall_44
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_48
    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    :goto_4b
    throw v0

    :catch_4c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    :catchall_51
    move-exception v0

    goto :goto_48

    :catch_53
    move-exception v0

    goto :goto_36
.end method

.method private static a(Ljava/lang/String;)Z
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

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
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

.method private static b(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    :try_start_c
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_11

    move-result v0

    :cond_10
    :goto_10
    return v0

    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)J
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_f
    return-wide v0

    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_f
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
